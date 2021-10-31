#do file for controller

restart -f

#
force clk 0 1, 1 10 -rep 20
force in_rdy 0
run 20
force in_rdy 1
run 100
force in_rdy 0
run 40