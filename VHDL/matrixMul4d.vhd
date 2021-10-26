LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;

library work;
use work.mult_4x4_pack.all;
	
ENTITY matrixMul4d IS
	PORT( 	
		A0	: IN     t_4c_array;
		A1	: IN		t_4c_array;
		A2	: IN		t_4c_array;
		A3	: IN		t_4c_array;
		B0	: IN  	t_4c_array;
		B1	: IN  	t_4c_array;
		B2	: IN  	t_4c_array;
		B3	: IN  	t_4c_array;
		C0	: OUT		t_long_4c_array;
		C1	: OUT		t_long_4c_array;
		C2	: OUT		t_long_4c_array;
		C3	: OUT		t_long_4c_array
	);
END matrixMul4d;

ARCHITECTURE behaviour OF matrixMul4d IS

BEGIN
	process(A0,A1,A2,A3,B0,B1,B2,B3)
	variable A	: t_4d_array;
	variable B	: t_4d_array;
	variable C	: t_long_4d_array;
	begin
	A := (A0,A1,A2,A3);
	B := (B0,B1,B2,B3);
		for i in 0 to 3 loop
			for j in 0 to 3 loop
				C(i)(j) := std_logic_vector(
											signed(A(i)(j))*signed(B(j)(i)));
														
			end loop;
		end loop;
		C0 <= C(0);
		C1 <= C(1);
		C2 <= C(2);
		C3 <= C(3);
	end process;

END ARCHITECTURE;