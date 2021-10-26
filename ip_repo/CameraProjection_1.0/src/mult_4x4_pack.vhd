library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package mult_4x4_pack is
	type t_3c_array is array(integer range 0 to 3) of std_logic_vector(7 downto 0);	--1x3
	type t_4c_array is array(integer range 0 to 4) of std_logic_vector(7 downto 0); 	--1x4
	type t_4d_array is array(integer range 0 to 4) of t_4c_array;							--4x4
end mult_4x4_pack;