library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.mult_4x4_pack.all;

entity pwc is
	port(
		pw :in t_3c_array;
		c	:in t_3c_array;
		pwc:out t_3c_array
	);
end pwc;

architecture behaviour of pwc is

begin
	process(pw,c)
	begin
		for i in 0 to 2 loop
			pwc(i) <= std_logic_vector(signed(pw(i))-signed(c(i)));
		end loop;
		
	end process;

end behaviour;