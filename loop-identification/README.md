# Loop Identification

## Step 1: Run Loop Identification

Run `run-loop-id.sh`.

```shell
$ ./run-loop-id.sh BENCHMARKS-SMALL
```

With `BENCHMARKS-SMALL`, this script runs loop identification over all "small" netlists in the benchmark suite.
(Netlists for the benchmark suite are in the `baesjump-netlists/` directory as `.blif` files.)
This should only take a few seconds.

## Step 2: Check the Results

Check the log of the output in `results/identification-results.log`;
the log outputs statistics for each benchmark individually.
The statistics for each benchmark include:

- The size of the netlist given in number of wires and nets
  - Note: In the paper, netlist statistics are given in Figure 9.
    The raw data for Figure 9 is in the log output.
    The script does not aggregate the data and produce the heat map in Figure 9.
    Figure 9 is just a way to visualize the relative size of the benchmarks;
    it is not a result of the technique presented in the paper.
- The number of potential loops identified
  - Note: For the BaseJump STL benchmarks, there is no corresponding figure or table that presents the number of _identified_ loops.
- Running time for loop identification
  - Note: In the paper, the running times for the BaseJump modules are given in Figure 11a as a histogram.
    The log output contains the raw timing statistics;
    a large majority of the benchmarks should only take a few seconds.

After running the script, the generated Racket files (`.rkt` extension) with Maki IR will be moved to `/loop-rerolling/results/` for the Loop Rerolling step.

## Optional (1)

By default, the hardware loop rerolling tool decompiles the netlists into the PyRTL HDL.
If you want to change this to generate SystemVerilog code, pass the `-sv` flag into the `blif-benchmark.py` driver program.
In the `run-loop-id.sh` script, this is line 16:

```diff
-	            { time python3 blif-benchmark.py -pyrtl \
+	            { time python3 blif-benchmark.py -sv \
```

## Optional (2)

To run the loop identification step on **all** netlists in the benchmark suite, run the `run-loop-id.sh` script with `BENCHMARKS-SMALL-MEDIUM-LARGE` as argument.
This may take significantly longer than running the subset of benchmarks in `BENCHMARKS-SMALL`.

## Source code

- `blif-benchmark.py`
  - A driver for the hardware decompilation tool.
    Takes as input a BLIF netlist file, and produces a Racket file of the netlist translated to the Maki IR with potential loops identified and annotated.
- `src/loop_id.py`
  - The primary source code file that implements the loop identification technique over Maki IR programs.
- `src/suffixarray.py`
  - A library that implements suffix arrays with various helper functions for tandem repeat analysis.
