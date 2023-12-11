# Yosys script for generating BLIF netlists

Check the script `verilog_to_blif.ys`.
Replace `top` with the name and top-level module of the Verilog code you want to generate BLIF for.

SystemVerilog is also supported by either changing the first line of the script:

```diff
# load modules into current design
-read_verilog -nolatches -defer top.v
+read_verilog -sv -nolatches -defer top.v
```
Or by using a tool such as [sv2v](https://github.com/zachjs/sv2v) to convert SystemVerilog to Verilog.

## Example

The `example/` directory contains a small Verilog module taken from the BaseJump STL and walks through translating it to a BLIF netlist and runs all the way through loop identification and loop rerolling.
