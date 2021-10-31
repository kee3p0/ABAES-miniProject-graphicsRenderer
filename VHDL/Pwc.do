#do file for Pwc

restart -f

#
force pw(0) 16#01
force pw(1) 16#01
force pw(2) 16#01

force c(0) 16#00
force c(1) 16#00
force c(2) 16#00
run 20
force pw(0) 16#01
force pw(1) 16#01
force pw(2) 16#01

force c(0) 16#01
force c(1) 16#01
force c(2) 16#01
run 20
force pw(0) 16#01
force pw(1) 16#01
force pw(2) 16#01

force c(0) 16#00
force c(1) 16#01
force c(2) 16#81
run 20