# create the output directory
# file mkdir $outputDir
# cd $outputDir

#simulate
exec xvhdl ../and.vhd ../tb.vhd
exec xelab -debug typical tb_and_gate                 # create simulation snapshot
exec xsim -gui tb_and_gate                            # run simulation and open GUI

exit