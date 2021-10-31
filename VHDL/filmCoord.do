#do file for filmCoords

restart -f

#
force pc_in(0) 16#01
force pc_in(1) 16#01
force pc_in(2) 16#01
run 20
force pc_in(0) 16#02
force pc_in(1) 16#01
force pc_in(2) 16#01
run 20
force pc_in(0) 16#10
force pc_in(1) 16#10
force pc_in(2) 16#02