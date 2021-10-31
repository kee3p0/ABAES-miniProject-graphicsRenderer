-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
-- CREATED		"Fri Oct 29 16:04:12 2021"

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

ENTITY projection IS 
	PORT
	(
		load :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		c :  IN  ARRAY2D0;
		p0 :  IN  ARRAY2D0;
		p1 :  IN  ARRAY2D0;
		p2 :  IN  ARRAY2D0;
		p3 :  IN  ARRAY2D0;
		p4 :  IN  ARRAY2D0;
		p5 :  IN  ARRAY2D0;
		p6 :  IN  ARRAY2D0;
		p7 :  IN  ARRAY2D0;
		r0 :  IN  ARRAY2D1;
		r1 :  IN  ARRAY2D1;
		r2 :  IN  ARRAY2D1;
		r3 :  IN  ARRAY2D1;
		loadData :  OUT  STD_LOGIC;
		data :  OUT  STD_LOGIC_VECTOR(17 DOWNTO 0)
	);
END projection;

ARCHITECTURE bdf_type OF projection IS 

COMPONENT controller
	PORT(clk : IN STD_LOGIC;
		 in_rdy : IN STD_LOGIC;
		 loadCamera : OUT STD_LOGIC;
		 loadOut : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT outputbuffer
	PORT(clk : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 p0_u : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 p0_v : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 P1_u : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 P1_v : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 P2_u : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 P2_v : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 P3_u : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 P3_v : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 P4_u : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 P4_v : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 P5_u : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 P5_v : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 P6_u : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 P6_v : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 P7_u : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 P7_v : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 loadData : OUT STD_LOGIC;
		 data : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
	);
END COMPONENT;

COMPONENT cameraprojection
	PORT(clk : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 C : IN ARRAY2D0;
		 Pw : IN ARRAY2D0;
		 R0 : IN ARRAY2D1;
		 R1 : IN ARRAY2D1;
		 R2 : IN ARRAY2D1;
		 R3 : IN ARRAY2D1;
		 u : OUT STD_LOGIC_VECTOR(0 TO 7);
		 v : OUT STD_LOGIC_VECTOR(0 TO 7)
	);
END COMPONENT;

COMPONENT vectorstore
	PORT(clk : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 C_in : IN ARRAY2D0;
		 p0 : IN ARRAY2D0;
		 P1 : IN ARRAY2D0;
		 P2 : IN ARRAY2D0;
		 P3 : IN ARRAY2D0;
		 P4 : IN ARRAY2D0;
		 P5 : IN ARRAY2D0;
		 P6 : IN ARRAY2D0;
		 P7 : IN ARRAY2D0;
		 rdy : OUT STD_LOGIC;
		 C_out : OUT ARRAY2D0;
		 w0 : OUT ARRAY2D0;
		 w1 : OUT ARRAY2D0;
		 w2 : OUT ARRAY2D0;
		 w3 : OUT ARRAY2D0;
		 w4 : OUT ARRAY2D0;
		 w5 : OUT ARRAY2D0;
		 w6 : OUT ARRAY2D0;
		 w7 : OUT ARRAY2D0
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

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_74 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_75 :  ARRAY2D0;
SIGNAL	SYNTHESIZED_WIRE_20 :  ARRAY2D0;
SIGNAL	SYNTHESIZED_WIRE_76 :  ARRAY2D1;
SIGNAL	SYNTHESIZED_WIRE_77 :  ARRAY2D1;
SIGNAL	SYNTHESIZED_WIRE_78 :  ARRAY2D1;
SIGNAL	SYNTHESIZED_WIRE_79 :  ARRAY2D1;
SIGNAL	SYNTHESIZED_WIRE_27 :  ARRAY2D0;
SIGNAL	SYNTHESIZED_WIRE_34 :  ARRAY2D0;
SIGNAL	SYNTHESIZED_WIRE_41 :  ARRAY2D0;
SIGNAL	SYNTHESIZED_WIRE_48 :  ARRAY2D0;
SIGNAL	SYNTHESIZED_WIRE_55 :  ARRAY2D0;
SIGNAL	SYNTHESIZED_WIRE_62 :  ARRAY2D0;
SIGNAL	SYNTHESIZED_WIRE_69 :  ARRAY2D0;


BEGIN 



b2v_control : controller
PORT MAP(clk => clk,
		 in_rdy => SYNTHESIZED_WIRE_0,
		 loadCamera => SYNTHESIZED_WIRE_74,
		 loadOut => SYNTHESIZED_WIRE_1);


b2v_Out : outputbuffer
PORT MAP(clk => clk,
		 load => SYNTHESIZED_WIRE_1,
		 p0_u => SYNTHESIZED_WIRE_2,
		 p0_v => SYNTHESIZED_WIRE_3,
		 P1_u => SYNTHESIZED_WIRE_4,
		 P1_v => SYNTHESIZED_WIRE_5,
		 P2_u => SYNTHESIZED_WIRE_6,
		 P2_v => SYNTHESIZED_WIRE_7,
		 P3_u => SYNTHESIZED_WIRE_8,
		 P3_v => SYNTHESIZED_WIRE_9,
		 P4_u => SYNTHESIZED_WIRE_10,
		 P4_v => SYNTHESIZED_WIRE_11,
		 P5_u => SYNTHESIZED_WIRE_12,
		 P5_v => SYNTHESIZED_WIRE_13,
		 P6_u => SYNTHESIZED_WIRE_14,
		 P6_v => SYNTHESIZED_WIRE_15,
		 P7_u => SYNTHESIZED_WIRE_16,
		 P7_v => SYNTHESIZED_WIRE_17,
		 loadData => loadData,
		 data => data);


b2v_point0 : cameraprojection
PORT MAP(clk => clk,
		 load => SYNTHESIZED_WIRE_74,
		 C => SYNTHESIZED_WIRE_75,
		 Pw => SYNTHESIZED_WIRE_20,
		 R0 => SYNTHESIZED_WIRE_76,
		 R1 => SYNTHESIZED_WIRE_77,
		 R2 => SYNTHESIZED_WIRE_78,
		 R3 => SYNTHESIZED_WIRE_79,
		 u => SYNTHESIZED_WIRE_2,
		 v => SYNTHESIZED_WIRE_3);


b2v_point1 : cameraprojection
PORT MAP(clk => clk,
		 load => SYNTHESIZED_WIRE_74,
		 C => SYNTHESIZED_WIRE_75,
		 Pw => SYNTHESIZED_WIRE_27,
		 R0 => SYNTHESIZED_WIRE_76,
		 R1 => SYNTHESIZED_WIRE_77,
		 R2 => SYNTHESIZED_WIRE_78,
		 R3 => SYNTHESIZED_WIRE_79,
		 u => SYNTHESIZED_WIRE_4,
		 v => SYNTHESIZED_WIRE_5);


b2v_point2 : cameraprojection
PORT MAP(clk => clk,
		 load => SYNTHESIZED_WIRE_74,
		 C => SYNTHESIZED_WIRE_75,
		 Pw => SYNTHESIZED_WIRE_34,
		 R0 => SYNTHESIZED_WIRE_76,
		 R1 => SYNTHESIZED_WIRE_77,
		 R2 => SYNTHESIZED_WIRE_78,
		 R3 => SYNTHESIZED_WIRE_79,
		 u => SYNTHESIZED_WIRE_6,
		 v => SYNTHESIZED_WIRE_7);


b2v_point3 : cameraprojection
PORT MAP(clk => clk,
		 load => SYNTHESIZED_WIRE_74,
		 C => SYNTHESIZED_WIRE_75,
		 Pw => SYNTHESIZED_WIRE_41,
		 R0 => SYNTHESIZED_WIRE_76,
		 R1 => SYNTHESIZED_WIRE_77,
		 R2 => SYNTHESIZED_WIRE_78,
		 R3 => SYNTHESIZED_WIRE_79,
		 u => SYNTHESIZED_WIRE_8,
		 v => SYNTHESIZED_WIRE_9);


b2v_point4 : cameraprojection
PORT MAP(clk => clk,
		 load => SYNTHESIZED_WIRE_74,
		 C => SYNTHESIZED_WIRE_75,
		 Pw => SYNTHESIZED_WIRE_48,
		 R0 => SYNTHESIZED_WIRE_76,
		 R1 => SYNTHESIZED_WIRE_77,
		 R2 => SYNTHESIZED_WIRE_78,
		 R3 => SYNTHESIZED_WIRE_79,
		 u => SYNTHESIZED_WIRE_10,
		 v => SYNTHESIZED_WIRE_11);


b2v_point5 : cameraprojection
PORT MAP(clk => clk,
		 load => SYNTHESIZED_WIRE_74,
		 C => SYNTHESIZED_WIRE_75,
		 Pw => SYNTHESIZED_WIRE_55,
		 R0 => SYNTHESIZED_WIRE_76,
		 R1 => SYNTHESIZED_WIRE_77,
		 R2 => SYNTHESIZED_WIRE_78,
		 R3 => SYNTHESIZED_WIRE_79,
		 u => SYNTHESIZED_WIRE_12,
		 v => SYNTHESIZED_WIRE_13);


b2v_point6 : cameraprojection
PORT MAP(clk => clk,
		 load => SYNTHESIZED_WIRE_74,
		 C => SYNTHESIZED_WIRE_75,
		 Pw => SYNTHESIZED_WIRE_62,
		 R0 => SYNTHESIZED_WIRE_76,
		 R1 => SYNTHESIZED_WIRE_77,
		 R2 => SYNTHESIZED_WIRE_78,
		 R3 => SYNTHESIZED_WIRE_79,
		 u => SYNTHESIZED_WIRE_14,
		 v => SYNTHESIZED_WIRE_15);


b2v_point7 : cameraprojection
PORT MAP(clk => clk,
		 load => SYNTHESIZED_WIRE_74,
		 C => SYNTHESIZED_WIRE_75,
		 Pw => SYNTHESIZED_WIRE_69,
		 R0 => SYNTHESIZED_WIRE_76,
		 R1 => SYNTHESIZED_WIRE_77,
		 R2 => SYNTHESIZED_WIRE_78,
		 R3 => SYNTHESIZED_WIRE_79,
		 u => SYNTHESIZED_WIRE_16,
		 v => SYNTHESIZED_WIRE_17);


b2v_Points : vectorstore
PORT MAP(clk => clk,
		 load => load,
		 C_in => c,
		 p0 => p0,
		 P1 => p1,
		 P2 => p2,
		 P3 => p3,
		 P4 => p4,
		 P5 => p5,
		 P6 => p6,
		 P7 => p7,
		 rdy => SYNTHESIZED_WIRE_0,
		 C_out => SYNTHESIZED_WIRE_75,
		 w0 => SYNTHESIZED_WIRE_20,
		 w1 => SYNTHESIZED_WIRE_27,
		 w2 => SYNTHESIZED_WIRE_34,
		 w3 => SYNTHESIZED_WIRE_41,
		 w4 => SYNTHESIZED_WIRE_48,
		 w5 => SYNTHESIZED_WIRE_55,
		 w6 => SYNTHESIZED_WIRE_62,
		 w7 => SYNTHESIZED_WIRE_69);


b2v_R : storematrix
PORT MAP(clk => clk,
		 load => load,
		 in_matrix0 => r0,
		 in_matrix1 => r1,
		 in_matrix2 => r2,
		 in_matrix3 => r3,
		 out_matrix0 => SYNTHESIZED_WIRE_76,
		 out_matrix1 => SYNTHESIZED_WIRE_77,
		 out_matrix2 => SYNTHESIZED_WIRE_78,
		 out_matrix3 => SYNTHESIZED_WIRE_79);


END bdf_type;