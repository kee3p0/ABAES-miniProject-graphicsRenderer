library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.mult_4x4_pack.all;

entity storeMatrix is
	port(
		in_matrix0 	:in t_4c_array;
		in_matrix1 	:in t_4c_array;
		in_matrix2 	:in t_4c_array;
		in_matrix3 	:in t_4c_array;
		out_matrix0	:out t_4c_array;
		out_matrix1	:out t_4c_array;
		out_matrix2	:out t_4c_array;
		out_matrix3	:out t_4c_array;
		
		clk			:in	std_logic;
		load			:in 	std_logic
	);
end storeMatrix;

architecture behaviour of storeMatrix is
	signal stored : t_4d_array;
begin
	process(clk)
	begin
		if rising_edge(clK) then
			if load='1' then
				stored <= (in_matrix0,in_matrix1,in_matrix2,in_matrix3);
			end if;
			out_matrix0 <= stored (0);
			out_matrix1 <= stored (1);
			out_matrix2 <= stored (2);
			out_matrix3 <= stored (3);
		end if;
		
	end process;

end behaviour;