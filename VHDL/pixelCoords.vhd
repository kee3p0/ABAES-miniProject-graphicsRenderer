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
		u : out		std_logic_vector(8 downto 0);
		v : out		std_logic_vector(8 downto 0)
	);
END pixelCoords;

ARCHITECTURE behaviour OF pixelCoords is

BEGIN
	process(x,y)
	variable S : integer:=32;
	variable O : integer:=126;

	begin
			u <= std_logic_vector(-signed(x)*S+O)(8 downto 0) after 5 ns;
			v <= std_logic_vector(-signed(y)*S+O)(8 downto 0) after 5 ns;
	end process;

END ARCHITECTURE;