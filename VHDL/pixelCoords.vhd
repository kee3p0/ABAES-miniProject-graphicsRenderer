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
	variable tmp: std_logic_vector(15 downto 0);
	variable S : integer:=32;
	variable O : integer:=126;

	begin
			tmp:= std_logic_vector(-signed(x)*S);
			tmp:= std_logic_vector(signed(tmp)+O);
			u <= std_logic_vector(tmp(8 downto 0));
			tmp:= std_logic_vector(-signed(y)*S+O);
			v <= std_logic_vector(tmp(8 downto 0));
	end process;

END ARCHITECTURE;