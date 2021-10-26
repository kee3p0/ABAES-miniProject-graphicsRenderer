# MODELSIM stimulusfile voor calcproef

restart -f

#
force A0(0) 16#01
force A0(1) 16#00
force A0(2) 16#00
force A0(3) 16#01

force A1(0) 16#00
force A1(1) 16#01
force A1(2) 16#00
force A1(3) 16#00

force A2(0) 16#00
force A2(1) 16#00
force A2(2) 16#01
force A2(3) 16#00

force A3(0) 16#01
force A3(1) 16#00
force A3(2) 16#00
force A3(3) 16#01

force B0(0) 16#01
force B0(1) 16#00
force B0(2) 16#00
force B0(3) 16#00

force B1(0) 16#00
force B1(1) 16#01
force B1(2) 16#00
force B1(3) 16#00

force B2(0) 16#00
force B2(1) 16#00
force B2(2) 16#05
force B2(3) 16#00

force B3(0) 16#01
force B3(1) 16#00
force B3(2) 16#00
force B3(3) 16#05
run 5

