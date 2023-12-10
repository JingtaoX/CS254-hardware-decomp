import collections
import pyrtl


class MerkleTree:
    _counter = collections.defaultdict(int)
    _verbose = collections.defaultdict(list)

    @staticmethod
    def clear_counter():
        MerkleTree._counter.clear()



    def __init__(self, wire, data, children=[]):
        # flatten multi-children node into binary tree
        assert len(children) <= 2

        self.children = children
        self.wire = wire
        self.data = data

        self.hash = self.get_hash()
        MerkleTree._counter[self.hash] += 1

        self.inside = {wire.name}
        children_inside = [ch.inside for ch in children]
        self.depth = max([child.depth for child in children], default=0) + 1
        self.inside.update(*children_inside)
        # print(self)
        MerkleTree._verbose[self.hash].append(self)

    def __str__(self):
        name = "name:{}\n".format(self.wire.name)
        hash = "hash:{} | count:{}\n".format(str(self.hash), MerkleTree._counter[self.hash])
        size = "size:{}\n".format(len(self.inside))
        inside = "inside:{}\n".format(str(self.inside))
        return name + hash + size + inside

    def get_hash(self):
        children_data = sorted([child.hash for child in self.children])
        combined_data = [self.data] + children_data
        return hash(tuple(combined_data))

    def get_count(self):
        return MerkleTree._counter[self.hash]

    def get_size(self):
        return len(self.inside)

    def better_than(self, other):
        is_better = (self.inside.issuperset(other.inside) and
                     MerkleTree._counter[self.hash] >= MerkleTree._counter[other.hash])
        return is_better

    def get_verbose(self):
        return MerkleTree._verbose[self.hash]