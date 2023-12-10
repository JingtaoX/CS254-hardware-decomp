import copy
import math
import pyrtl
import sys

from src import netlist_to_ast, loop_id, ast_to_tokens, ir_to_racket

help_text = """
BLIF netlist decompilation benchmark suite driver.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  python3 blif-benchmark.py [-pyrtl | -sv ] <file> [clock_id]
    -pyrtl      output to PyRTL
    -sv         output to SystemVerilog
    <file>      run specified benchmark in BLIF file
    [clock_id]  optional clock identifier (defaults to "clk")
"""

import signal

class TimeoutException(Exception):
    pass

# Given a netlist translated to Maki IR,
# repeatedly run loop identification until
# either no new loops are found,
# or the process times out.
def find_loops(ir, varMap):

    def timeout_handler(signum, frame):
        raise TimeoutException()

    signal.signal(signal.SIGALRM, timeout_handler)
    signal.alarm(3600)

    loops = []
    try:
        while True:
            newLoop, ir = loop_id(ir)
            if not newLoop:
                break
            newLoop[0] = varMap[str(newLoop[0])]
            loops += [newLoop]
        loops.sort(key=lambda x: x[0] + (x[1] * x[2]))
    except TimeoutException:
        print("Loop identifier timeout!")
        return loops
    signal.alarm(0)
    return loops

# Given a PyRTL netlist (bench),
# translate it to Maki AST and run loop identification over it (find_loops()).
# Finally, write the concrete Maki IR with loop candidates annotated to a file.
def do_analysis(bench, format):
    print("wires: {}, nets: {}".format(len(pyrtl.working_block().wirevector_set), len(pyrtl.working_block().logic)))
    defs, uses = pyrtl.working_block().net_connections(include_virtual_nodes=True)
    memwrites = dict()
    for x in pyrtl.working_block().logic:
        if x.op == '@':
            memwrites[x.op_param[0]] = x
    defs = {**defs, **memwrites}

    og_netlist = netlist_to_ast(defs)
    print(og_netlist)
    ir = copy.deepcopy(og_netlist)

    og_racket, varMap = ir_to_racket(og_netlist, bench)

    loops = find_loops(ir, varMap)
    print("potential loops identified: {}".format(len(loops)))
    # print(loops)

    bench_filename = bench.partition(".")[0]

    racket_bench = """#lang rosette
(require \"../netlist_ir.rkt\")
(require \"../sketch_gen.rkt\")

{}

(sketch-reroll{} {} (loops {}){})
""".format(
    og_racket,
    ('-sv' if format == '-sv' else ''),
    bench,
    " ".join(['(' + " ".join([str(i) for i in l]) + ')' for l in loops]),
    (' internal-signals' if format == '-sv' else ''))
    with open(bench_filename+".rkt", "w") as rkt_file:
        print("{}".format(racket_bench), file=rkt_file)

# Given a BLIF file, import the netlist into PyRTL,
# run some optimizations over it to remove undriven/unused wires,
# and finally start the loop identification process (do_analysis()).
def run_benchmark(bench, clock, format):
    with open(bench) as f:
        blif = f.read()
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
    do_analysis(bench, format)

if __name__ == '__main__':
    if len(sys.argv) - 1 < 2:
        print(help_text)
        exit(1)

    format = sys.argv[1]
    if format not in ('-pyrtl', '-sv'):
        print(help_text)
        exit(1)

    clock = 'clk'
    if len(sys.argv) - 1 == 3:
        clock = sys.argv[3]

    blif_filename = sys.argv[2]
    print('\nRunning benchmark:', blif_filename)
    run_benchmark(blif_filename, clock, format)
    exit(0)
