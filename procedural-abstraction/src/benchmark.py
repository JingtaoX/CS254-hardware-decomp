import pyrtl
import io
from pyrtl.rtllib import adders, multipliers

blif_benchmarks = ["bsg_fpu_cmp_e_p_5_m_p_10", "bsg_1_to_n_tagged_num_out_p_32"]

blif_name = "adder_4_8"

def blif_double_benchmark(bench=blif_name, clock="clk"):
    b1 = "bsg_and_width_p_16"
    b2 = "bsg_and_width_p_32_m"
    bench = "basejump-netlists/" + b1 + ".blif"
    with open(bench) as f:
        blif = f.read()
    pyrtl.input_from_blif(blif, clock_name=clock, block=pyrtl.working_block())
    bench = "basejump-netlists/" + b2 + ".blif"
    with open(bench) as f:
        blif = f.read()
    pyrtl.input_from_blif(blif, clock_name=clock, block=pyrtl.working_block())

def blif_benchmark(bench=blif_name, clock="clk"):
    # bench = "basejump-netlists/" + bench + ".blif"
    bench = "basejump-blif/" + bench + ".blif"  # Modified by ZHY on 2023-12-10

    with open(bench) as f:
        blif = f.read()
    # print(blif)
    pyrtl.input_from_blif(blif, clock_name=clock)

    srcs, dsts = pyrtl.working_block().net_connections()
    dest_set = set(srcs.keys())
    arg_set = set(dsts.keys())
    full_set = dest_set | arg_set
    connected_minus_allwires = full_set.difference(pyrtl.working_block().wirevector_set)
    all_input_and_consts = pyrtl.working_block().wirevector_subset((pyrtl.Input, pyrtl.Const))
    allwires_minus_connected = pyrtl.working_block().wirevector_set.difference(full_set)
    allwires_minus_connected = allwires_minus_connected.difference(all_input_and_consts)
    for w in allwires_minus_connected:
        print("not",w)
        pyrtl.working_block().remove_wirevector(w)

    #print(pyrtl.working_block())
    pyrtl.combine_slice_concats()

    # pyrtl.optimize()

def blif_combined_benchmark(bench=blif_name, clock="clk"):
    pass

def bench0():
    a = pyrtl.Input(8, 'a')
    b = pyrtl.Input(8, 'b')
    c = pyrtl.Input(8, 'c')

    a0 = pyrtl.Input(8, 'a0')
    b0 = pyrtl.Input(8, 'b0')
    c0 = pyrtl.Input(8, 'c0')

    q = pyrtl.Output(8, 'q')
    q0 = pyrtl.Output(8, 'q0')

    def myfunc(a, b, c):
        return (a | c) & b | (a & b)

    t0 = myfunc(a0, b0, c0)
    t1 = myfunc(a, b, c)
    q <<= t0 & t1
    q0 <<= t0 | t1


def bench_adder_good():
    width = 2
    a = pyrtl.Input(width, 'a')
    b = pyrtl.Input(width, 'b')

    c = pyrtl.Input(width, 'c')
    d = pyrtl.Input(width, 'd')

    q = pyrtl.Output(width, 'q')

    t1 = adders.kogge_stone(a, b)
    t2 = adders.kogge_stone(c, d)
    q <<= t1 & t2

def bench_adder_48():
    w1, w2 = 4, 8
    a = pyrtl.Input(w1, 'a')
    b = pyrtl.Input(w1, 'b')

    c = pyrtl.Input(w2, 'c')
    d = pyrtl.Input(w2, 'd')

    q = pyrtl.Output(w2, 'q')

    t1 = adders.ripple_add(a, b)
    t2 = adders.ripple_add(c, d)
    q <<= t1 + t2
def bench_adder_kaggle_8_16():
    w1, w2 = 8, 16
    a = pyrtl.Input(w1, 'a')
    b = pyrtl.Input(w1, 'b')

    c = pyrtl.Input(w2, 'c')
    d = pyrtl.Input(w2, 'd')

    q = pyrtl.Output(w2, 'q')

    t1 = adders.kogge_stone(a, b)
    t2 = adders.kogge_stone(c, d)
    q <<= t1 + t2
def bench_adder_bad():
    width = 2
    a = pyrtl.Input(width, 'a')
    b = pyrtl.Input(width, 'b')

    c = pyrtl.Input(width, 'c')
    d = pyrtl.Input(width, 'd')

    q = pyrtl.Output(width, 'q')
    f = pyrtl.Output(1, 'f')

    t1 = adders.kogge_stone(a, b)
    e = (a & b) | (c & d)
    t2 = adders.kogge_stone(c, d)
    q <<= t1 & t2
    f <<= e #& adders.kogge_stone(a, c)

def bench_adder_show_extracted():
    width = 2
    f_in_0 = pyrtl.Input(width, 'f_in_0')
    f_in_1 = pyrtl.Input(width, 'f_in_1')
    f_out_0 = pyrtl.Output(width, 'f_out_0')
    f_out_0 <<= adders.kogge_stone(f_in_0, f_in_1)

    a = pyrtl.Input(width, 'a')
    b = pyrtl.Input(width, 'b')
    c = pyrtl.Input(width, 'c')
    d = pyrtl.Input(width, 'd')

    q = pyrtl.Output(width, 'q')

    t1 = a & b
    t2 = c & d
    q <<= t1 & t2

def benchmark_statemachine():
    token_in = pyrtl.Input(1, 'token_in')
    req_refund = pyrtl.Input(1, 'req_refund')
    dispense = pyrtl.Output(1, 'dispense')
    refund = pyrtl.Output(1, 'refund')
    state = pyrtl.Register(3, 'state')

    WAIT, TOK1, TOK2, TOK3, DISPENSE, REFUND = [pyrtl.Const(x, bitwidth=3) for x in range(6)]

    with pyrtl.conditional_assignment:
        with req_refund:  # signal of highest precedence
            state.next |= REFUND
        with token_in:  # if token received, advance state in counter sequence
            with state == WAIT:
                state.next |= TOK1
            with state == TOK1:
                state.next |= TOK2
            with state == TOK2:
                state.next |= TOK3
            with state == TOK3:
                state.next |= DISPENSE  # 4th token received, go to dispense
            with pyrtl.otherwise:  # token received but in state where we can't handle it
                state.next |= REFUND
        # unconditional transition from these two states back to wait state
        # NOTE: the parens are needed because in Python the "|" operator is lower precedence
        # than the "==" operator!
        with (state == DISPENSE) | (state == REFUND):
            state.next |= WAIT

    dispense <<= state == DISPENSE
    refund <<= state == REFUND


def benchmark_ripple_add():
    def one_bit_add(a, b, carry_in):
        assert len(a) == len(b) == 1  # len returns the bitwidth
        sum = a ^ b ^ carry_in
        carry_out = a & b | a & carry_in | b & carry_in
        return sum, carry_out

    def ripple_add(a, b, carry_in=0):
        a, b = pyrtl.match_bitwidth(a, b)
        # This function is a function that allows us to match the bitwidth of multiple
        # different wires. By default, it zero extends the shorter bits
        if len(a) == 1:
            sumbits, carry_out = one_bit_add(a, b, carry_in)
        else:
            lsbit, ripplecarry = one_bit_add(a[0], b[0], carry_in)
            msbits, carry_out = ripple_add(a[1:], b[1:], ripplecarry)
            sumbits = pyrtl.concat(msbits, lsbit)
        return sumbits, carry_out

    counter = pyrtl.Register(bitwidth=3, name='counter')
    sum, carry_out = ripple_add(counter, pyrtl.Const("3'b101"))
    counter.next <<= sum


def benchmark_tree_multiplier():
    width = 4
    a, b = pyrtl.Input(width, 'a'), pyrtl.Input(width, 'b')
    c, d = pyrtl.Input(width, 'c'), pyrtl.Input(width, 'd')
    q = pyrtl.Output(width, 'q')
    t1 = multipliers.tree_multiplier(a, b)
    t2 = multipliers.tree_multiplier(c, d)
    q <<= t1 & t2


def benchmark_two_func():
    width = 4
    a, b = pyrtl.Input(width, 'a'), pyrtl.Input(width, 'b')
    c, d = pyrtl.Input(width, 'c'), pyrtl.Input(width, 'd')
    q = pyrtl.Output(width, 'q')
    t1 = multipliers.tree_multiplier(a, b)
    t2 = multipliers.tree_multiplier(b, d)
    t3 = adders.kogge_stone(a, c)
    t4 = adders.kogge_stone(b, c)
    q <<= (t1 & t2) | (t3 & t4)


if __name__ == "__main__":
    # load the benchmark
    # benchmark_ripple_add()
    # bench_adder_show_extracted()
    bench_adder_kaggle_8_16()
    with io.StringIO() as tgf:
        pyrtl.output_to_trivialgraph(tgf)
        print(tgf.getvalue())

    from helper import print2png

    # name = blif_name
    name = "kaggle_8_16"
    print2png("fig/" + name )
