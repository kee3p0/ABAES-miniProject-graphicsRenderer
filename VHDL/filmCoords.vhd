LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.mult_4x4_pack.all;
	
entity filmCoords is
	port( 	
		pc_in	: in	t_3c_array;
		
		x : out		std_logic_vector(7 downto 0);
		y : out		std_logic_vector(7 downto 0)
	);
END filmCoords;

architecture behaviour of filmCoords is

BEGIN
	process(pc_in)
	variable f		: std_logic_vector(7 downto 0);
	variable tmp 	: std_logic_vector(15 downto 0);
	begin
			f:= x"01";
			tmp := std_logic_vector(signed(pc_in(0))*signed(f)/signed(pc_in(2)));
			x <= std_logic_vector(tmp(7 downto 0));
			tmp :=std_logic_vector(signed(pc_in(1))*signed(f)/signed(pc_in(2)));
			y <= std_logic_vector(tmp(7 downto 0));
	end process;

end behaviour;