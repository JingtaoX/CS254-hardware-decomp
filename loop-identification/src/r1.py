import pyrtl
from pyrtl.rtllib import adders, multipliers
# "pin" input/outputs
def bench1():
    a = pyrtl.Input(8, 'a')
    b = pyrtl.Input(8, 'b')
    # c = pyrtl.Input(8, 'c')

    a0 = pyrtl.Input(8, 'a0')
    b0 = pyrtl.Input(8, 'b0')
    # c0 = pyrtl.Input(8, 'c0')

    q = pyrtl.Output(8, 'q')
    f = pyrtl.Output(1, 'gt5')
    #
    # def func(a, b, c):
    #     return (a + c) & b

    t1 = adders.kogge_stone(a, b)
    # t2 = adders.kogge_stone(a0, b0)
    # # t3 = adders.kogge_stone(b0, t1)
    #
    # q <<= t1 & t2  # assigns output of adder to out pin
    # f <<= t1 | t2  # does a comparison, assigns that to different pin
    q <<= t1
    f <<= t1
    # the simulation and waveform output
    sim = pyrtl.Simulation()
# sim.step_multiple({'a': [0, 1, 2, 3, 4], 'b': [2, 2, 3, 3, 4]})
# sim.tracer.render_trace()
# #

def bench2():

    a = pyrtl.Input(8, 'a')
    b = pyrtl.Input(8, 'b')
    c = pyrtl.Input(8, 'c')

    a0 = pyrtl.Input(8, 'a0')
    b0 = pyrtl.Input(8, 'b0')
    c0 = pyrtl.Input(8, 'c0')

    q = pyrtl.Output(8, 'q')
    q0 = pyrtl.Output(8, 'q0')
    # f = pyrtl.Output(1, 'gt5')
    def myfunc(a, b, c):
        return (a | c) & b | (a & b)

    t0 = myfunc(a0, b0, c0)
    t1 = myfunc(a, b, c)
    q <<= t0 & t1
    q0 <<= t0 | t1

bench2()

import  io
with io.StringIO() as tgf:
    pyrtl.output_to_trivialgraph(tgf)
    print(tgf.getvalue())


from helper import print2png
print2png("r1")

# n1, n2 = pyrtl.working_block().net_connections()
# print(n1)
# print()
# print(n2)