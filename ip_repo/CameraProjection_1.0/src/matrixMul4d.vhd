LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library work;
use work.mult_4x4_pack.all;
	
ENTITY matrixMul4d IS
	PORT( 	
		A	: IN     t_4d_array;
		B 	: IN  	t_4d_array;
		C	: OUT		t_4d_array
	);
END matrixMul4d;

ARCHITECTURE behaviour OF matrixMul4d IS

BEGIN
	process(A,B)
	variable cx : std_logic_vector(7 downto 0) := x"00";
	begin
		for i in 0 to 3 loop
			for j in 0 to 3 loop
				for k in 0 to 3 loop
				 cx := cx+std_logic_vector(
														signed(A(i)(j+k))*signed(B(j+k)(i)));
														
				end loop;
				C(i)(j) <= cx;
			end loop;
		end loop;
	end process;

END ARCHITECTURE;