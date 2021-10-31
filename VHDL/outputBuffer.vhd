library ieee;
use ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;

library work;
use work.mult_4x4_pack.all;
use work.linear.all;


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
		-- The surfaces with the least amount of avg z. If two have the same value non of the two will be displayed.
		s0		:in	std_logic_vector(11 downto 0);
		s1		:in	std_logic_vector(11 downto 0);
		s2		:in	std_logic_vector(11 downto 0);
		
		busy	:out		std_logic;
		rdy	:out		std_logic;
		data	:out 		std_logic_vector(17 downto 0);
		loadData:out	std_logic
		
	);
END outputBuffer;

architecture behaviour of outputBuffer is

signal s0_points: t_surf_points;
signal s1_points: t_surf_points;
signal s2_points: t_surf_points;
signal surf: t_surf_array;
signal done: std_logic;
signal lin_eq: ab;
signal uv: point (7 downto 0);
signal dataOut :  storageOutput (1 downto 0);
signal count: integer;
begin
	Timed:
	process(clk)
		variable u: t_sort_array;
		variable v: t_sort_array;
		variable c_pix	: integer:=0;
		variable c_surf: integer:=0;
		variable c_line: integer:=0;
		variable s_dir	: integer:=0;
		variable s_line: integer:=0;
	begin
		if rising_edge(clk) then
			if load = '1' and done = '1' then
				c_pix := 0;
				u 	:=(p0_u,p1_u,p2_u,p3_u,p4_u,p5_u,p6_u,p7_u);
				v 	:=(p0_v,p1_v,p2_v,p3_v,p4_v,p5_v,p6_v,p7_v);
				-- Generate total list
				for i in 0 to 7 loop
					uv <= (u(i),v(i));
				end loop;
				-- Convert bits into surf points
				s0_points <= to_surf_points(s0);
				s1_points <= to_surf_points(s1);
				s2_points <= to_surf_points(s2);
				-- Convert points into surface array
				surf<=(s0_points,s1_points,s2_points);
				
				busy<='1';
			else 
				if surf(c_surf)(0) = surf(c_surf)(1) then
					done <='1';
					c_line :=0;
					c_pix	:=0;
				end if;
				--Setup lin eq
				if c_line /= s_line then
					lin_eq <= linear_form(uv(0), uv(1)); --to_integer(unsigned(surf(c_surf)(0))) to_integer(unsigned(surf(c_surf)(1))))
					if uv(surf(c_surf)(c_line))(0) > uv(surf(c_surf)(c_line+1))(0) then --Check which u is bigger and start from that
						s_dir := 1;
						c_pix := uv(surf(c_surf)(c_line));
					else
						c_pix := uv(surf(c_surf)(c_line+1));
						s_dir :=0;
					end if;
					s_line := c_line;
				end if;


				if c_pix >= 256 and done = '0' then
					data <= c_surf & linear_eq(c_pix,lin_eq) & c_pix;
					c_pix <= c_pix+1;
					if (c_pix > uv(surf(c_surf)(c_line+1)) and s_dir = 1) then
						c_pix := 0;
						c_line:= c_line+1;
						if c_line > 3 then
							c_surf := c_surf+1;
							c_line := 0;
							if c_surf > 2 then
								c_surf := 0;
								done <='0';
								busy <='1';
							end if;
						end if;
					elsif (c_pix > uv(surf(c_surf)(c_line)) and s_dir = 0) then
						if (c_pix > uv(surf(c_surf)(c_line+1)) and s_dir = 1) then
							c_pix := 0;
							c_line:= c_line+1;
							if c_line > 3 then
								c_surf := c_surf+1;
								c_line := 0;
								if c_surf > 2 then
									c_surf := 0;
									done <='0';
									busy <='1';
								end if;
							end if;
						end if;
					end if;
			
			end if;
		end if;
	end if;
	end process;
	
end behaviour;