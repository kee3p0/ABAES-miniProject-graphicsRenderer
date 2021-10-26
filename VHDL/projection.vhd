LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library work;
use work.mult_4x4_pack.all;

ENTITY projection IS
	PORT( 
		clk   : IN     std_logic;
		clear : IN     std_logic;
		load  : IN     std_logic;
		
		world	: IN     t_3c_array;
		Pc 	: OUT  	t_3c_array;
		R		: IN		t_4d_array;
		C		: In		t_4d_array;

	);
END projection;

ARCHITECTURE behaviour OF projection IS
	function matrixMul4d(A	:t_4d_array;
								B	:t_4d_array) return t_4d_array is
			variable C : t_4d_array;
			variable cx: std_logic_vector(7 downto 0) := x"00";
	begin
		for i in 0 to 3 loop
			for j in 0 to 3 loop
				for k in 0 to 3 loop
				 cx := cx+std_logic_vector(
														signed(A(i)(j+k))*signed(B(j+k)(i)));
														
				end loop;
				C(i)(j) := cx;
			end loop;
		end loop;
		return C;
	end function;
	signal D	: std_logic;
	signal acu	: std_logic;
BEGIN
	mux:
	process(clear, load, world)
	--Stores worldPoint
	variable worldPoint : t_3c_array;
	begin
		if clear = '1' then
--			pixel <= x"00" after 5 ns;
		elsif load  = '1' then
--			worldPoint := world;
		else
			D <= acu after 5 ns;
		end if;
	end process;
	
	FF:
	process(clk)
	
	begin
		if rising_edge(clk) then
			acu <= D after 5 ns;
		end if;
	end process;

END ARCHITECTURE;