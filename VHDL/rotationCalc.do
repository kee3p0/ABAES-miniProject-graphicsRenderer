#do file for rotationCalc

restart -f

#
force R0(0) 16#01
force R0(1) 16#00
force R0(2) 16#00
force R0(3) 16#00

force R1(0) 16#00
force R1(1) 16#01
force R1(2) 16#00
force R1(3) 16#00

force R2(0) 16#00
force R2(1) 16#00
force R2(2) 16#01
force R2(3) 16#00

force R3(0) 16#00
force R3(1) 16#00
force R3(2) 16#00
force R3(3) 16#01

force pw(0) 16#02
force pw(1) 16#02
force pw(2) 16#01

run 20