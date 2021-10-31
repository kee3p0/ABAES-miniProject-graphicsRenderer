LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;

library work;
use work.mult_4x4_pack.all;
	
ENTITY pixelCoords is
	PORT( 	
		x : in		std_logic_vector(7 downto 0);
		y : in		std_logic_vector(7 downto 0);
		u : out		std_logic_vector(7 downto 0);
		v : out		std_logic_vector(7 downto 0)
	);
END pixelCoords;

ARCHITECTURE behaviour OF pixelCoords is

BEGIN
	process(x,y)
	variable O: integer;

	begin
	O:=128;
	-- Fixed point multiplication is the same as just treating it as non fixed point 
			u <= std_logic_vector(-signed(x)+O);
			v <= std_logic_vector(-signed(y)+O);
	end process;

END ARCHITECTURE;