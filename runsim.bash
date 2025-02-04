#/bin/bash

# Check if any arguments are provided
if [ $# -eq 0 ]; then
    echo "Error: No arguments provided. Exiting."
    exit 1
fi

# If arguments are provided, move to provided directory
cd $1/sim
vivado -mode tcl -source sim.tcl
rm rf Xilinx*
rm -rf
