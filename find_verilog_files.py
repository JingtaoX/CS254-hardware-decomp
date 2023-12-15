"""
Find all verilog top files corresponding to the blif files in procedural-abstraction/src/basejump-netlists
Copy them into ./procedural-abstraction/src/basejump-verilog/
"""
import os
from rich.console import Console

console = Console()

blif_files = os.listdir('procedural-abstraction/src/basejump-netlists')
blif_files = [fname.split('.')[0] for fname in blif_files]

verilog_top_files = []
for root, dirs, files in os.walk('../bsg_micro_designs/'):
    for file in files:
        if file == 'top.v':
            verilog_top_files.append(os.path.join(root, file))

for verilog_top_file in verilog_top_files:
    folder = verilog_top_file.split('/')[-2]
    if folder in blif_files:
        console.print(verilog_top_file)
        # copy verilog_top_file to ./procedural-abstraction/src/basejump-verilog/
        os.system(f'cp {verilog_top_file} ./procedural-abstraction/src/basejump-verilog/{folder}.v')
