"""
Convert all verilog files in ./procedural-abstraction/src/basejump-verilog/ to blif files
and save then in ./procedural-abstraction/src/basejump-blif/
"""
import os
from rich.console import Console

console = Console()

verilog_top_files = os.listdir('procedural-abstraction/src/basejump-verilog/')
# verilog_top_files = [os.path.join('./procedural-abstraction/src/basejump-verilog/', fname) for fname in verilog_top_files]

for fname in verilog_top_files:
    verilog_top_file = os.path.join('procedural-abstraction/src/basejump-verilog/', fname)
    tmp_top_verilog_fname = './yosys-scripts/top.v'
    tmp_blif_fname = './yosys-scripts/top.blif'
    blif_file = os.path.join('procedural-abstraction/src/basejump-blif/', fname.split('.')[0] + '.blif')
    console.print('Converting {} to {}'.format(verilog_top_file, blif_file))
    os.system(f"cp {verilog_top_file} {tmp_top_verilog_fname}")
    os.system('make')
    os.system(f"cp {tmp_blif_fname} {blif_file}")

