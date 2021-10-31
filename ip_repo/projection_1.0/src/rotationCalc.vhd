LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.mult_4x4_pack.all;
	
ENTITY rotationCalc IS
	PORT( 	
		R0	: IN     t_4c_array;
		R1	: IN		t_4c_array;
		R2	: IN		t_4c_array;
		R3	: IN		t_4c_array;
		pw	: IN  	t_3c_array;

		pc_out : out		t_3c_array
	);
END rotationCalc;

ARCHITECTURE behaviour OF rotationCalc IS

BEGIN
	process(R0,R1,R2,R3,pw)
	variable R	: t_4d_array;
	variable tmp: t_long_4c_array;
	begin
		tmp:= (X"0000",X"0000",X"0000",X"0000");
		R := (R0,R1,R2,R3);
		for i in 0 to 3 loop
			for j in 0 to 2 loop
				tmp(i) := std_logic_vector(signed(R(i)(j))*signed(pw(j))+signed(tmp(i)));
			end loop;
		end loop;
		for i in 0 to 2 loop
			pc_out(i) <= std_logic_vector(tmp(i)(7 downto 0));
		end loop;
	end process;

END ARCHITECTURE;