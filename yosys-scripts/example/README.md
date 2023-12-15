# Verilog to BLIF example

This directory contains an example to use Yosys to translate Verilog to a BLIF netlist.
The example module (`mux2_gatestack.v`) comes from the BaseJump STL and is very small (parameterized to 16-bit width),
and has exactly one loop (which we expect to reroll from the netlist).

## Step 1

The Yosys script `verilog_to_blif.ys` invokes various Yosys passes and optimizations to produce a netlist of the design.
Try it with:

```shell
$ yosys verilog_blif.ys
```

After successfully running, the script produces a BLIF file `mux2_gatestack.blif` which describes the netlist.

## Step 2

Pass the netlist (in BLIF format) to the loop identification script:

```shell
$ python3 ../../procedural-abstraction/blif-benchmark.py -pyrtl mux2_gatestack.blif
```

This produces a Racket file (`mux2_gatestack.rkt`) with the Maki IR code and driver to call loop rerolling.

## Step 3

To run loop rerolling, make one edit to the generated Racket so it can point to the loop rerolling modules:

```diff
#lang rosette
-(require "../netlist_ir.rkt")
-(require "../sketch_gen.rkt")
+(require "../../loop-rerolling/netlist_ir.rkt")
+(require "../../loop-rerolling/sketch_gen.rkt")
```

## Step 4

Run loop rerolling over the example:

```shell
$ racket mux2_gatestack.rkt
```

This prints the decompiled HDL code with one rerolled loop to `stdout`.
