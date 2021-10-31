#do file for vectorMatrix

restart -f

#
force clk 1 0, 0 10 -rep 20

force p0(0) 16#01
force p0(1) 16#00
force p0(2) 16#00

force p1(0) 16#00
force p1(1) 16#01
force p1(2) 16#00

force p2(0) 16#00
force p2(1) 16#00
force p2(2) 16#01

force p3(0) 16#01
force p3(1) 16#01
force p3(2) 16#00

force p4(0) 16#01
force p4(1) 16#00
force p4(2) 16#01

force p5(0) 16#01
force p5(1) 16#01
force p5(2) 16#01

force p6(0) 16#00
force p6(1) 16#00
force p6(2) 16#00

force p7(0) 16#00
force p7(1) 16#01
force p7(2) 16#01

run 20
force load 1
run 20
force load 0
run 20