-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"
-- CREATED		"Thu Oct 28 11:54:03 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

PACKAGE ARRAY2D IS
TYPE ARRAY2D1 IS ARRAY (0 TO 3,7 DOWNTO 0) OF STD_LOGIC;
TYPE ARRAY2D0 IS ARRAY (0 TO 2,7 DOWNTO 0) OF STD_LOGIC;
END ARRAY2D;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.ARRAY2D.all;

ENTITY cameraProjection IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		load :  IN  STD_LOGIC;
		C :  IN  ARRAY2D0;
		Pw :  IN  ARRAY2D0;
		R0 :  IN  ARRAY2D1;
		R1 :  IN  ARRAY2D1;
		R2 :  IN  ARRAY2D1;
		R3 :  IN  ARRAY2D1;
		u :  OUT  STD_LOGIC_VECTOR(0 TO 7);
		v :  OUT  STD_LOGIC_VECTOR(0 TO 7)
	);
END cameraProjection;

ARCHITECTURE bdf_type OF cameraProjection IS 

COMPONENT filmcoords
	PORT(pc_in : IN ARRAY2D0;
		 x : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT pwc
	PORT(c : IN ARRAY2D0;
		 pw : IN ARRAY2D0;
		 pwc : OUT ARRAY2D0
	);
END COMPONENT;

COMPONENT rotationcalc
	PORT(pw : IN ARRAY2D0;
		 R0 : IN ARRAY2D1;
		 R1 : IN ARRAY2D1;
		 R2 : IN ARRAY2D1;
		 R3 : IN ARRAY2D1;
		 pc_out : OUT ARRAY2D0
	);
END COMPONENT;

COMPONENT pixelcoords
	PORT(x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 y : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 u : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 v : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT storematrix
	PORT(clk : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 in_matrix0 : IN ARRAY2D1;
		 in_matrix1 : IN ARRAY2D1;
		 in_matrix2 : IN ARRAY2D1;
		 in_matrix3 : IN ARRAY2D1;
		 out_matrix0 : OUT ARRAY2D1;
		 out_matrix1 : OUT ARRAY2D1;
		 out_matrix2 : OUT ARRAY2D1;
		 out_matrix3 : OUT ARRAY2D1
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  ARRAY2D0;
SIGNAL	SYNTHESIZED_WIRE_1 :  ARRAY2D0;
SIGNAL	SYNTHESIZED_WIRE_2 :  ARRAY2D1;
SIGNAL	SYNTHESIZED_WIRE_3 :  ARRAY2D1;
SIGNAL	SYNTHESIZED_WIRE_4 :  ARRAY2D1;
SIGNAL	SYNTHESIZED_WIRE_5 :  ARRAY2D1;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



b2v_film : filmcoords
PORT MAP(pc_in => SYNTHESIZED_WIRE_0,
		 x => SYNTHESIZED_WIRE_6,
		 y => SYNTHESIZED_WIRE_7);


b2v_inst : pwc
PORT MAP(c => C,
		 pw => Pw,
		 pwc => SYNTHESIZED_WIRE_1);


b2v_inst13 : rotationcalc
PORT MAP(pw => SYNTHESIZED_WIRE_1,
		 R0 => SYNTHESIZED_WIRE_2,
		 R1 => SYNTHESIZED_WIRE_3,
		 R2 => SYNTHESIZED_WIRE_4,
		 R3 => SYNTHESIZED_WIRE_5,
		 pc_out => SYNTHESIZED_WIRE_0);


b2v_pixel : pixelcoords
PORT MAP(x => SYNTHESIZED_WIRE_6,
		 y => SYNTHESIZED_WIRE_7,
		 u => u,
		 v => v);


b2v_R : storematrix
PORT MAP(clk => clk,
		 load => load,
		 in_matrix0 => R0,
		 in_matrix1 => R1,
		 in_matrix2 => R2,
		 in_matrix3 => R3,
		 out_matrix0 => SYNTHESIZED_WIRE_2,
		 out_matrix1 => SYNTHESIZED_WIRE_3,
		 out_matrix2 => SYNTHESIZED_WIRE_4,
		 out_matrix3 => SYNTHESIZED_WIRE_5);


END bdf_type;