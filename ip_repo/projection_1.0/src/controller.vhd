library ieee;
use ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;

library work;
use work.mult_4x4_pack.all;
	
entity controller is
	port( 	
		clk			:in	std_logic;
		
		in_rdy		:in	std_logic;
		
		loadCamera	:out	std_logic;
		loadOut		:out	std_logic
		
	);
END controller;

architecture behaviour of controller is
signal count: std_logic:='0';

begin
	process(clk)
	begin
		if rising_edge(clk) then
			if in_rdy ='1' then
				if count='0' then
					loadCamera 	<='1' after 5 ns;
					count 		<='1' after 5 ns;
				elsif count='1' then
					count			<='0' after 5 ns;
					loadCamera 	<='0' after 5 ns;	
					loadOut		<='1' after 5 ns;
				end if;
			else
				loadCamera 	<='0' after 5 ns;	
				loadOut		<='0' after 5 ns;
			end if;
		end if;
	end process;

end behaviour;