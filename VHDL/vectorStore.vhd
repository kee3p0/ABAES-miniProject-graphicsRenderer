library ieee;
use ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;

library work;
use work.mult_4x4_pack.all;
	
entity vectorStore is
	port( 	
		clk	:in	std_logic;
		load	:in	std_logic;
		
		p0 	:in	t_3c_array;
		P1 	:in	t_3c_array;
		P2 	:in	t_3c_array;
		P3 	:in	t_3c_array;
		P4 	:in	t_3c_array;
		P5 	:in	t_3c_array;
		P6 	:in	t_3c_array;
		P7 	:in	t_3c_array;
		
		w0		:out t_3c_array;
		w1		:out t_3c_array;
		w2		:out t_3c_array;
		w3		:out t_3c_array;
		w4		:out t_3c_array;
		w5		:out t_3c_array;
		w6		:out t_3c_array;
		w7		:out t_3c_array
		
	);
END vectorStore;

architecture behaviour of vectorStore is

begin
	process(clk,load)
	begin
		if rising_edge(clk) then
			if load = '1' then
				for i in 0 to 2 loop
					w0(i)<=p0(i);
					w1(i)<=p1(i);
					w2(i)<=p2(i);
					w3(i)<=p3(i);
					w4(i)<=p4(i);
					w5(i)<=p5(i);
					w6(i)<=p6(i);
					w7(i)<=p7(i);
				end loop;
			end if;
		end if;
		
	end process;

end behaviour;