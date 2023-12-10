# Loop Rerolling

## Step 1

Run `run-loop-id.sh`.

```shell
$ ./run-rerolling.sh
```

With the candidate loops identified from the previous step, this script runs loop rerolling over all Maki IR files in the `results` directory.
A log of the output with number of loops rerolled and running times will be in `results/rerolling-results.log`.
The subset of benchmarks in `BENCHMARKS-SMALL` should take between 4--5 minutes to complete.

In the paper, the number of loops rerolled are in Figure 10, and the running times are in Figure 11b.
Note: The log outputs the raw statistics from running the experiment,
they are not automatically aggregated into the plots shown in the paper.
If you are running `BENCHMARKS-SMALL`, the number of rerolled loops for each module corresponds to the "S" bar in Figure 10.

## Step 2

After running the script, the decompiled HDL code with loops rerolled will be in the `results` directory (either as `.py` files for PyRTL, or `.sv` files for SystemVerilog).
You may inspect some of the decompiled programs to verify that the number of loops rerolled matches the log.

## Optional

If you ran the loop identification step on **all** netlists in the benchmark suite, loop rerolling may take _significantly_ longer than running the subset of benchmarks in `BENCHMARKS-SMALL` (this is mainly a limitation of SMT constraint solving).

## Source code

- `netlist_ir.rkt`
  - This file implements the Maki IR, its interpreter and symbolic evaluator (via Rosette), as well as functions for generating holes in the IR, and translating to PyRTL and SystemVerilog output.
- `sketch_gen.rkt`
  - Sketch generation for hardware loop rerolling.
    Given a netlist in Maki IR and set of loop candidates, this code implements the sketch generation technique outlined in Section 4.
