
import io, os
import pyrtl



def print2png(filename):
    with open(filename + ".dot", "w") as tgf:
        pyrtl.output_to_graphviz(tgf)


    # turn into png
    command = "dot -Tpng {}.dot > {}.png".format(filename, filename)
    os.system(command)

