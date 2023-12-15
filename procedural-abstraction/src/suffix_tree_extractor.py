from loop_id_local import *
import benchmark
from copy import deepcopy
from pprint import pprint
import argparse

do_print = 0
class FunctionNameSpace:
    counter = 0

    @classmethod
    def get_name(cls):
        cls.counter += 1
        return "func_{}".format(cls.counter)
    @classmethod
    def reset(cls):
        cls.counter = 0


def load_benchmark(name="bsg_1_to_n_tagged_num_out_p_32"):
    # load benchmark
    # benchmark.bench_adder_bad()
    # benchmark.bench_adder_48()
    benchmark.blif_benchmark(name)
    # benchmark.blif_combined_benchmark(name)
    # pyrtl.optimize()
    # benchmark.blif_double_benchmark()

    defs, uses = pyrtl.working_block().net_connections(include_virtual_nodes=True)
    mem_writes = dict()
    for x in pyrtl.working_block().logic:
        if x.op == '@':
            mem_writes[x.op_param[0]] = x
    defs = {**defs, **mem_writes}
    return defs


# wrong: not overlap checking
# def get_tokenized_repeats_from_tokens(s):
#     sa = suffix_array(s)
#     lcp = lcp_array(s, sa)
#     tandems = tandem_repeats(s, sa, lcp)
#     max_length_key = max(tandems, key=lambda x: len(x))
#     return max_length_key, tandems[max_length_key][0]

# wrong: trivial overlap checking with wrong understanding on lcp array
# def get_tokenized_repeats_from_tokens(s):
#     sa = suffix_array(s)
#     lcp = lcp_array(s, sa)
#     max_rep_length, pos = 0, 0
#     non_overlap_lcp = lcp
#     for i in range(len(lcp) - 1):
#         non_overlap_lcp[i] = min(lcp[i], abs(sa[i] - sa[i + 1]))
#
#     rep_length = max(non_overlap_lcp)
#     rep_pos = non_overlap_lcp.index(rep_length)
#     start_a, start_b = sa[rep_pos], sa[rep_pos + 1]
#     # print(start_a, start_b)
#     # print("++++++++++++++++++++++++++++")
#     # print(s[start_a: start_a + rep_length])
#     # print("++++++++++++++++++++++++++++")
#     # print(s[start_b: start_b + rep_length])
#     return s[start_a: start_a + rep_length], start_a

def get_tokenized_repeats_from_tokens(s):
    sa = suffix_array(s)
    lcp = lcp_array(s, sa)
    l, r = 1, len(lcp) // 2
    start_pos, rep_length = -1, -1

    def check_repeat_length(length):
        cur = [sa[0]]
        for i in range(0, len(lcp) - 1):
            if lcp[i] >= length:
                cur.append(sa[i + 1])
            else:
                min_start, max_start = min(cur), max(cur)
                if max_start - min_start >= length:
                    # print(max_start, min_start)
                    return min_start, True
                cur = [sa[i + 1]]
        return -1, False

    # print(l, r)s
    start = 0
    while l <= r:
        mid = (l + r) // 2
        new_start, found = check_repeat_length(mid)
        # print(l, r, mid ,new_start, found)
        if found:
            l, rep_length = mid + 1, mid
            start = new_start
        else:
            r = mid - 1
    # print(rep_length)
    # print(s[start: start + rep_length])
    if rep_length == -1:
        return [], -1
    return s[start: start + rep_length], start


func_calls = []
func_defs = []


def function_extraction(ast, use_relative_token=True):
    # print(ast)
    # tokens = ast_to_tokens(ast)
    if use_relative_token:
        tokens = ast_to_relative_tokens(ast)
    else:
        tokens = ast_to_tokens(ast)

    def token_printer():
        for item in zip(ast.cmds, list(tokens)):
            x, y = item
            print(f"{str(x):<50} {y}")

    if do_print:
        token_printer()
    repeat, rep_start = get_tokenized_repeats_from_tokens(tokens)

    # give up if no long enough repeats
    repeat_len = len(repeat)
    if repeat_len <= 3:
        return ast, False
    rep_start_list = []

    def kmp_search(tokens, repeat):
        # Compute longest prefix suffix (LPS) array
        def compute_lps_array(pattern):
            length = 0
            lps = [0] * len(pattern)
            i = 1

            while i < len(pattern):
                if pattern[i] == pattern[length]:
                    length += 1
                    lps[i] = length
                    i += 1
                else:
                    if length != 0:
                        length = lps[length - 1]
                    else:
                        lps[i] = 0
                        i += 1
            return lps

        lps = compute_lps_array(repeat)
        i = j = 0
        rep_start_list = []

        while i < len(tokens):
            if repeat[j] == tokens[i]:
                i += 1
                j += 1

            if j == len(repeat):
                rep_start_list.append(i - j)
                j = lps[j - 1]
            elif i < len(tokens) and repeat[j] != tokens[i]:
                if j != 0:
                    j = lps[j - 1]
                else:
                    i += 1

        return rep_start_list

    matched_start = kmp_search(tokens, repeat)
    rep_start_list = [matched_start[0]]
    for i in range(1, len(matched_start)):
        if matched_start[i] - rep_start_list[-1] >= repeat_len:
            rep_start_list.append(matched_start[i])
    # print(rep_start_list)

    # a trivial way to extend repeat for input part
    # all input wire could be * in the  local repeat
    def extend_repeat(tokens, ast, rep_start_list):
        extended = 0
        for ext in range(1, len(tokens)):
            non_overlap = all([rep_start_list[j + 1] - rep_start_list[j] >= repeat_len + ext
                               for j in range(len(rep_start_list) - 1)])
            if not non_overlap:
                break
            new_ast_list = [Block(ast.cmds[start - ext: start + repeat_len]) for start in rep_start_list]
            new_tokens_list = [ast_to_relative_tokens(new_ast) for new_ast in new_ast_list]
            uniform = all(new_tokens_list[0] == new_tokens_list[i] for i in range(1, len(new_tokens_list)))
            if uniform:
                # for x,y in zip((new_ast_list), (new_tokens_list)):
                #     print("=====================================")
                #     for a,b in zip(x.cmds, y):
                #         print(f"{str(a):<30} {b}")
                #     print("=====================================")
                extended = ext
            else:
                break
        return extended

    # if False:
    if use_relative_token:
        extended = extend_repeat(tokens, ast, rep_start_list)
        # print("extended len: ", extended)
        rep_start_list = [start - extended for start in rep_start_list]
        rep_start = rep_start_list[0]
        repeat_len += extended

    # start = 0
    # while start < len(tokens) - repeat_len:
    #     if tokens[start:start + repeat_len] == repeat:
    #         rep_start_list.append(start)
    #         start += repeat_len
    #     else:
    #         start += 1
    #
    # print(rep_start_list)

    def get_in_out(block):
        defs = set()
        uses = set()
        for node in block.cmds:
            # print(node)
            # print(type(node))
            defs.add(node.lhs.getName())
            for item in node.rhs.args:
                if isinstance(item, Wire):
                    uses.add(item.getName())

        out_wires, in_wires = [], []
        out_names, in_names = [], []
        for node in block.cmds:
            if node.lhs.getName() not in uses:
                out_wires.append(node.lhs)
                out_names.append(node.lhs.getName())
            for item in node.rhs.args:
                if isinstance(item, Wire) and item.getName() not in defs and item.getName() not in in_names:
                    in_names.append(item.getName())
                    in_wires.append(item)

        # the following line is not correct, because order matters
        # out_wires, in_wires = defs - uses, uses - defs
        return out_wires, in_wires

    # tmp = Block(ast.cmds[rep_start:rep_start+repeat_len])
    # print(tmp)
    new_ast = Block(ast.cmds)
    # do it backward
    rep_start_list = list(reversed(rep_start_list))

    func_name = FunctionNameSpace.get_name()

    # get function block
    func_ast = Block(new_ast.cmds[rep_start:rep_start + repeat_len])
    out_wires, in_wires = get_in_out(func_ast)

    # print(out_wires, in_wires)
    # input()
    def rewrite_in_out(block, out_wires, in_wires, func_name):
        block = deepcopy(block)
        name_map = {}
        for i, out_wire in enumerate(out_wires):
            name_map[out_wire.getName()] = "{}_out_{}".format(func_name, i)
        for i, in_wire in enumerate(in_wires):
            name_map[in_wire.getName()] = "{}_in_{}".format(func_name, i)

        for node in block.cmds:
            lhs = node.lhs
            rhs = node.rhs
            lhs.setName(name_map.get(lhs.getName(), lhs.getName()))
            for arg in rhs.args:
                if isinstance(arg, Wire):
                    arg.setName(name_map.get(arg.getName(), arg.getName()))
        return block

    func_ast = rewrite_in_out(func_ast, out_wires, in_wires, func_name)
    in_names = ["{}_in_{}".format(func_name, i) for i in range(len(in_wires))]
    out_names = ["{}_out_{}".format(func_name, i) for i in range(len(out_wires))]
    func_def = FuncDefCmd(func_name, in_names, out_names, func_ast)
    func_defs.append(func_def)

    # print(f"{func_name}:")
    # print(func_ast)
    # print("=====================================")
    # print(func_def)
    # print("=====================================")

    def verification(rep_start_list):
        sep_asts = []
        for rep_start in rep_start_list:
            func_ast = Block(new_ast.cmds[rep_start:rep_start + repeat_len])
            out_wires, in_wires = get_in_out(func_ast)
            # print(out_wires, in_wires)
            func_ast = rewrite_in_out(func_ast, out_wires, in_wires, func_name)
            in_names = ["{}_in_{}".format(func_name, i) for i in range(len(in_wires))]
            out_names = ["{}_out_{}".format(func_name, i) for i in range(len(out_wires))]
            ins , outs =[], []
            for w, name in zip(in_wires, in_names):
                ins.append(DefCmd(
                    Wire(Literal(name), Literal(w.bitwidth), 'I'),
                    WireExp('Input', [Literal(name), Literal(w.bitwidth)])))
            for w, name in zip(out_wires, out_names):
                outs.append(DefCmd(
                    Wire(Literal(name), Literal(w.bitwidth), 'O'),
                    WireExp('Output', [Literal(name), Literal(w.bitwidth)])))
            sep_ast = Block(ins + outs + func_ast.cmds)
            sep_asts.append(sep_ast)
        func_defs_racket = ""
        for i, sep_ast in enumerate(sep_asts):
            racket, varMap = ir_to_racket(sep_ast, f"func_{i}")
            func_defs_racket += racket + "\n\n"

        racket_bench = """#lang rosette
(require \"netlist_ir.rkt\")
(require \"sketch_gen.rkt\")
{}""".format(
        func_defs_racket)

        with open("tmp" + ".rkt", "w") as rkt_file:
            print("{}".format(racket_bench), file=rkt_file)

        exit()

            # func_def = FuncDefCmd(func_name, in_names, out_names, func_ast)
            # func_defs.append(func_def)
            #
            # print(f"{rep_start}=====================================")
            # print(func_def)
            # print("=====================================")
            # func_defs.append(func_def)
    # verification(rep_start_list)

    # do rewrite for each function occurrence
    for start in rep_start_list:
        function = Block(new_ast.cmds[start:start + repeat_len])
        out_wires, in_wires = get_in_out(function)
        # print(out_wires, in_wires)

        # each output has own function call
        # new_defs = []
        # for out_id, out_wire in enumerate(out_wires):
        #     new_def = DefCmd(out_wire, WireExp("{}_{}".format(func_name, out_id),
        #                                        in_wires))
        #     new_defs.append(new_def)
        # new_ast.cmds[start:start + repeat_len] = new_defs

        # all output in function call

        new_def = DefsCmd(out_wires, WireExp(func_name, in_wires))
        func_calls.append(new_def)
        new_ast.cmds[start:start + repeat_len] = [new_def]

    new_ast.cmds.insert(0, func_def)
    # print(new_ast)
    # return ast after rewrite, and whether rewrite happens
    return new_ast, True

    # print("=====================================")
    # for i, item in enumerate(zip(ast.cmds, list(tokens))):
    #     x, y = item
    #     print(x, y)

def run(name, do_print=False, print_ast=False):
    FunctionNameSpace.reset()
    # name = "bsg_and_width_p_16"
    defs = load_benchmark(name)
    ast = netlist_to_ast(defs)
    if print_ast:
        print(ast)
        exit()

    extracted_num = 0
    while True:
        ast, has_rewrite = function_extraction(ast)
        print(ast)
        # break
        if not has_rewrite:
            break
        else:
            extracted_num += 1
            # print(f"extracted: {extracted_num}")

    def func_printer(only_func=True):
        if not only_func:
            print(ast)
            return

        print("=====================================")
        for item in func_defs:
            print(item)
        for item in func_calls:
            print(item)
        print("=====================================")

    if do_print:
        func_printer()

    return extracted_num, ast

    # func_printer(only_func=0)
    # print(ast)

def run_loop_reroll(names):
    defs = load_benchmark(name)

import argparse
if __name__ == '__main__':
    # name = "bsg_fpu_classify_e_p_8_m_p_23"

    parser = argparse.ArgumentParser()
    parser.add_argument('--file', '-f', type=str, default='bsg_fpu_classify_e_p_8_m_p_23', help='input file (benchmark name)')
    args = parser.parse_args()
    name = args.file
    if name.endswith(".blif"):
        name = name[:-5]

    do_print=0

    run(name, print_ast=0)



    good = ["bsg_fifo_tracker_els_p_64"]
