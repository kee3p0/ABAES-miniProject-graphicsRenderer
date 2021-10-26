LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;

library work;
use work.mult_4x4_pack.all;
	
ENTITY filmCoords IS
	PORT( 	
		f	: IN     std_logic_vector(7 downto 0);
		pc	: IN		t_3c_array;
		
		x : out		std_logic_vector(7 downto 0);
		y : out		std_logic_vector(7 downto 0)
	);
END filmCoords;

ARCHITECTURE behaviour OF filmCoords is

BEGIN
	process(f,pc)
	variable tmp : std_logic_vector(15 downto 0):=x"00";
	begin
			tmp := std_logic_vector(signed(pc(0))*signed(f)/signed(pc(2)));
			x <= std_logic_vector(tmp)(7 downto 0) after 5 ns;
			tmp :=std_logic_vector(signed(pc(1))*signed(f)/signed(pc(2)));
			y <= std_logic_vector(tmp)(7 downto 0) after 5 ns;
	end process;

END behaviour;