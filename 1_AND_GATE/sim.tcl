# create the output directory
# file mkdir $outputDir
# cd $outputDir

#simulate
exec xvhdl and.vhd
exec xvhdl tb.vhd ;
exec xelab -debug typical tb_and_gate
exec xsim -gui tb_and_gate -wdb sim.wdb

exit