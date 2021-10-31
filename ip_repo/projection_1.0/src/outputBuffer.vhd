library ieee;
use ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;

library work;
use work.mult_4x4_pack.all;
	
entity outputBuffer is
	port( 	
		clk	:in	std_logic;
		load	:in	std_logic;
		
		p0_u 	:in	std_logic_vector(7 downto 0);
		P1_u 	:in	std_logic_vector(7 downto 0);
		P2_u 	:in	std_logic_vector(7 downto 0);
		P3_u 	:in	std_logic_vector(7 downto 0);
		P4_u 	:in	std_logic_vector(7 downto 0);
		P5_u 	:in	std_logic_vector(7 downto 0);
		P6_u 	:in	std_logic_vector(7 downto 0);
		P7_u 	:in	std_logic_vector(7 downto 0);

		p0_v 	:in	std_logic_vector(7 downto 0);
		P1_v 	:in	std_logic_vector(7 downto 0);
		P2_v 	:in	std_logic_vector(7 downto 0);
		P3_v 	:in	std_logic_vector(7 downto 0);
		P4_v 	:in	std_logic_vector(7 downto 0);
		P5_v 	:in	std_logic_vector(7 downto 0);
		P6_v 	:in	std_logic_vector(7 downto 0);
		P7_v 	:in	std_logic_vector(7 downto 0);
		
		data	:out std_logic_vector(17 downto 0);
		
		loadData:out std_logic
		
	);
END outputBuffer;

architecture behaviour of outputBuffer is

	function bubbleSort(array_in:t_sort_array) return t_sort_array is
		variable tmp: 			std_logic_vector(7 downto 0);
		variable tmpArray:	t_sort_array;
	begin
		for j in t_sort_array'LEFT to t_sort_array'RIGHT - 1 loop
			for i in t_sort_array'LEFT to t_sort_array'RIGHT - 1 - j loop
				if unsigned(tmpArray(i)) > unsigned(tmpArray(i+1)) then
					tmp:=tmpArray(i);
					tmpArray(i):= tmpArray(i+1);
					tmpArray(i+1):=tmp;
				end if;
			end loop;
		end loop;
		return tmpArray;
	end function;
	
signal u: t_sort_array;
signal v: t_sort_array;
begin
	process(clk,load)
	variable u_sort: t_sort_array;
	variable v_sort: t_sort_array;
	begin
		if rising_edge(clk) then
			if load = '1' then
				u <=(p0_u,p1_u,p2_u,p3_u,p4_u,p5_u,p6_u,p7_u);
				v <=(p0_v,p1_v,p2_v,p3_v,p4_v,p5_v,p6_v,p7_v);
			elsif load = '0' then
				v_sort := bubbleSort(v);
			end if;
			
		end if;
	end process;

end behaviour;