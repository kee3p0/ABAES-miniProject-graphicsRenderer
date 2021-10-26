#do file for storeMatrix

restart -f

#
force clk 1 0, 0 5 -rep 10

force in_matrix0(0) 16#01
force in_matrix0(1) 16#00
force in_matrix0(2) 16#00
force in_matrix0(3) 16#01

force in_matrix1(0) 16#00
force in_matrix1(1) 16#01
force in_matrix1(2) 16#00
force in_matrix1(3) 16#00

force in_matrix2(0) 16#00
force in_matrix2(1) 16#00
force in_matrix2(2) 16#01
force in_matrix2(3) 16#00

force in_matrix3(0) 16#00
force in_matrix3(1) 16#00
force in_matrix3(2) 16#01
force in_matrix3(3) 16#00

run 10
force load 1
run 15
force load 0
run 10