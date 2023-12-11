import os
from rich.console import Console

console = Console()

blif_files = os.listdir('./loop-identification/src/basejump-blif/')

for fname in blif_files:
    console.rule('Extracting from {}'.format(fname))
    os.system('make extract -e BLIF_FILE={}'.format(fname))
