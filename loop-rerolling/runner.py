import os

def run_command(name):
    src_dir = "results-large/"
    dst_dir = "example/"
    command = "racket {} > {}".format(src_dir + name + ".rkt", dst_dir + name +".py")
    os.system(command)

name = "bsg_fpu_clz_width_p_16"  # Replace 'your_file_name' with the actual name
run_command(name)
name = "bsg_fpu_clz_width_p_32"
run_command(name)