import os

with open('failed.txt', 'r') as f:
    failed_blif_files = f.readlines()

failed_files = [fname.strip() for fname in failed_blif_files]

print(failed_files)

for fname in failed_files:
    failed_verilog = os.path.join('./loop-identification/src/basejump-verilog/', fname + '.v')
    failed_blif = os.path.join('./loop-identification/src/basejump-blif/', fname + '.blif')
    if os.path.exists(failed_verilog):
        os.remove(failed_verilog)
    if os.path.exists(failed_blif):
        os.remove(failed_blif)

