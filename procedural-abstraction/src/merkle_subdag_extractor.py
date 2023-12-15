from merkle_tree import MerkleTree
import benchmark
import pyrtl
from collections import defaultdict


def print_wirelist(wirelist):
    print("==============")
    [print(s) for s in wirelist]
    print("--------------")


def load_benchmark():
    # load benchmark
    benchmark.bench0()

    defs, uses = pyrtl.working_block().net_connections()
    return defs


def logic_net_value(logic_net):
    return (logic_net.op, logic_net.op_param) if logic_net.op_param \
        else (logic_net.op,)


def initialize_trivial_dag(wire, net, sub_dags):
    """
    initialize the sub_dags with trivial sub-dags(single nodes)
    """
    print(type(wire), wire)
    print(type(net), net)
    print()

    if len(net.args) <= 2:
        wire_root = MerkleTree(wire, logic_net_value(net))
        sub_dags[wire.name] = [wire_root]
    else:
        # todo: add initialization for concat
        pass


def generate_new_dags(wire, net, sub_dags, new_sub_dags, depth):
    """
    generate new sub-dags through merge
    """
    combine_dags = new_sub_dags[wire.name]
    if len(net.args) == 1:
        child = net.args[0]
        dags = [
            MerkleTree(wire, logic_net_value(net) + ("L",), [dag])
            for dag in sub_dags[child.name] if dag.depth == depth
        ]
        combine_dags.extend(dags)
    elif len(net.args) == 2:
        lch, rch = net.args

        left_right_dags = [
            MerkleTree(wire, logic_net_value(net), [left_dag, right_dag])
            for left_dag in sub_dags[lch.name]
            for right_dag in sub_dags[rch.name] if max(left_dag.depth, right_dag.depth) == depth
        ]

        left_dags = [
            MerkleTree(wire, logic_net_value(net) + ("L",), [left_dag])
            for left_dag in sub_dags[lch.name] if left_dag.depth == depth
        ]

        right_dags = [
            MerkleTree(wire, logic_net_value(net) + ("R",), [right_dag])
            for right_dag in sub_dags[rch.name] if right_dag.depth == depth
        ]

        combine_dags.extend(left_right_dags + left_dags + right_dags)
    else:
        # todo: add merge for concat
        pass


def common_dag_extraction():
    defs = load_benchmark()
    # sub_dags[wire] store the sub-dags (as merkle_tree class) according to its depth and root wire
    sub_dags = defaultdict(list)
    converged = defaultdict(bool)

    MerkleTree.clear_counter()
    for wire, net in defs.items():
        initialize_trivial_dag(wire, net, sub_dags)

    # generate new sub-dags through until converge, each iteration generate new sub-dags with depth + 1
    for depth in range(1, 1000):
        new_sub_dags = defaultdict(list)

        for wire, net in defs.items():
            generate_new_dags(wire, net, sub_dags, new_sub_dags, depth)

        # merge new_dag into accumulate list
        for wire, net in defs.items():
            if converged[wire.name]:
                continue
            is_converged = True

            # eliminate non-repeated sub-dags
            # print_wirelist(new_sub_dags[wire.name])
            new_sub_dags[wire.name] = [dag for dag in new_sub_dags[wire.name] if dag.get_count() > 1]
            # print_wirelist(new_sub_dags[wire.name])
            # input()

            # eliminate redundant sub-dags(contained in other sub-dags with not less count)
            for new_dag in new_sub_dags[wire.name]:
                # remove worse old_dags
                def remove_worse_old_dags(old_dag_list, new_dag):
                    worse_old_dags = [old_dag for old_dag in old_dag_list if new_dag.better_than(old_dag)]
                    worse_old_dags = set(worse_old_dags)
                    old_dag_list = [dag for dag in old_dag_list if dag not in worse_old_dags]

                remove_worse_old_dags(sub_dags[wire.name], new_dag)

                # add new_dag if it is not worse
                is_new_dag_bad = any(old_dag.better_than(new_dag) for old_dag in sub_dags[wire.name])
                if not is_new_dag_bad:
                    sub_dags[wire.name].append(new_dag)
                    is_converged = False

            converged[wire.name] = is_converged

        # check converge
        all_converged = all([converged[wire.name] for wire in defs.keys()])
        if all_converged:
            break

    # exit()

    # find the largest dag for each wire
    largest_dag_list = []
    for wire, net in defs.items():
        largest_dag = max(sub_dags[wire.name], key=lambda dag: dag.get_size())
        largest_dag_list.append(largest_dag)
        print(wire)
        print(net)
        print_wirelist(sub_dags[wire.name])
        print()



    #
    found_dag = max(largest_dag_list, key=lambda dag: dag.get_size())
    print(found_dag.get_size())
    found_dag_list = filter(lambda dag: dag.hash == found_dag.hash, largest_dag_list)
    for dag in found_dag_list:
        print(dag)

    tmp = found_dag.get_verbose()
    [print(i) for i in tmp]

    print(hash("should be same"))


if __name__ == '__main__':
    common_dag_extraction()



