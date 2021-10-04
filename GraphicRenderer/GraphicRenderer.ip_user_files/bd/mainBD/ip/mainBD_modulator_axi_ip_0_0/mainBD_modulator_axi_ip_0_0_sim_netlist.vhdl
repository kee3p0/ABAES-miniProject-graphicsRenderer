-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Sep 16 13:21:45 2020
-- Host        : DESKTOP-3K9CSVV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/sources/vivado/Sys_B_ref_design_Z7_10_V19_1/MatlabBuildRootTest1/MatlabBuildRootTest1.srcs/sources_1/bd/mainBD/ip/mainBD_modulator_axi_ip_0_0/mainBD_modulator_axi_ip_0_0_sim_netlist.vhdl
-- Design      : mainBD_modulator_axi_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mainBD_modulator_axi_ip_0_0_counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mainBD_modulator_axi_ip_0_0_counter : entity is "counter";
end mainBD_modulator_axi_ip_0_0_counter;

architecture STRUCTURE of mainBD_modulator_axi_ip_0_0_counter is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cnt_out_s : STD_LOGIC;
  signal \cnt_out_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_out_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_out_s[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_out_s[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_out_s[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_out_s[7]_i_2_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 5 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_out_s[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_out_s[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_out_s[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_out_s[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_out_s[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_out_s[7]_i_1\ : label is "soft_lutpair2";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\cnt_out_s[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F7"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \cnt_out_s[7]_i_2_n_0\,
      I3 => \^q\(0),
      O => \cnt_out_s[0]_i_1_n_0\
    );
\cnt_out_s[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F7F700"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \cnt_out_s[7]_i_2_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \cnt_out_s[1]_i_1_n_0\
    );
\cnt_out_s[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F7F7F7F7000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \cnt_out_s[7]_i_2_n_0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \cnt_out_s[2]_i_1_n_0\
    );
\cnt_out_s[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\cnt_out_s[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => plusOp(4)
    );
\cnt_out_s[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^q\(7),
      I1 => E(0),
      I2 => \^q\(6),
      I3 => \cnt_out_s[7]_i_2_n_0\,
      O => cnt_out_s
    );
\cnt_out_s[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => plusOp(5)
    );
\cnt_out_s[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \cnt_out_s[7]_i_2_n_0\,
      O => \cnt_out_s[6]_i_1_n_0\
    );
\cnt_out_s[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \cnt_out_s[7]_i_2_n_0\,
      O => \cnt_out_s[7]_i_1_n_0\
    );
\cnt_out_s[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \cnt_out_s[7]_i_2_n_0\
    );
\cnt_out_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \cnt_out_s[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\cnt_out_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \cnt_out_s[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\cnt_out_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \cnt_out_s[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\cnt_out_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(3),
      Q => \^q\(3),
      R => cnt_out_s
    );
\cnt_out_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(4),
      Q => \^q\(4),
      R => cnt_out_s
    );
\cnt_out_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(5),
      Q => \^q\(5),
      R => cnt_out_s
    );
\cnt_out_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \cnt_out_s[6]_i_1_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\cnt_out_s_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \cnt_out_s[7]_i_1_n_0\,
      Q => \^q\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mainBD_modulator_axi_ip_0_0_frequency_trigger is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \minusOp_inferred__0/i__carry__6_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    freq_trig_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mainBD_modulator_axi_ip_0_0_frequency_trigger : entity is "frequency_trigger";
end mainBD_modulator_axi_ip_0_0_frequency_trigger;

architecture STRUCTURE of mainBD_modulator_axi_ip_0_0_frequency_trigger is
  signal \freq_cnt_s[0]_i_2_n_0\ : STD_LOGIC;
  signal freq_cnt_s_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \freq_cnt_s_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \freq_cnt_s_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \freq_cnt_s_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal freq_trig_i_1_n_0 : STD_LOGIC;
  signal geqOp : STD_LOGIC;
  signal \geqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_n_1\ : STD_LOGIC;
  signal \geqOp_carry__0_n_2\ : STD_LOGIC;
  signal \geqOp_carry__0_n_3\ : STD_LOGIC;
  signal \geqOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_n_1\ : STD_LOGIC;
  signal \geqOp_carry__1_n_2\ : STD_LOGIC;
  signal \geqOp_carry__1_n_3\ : STD_LOGIC;
  signal \geqOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_n_1\ : STD_LOGIC;
  signal \geqOp_carry__2_n_2\ : STD_LOGIC;
  signal \geqOp_carry__2_n_3\ : STD_LOGIC;
  signal \geqOp_carry__3_i_1_n_0\ : STD_LOGIC;
  signal geqOp_carry_i_1_n_0 : STD_LOGIC;
  signal geqOp_carry_i_2_n_0 : STD_LOGIC;
  signal geqOp_carry_i_3_n_0 : STD_LOGIC;
  signal geqOp_carry_i_4_n_0 : STD_LOGIC;
  signal geqOp_carry_i_5_n_0 : STD_LOGIC;
  signal geqOp_carry_i_6_n_0 : STD_LOGIC;
  signal geqOp_carry_i_7_n_0 : STD_LOGIC;
  signal geqOp_carry_i_8_n_0 : STD_LOGIC;
  signal geqOp_carry_n_0 : STD_LOGIC;
  signal geqOp_carry_n_1 : STD_LOGIC;
  signal geqOp_carry_n_2 : STD_LOGIC;
  signal geqOp_carry_n_3 : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \minusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_2__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_carry__3_n_2\ : STD_LOGIC;
  signal \minusOp_carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_n_1\ : STD_LOGIC;
  signal \minusOp_carry__4_n_2\ : STD_LOGIC;
  signal \minusOp_carry__4_n_3\ : STD_LOGIC;
  signal \minusOp_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_n_1\ : STD_LOGIC;
  signal \minusOp_carry__5_n_2\ : STD_LOGIC;
  signal \minusOp_carry__5_n_3\ : STD_LOGIC;
  signal \minusOp_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__6_n_2\ : STD_LOGIC;
  signal \minusOp_carry__6_n_3\ : STD_LOGIC;
  signal minusOp_carry_i_1_n_0 : STD_LOGIC;
  signal minusOp_carry_i_2_n_0 : STD_LOGIC;
  signal minusOp_carry_i_3_n_0 : STD_LOGIC;
  signal minusOp_carry_i_4_n_0 : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \NLW_freq_cnt_s_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_geqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_geqOp_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_geqOp_inferred__0/i__carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\freq_cnt_s[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => freq_cnt_s_reg(0),
      O => \freq_cnt_s[0]_i_2_n_0\
    );
\freq_cnt_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[0]_i_1_n_7\,
      Q => freq_cnt_s_reg(0),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \freq_cnt_s_reg[0]_i_1_n_0\,
      CO(2) => \freq_cnt_s_reg[0]_i_1_n_1\,
      CO(1) => \freq_cnt_s_reg[0]_i_1_n_2\,
      CO(0) => \freq_cnt_s_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \freq_cnt_s_reg[0]_i_1_n_4\,
      O(2) => \freq_cnt_s_reg[0]_i_1_n_5\,
      O(1) => \freq_cnt_s_reg[0]_i_1_n_6\,
      O(0) => \freq_cnt_s_reg[0]_i_1_n_7\,
      S(3 downto 1) => freq_cnt_s_reg(3 downto 1),
      S(0) => \freq_cnt_s[0]_i_2_n_0\
    );
\freq_cnt_s_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[8]_i_1_n_5\,
      Q => freq_cnt_s_reg(10),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[8]_i_1_n_4\,
      Q => freq_cnt_s_reg(11),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[12]_i_1_n_7\,
      Q => freq_cnt_s_reg(12),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \freq_cnt_s_reg[8]_i_1_n_0\,
      CO(3) => \freq_cnt_s_reg[12]_i_1_n_0\,
      CO(2) => \freq_cnt_s_reg[12]_i_1_n_1\,
      CO(1) => \freq_cnt_s_reg[12]_i_1_n_2\,
      CO(0) => \freq_cnt_s_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \freq_cnt_s_reg[12]_i_1_n_4\,
      O(2) => \freq_cnt_s_reg[12]_i_1_n_5\,
      O(1) => \freq_cnt_s_reg[12]_i_1_n_6\,
      O(0) => \freq_cnt_s_reg[12]_i_1_n_7\,
      S(3 downto 0) => freq_cnt_s_reg(15 downto 12)
    );
\freq_cnt_s_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[12]_i_1_n_6\,
      Q => freq_cnt_s_reg(13),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[12]_i_1_n_5\,
      Q => freq_cnt_s_reg(14),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[12]_i_1_n_4\,
      Q => freq_cnt_s_reg(15),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[16]_i_1_n_7\,
      Q => freq_cnt_s_reg(16),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \freq_cnt_s_reg[12]_i_1_n_0\,
      CO(3) => \freq_cnt_s_reg[16]_i_1_n_0\,
      CO(2) => \freq_cnt_s_reg[16]_i_1_n_1\,
      CO(1) => \freq_cnt_s_reg[16]_i_1_n_2\,
      CO(0) => \freq_cnt_s_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \freq_cnt_s_reg[16]_i_1_n_4\,
      O(2) => \freq_cnt_s_reg[16]_i_1_n_5\,
      O(1) => \freq_cnt_s_reg[16]_i_1_n_6\,
      O(0) => \freq_cnt_s_reg[16]_i_1_n_7\,
      S(3 downto 0) => freq_cnt_s_reg(19 downto 16)
    );
\freq_cnt_s_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[16]_i_1_n_6\,
      Q => freq_cnt_s_reg(17),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[16]_i_1_n_5\,
      Q => freq_cnt_s_reg(18),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[16]_i_1_n_4\,
      Q => freq_cnt_s_reg(19),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[0]_i_1_n_6\,
      Q => freq_cnt_s_reg(1),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[20]_i_1_n_7\,
      Q => freq_cnt_s_reg(20),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \freq_cnt_s_reg[16]_i_1_n_0\,
      CO(3) => \freq_cnt_s_reg[20]_i_1_n_0\,
      CO(2) => \freq_cnt_s_reg[20]_i_1_n_1\,
      CO(1) => \freq_cnt_s_reg[20]_i_1_n_2\,
      CO(0) => \freq_cnt_s_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \freq_cnt_s_reg[20]_i_1_n_4\,
      O(2) => \freq_cnt_s_reg[20]_i_1_n_5\,
      O(1) => \freq_cnt_s_reg[20]_i_1_n_6\,
      O(0) => \freq_cnt_s_reg[20]_i_1_n_7\,
      S(3 downto 0) => freq_cnt_s_reg(23 downto 20)
    );
\freq_cnt_s_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[20]_i_1_n_6\,
      Q => freq_cnt_s_reg(21),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[20]_i_1_n_5\,
      Q => freq_cnt_s_reg(22),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[20]_i_1_n_4\,
      Q => freq_cnt_s_reg(23),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[24]_i_1_n_7\,
      Q => freq_cnt_s_reg(24),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \freq_cnt_s_reg[20]_i_1_n_0\,
      CO(3) => \freq_cnt_s_reg[24]_i_1_n_0\,
      CO(2) => \freq_cnt_s_reg[24]_i_1_n_1\,
      CO(1) => \freq_cnt_s_reg[24]_i_1_n_2\,
      CO(0) => \freq_cnt_s_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \freq_cnt_s_reg[24]_i_1_n_4\,
      O(2) => \freq_cnt_s_reg[24]_i_1_n_5\,
      O(1) => \freq_cnt_s_reg[24]_i_1_n_6\,
      O(0) => \freq_cnt_s_reg[24]_i_1_n_7\,
      S(3 downto 0) => freq_cnt_s_reg(27 downto 24)
    );
\freq_cnt_s_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[24]_i_1_n_6\,
      Q => freq_cnt_s_reg(25),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[24]_i_1_n_5\,
      Q => freq_cnt_s_reg(26),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[24]_i_1_n_4\,
      Q => freq_cnt_s_reg(27),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[28]_i_1_n_7\,
      Q => freq_cnt_s_reg(28),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \freq_cnt_s_reg[24]_i_1_n_0\,
      CO(3) => \NLW_freq_cnt_s_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \freq_cnt_s_reg[28]_i_1_n_1\,
      CO(1) => \freq_cnt_s_reg[28]_i_1_n_2\,
      CO(0) => \freq_cnt_s_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \freq_cnt_s_reg[28]_i_1_n_4\,
      O(2) => \freq_cnt_s_reg[28]_i_1_n_5\,
      O(1) => \freq_cnt_s_reg[28]_i_1_n_6\,
      O(0) => \freq_cnt_s_reg[28]_i_1_n_7\,
      S(3 downto 0) => freq_cnt_s_reg(31 downto 28)
    );
\freq_cnt_s_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[28]_i_1_n_6\,
      Q => freq_cnt_s_reg(29),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[0]_i_1_n_5\,
      Q => freq_cnt_s_reg(2),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[28]_i_1_n_5\,
      Q => freq_cnt_s_reg(30),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[28]_i_1_n_4\,
      Q => freq_cnt_s_reg(31),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[0]_i_1_n_4\,
      Q => freq_cnt_s_reg(3),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[4]_i_1_n_7\,
      Q => freq_cnt_s_reg(4),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \freq_cnt_s_reg[0]_i_1_n_0\,
      CO(3) => \freq_cnt_s_reg[4]_i_1_n_0\,
      CO(2) => \freq_cnt_s_reg[4]_i_1_n_1\,
      CO(1) => \freq_cnt_s_reg[4]_i_1_n_2\,
      CO(0) => \freq_cnt_s_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \freq_cnt_s_reg[4]_i_1_n_4\,
      O(2) => \freq_cnt_s_reg[4]_i_1_n_5\,
      O(1) => \freq_cnt_s_reg[4]_i_1_n_6\,
      O(0) => \freq_cnt_s_reg[4]_i_1_n_7\,
      S(3 downto 0) => freq_cnt_s_reg(7 downto 4)
    );
\freq_cnt_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[4]_i_1_n_6\,
      Q => freq_cnt_s_reg(5),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[4]_i_1_n_5\,
      Q => freq_cnt_s_reg(6),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[4]_i_1_n_4\,
      Q => freq_cnt_s_reg(7),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[8]_i_1_n_7\,
      Q => freq_cnt_s_reg(8),
      R => freq_trig_i_1_n_0
    );
\freq_cnt_s_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \freq_cnt_s_reg[4]_i_1_n_0\,
      CO(3) => \freq_cnt_s_reg[8]_i_1_n_0\,
      CO(2) => \freq_cnt_s_reg[8]_i_1_n_1\,
      CO(1) => \freq_cnt_s_reg[8]_i_1_n_2\,
      CO(0) => \freq_cnt_s_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \freq_cnt_s_reg[8]_i_1_n_4\,
      O(2) => \freq_cnt_s_reg[8]_i_1_n_5\,
      O(1) => \freq_cnt_s_reg[8]_i_1_n_6\,
      O(0) => \freq_cnt_s_reg[8]_i_1_n_7\,
      S(3 downto 0) => freq_cnt_s_reg(11 downto 8)
    );
\freq_cnt_s_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[8]_i_1_n_6\,
      Q => freq_cnt_s_reg(9),
      R => freq_trig_i_1_n_0
    );
freq_trig_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \geqOp_inferred__0/i__carry__3_n_3\,
      I1 => freq_trig_reg_0(0),
      I2 => geqOp,
      O => freq_trig_i_1_n_0
    );
freq_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => freq_trig_i_1_n_0,
      Q => E(0),
      R => '0'
    );
geqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => geqOp_carry_n_0,
      CO(2) => geqOp_carry_n_1,
      CO(1) => geqOp_carry_n_2,
      CO(0) => geqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => geqOp_carry_i_1_n_0,
      DI(2) => geqOp_carry_i_2_n_0,
      DI(1) => geqOp_carry_i_3_n_0,
      DI(0) => geqOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_geqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => geqOp_carry_i_5_n_0,
      S(2) => geqOp_carry_i_6_n_0,
      S(1) => geqOp_carry_i_7_n_0,
      S(0) => geqOp_carry_i_8_n_0
    );
\geqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => geqOp_carry_n_0,
      CO(3) => \geqOp_carry__0_n_0\,
      CO(2) => \geqOp_carry__0_n_1\,
      CO(1) => \geqOp_carry__0_n_2\,
      CO(0) => \geqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \geqOp_carry__0_i_1_n_0\,
      DI(2) => \geqOp_carry__0_i_2_n_0\,
      DI(1) => \geqOp_carry__0_i_3_n_0\,
      DI(0) => \geqOp_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_geqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \geqOp_carry__0_i_5_n_0\,
      S(2) => \geqOp_carry__0_i_6_n_0\,
      S(1) => \geqOp_carry__0_i_7_n_0\,
      S(0) => \geqOp_carry__0_i_8_n_0\
    );
\geqOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(15),
      I1 => minusOp(15),
      I2 => freq_cnt_s_reg(14),
      I3 => minusOp(14),
      O => \geqOp_carry__0_i_1_n_0\
    );
\geqOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(13),
      I1 => minusOp(13),
      I2 => freq_cnt_s_reg(12),
      I3 => minusOp(12),
      O => \geqOp_carry__0_i_2_n_0\
    );
\geqOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(11),
      I1 => minusOp(11),
      I2 => freq_cnt_s_reg(10),
      I3 => minusOp(10),
      O => \geqOp_carry__0_i_3_n_0\
    );
\geqOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(9),
      I1 => minusOp(9),
      I2 => freq_cnt_s_reg(8),
      I3 => minusOp(8),
      O => \geqOp_carry__0_i_4_n_0\
    );
\geqOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(15),
      I1 => freq_cnt_s_reg(15),
      I2 => minusOp(14),
      I3 => freq_cnt_s_reg(14),
      O => \geqOp_carry__0_i_5_n_0\
    );
\geqOp_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(13),
      I1 => freq_cnt_s_reg(13),
      I2 => minusOp(12),
      I3 => freq_cnt_s_reg(12),
      O => \geqOp_carry__0_i_6_n_0\
    );
\geqOp_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(11),
      I1 => freq_cnt_s_reg(11),
      I2 => minusOp(10),
      I3 => freq_cnt_s_reg(10),
      O => \geqOp_carry__0_i_7_n_0\
    );
\geqOp_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(9),
      I1 => freq_cnt_s_reg(9),
      I2 => minusOp(8),
      I3 => freq_cnt_s_reg(8),
      O => \geqOp_carry__0_i_8_n_0\
    );
\geqOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_carry__0_n_0\,
      CO(3) => \geqOp_carry__1_n_0\,
      CO(2) => \geqOp_carry__1_n_1\,
      CO(1) => \geqOp_carry__1_n_2\,
      CO(0) => \geqOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \geqOp_carry__1_i_1_n_0\,
      DI(2) => \geqOp_carry__1_i_2_n_0\,
      DI(1) => \geqOp_carry__1_i_3_n_0\,
      DI(0) => \geqOp_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_geqOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \geqOp_carry__1_i_5_n_0\,
      S(2) => \geqOp_carry__1_i_6_n_0\,
      S(1) => \geqOp_carry__1_i_7_n_0\,
      S(0) => \geqOp_carry__1_i_8_n_0\
    );
\geqOp_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(23),
      I1 => minusOp(23),
      I2 => freq_cnt_s_reg(22),
      I3 => minusOp(22),
      O => \geqOp_carry__1_i_1_n_0\
    );
\geqOp_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(21),
      I1 => minusOp(21),
      I2 => freq_cnt_s_reg(20),
      I3 => minusOp(20),
      O => \geqOp_carry__1_i_2_n_0\
    );
\geqOp_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(19),
      I1 => minusOp(19),
      I2 => freq_cnt_s_reg(18),
      I3 => minusOp(18),
      O => \geqOp_carry__1_i_3_n_0\
    );
\geqOp_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(17),
      I1 => minusOp(17),
      I2 => freq_cnt_s_reg(16),
      I3 => minusOp(16),
      O => \geqOp_carry__1_i_4_n_0\
    );
\geqOp_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(23),
      I1 => freq_cnt_s_reg(23),
      I2 => minusOp(22),
      I3 => freq_cnt_s_reg(22),
      O => \geqOp_carry__1_i_5_n_0\
    );
\geqOp_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(21),
      I1 => freq_cnt_s_reg(21),
      I2 => minusOp(20),
      I3 => freq_cnt_s_reg(20),
      O => \geqOp_carry__1_i_6_n_0\
    );
\geqOp_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(19),
      I1 => freq_cnt_s_reg(19),
      I2 => minusOp(18),
      I3 => freq_cnt_s_reg(18),
      O => \geqOp_carry__1_i_7_n_0\
    );
\geqOp_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(17),
      I1 => freq_cnt_s_reg(17),
      I2 => minusOp(16),
      I3 => freq_cnt_s_reg(16),
      O => \geqOp_carry__1_i_8_n_0\
    );
\geqOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_carry__1_n_0\,
      CO(3) => \geqOp_carry__2_n_0\,
      CO(2) => \geqOp_carry__2_n_1\,
      CO(1) => \geqOp_carry__2_n_2\,
      CO(0) => \geqOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \geqOp_carry__2_i_1_n_0\,
      DI(2) => \geqOp_carry__2_i_2_n_0\,
      DI(1) => \geqOp_carry__2_i_3_n_0\,
      DI(0) => \geqOp_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_geqOp_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \geqOp_carry__2_i_5_n_0\,
      S(2) => \geqOp_carry__2_i_6_n_0\,
      S(1) => \geqOp_carry__2_i_7_n_0\,
      S(0) => \geqOp_carry__2_i_8_n_0\
    );
\geqOp_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(31),
      I1 => minusOp(31),
      I2 => freq_cnt_s_reg(30),
      I3 => minusOp(30),
      O => \geqOp_carry__2_i_1_n_0\
    );
\geqOp_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(29),
      I1 => minusOp(29),
      I2 => freq_cnt_s_reg(28),
      I3 => minusOp(28),
      O => \geqOp_carry__2_i_2_n_0\
    );
\geqOp_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(27),
      I1 => minusOp(27),
      I2 => freq_cnt_s_reg(26),
      I3 => minusOp(26),
      O => \geqOp_carry__2_i_3_n_0\
    );
\geqOp_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(25),
      I1 => minusOp(25),
      I2 => freq_cnt_s_reg(24),
      I3 => minusOp(24),
      O => \geqOp_carry__2_i_4_n_0\
    );
\geqOp_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(31),
      I1 => freq_cnt_s_reg(31),
      I2 => minusOp(30),
      I3 => freq_cnt_s_reg(30),
      O => \geqOp_carry__2_i_5_n_0\
    );
\geqOp_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(29),
      I1 => freq_cnt_s_reg(29),
      I2 => minusOp(28),
      I3 => freq_cnt_s_reg(28),
      O => \geqOp_carry__2_i_6_n_0\
    );
\geqOp_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(27),
      I1 => freq_cnt_s_reg(27),
      I2 => minusOp(26),
      I3 => freq_cnt_s_reg(26),
      O => \geqOp_carry__2_i_7_n_0\
    );
\geqOp_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(25),
      I1 => freq_cnt_s_reg(25),
      I2 => minusOp(24),
      I3 => freq_cnt_s_reg(24),
      O => \geqOp_carry__2_i_8_n_0\
    );
\geqOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_carry__2_n_0\,
      CO(3 downto 1) => \NLW_geqOp_carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => geqOp,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_geqOp_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \geqOp_carry__3_i_1_n_0\
    );
\geqOp_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => freq_cnt_s_reg(31),
      O => \geqOp_carry__3_i_1_n_0\
    );
geqOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(7),
      I1 => minusOp(7),
      I2 => freq_cnt_s_reg(6),
      I3 => minusOp(6),
      O => geqOp_carry_i_1_n_0
    );
geqOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(5),
      I1 => minusOp(5),
      I2 => freq_cnt_s_reg(4),
      I3 => minusOp(4),
      O => geqOp_carry_i_2_n_0
    );
geqOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(3),
      I1 => minusOp(3),
      I2 => freq_cnt_s_reg(2),
      I3 => minusOp(2),
      O => geqOp_carry_i_3_n_0
    );
geqOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B222"
    )
        port map (
      I0 => freq_cnt_s_reg(1),
      I1 => minusOp(1),
      I2 => Q(0),
      I3 => freq_cnt_s_reg(0),
      O => geqOp_carry_i_4_n_0
    );
geqOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(7),
      I1 => freq_cnt_s_reg(7),
      I2 => minusOp(6),
      I3 => freq_cnt_s_reg(6),
      O => geqOp_carry_i_5_n_0
    );
geqOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(5),
      I1 => freq_cnt_s_reg(5),
      I2 => minusOp(4),
      I3 => freq_cnt_s_reg(4),
      O => geqOp_carry_i_6_n_0
    );
geqOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp(3),
      I1 => freq_cnt_s_reg(3),
      I2 => minusOp(2),
      I3 => freq_cnt_s_reg(2),
      O => geqOp_carry_i_7_n_0
    );
geqOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => minusOp(1),
      I1 => freq_cnt_s_reg(1),
      I2 => Q(0),
      I3 => freq_cnt_s_reg(0),
      O => geqOp_carry_i_8_n_0
    );
\geqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \geqOp_inferred__0/i__carry_n_0\,
      CO(2) => \geqOp_inferred__0/i__carry_n_1\,
      CO(1) => \geqOp_inferred__0/i__carry_n_2\,
      CO(0) => \geqOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\geqOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_inferred__0/i__carry_n_0\,
      CO(3) => \geqOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \geqOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \geqOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \geqOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_2__0_n_0\,
      DI(1) => \i__carry__0_i_3__0_n_0\,
      DI(0) => \i__carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\geqOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \geqOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \geqOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \geqOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \geqOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2__0_n_0\,
      DI(1) => \i__carry__1_i_3__0_n_0\,
      DI(0) => \i__carry__1_i_4__0_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\geqOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \geqOp_inferred__0/i__carry__2_n_0\,
      CO(2) => \geqOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \geqOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \geqOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
\geqOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_inferred__0/i__carry__2_n_0\,
      CO(3 downto 1) => \NLW_geqOp_inferred__0/i__carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \geqOp_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry__3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__3_i_1__1_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(15),
      I1 => \minusOp_inferred__0/i__carry__2_n_5\,
      I2 => freq_cnt_s_reg(14),
      I3 => \minusOp_inferred__0/i__carry__2_n_6\,
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(13),
      I1 => \minusOp_inferred__0/i__carry__2_n_7\,
      I2 => freq_cnt_s_reg(12),
      I3 => \minusOp_inferred__0/i__carry__1_n_4\,
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(6),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(11),
      I1 => \minusOp_inferred__0/i__carry__1_n_5\,
      I2 => freq_cnt_s_reg(10),
      I3 => \minusOp_inferred__0/i__carry__1_n_6\,
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(5),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(9),
      I1 => \minusOp_inferred__0/i__carry__1_n_7\,
      I2 => freq_cnt_s_reg(8),
      I3 => \minusOp_inferred__0/i__carry__0_n_4\,
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__2_n_5\,
      I1 => freq_cnt_s_reg(15),
      I2 => \minusOp_inferred__0/i__carry__2_n_6\,
      I3 => freq_cnt_s_reg(14),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__2_n_7\,
      I1 => freq_cnt_s_reg(13),
      I2 => \minusOp_inferred__0/i__carry__1_n_4\,
      I3 => freq_cnt_s_reg(12),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__1_n_5\,
      I1 => freq_cnt_s_reg(11),
      I2 => \minusOp_inferred__0/i__carry__1_n_6\,
      I3 => freq_cnt_s_reg(10),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__1_n_7\,
      I1 => freq_cnt_s_reg(9),
      I2 => \minusOp_inferred__0/i__carry__0_n_4\,
      I3 => freq_cnt_s_reg(8),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(23),
      I1 => \minusOp_inferred__0/i__carry__4_n_5\,
      I2 => freq_cnt_s_reg(22),
      I3 => \minusOp_inferred__0/i__carry__4_n_6\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(12),
      O => \i__carry__1_i_1__1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(11),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(21),
      I1 => \minusOp_inferred__0/i__carry__4_n_7\,
      I2 => freq_cnt_s_reg(20),
      I3 => \minusOp_inferred__0/i__carry__3_n_4\,
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(10),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(19),
      I1 => \minusOp_inferred__0/i__carry__3_n_5\,
      I2 => freq_cnt_s_reg(18),
      I3 => \minusOp_inferred__0/i__carry__3_n_6\,
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(17),
      I1 => \minusOp_inferred__0/i__carry__3_n_7\,
      I2 => freq_cnt_s_reg(16),
      I3 => \minusOp_inferred__0/i__carry__2_n_4\,
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__4_n_5\,
      I1 => freq_cnt_s_reg(23),
      I2 => \minusOp_inferred__0/i__carry__4_n_6\,
      I3 => freq_cnt_s_reg(22),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__4_n_7\,
      I1 => freq_cnt_s_reg(21),
      I2 => \minusOp_inferred__0/i__carry__3_n_4\,
      I3 => freq_cnt_s_reg(20),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_n_5\,
      I1 => freq_cnt_s_reg(19),
      I2 => \minusOp_inferred__0/i__carry__3_n_6\,
      I3 => freq_cnt_s_reg(18),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_n_7\,
      I1 => freq_cnt_s_reg(17),
      I2 => \minusOp_inferred__0/i__carry__2_n_4\,
      I3 => freq_cnt_s_reg(16),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(31),
      I1 => \minusOp_inferred__0/i__carry__6_n_5\,
      I2 => freq_cnt_s_reg(30),
      I3 => \minusOp_inferred__0/i__carry__6_n_6\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(16),
      O => \i__carry__2_i_1__2_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(29),
      I1 => \minusOp_inferred__0/i__carry__6_n_7\,
      I2 => freq_cnt_s_reg(28),
      I3 => \minusOp_inferred__0/i__carry__5_n_4\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(15),
      O => \i__carry__2_i_2__2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(27),
      I1 => \minusOp_inferred__0/i__carry__5_n_5\,
      I2 => freq_cnt_s_reg(26),
      I3 => \minusOp_inferred__0/i__carry__5_n_6\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(14),
      O => \i__carry__2_i_3__2_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(25),
      I1 => \minusOp_inferred__0/i__carry__5_n_7\,
      I2 => freq_cnt_s_reg(24),
      I3 => \minusOp_inferred__0/i__carry__4_n_4\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(13),
      O => \i__carry__2_i_4__2_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_n_5\,
      I1 => freq_cnt_s_reg(31),
      I2 => \minusOp_inferred__0/i__carry__6_n_6\,
      I3 => freq_cnt_s_reg(30),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_n_7\,
      I1 => freq_cnt_s_reg(29),
      I2 => \minusOp_inferred__0/i__carry__5_n_4\,
      I3 => freq_cnt_s_reg(28),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__5_n_5\,
      I1 => freq_cnt_s_reg(27),
      I2 => \minusOp_inferred__0/i__carry__5_n_6\,
      I3 => freq_cnt_s_reg(26),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__5_n_7\,
      I1 => freq_cnt_s_reg(25),
      I2 => \minusOp_inferred__0/i__carry__4_n_4\,
      I3 => freq_cnt_s_reg(24),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry__3_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => freq_cnt_s_reg(31),
      O => \i__carry__3_i_1__1_n_0\
    );
\i__carry__3_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(20),
      O => \i__carry__3_i_1__2_n_0\
    );
\i__carry__3_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(19),
      O => \i__carry__3_i_2__0_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(18),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(17),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(24),
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(23),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(22),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(21),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(28),
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(27),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(26),
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(25),
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(31),
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(30),
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(29),
      O => \i__carry__6_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(7),
      I1 => \minusOp_inferred__0/i__carry__0_n_5\,
      I2 => freq_cnt_s_reg(6),
      I3 => \minusOp_inferred__0/i__carry__0_n_6\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(5),
      I1 => \minusOp_inferred__0/i__carry__0_n_7\,
      I2 => freq_cnt_s_reg(4),
      I3 => \minusOp_inferred__0/i__carry_n_4\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(3),
      I1 => \minusOp_inferred__0/i__carry_n_5\,
      I2 => freq_cnt_s_reg(2),
      I3 => \minusOp_inferred__0/i__carry_n_6\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__6_0\(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B222"
    )
        port map (
      I0 => freq_cnt_s_reg(1),
      I1 => \minusOp_inferred__0/i__carry_n_7\,
      I2 => \minusOp_inferred__0/i__carry__6_0\(0),
      I3 => freq_cnt_s_reg(0),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__0_n_5\,
      I1 => freq_cnt_s_reg(7),
      I2 => \minusOp_inferred__0/i__carry__0_n_6\,
      I3 => freq_cnt_s_reg(6),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__0_n_7\,
      I1 => freq_cnt_s_reg(5),
      I2 => \minusOp_inferred__0/i__carry_n_4\,
      I3 => freq_cnt_s_reg(4),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry_n_5\,
      I1 => freq_cnt_s_reg(3),
      I2 => \minusOp_inferred__0/i__carry_n_6\,
      I3 => freq_cnt_s_reg(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry_n_7\,
      I1 => freq_cnt_s_reg(1),
      I2 => \minusOp_inferred__0/i__carry__6_0\(0),
      I3 => freq_cnt_s_reg(0),
      O => \i__carry_i_8_n_0\
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => Q(0),
      DI(3 downto 0) => Q(4 downto 1),
      O(3 downto 0) => minusOp(4 downto 1),
      S(3) => minusOp_carry_i_1_n_0,
      S(2) => minusOp_carry_i_2_n_0,
      S(1) => minusOp_carry_i_3_n_0,
      S(0) => minusOp_carry_i_4_n_0
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(8 downto 5),
      O(3 downto 0) => minusOp(8 downto 5),
      S(3) => \minusOp_carry__0_i_1_n_0\,
      S(2) => \minusOp_carry__0_i_2_n_0\,
      S(1) => \minusOp_carry__0_i_3_n_0\,
      S(0) => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(8),
      O => \minusOp_carry__0_i_1_n_0\
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      O => \minusOp_carry__0_i_2_n_0\
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(6),
      O => \minusOp_carry__0_i_3_n_0\
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      O => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(12 downto 9),
      O(3 downto 0) => minusOp(12 downto 9),
      S(3) => \minusOp_carry__1_i_1_n_0\,
      S(2) => \minusOp_carry__1_i_2_n_0\,
      S(1) => \minusOp_carry__1_i_3_n_0\,
      S(0) => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(12),
      O => \minusOp_carry__1_i_1_n_0\
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      O => \minusOp_carry__1_i_2_n_0\
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(10),
      O => \minusOp_carry__1_i_3_n_0\
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      O => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3) => \minusOp_carry__2_n_0\,
      CO(2) => \minusOp_carry__2_n_1\,
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(16 downto 13),
      O(3 downto 0) => minusOp(16 downto 13),
      S(3) => \minusOp_carry__2_i_1__0_n_0\,
      S(2) => \minusOp_carry__2_i_2__0_n_0\,
      S(1) => \minusOp_carry__2_i_3__0_n_0\,
      S(0) => \minusOp_carry__2_i_4__0_n_0\
    );
\minusOp_carry__2_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(16),
      O => \minusOp_carry__2_i_1__0_n_0\
    );
\minusOp_carry__2_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      O => \minusOp_carry__2_i_2__0_n_0\
    );
\minusOp_carry__2_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(14),
      O => \minusOp_carry__2_i_3__0_n_0\
    );
\minusOp_carry__2_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      O => \minusOp_carry__2_i_4__0_n_0\
    );
\minusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__2_n_0\,
      CO(3) => \minusOp_carry__3_n_0\,
      CO(2) => \minusOp_carry__3_n_1\,
      CO(1) => \minusOp_carry__3_n_2\,
      CO(0) => \minusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(20 downto 17),
      O(3 downto 0) => minusOp(20 downto 17),
      S(3) => \minusOp_carry__3_i_1__0_n_0\,
      S(2) => \minusOp_carry__3_i_2__0_n_0\,
      S(1) => \minusOp_carry__3_i_3_n_0\,
      S(0) => \minusOp_carry__3_i_4_n_0\
    );
\minusOp_carry__3_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(20),
      O => \minusOp_carry__3_i_1__0_n_0\
    );
\minusOp_carry__3_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      O => \minusOp_carry__3_i_2__0_n_0\
    );
\minusOp_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(18),
      O => \minusOp_carry__3_i_3_n_0\
    );
\minusOp_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      O => \minusOp_carry__3_i_4_n_0\
    );
\minusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__3_n_0\,
      CO(3) => \minusOp_carry__4_n_0\,
      CO(2) => \minusOp_carry__4_n_1\,
      CO(1) => \minusOp_carry__4_n_2\,
      CO(0) => \minusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(24 downto 21),
      O(3 downto 0) => minusOp(24 downto 21),
      S(3) => \minusOp_carry__4_i_1_n_0\,
      S(2) => \minusOp_carry__4_i_2_n_0\,
      S(1) => \minusOp_carry__4_i_3_n_0\,
      S(0) => \minusOp_carry__4_i_4_n_0\
    );
\minusOp_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(24),
      O => \minusOp_carry__4_i_1_n_0\
    );
\minusOp_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      O => \minusOp_carry__4_i_2_n_0\
    );
\minusOp_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(22),
      O => \minusOp_carry__4_i_3_n_0\
    );
\minusOp_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      O => \minusOp_carry__4_i_4_n_0\
    );
\minusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__4_n_0\,
      CO(3) => \minusOp_carry__5_n_0\,
      CO(2) => \minusOp_carry__5_n_1\,
      CO(1) => \minusOp_carry__5_n_2\,
      CO(0) => \minusOp_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(28 downto 25),
      O(3 downto 0) => minusOp(28 downto 25),
      S(3) => \minusOp_carry__5_i_1_n_0\,
      S(2) => \minusOp_carry__5_i_2_n_0\,
      S(1) => \minusOp_carry__5_i_3_n_0\,
      S(0) => \minusOp_carry__5_i_4_n_0\
    );
\minusOp_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(28),
      O => \minusOp_carry__5_i_1_n_0\
    );
\minusOp_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(27),
      O => \minusOp_carry__5_i_2_n_0\
    );
\minusOp_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(26),
      O => \minusOp_carry__5_i_3_n_0\
    );
\minusOp_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(25),
      O => \minusOp_carry__5_i_4_n_0\
    );
\minusOp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__5_n_0\,
      CO(3 downto 2) => \NLW_minusOp_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_carry__6_n_2\,
      CO(0) => \minusOp_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => Q(30 downto 29),
      O(3) => \NLW_minusOp_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => minusOp(31 downto 29),
      S(3) => '0',
      S(2) => \minusOp_carry__6_i_1_n_0\,
      S(1) => \minusOp_carry__6_i_2_n_0\,
      S(0) => \minusOp_carry__6_i_3_n_0\
    );
\minusOp_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(31),
      O => \minusOp_carry__6_i_1_n_0\
    );
\minusOp_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(30),
      O => \minusOp_carry__6_i_2_n_0\
    );
\minusOp_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(29),
      O => \minusOp_carry__6_i_3_n_0\
    );
minusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(4),
      O => minusOp_carry_i_1_n_0
    );
minusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      O => minusOp_carry_i_2_n_0
    );
minusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(2),
      O => minusOp_carry_i_3_n_0
    );
minusOp_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      O => minusOp_carry_i_4_n_0
    );
\minusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__0/i__carry_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry_n_3\,
      CYINIT => \minusOp_inferred__0/i__carry__6_0\(0),
      DI(3 downto 0) => \minusOp_inferred__0/i__carry__6_0\(4 downto 1),
      O(3) => \minusOp_inferred__0/i__carry_n_4\,
      O(2) => \minusOp_inferred__0/i__carry_n_5\,
      O(1) => \minusOp_inferred__0/i__carry_n_6\,
      O(0) => \minusOp_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \minusOp_inferred__0/i__carry__6_0\(8 downto 5),
      O(3) => \minusOp_inferred__0/i__carry__0_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__0_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__0_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \minusOp_inferred__0/i__carry__6_0\(12 downto 9),
      O(3) => \minusOp_inferred__0/i__carry__1_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__1_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__1_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1__1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__2_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \minusOp_inferred__0/i__carry__6_0\(16 downto 13),
      O(3) => \minusOp_inferred__0/i__carry__2_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__2_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__2_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1__2_n_0\,
      S(2) => \i__carry__2_i_2__2_n_0\,
      S(1) => \i__carry__2_i_3__2_n_0\,
      S(0) => \i__carry__2_i_4__2_n_0\
    );
\minusOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__2_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__3_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__3_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__3_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \minusOp_inferred__0/i__carry__6_0\(20 downto 17),
      O(3) => \minusOp_inferred__0/i__carry__3_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__3_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__3_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_1__2_n_0\,
      S(2) => \i__carry__3_i_2__0_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__3_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__4_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__4_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__4_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \minusOp_inferred__0/i__carry__6_0\(24 downto 21),
      O(3) => \minusOp_inferred__0/i__carry__4_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__4_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__4_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__4_n_7\,
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__4_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__5_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__5_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__5_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \minusOp_inferred__0/i__carry__6_0\(28 downto 25),
      O(3) => \minusOp_inferred__0/i__carry__5_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__5_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__5_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__5_n_7\,
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_inferred__0/i__carry__6_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \minusOp_inferred__0/i__carry__6_0\(30 downto 29),
      O(3) => \NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED\(3),
      O(2) => \minusOp_inferred__0/i__carry__6_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__6_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__6_n_7\,
      S(3) => '0',
      S(2) => \i__carry__6_i_1_n_0\,
      S(1) => \i__carry__6_i_2_n_0\,
      S(0) => \i__carry__6_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mainBD_modulator_axi_ip_0_0_frequency_trigger_0 is
  port (
    ce_s : out STD_LOGIC;
    freq_trig_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    freq_trig_reg_1 : out STD_LOGIC;
    freq_trig_reg_2 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \minusOp_inferred__0/i__carry__3_0\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \count_v_reg[11]\ : in STD_LOGIC;
    \count_v_reg[11]_0\ : in STD_LOGIC;
    freq_trig_reg_3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mainBD_modulator_axi_ip_0_0_frequency_trigger_0 : entity is "frequency_trigger";
end mainBD_modulator_axi_ip_0_0_frequency_trigger_0;

architecture STRUCTURE of mainBD_modulator_axi_ip_0_0_frequency_trigger_0 is
  signal \^ce_s\ : STD_LOGIC;
  signal \freq_cnt_s[0]_i_2__0_n_0\ : STD_LOGIC;
  signal freq_cnt_s_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \freq_cnt_s_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \freq_cnt_s_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1__0_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1__0_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1__0_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1__0_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1__0_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1__0_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[20]_i_1__0_n_7\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1__0_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1__0_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1__0_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1__0_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1__0_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1__0_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[24]_i_1__0_n_7\ : STD_LOGIC;
  signal \freq_cnt_s_reg[28]_i_1__0_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[28]_i_1__0_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[28]_i_1__0_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[28]_i_1__0_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[28]_i_1__0_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[28]_i_1__0_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[28]_i_1__0_n_7\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \freq_cnt_s_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \freq_trig_i_1__0_n_0\ : STD_LOGIC;
  signal geqOp : STD_LOGIC;
  signal \geqOp_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_n_1\ : STD_LOGIC;
  signal \geqOp_carry__0_n_2\ : STD_LOGIC;
  signal \geqOp_carry__0_n_3\ : STD_LOGIC;
  signal \geqOp_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_6__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_7__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_i_8__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__1_n_1\ : STD_LOGIC;
  signal \geqOp_carry__1_n_2\ : STD_LOGIC;
  signal \geqOp_carry__1_n_3\ : STD_LOGIC;
  signal \geqOp_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_5__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_6__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_7__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_i_8__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__2_n_1\ : STD_LOGIC;
  signal \geqOp_carry__2_n_2\ : STD_LOGIC;
  signal \geqOp_carry__2_n_3\ : STD_LOGIC;
  signal \geqOp_carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \geqOp_carry_i_8__0_n_0\ : STD_LOGIC;
  signal geqOp_carry_n_0 : STD_LOGIC;
  signal geqOp_carry_n_1 : STD_LOGIC;
  signal geqOp_carry_n_2 : STD_LOGIC;
  signal geqOp_carry_n_3 : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_n_4\ : STD_LOGIC;
  signal \minusOp_carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_carry__2_n_7\ : STD_LOGIC;
  signal \minusOp_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_carry__3_n_6\ : STD_LOGIC;
  signal \minusOp_carry__3_n_7\ : STD_LOGIC;
  signal \minusOp_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry_i_4__0_n_0\ : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal minusOp_carry_n_4 : STD_LOGIC;
  signal minusOp_carry_n_5 : STD_LOGIC;
  signal minusOp_carry_n_6 : STD_LOGIC;
  signal minusOp_carry_n_7 : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \NLW_freq_cnt_s_reg[28]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_geqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_geqOp_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_geqOp_inferred__0/i__carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_minusOp_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_inferred__0/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_minusOp_inferred__0/i__carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_v[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \threshold_v[11]_i_1\ : label is "soft_lutpair3";
begin
  ce_s <= \^ce_s\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEFEFE000E0E0"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_0\,
      I1 => \FSM_sequential_state_reg[0]_1\,
      I2 => \^ce_s\,
      I3 => \FSM_sequential_state_reg[0]\,
      I4 => \FSM_sequential_state_reg[1]_1\,
      I5 => \count_v_reg[11]\,
      O => freq_trig_reg_2
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEFEFE000E0E0"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\,
      I1 => \FSM_sequential_state_reg[1]_0\,
      I2 => \^ce_s\,
      I3 => \FSM_sequential_state_reg[0]\,
      I4 => \FSM_sequential_state_reg[1]_1\,
      I5 => \count_v_reg[11]_0\,
      O => freq_trig_reg_1
    );
\count_v[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^ce_s\,
      I1 => \count_v_reg[11]\,
      I2 => \count_v_reg[11]_0\,
      O => freq_trig_reg_0
    );
\freq_cnt_s[0]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => freq_cnt_s_reg(0),
      O => \freq_cnt_s[0]_i_2__0_n_0\
    );
\freq_cnt_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[0]_i_1__0_n_7\,
      Q => freq_cnt_s_reg(0),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \freq_cnt_s_reg[0]_i_1__0_n_0\,
      CO(2) => \freq_cnt_s_reg[0]_i_1__0_n_1\,
      CO(1) => \freq_cnt_s_reg[0]_i_1__0_n_2\,
      CO(0) => \freq_cnt_s_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \freq_cnt_s_reg[0]_i_1__0_n_4\,
      O(2) => \freq_cnt_s_reg[0]_i_1__0_n_5\,
      O(1) => \freq_cnt_s_reg[0]_i_1__0_n_6\,
      O(0) => \freq_cnt_s_reg[0]_i_1__0_n_7\,
      S(3 downto 1) => freq_cnt_s_reg(3 downto 1),
      S(0) => \freq_cnt_s[0]_i_2__0_n_0\
    );
\freq_cnt_s_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[8]_i_1__0_n_5\,
      Q => freq_cnt_s_reg(10),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[8]_i_1__0_n_4\,
      Q => freq_cnt_s_reg(11),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[12]_i_1__0_n_7\,
      Q => freq_cnt_s_reg(12),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \freq_cnt_s_reg[8]_i_1__0_n_0\,
      CO(3) => \freq_cnt_s_reg[12]_i_1__0_n_0\,
      CO(2) => \freq_cnt_s_reg[12]_i_1__0_n_1\,
      CO(1) => \freq_cnt_s_reg[12]_i_1__0_n_2\,
      CO(0) => \freq_cnt_s_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \freq_cnt_s_reg[12]_i_1__0_n_4\,
      O(2) => \freq_cnt_s_reg[12]_i_1__0_n_5\,
      O(1) => \freq_cnt_s_reg[12]_i_1__0_n_6\,
      O(0) => \freq_cnt_s_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => freq_cnt_s_reg(15 downto 12)
    );
\freq_cnt_s_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[12]_i_1__0_n_6\,
      Q => freq_cnt_s_reg(13),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[12]_i_1__0_n_5\,
      Q => freq_cnt_s_reg(14),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[12]_i_1__0_n_4\,
      Q => freq_cnt_s_reg(15),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[16]_i_1__0_n_7\,
      Q => freq_cnt_s_reg(16),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \freq_cnt_s_reg[12]_i_1__0_n_0\,
      CO(3) => \freq_cnt_s_reg[16]_i_1__0_n_0\,
      CO(2) => \freq_cnt_s_reg[16]_i_1__0_n_1\,
      CO(1) => \freq_cnt_s_reg[16]_i_1__0_n_2\,
      CO(0) => \freq_cnt_s_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \freq_cnt_s_reg[16]_i_1__0_n_4\,
      O(2) => \freq_cnt_s_reg[16]_i_1__0_n_5\,
      O(1) => \freq_cnt_s_reg[16]_i_1__0_n_6\,
      O(0) => \freq_cnt_s_reg[16]_i_1__0_n_7\,
      S(3 downto 0) => freq_cnt_s_reg(19 downto 16)
    );
\freq_cnt_s_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[16]_i_1__0_n_6\,
      Q => freq_cnt_s_reg(17),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[16]_i_1__0_n_5\,
      Q => freq_cnt_s_reg(18),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[16]_i_1__0_n_4\,
      Q => freq_cnt_s_reg(19),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[0]_i_1__0_n_6\,
      Q => freq_cnt_s_reg(1),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[20]_i_1__0_n_7\,
      Q => freq_cnt_s_reg(20),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[20]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \freq_cnt_s_reg[16]_i_1__0_n_0\,
      CO(3) => \freq_cnt_s_reg[20]_i_1__0_n_0\,
      CO(2) => \freq_cnt_s_reg[20]_i_1__0_n_1\,
      CO(1) => \freq_cnt_s_reg[20]_i_1__0_n_2\,
      CO(0) => \freq_cnt_s_reg[20]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \freq_cnt_s_reg[20]_i_1__0_n_4\,
      O(2) => \freq_cnt_s_reg[20]_i_1__0_n_5\,
      O(1) => \freq_cnt_s_reg[20]_i_1__0_n_6\,
      O(0) => \freq_cnt_s_reg[20]_i_1__0_n_7\,
      S(3 downto 0) => freq_cnt_s_reg(23 downto 20)
    );
\freq_cnt_s_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[20]_i_1__0_n_6\,
      Q => freq_cnt_s_reg(21),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[20]_i_1__0_n_5\,
      Q => freq_cnt_s_reg(22),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[20]_i_1__0_n_4\,
      Q => freq_cnt_s_reg(23),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[24]_i_1__0_n_7\,
      Q => freq_cnt_s_reg(24),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[24]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \freq_cnt_s_reg[20]_i_1__0_n_0\,
      CO(3) => \freq_cnt_s_reg[24]_i_1__0_n_0\,
      CO(2) => \freq_cnt_s_reg[24]_i_1__0_n_1\,
      CO(1) => \freq_cnt_s_reg[24]_i_1__0_n_2\,
      CO(0) => \freq_cnt_s_reg[24]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \freq_cnt_s_reg[24]_i_1__0_n_4\,
      O(2) => \freq_cnt_s_reg[24]_i_1__0_n_5\,
      O(1) => \freq_cnt_s_reg[24]_i_1__0_n_6\,
      O(0) => \freq_cnt_s_reg[24]_i_1__0_n_7\,
      S(3 downto 0) => freq_cnt_s_reg(27 downto 24)
    );
\freq_cnt_s_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[24]_i_1__0_n_6\,
      Q => freq_cnt_s_reg(25),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[24]_i_1__0_n_5\,
      Q => freq_cnt_s_reg(26),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[24]_i_1__0_n_4\,
      Q => freq_cnt_s_reg(27),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[28]_i_1__0_n_7\,
      Q => freq_cnt_s_reg(28),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[28]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \freq_cnt_s_reg[24]_i_1__0_n_0\,
      CO(3) => \NLW_freq_cnt_s_reg[28]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \freq_cnt_s_reg[28]_i_1__0_n_1\,
      CO(1) => \freq_cnt_s_reg[28]_i_1__0_n_2\,
      CO(0) => \freq_cnt_s_reg[28]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \freq_cnt_s_reg[28]_i_1__0_n_4\,
      O(2) => \freq_cnt_s_reg[28]_i_1__0_n_5\,
      O(1) => \freq_cnt_s_reg[28]_i_1__0_n_6\,
      O(0) => \freq_cnt_s_reg[28]_i_1__0_n_7\,
      S(3 downto 0) => freq_cnt_s_reg(31 downto 28)
    );
\freq_cnt_s_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[28]_i_1__0_n_6\,
      Q => freq_cnt_s_reg(29),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[0]_i_1__0_n_5\,
      Q => freq_cnt_s_reg(2),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[28]_i_1__0_n_5\,
      Q => freq_cnt_s_reg(30),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[28]_i_1__0_n_4\,
      Q => freq_cnt_s_reg(31),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[0]_i_1__0_n_4\,
      Q => freq_cnt_s_reg(3),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[4]_i_1__0_n_7\,
      Q => freq_cnt_s_reg(4),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \freq_cnt_s_reg[0]_i_1__0_n_0\,
      CO(3) => \freq_cnt_s_reg[4]_i_1__0_n_0\,
      CO(2) => \freq_cnt_s_reg[4]_i_1__0_n_1\,
      CO(1) => \freq_cnt_s_reg[4]_i_1__0_n_2\,
      CO(0) => \freq_cnt_s_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \freq_cnt_s_reg[4]_i_1__0_n_4\,
      O(2) => \freq_cnt_s_reg[4]_i_1__0_n_5\,
      O(1) => \freq_cnt_s_reg[4]_i_1__0_n_6\,
      O(0) => \freq_cnt_s_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => freq_cnt_s_reg(7 downto 4)
    );
\freq_cnt_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[4]_i_1__0_n_6\,
      Q => freq_cnt_s_reg(5),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[4]_i_1__0_n_5\,
      Q => freq_cnt_s_reg(6),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[4]_i_1__0_n_4\,
      Q => freq_cnt_s_reg(7),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[8]_i_1__0_n_7\,
      Q => freq_cnt_s_reg(8),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_cnt_s_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \freq_cnt_s_reg[4]_i_1__0_n_0\,
      CO(3) => \freq_cnt_s_reg[8]_i_1__0_n_0\,
      CO(2) => \freq_cnt_s_reg[8]_i_1__0_n_1\,
      CO(1) => \freq_cnt_s_reg[8]_i_1__0_n_2\,
      CO(0) => \freq_cnt_s_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \freq_cnt_s_reg[8]_i_1__0_n_4\,
      O(2) => \freq_cnt_s_reg[8]_i_1__0_n_5\,
      O(1) => \freq_cnt_s_reg[8]_i_1__0_n_6\,
      O(0) => \freq_cnt_s_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => freq_cnt_s_reg(11 downto 8)
    );
\freq_cnt_s_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_cnt_s_reg[8]_i_1__0_n_6\,
      Q => freq_cnt_s_reg(9),
      R => \freq_trig_i_1__0_n_0\
    );
\freq_trig_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \geqOp_inferred__0/i__carry__3_n_3\,
      I1 => freq_trig_reg_3(0),
      I2 => geqOp,
      O => \freq_trig_i_1__0_n_0\
    );
freq_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \freq_trig_i_1__0_n_0\,
      Q => \^ce_s\,
      R => '0'
    );
geqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => geqOp_carry_n_0,
      CO(2) => geqOp_carry_n_1,
      CO(1) => geqOp_carry_n_2,
      CO(0) => geqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => \geqOp_carry_i_1__0_n_0\,
      DI(2) => \geqOp_carry_i_2__0_n_0\,
      DI(1) => \geqOp_carry_i_3__0_n_0\,
      DI(0) => \geqOp_carry_i_4__0_n_0\,
      O(3 downto 0) => NLW_geqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \geqOp_carry_i_5__0_n_0\,
      S(2) => \geqOp_carry_i_6__0_n_0\,
      S(1) => \geqOp_carry_i_7__0_n_0\,
      S(0) => \geqOp_carry_i_8__0_n_0\
    );
\geqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => geqOp_carry_n_0,
      CO(3) => \geqOp_carry__0_n_0\,
      CO(2) => \geqOp_carry__0_n_1\,
      CO(1) => \geqOp_carry__0_n_2\,
      CO(0) => \geqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \geqOp_carry__0_i_1__0_n_0\,
      DI(2) => \geqOp_carry__0_i_2__0_n_0\,
      DI(1) => \geqOp_carry__0_i_3__0_n_0\,
      DI(0) => \geqOp_carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_geqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \geqOp_carry__0_i_5__0_n_0\,
      S(2) => \geqOp_carry__0_i_6__0_n_0\,
      S(1) => \geqOp_carry__0_i_7__0_n_0\,
      S(0) => \geqOp_carry__0_i_8__0_n_0\
    );
\geqOp_carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(15),
      I1 => \minusOp_carry__2_n_5\,
      I2 => freq_cnt_s_reg(14),
      I3 => \minusOp_carry__2_n_6\,
      O => \geqOp_carry__0_i_1__0_n_0\
    );
\geqOp_carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(13),
      I1 => \minusOp_carry__2_n_7\,
      I2 => freq_cnt_s_reg(12),
      I3 => \minusOp_carry__1_n_4\,
      O => \geqOp_carry__0_i_2__0_n_0\
    );
\geqOp_carry__0_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(11),
      I1 => \minusOp_carry__1_n_5\,
      I2 => freq_cnt_s_reg(10),
      I3 => \minusOp_carry__1_n_6\,
      O => \geqOp_carry__0_i_3__0_n_0\
    );
\geqOp_carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(9),
      I1 => \minusOp_carry__1_n_7\,
      I2 => freq_cnt_s_reg(8),
      I3 => \minusOp_carry__0_n_4\,
      O => \geqOp_carry__0_i_4__0_n_0\
    );
\geqOp_carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_carry__2_n_5\,
      I1 => freq_cnt_s_reg(15),
      I2 => \minusOp_carry__2_n_6\,
      I3 => freq_cnt_s_reg(14),
      O => \geqOp_carry__0_i_5__0_n_0\
    );
\geqOp_carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_carry__2_n_7\,
      I1 => freq_cnt_s_reg(13),
      I2 => \minusOp_carry__1_n_4\,
      I3 => freq_cnt_s_reg(12),
      O => \geqOp_carry__0_i_6__0_n_0\
    );
\geqOp_carry__0_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_carry__1_n_5\,
      I1 => freq_cnt_s_reg(11),
      I2 => \minusOp_carry__1_n_6\,
      I3 => freq_cnt_s_reg(10),
      O => \geqOp_carry__0_i_7__0_n_0\
    );
\geqOp_carry__0_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_carry__1_n_7\,
      I1 => freq_cnt_s_reg(9),
      I2 => \minusOp_carry__0_n_4\,
      I3 => freq_cnt_s_reg(8),
      O => \geqOp_carry__0_i_8__0_n_0\
    );
\geqOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_carry__0_n_0\,
      CO(3) => \geqOp_carry__1_n_0\,
      CO(2) => \geqOp_carry__1_n_1\,
      CO(1) => \geqOp_carry__1_n_2\,
      CO(0) => \geqOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \geqOp_carry__1_i_1__0_n_0\,
      DI(2) => \geqOp_carry__1_i_2__0_n_0\,
      DI(1) => \geqOp_carry__1_i_3__0_n_0\,
      DI(0) => \geqOp_carry__1_i_4__0_n_0\,
      O(3 downto 0) => \NLW_geqOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \geqOp_carry__1_i_5__0_n_0\,
      S(2) => \geqOp_carry__1_i_6__0_n_0\,
      S(1) => \geqOp_carry__1_i_7__0_n_0\,
      S(0) => \geqOp_carry__1_i_8__0_n_0\
    );
\geqOp_carry__1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => freq_cnt_s_reg(23),
      I1 => freq_cnt_s_reg(22),
      I2 => \minusOp_carry__3_n_1\,
      O => \geqOp_carry__1_i_1__0_n_0\
    );
\geqOp_carry__1_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => freq_cnt_s_reg(21),
      I1 => freq_cnt_s_reg(20),
      I2 => \minusOp_carry__3_n_1\,
      O => \geqOp_carry__1_i_2__0_n_0\
    );
\geqOp_carry__1_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88E8"
    )
        port map (
      I0 => \minusOp_carry__3_n_1\,
      I1 => freq_cnt_s_reg(19),
      I2 => freq_cnt_s_reg(18),
      I3 => \minusOp_carry__3_n_6\,
      O => \geqOp_carry__1_i_3__0_n_0\
    );
\geqOp_carry__1_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(17),
      I1 => \minusOp_carry__3_n_7\,
      I2 => freq_cnt_s_reg(16),
      I3 => \minusOp_carry__2_n_4\,
      O => \geqOp_carry__1_i_4__0_n_0\
    );
\geqOp_carry__1_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => freq_cnt_s_reg(22),
      I1 => freq_cnt_s_reg(23),
      I2 => \minusOp_carry__3_n_1\,
      O => \geqOp_carry__1_i_5__0_n_0\
    );
\geqOp_carry__1_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => freq_cnt_s_reg(20),
      I1 => freq_cnt_s_reg(21),
      I2 => \minusOp_carry__3_n_1\,
      O => \geqOp_carry__1_i_6__0_n_0\
    );
\geqOp_carry__1_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => \minusOp_carry__3_n_1\,
      I1 => freq_cnt_s_reg(19),
      I2 => \minusOp_carry__3_n_6\,
      I3 => freq_cnt_s_reg(18),
      O => \geqOp_carry__1_i_7__0_n_0\
    );
\geqOp_carry__1_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_carry__3_n_7\,
      I1 => freq_cnt_s_reg(17),
      I2 => \minusOp_carry__2_n_4\,
      I3 => freq_cnt_s_reg(16),
      O => \geqOp_carry__1_i_8__0_n_0\
    );
\geqOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_carry__1_n_0\,
      CO(3) => \geqOp_carry__2_n_0\,
      CO(2) => \geqOp_carry__2_n_1\,
      CO(1) => \geqOp_carry__2_n_2\,
      CO(0) => \geqOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \geqOp_carry__2_i_1__0_n_0\,
      DI(2) => \geqOp_carry__2_i_2__0_n_0\,
      DI(1) => \geqOp_carry__2_i_3__0_n_0\,
      DI(0) => \geqOp_carry__2_i_4__0_n_0\,
      O(3 downto 0) => \NLW_geqOp_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \geqOp_carry__2_i_5__0_n_0\,
      S(2) => \geqOp_carry__2_i_6__0_n_0\,
      S(1) => \geqOp_carry__2_i_7__0_n_0\,
      S(0) => \geqOp_carry__2_i_8__0_n_0\
    );
\geqOp_carry__2_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => freq_cnt_s_reg(31),
      I1 => freq_cnt_s_reg(30),
      I2 => \minusOp_carry__3_n_1\,
      O => \geqOp_carry__2_i_1__0_n_0\
    );
\geqOp_carry__2_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => freq_cnt_s_reg(29),
      I1 => freq_cnt_s_reg(28),
      I2 => \minusOp_carry__3_n_1\,
      O => \geqOp_carry__2_i_2__0_n_0\
    );
\geqOp_carry__2_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => freq_cnt_s_reg(27),
      I1 => freq_cnt_s_reg(26),
      I2 => \minusOp_carry__3_n_1\,
      O => \geqOp_carry__2_i_3__0_n_0\
    );
\geqOp_carry__2_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => freq_cnt_s_reg(25),
      I1 => freq_cnt_s_reg(24),
      I2 => \minusOp_carry__3_n_1\,
      O => \geqOp_carry__2_i_4__0_n_0\
    );
\geqOp_carry__2_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => freq_cnt_s_reg(30),
      I1 => freq_cnt_s_reg(31),
      I2 => \minusOp_carry__3_n_1\,
      O => \geqOp_carry__2_i_5__0_n_0\
    );
\geqOp_carry__2_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => freq_cnt_s_reg(28),
      I1 => freq_cnt_s_reg(29),
      I2 => \minusOp_carry__3_n_1\,
      O => \geqOp_carry__2_i_6__0_n_0\
    );
\geqOp_carry__2_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => freq_cnt_s_reg(26),
      I1 => freq_cnt_s_reg(27),
      I2 => \minusOp_carry__3_n_1\,
      O => \geqOp_carry__2_i_7__0_n_0\
    );
\geqOp_carry__2_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => freq_cnt_s_reg(24),
      I1 => freq_cnt_s_reg(25),
      I2 => \minusOp_carry__3_n_1\,
      O => \geqOp_carry__2_i_8__0_n_0\
    );
\geqOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_carry__2_n_0\,
      CO(3 downto 1) => \NLW_geqOp_carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => geqOp,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_geqOp_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \geqOp_carry__3_i_1__0_n_0\
    );
\geqOp_carry__3_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => freq_cnt_s_reg(31),
      O => \geqOp_carry__3_i_1__0_n_0\
    );
\geqOp_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(7),
      I1 => \minusOp_carry__0_n_5\,
      I2 => freq_cnt_s_reg(6),
      I3 => \minusOp_carry__0_n_6\,
      O => \geqOp_carry_i_1__0_n_0\
    );
\geqOp_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(5),
      I1 => \minusOp_carry__0_n_7\,
      I2 => freq_cnt_s_reg(4),
      I3 => minusOp_carry_n_4,
      O => \geqOp_carry_i_2__0_n_0\
    );
\geqOp_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(3),
      I1 => minusOp_carry_n_5,
      I2 => freq_cnt_s_reg(2),
      I3 => minusOp_carry_n_6,
      O => \geqOp_carry_i_3__0_n_0\
    );
\geqOp_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B222"
    )
        port map (
      I0 => freq_cnt_s_reg(1),
      I1 => minusOp_carry_n_7,
      I2 => freq_cnt_s_reg(0),
      I3 => Q(0),
      O => \geqOp_carry_i_4__0_n_0\
    );
\geqOp_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_carry__0_n_5\,
      I1 => freq_cnt_s_reg(7),
      I2 => \minusOp_carry__0_n_6\,
      I3 => freq_cnt_s_reg(6),
      O => \geqOp_carry_i_5__0_n_0\
    );
\geqOp_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_carry__0_n_7\,
      I1 => freq_cnt_s_reg(5),
      I2 => minusOp_carry_n_4,
      I3 => freq_cnt_s_reg(4),
      O => \geqOp_carry_i_6__0_n_0\
    );
\geqOp_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minusOp_carry_n_5,
      I1 => freq_cnt_s_reg(3),
      I2 => minusOp_carry_n_6,
      I3 => freq_cnt_s_reg(2),
      O => \geqOp_carry_i_7__0_n_0\
    );
\geqOp_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => freq_cnt_s_reg(0),
      I1 => Q(0),
      I2 => minusOp_carry_n_7,
      I3 => freq_cnt_s_reg(1),
      O => \geqOp_carry_i_8__0_n_0\
    );
\geqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \geqOp_inferred__0/i__carry_n_0\,
      CO(2) => \geqOp_inferred__0/i__carry_n_1\,
      CO(1) => \geqOp_inferred__0/i__carry_n_2\,
      CO(0) => \geqOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\geqOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_inferred__0/i__carry_n_0\,
      CO(3) => \geqOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \geqOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \geqOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \geqOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__1_n_0\,
      DI(2) => \i__carry__0_i_2__1_n_0\,
      DI(1) => \i__carry__0_i_3__1_n_0\,
      DI(0) => \i__carry__0_i_4__1_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5__0_n_0\,
      S(2) => \i__carry__0_i_6__0_n_0\,
      S(1) => \i__carry__0_i_7__0_n_0\,
      S(0) => \i__carry__0_i_8__0_n_0\
    );
\geqOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \geqOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \geqOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \geqOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \geqOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1__0_n_0\,
      DI(2) => \i__carry__1_i_2__1_n_0\,
      DI(1) => \i__carry__1_i_3__1_n_0\,
      DI(0) => \i__carry__1_i_4__1_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5__0_n_0\,
      S(2) => \i__carry__1_i_6__0_n_0\,
      S(1) => \i__carry__1_i_7__0_n_0\,
      S(0) => \i__carry__1_i_8__0_n_0\
    );
\geqOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \geqOp_inferred__0/i__carry__2_n_0\,
      CO(2) => \geqOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \geqOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \geqOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1__0_n_0\,
      DI(2) => \i__carry__2_i_2__0_n_0\,
      DI(1) => \i__carry__2_i_3__0_n_0\,
      DI(0) => \i__carry__2_i_4__0_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5__0_n_0\,
      S(2) => \i__carry__2_i_6__0_n_0\,
      S(1) => \i__carry__2_i_7__0_n_0\,
      S(0) => \i__carry__2_i_8__0_n_0\
    );
\geqOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_inferred__0/i__carry__2_n_0\,
      CO(3 downto 1) => \NLW_geqOp_inferred__0/i__carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \geqOp_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry__3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__3_i_1_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(15),
      I1 => \minusOp_inferred__0/i__carry__2_n_5\,
      I2 => freq_cnt_s_reg(14),
      I3 => \minusOp_inferred__0/i__carry__2_n_6\,
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(8),
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(13),
      I1 => \minusOp_inferred__0/i__carry__2_n_7\,
      I2 => freq_cnt_s_reg(12),
      I3 => \minusOp_inferred__0/i__carry__1_n_4\,
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(7),
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(11),
      I1 => \minusOp_inferred__0/i__carry__1_n_5\,
      I2 => freq_cnt_s_reg(10),
      I3 => \minusOp_inferred__0/i__carry__1_n_6\,
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(6),
      O => \i__carry__0_i_3__2_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(9),
      I1 => \minusOp_inferred__0/i__carry__1_n_7\,
      I2 => freq_cnt_s_reg(8),
      I3 => \minusOp_inferred__0/i__carry__0_n_4\,
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_4__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(5),
      O => \i__carry__0_i_4__2_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__2_n_5\,
      I1 => freq_cnt_s_reg(15),
      I2 => \minusOp_inferred__0/i__carry__2_n_6\,
      I3 => freq_cnt_s_reg(14),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__2_n_7\,
      I1 => freq_cnt_s_reg(13),
      I2 => \minusOp_inferred__0/i__carry__1_n_4\,
      I3 => freq_cnt_s_reg(12),
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__1_n_5\,
      I1 => freq_cnt_s_reg(11),
      I2 => \minusOp_inferred__0/i__carry__1_n_6\,
      I3 => freq_cnt_s_reg(10),
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry__0_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__1_n_7\,
      I1 => freq_cnt_s_reg(9),
      I2 => \minusOp_inferred__0/i__carry__0_n_4\,
      I3 => freq_cnt_s_reg(8),
      O => \i__carry__0_i_8__0_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => freq_cnt_s_reg(23),
      I1 => freq_cnt_s_reg(22),
      I2 => \minusOp_inferred__0/i__carry__3_n_1\,
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(12),
      O => \i__carry__1_i_1__2_n_0\
    );
\i__carry__1_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => freq_cnt_s_reg(21),
      I1 => freq_cnt_s_reg(20),
      I2 => \minusOp_inferred__0/i__carry__3_n_1\,
      O => \i__carry__1_i_2__1_n_0\
    );
\i__carry__1_i_2__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(11),
      O => \i__carry__1_i_2__2_n_0\
    );
\i__carry__1_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88E8"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_n_1\,
      I1 => freq_cnt_s_reg(19),
      I2 => freq_cnt_s_reg(18),
      I3 => \minusOp_inferred__0/i__carry__3_n_6\,
      O => \i__carry__1_i_3__1_n_0\
    );
\i__carry__1_i_3__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(10),
      O => \i__carry__1_i_3__2_n_0\
    );
\i__carry__1_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(17),
      I1 => \minusOp_inferred__0/i__carry__3_n_7\,
      I2 => freq_cnt_s_reg(16),
      I3 => \minusOp_inferred__0/i__carry__2_n_4\,
      O => \i__carry__1_i_4__1_n_0\
    );
\i__carry__1_i_4__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(9),
      O => \i__carry__1_i_4__2_n_0\
    );
\i__carry__1_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => freq_cnt_s_reg(22),
      I1 => freq_cnt_s_reg(23),
      I2 => \minusOp_inferred__0/i__carry__3_n_1\,
      O => \i__carry__1_i_5__0_n_0\
    );
\i__carry__1_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => freq_cnt_s_reg(20),
      I1 => freq_cnt_s_reg(21),
      I2 => \minusOp_inferred__0/i__carry__3_n_1\,
      O => \i__carry__1_i_6__0_n_0\
    );
\i__carry__1_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_n_1\,
      I1 => freq_cnt_s_reg(19),
      I2 => \minusOp_inferred__0/i__carry__3_n_6\,
      I3 => freq_cnt_s_reg(18),
      O => \i__carry__1_i_7__0_n_0\
    );
\i__carry__1_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_n_7\,
      I1 => freq_cnt_s_reg(17),
      I2 => \minusOp_inferred__0/i__carry__2_n_4\,
      I3 => freq_cnt_s_reg(16),
      O => \i__carry__1_i_8__0_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => freq_cnt_s_reg(31),
      I1 => freq_cnt_s_reg(30),
      I2 => \minusOp_inferred__0/i__carry__3_n_1\,
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(16),
      O => \i__carry__2_i_1__1_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => freq_cnt_s_reg(29),
      I1 => freq_cnt_s_reg(28),
      I2 => \minusOp_inferred__0/i__carry__3_n_1\,
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(15),
      O => \i__carry__2_i_2__1_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => freq_cnt_s_reg(27),
      I1 => freq_cnt_s_reg(26),
      I2 => \minusOp_inferred__0/i__carry__3_n_1\,
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(14),
      O => \i__carry__2_i_3__1_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => freq_cnt_s_reg(25),
      I1 => freq_cnt_s_reg(24),
      I2 => \minusOp_inferred__0/i__carry__3_n_1\,
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry__2_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(13),
      O => \i__carry__2_i_4__1_n_0\
    );
\i__carry__2_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => freq_cnt_s_reg(30),
      I1 => freq_cnt_s_reg(31),
      I2 => \minusOp_inferred__0/i__carry__3_n_1\,
      O => \i__carry__2_i_5__0_n_0\
    );
\i__carry__2_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => freq_cnt_s_reg(28),
      I1 => freq_cnt_s_reg(29),
      I2 => \minusOp_inferred__0/i__carry__3_n_1\,
      O => \i__carry__2_i_6__0_n_0\
    );
\i__carry__2_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => freq_cnt_s_reg(26),
      I1 => freq_cnt_s_reg(27),
      I2 => \minusOp_inferred__0/i__carry__3_n_1\,
      O => \i__carry__2_i_7__0_n_0\
    );
\i__carry__2_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => freq_cnt_s_reg(24),
      I1 => freq_cnt_s_reg(25),
      I2 => \minusOp_inferred__0/i__carry__3_n_1\,
      O => \i__carry__2_i_8__0_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => freq_cnt_s_reg(31),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(18),
      O => \i__carry__3_i_1__0_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(17),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(7),
      I1 => \minusOp_inferred__0/i__carry__0_n_5\,
      I2 => freq_cnt_s_reg(6),
      I3 => \minusOp_inferred__0/i__carry__0_n_6\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(4),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(5),
      I1 => \minusOp_inferred__0/i__carry__0_n_7\,
      I2 => freq_cnt_s_reg(4),
      I3 => \minusOp_inferred__0/i__carry_n_4\,
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(3),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => freq_cnt_s_reg(3),
      I1 => \minusOp_inferred__0/i__carry_n_5\,
      I2 => freq_cnt_s_reg(2),
      I3 => \minusOp_inferred__0/i__carry_n_6\,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(2),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B222"
    )
        port map (
      I0 => freq_cnt_s_reg(1),
      I1 => \minusOp_inferred__0/i__carry_n_7\,
      I2 => freq_cnt_s_reg(0),
      I3 => \minusOp_inferred__0/i__carry__3_0\(0),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__3_0\(1),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__0_n_5\,
      I1 => freq_cnt_s_reg(7),
      I2 => \minusOp_inferred__0/i__carry__0_n_6\,
      I3 => freq_cnt_s_reg(6),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__0_n_7\,
      I1 => freq_cnt_s_reg(5),
      I2 => \minusOp_inferred__0/i__carry_n_4\,
      I3 => freq_cnt_s_reg(4),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry_n_5\,
      I1 => freq_cnt_s_reg(3),
      I2 => \minusOp_inferred__0/i__carry_n_6\,
      I3 => freq_cnt_s_reg(2),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => freq_cnt_s_reg(0),
      I1 => \minusOp_inferred__0/i__carry__3_0\(0),
      I2 => \minusOp_inferred__0/i__carry_n_7\,
      I3 => freq_cnt_s_reg(1),
      O => \i__carry_i_8__0_n_0\
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => Q(0),
      DI(3 downto 0) => Q(4 downto 1),
      O(3) => minusOp_carry_n_4,
      O(2) => minusOp_carry_n_5,
      O(1) => minusOp_carry_n_6,
      O(0) => minusOp_carry_n_7,
      S(3) => \minusOp_carry_i_1__0_n_0\,
      S(2) => \minusOp_carry_i_2__0_n_0\,
      S(1) => \minusOp_carry_i_3__0_n_0\,
      S(0) => \minusOp_carry_i_4__0_n_0\
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(8 downto 5),
      O(3) => \minusOp_carry__0_n_4\,
      O(2) => \minusOp_carry__0_n_5\,
      O(1) => \minusOp_carry__0_n_6\,
      O(0) => \minusOp_carry__0_n_7\,
      S(3) => \minusOp_carry__0_i_1__0_n_0\,
      S(2) => \minusOp_carry__0_i_2__0_n_0\,
      S(1) => \minusOp_carry__0_i_3__0_n_0\,
      S(0) => \minusOp_carry__0_i_4__0_n_0\
    );
\minusOp_carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(8),
      O => \minusOp_carry__0_i_1__0_n_0\
    );
\minusOp_carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      O => \minusOp_carry__0_i_2__0_n_0\
    );
\minusOp_carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(6),
      O => \minusOp_carry__0_i_3__0_n_0\
    );
\minusOp_carry__0_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      O => \minusOp_carry__0_i_4__0_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(12 downto 9),
      O(3) => \minusOp_carry__1_n_4\,
      O(2) => \minusOp_carry__1_n_5\,
      O(1) => \minusOp_carry__1_n_6\,
      O(0) => \minusOp_carry__1_n_7\,
      S(3) => \minusOp_carry__1_i_1__0_n_0\,
      S(2) => \minusOp_carry__1_i_2__0_n_0\,
      S(1) => \minusOp_carry__1_i_3__0_n_0\,
      S(0) => \minusOp_carry__1_i_4__0_n_0\
    );
\minusOp_carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(12),
      O => \minusOp_carry__1_i_1__0_n_0\
    );
\minusOp_carry__1_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      O => \minusOp_carry__1_i_2__0_n_0\
    );
\minusOp_carry__1_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(10),
      O => \minusOp_carry__1_i_3__0_n_0\
    );
\minusOp_carry__1_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      O => \minusOp_carry__1_i_4__0_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3) => \minusOp_carry__2_n_0\,
      CO(2) => \minusOp_carry__2_n_1\,
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(16 downto 13),
      O(3) => \minusOp_carry__2_n_4\,
      O(2) => \minusOp_carry__2_n_5\,
      O(1) => \minusOp_carry__2_n_6\,
      O(0) => \minusOp_carry__2_n_7\,
      S(3) => \minusOp_carry__2_i_1_n_0\,
      S(2) => \minusOp_carry__2_i_2_n_0\,
      S(1) => \minusOp_carry__2_i_3_n_0\,
      S(0) => \minusOp_carry__2_i_4_n_0\
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(16),
      O => \minusOp_carry__2_i_1_n_0\
    );
\minusOp_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      O => \minusOp_carry__2_i_2_n_0\
    );
\minusOp_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(14),
      O => \minusOp_carry__2_i_3_n_0\
    );
\minusOp_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      O => \minusOp_carry__2_i_4_n_0\
    );
\minusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__2_n_0\,
      CO(3) => \NLW_minusOp_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_carry__3_n_1\,
      CO(1) => \NLW_minusOp_carry__3_CO_UNCONNECTED\(1),
      CO(0) => \minusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => Q(18 downto 17),
      O(3 downto 2) => \NLW_minusOp_carry__3_O_UNCONNECTED\(3 downto 2),
      O(1) => \minusOp_carry__3_n_6\,
      O(0) => \minusOp_carry__3_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \minusOp_carry__3_i_1_n_0\,
      S(0) => \minusOp_carry__3_i_2_n_0\
    );
\minusOp_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(18),
      O => \minusOp_carry__3_i_1_n_0\
    );
\minusOp_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      O => \minusOp_carry__3_i_2_n_0\
    );
\minusOp_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(4),
      O => \minusOp_carry_i_1__0_n_0\
    );
\minusOp_carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      O => \minusOp_carry_i_2__0_n_0\
    );
\minusOp_carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(2),
      O => \minusOp_carry_i_3__0_n_0\
    );
\minusOp_carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      O => \minusOp_carry_i_4__0_n_0\
    );
\minusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__0/i__carry_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry_n_3\,
      CYINIT => \minusOp_inferred__0/i__carry__3_0\(0),
      DI(3 downto 0) => \minusOp_inferred__0/i__carry__3_0\(4 downto 1),
      O(3) => \minusOp_inferred__0/i__carry_n_4\,
      O(2) => \minusOp_inferred__0/i__carry_n_5\,
      O(1) => \minusOp_inferred__0/i__carry_n_6\,
      O(0) => \minusOp_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1__2_n_0\,
      S(2) => \i__carry_i_2__2_n_0\,
      S(1) => \i__carry_i_3__2_n_0\,
      S(0) => \i__carry_i_4__2_n_0\
    );
\minusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \minusOp_inferred__0/i__carry__3_0\(8 downto 5),
      O(3) => \minusOp_inferred__0/i__carry__0_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__0_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__0_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__2_n_0\,
      S(2) => \i__carry__0_i_2__2_n_0\,
      S(1) => \i__carry__0_i_3__2_n_0\,
      S(0) => \i__carry__0_i_4__2_n_0\
    );
\minusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \minusOp_inferred__0/i__carry__3_0\(12 downto 9),
      O(3) => \minusOp_inferred__0/i__carry__1_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__1_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__1_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1__2_n_0\,
      S(2) => \i__carry__1_i_2__2_n_0\,
      S(1) => \i__carry__1_i_3__2_n_0\,
      S(0) => \i__carry__1_i_4__2_n_0\
    );
\minusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__2_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \minusOp_inferred__0/i__carry__3_0\(16 downto 13),
      O(3) => \minusOp_inferred__0/i__carry__2_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__2_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__2_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1__1_n_0\,
      S(2) => \i__carry__2_i_2__1_n_0\,
      S(1) => \i__carry__2_i_3__1_n_0\,
      S(0) => \i__carry__2_i_4__1_n_0\
    );
\minusOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__2_n_0\,
      CO(3) => \NLW_minusOp_inferred__0/i__carry__3_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_inferred__0/i__carry__3_n_1\,
      CO(1) => \NLW_minusOp_inferred__0/i__carry__3_CO_UNCONNECTED\(1),
      CO(0) => \minusOp_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \minusOp_inferred__0/i__carry__3_0\(18 downto 17),
      O(3 downto 2) => \NLW_minusOp_inferred__0/i__carry__3_O_UNCONNECTED\(3 downto 2),
      O(1) => \minusOp_inferred__0/i__carry__3_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__3_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \i__carry__3_i_1__0_n_0\,
      S(0) => \i__carry__3_i_2_n_0\
    );
\threshold_v[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^ce_s\,
      I1 => \count_v_reg[11]\,
      I2 => \count_v_reg[11]_0\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mainBD_modulator_axi_ip_0_0_sine is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sine_s_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sine_s_reg_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state__0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mainBD_modulator_axi_ip_0_0_sine : entity is "sine";
end mainBD_modulator_axi_ip_0_0_sine;

architecture STRUCTURE of mainBD_modulator_axi_ip_0_0_sine is
  signal \^doado\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \FSM_sequential_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_9_n_0\ : STD_LOGIC;
  signal ampl_cnt_s : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_sine_s_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal NLW_sine_s_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_sine_s_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_sine_s_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of sine_s_reg : label is "p0_d12";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of sine_s_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of sine_s_reg : label is 3072;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of sine_s_reg : label is "U0/modulator_axi_ip_v1_0_S00_AXI_inst/pwmmodulator/sine/sine_s";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of sine_s_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of sine_s_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of sine_s_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of sine_s_reg : label is 11;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of sine_s_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of sine_s_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of sine_s_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of sine_s_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of sine_s_reg : label is 11;
begin
  DOADO(11 downto 0) <= \^doado\(11 downto 0);
\FSM_sequential_state[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^doado\(7),
      I1 => \^doado\(6),
      I2 => \^doado\(3),
      I3 => \^doado\(2),
      O => \FSM_sequential_state[1]_i_10_n_0\
    );
\FSM_sequential_state[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^doado\(1),
      I1 => \^doado\(0),
      I2 => \^doado\(4),
      I3 => \^doado\(5),
      I4 => \^doado\(10),
      I5 => \^doado\(11),
      O => \FSM_sequential_state[1]_i_11_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000FF10"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_9_n_0\,
      I1 => \FSM_sequential_state[1]_i_10_n_0\,
      I2 => \FSM_sequential_state[1]_i_11_n_0\,
      I3 => CO(0),
      I4 => \state__0\(0),
      I5 => \state__0\(1),
      O => \FSM_sequential_state_reg[0]\
    );
\FSM_sequential_state[1]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^doado\(8),
      I1 => \^doado\(9),
      O => \FSM_sequential_state[1]_i_9_n_0\
    );
\ampl_cnt_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(0),
      Q => ampl_cnt_s(0),
      R => '0'
    );
\ampl_cnt_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(1),
      Q => ampl_cnt_s(1),
      R => '0'
    );
\ampl_cnt_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(2),
      Q => ampl_cnt_s(2),
      R => '0'
    );
\ampl_cnt_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(3),
      Q => ampl_cnt_s(3),
      R => '0'
    );
\ampl_cnt_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(4),
      Q => ampl_cnt_s(4),
      R => '0'
    );
\ampl_cnt_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(5),
      Q => ampl_cnt_s(5),
      R => '0'
    );
\ampl_cnt_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(6),
      Q => ampl_cnt_s(6),
      R => '0'
    );
\ampl_cnt_s_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(7),
      Q => ampl_cnt_s(7),
      R => '0'
    );
\gtOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^doado\(10),
      I1 => \^doado\(11),
      O => sine_s_reg_1(1)
    );
\gtOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^doado\(8),
      I1 => \^doado\(9),
      O => sine_s_reg_1(0)
    );
\gtOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(11),
      I1 => \^doado\(10),
      O => sine_s_reg_0(1)
    );
\gtOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(9),
      I1 => \^doado\(8),
      O => sine_s_reg_0(0)
    );
gtOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^doado\(6),
      I1 => \^doado\(7),
      O => DI(3)
    );
gtOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^doado\(4),
      I1 => \^doado\(5),
      O => DI(2)
    );
gtOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^doado\(2),
      I1 => \^doado\(3),
      O => DI(1)
    );
gtOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^doado\(1),
      I1 => \^doado\(0),
      O => DI(0)
    );
gtOp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(7),
      I1 => \^doado\(6),
      O => S(3)
    );
gtOp_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(5),
      I1 => \^doado\(4),
      O => S(2)
    );
gtOp_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(3),
      I1 => \^doado\(2),
      O => S(1)
    );
gtOp_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(0),
      I1 => \^doado\(1),
      O => S(0)
    );
sine_s_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0AE00AB10A810A510A2109F009C0098E095D092B08FA08C808960863083107FF",
      INIT_01 => X"0D820D5E0D380D120CEA0CC20C9A0C700C460C1B0BF00BC40B970B6A0B3D0B0E",
      INIT_02 => X"0F4E0F390F230F0C0EF40EDB0EC00EA50E890E6B0E4D0E2D0E0D0DEC0DCA0DA6",
      INIT_03 => X"0FFD0FFC0FF80FF40FEF0FE80FE00FD70FCC0FC10FB40FA60F970F860F750F62",
      INIT_04 => X"0F750F860F970FA60FB40FC10FCC0FD70FE00FE80FEF0FF40FF80FFC0FFD0FFE",
      INIT_05 => X"0DCA0DEC0E0D0E2D0E4D0E6B0E890EA50EC00EDB0EF40F0C0F230F390F4E0F62",
      INIT_06 => X"0B3D0B6A0B970BC40BF00C1B0C460C700C9A0CC20CEA0D120D380D5E0D820DA6",
      INIT_07 => X"08310863089608C808FA092B095D098E09C009F00A210A510A810AB10AE00B0E",
      INIT_08 => X"051E054D057D05AD05DD060E063E067006A106D3070407360768079B07CD07FF",
      INIT_09 => X"027C02A002C602EC0314033C0364038E03B803E3040E043A0467049404C104F0",
      INIT_0A => X"00B000C500DB00F2010A0123013E01590175019301B101D101F1021202340258",
      INIT_0B => X"000100020006000A000F0016001E00270032003D004A0058006700780089009C",
      INIT_0C => X"0089007800670058004A003D00320027001E0016000F000A0006000200010000",
      INIT_0D => X"0234021201F101D101B1019301750159013E0123010A00F200DB00C500B0009C",
      INIT_0E => X"04C104940467043A040E03E303B8038E0364033C031402EC02C602A0027C0258",
      INIT_0F => X"07CD079B07680736070406D306A10670063E060E05DD05AD057D054D051E04F0",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11 downto 4) => ampl_cnt_s(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"0000111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 12) => NLW_sine_s_reg_DOADO_UNCONNECTED(15 downto 12),
      DOADO(11 downto 0) => \^doado\(11 downto 0),
      DOBDO(15 downto 0) => NLW_sine_s_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_sine_s_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_sine_s_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mainBD_modulator_axi_ip_0_0_pwm is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state__0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pwm_out : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \minusOp_inferred__0/i__carry__3\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_state[1]_i_4\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_state[1]_i_4_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    freq_trig_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mainBD_modulator_axi_ip_0_0_pwm : entity is "pwm";
end mainBD_modulator_axi_ip_0_0_pwm;

architecture STRUCTURE of mainBD_modulator_axi_ip_0_0_pwm is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_8_n_0\ : STD_LOGIC;
  signal ce_s : STD_LOGIC;
  signal \count_v0_carry__0_n_0\ : STD_LOGIC;
  signal \count_v0_carry__0_n_1\ : STD_LOGIC;
  signal \count_v0_carry__0_n_2\ : STD_LOGIC;
  signal \count_v0_carry__0_n_3\ : STD_LOGIC;
  signal \count_v0_carry__1_n_2\ : STD_LOGIC;
  signal \count_v0_carry__1_n_3\ : STD_LOGIC;
  signal count_v0_carry_n_0 : STD_LOGIC;
  signal count_v0_carry_n_1 : STD_LOGIC;
  signal count_v0_carry_n_2 : STD_LOGIC;
  signal count_v0_carry_n_3 : STD_LOGIC;
  signal \count_v[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_v_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_v_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_v_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_v_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_v_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_v_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_v_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_v_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_v_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_v_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_v_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_v_reg_n_0_[9]\ : STD_LOGIC;
  signal fsm_ce_n_1 : STD_LOGIC;
  signal fsm_ce_n_2 : STD_LOGIC;
  signal fsm_ce_n_3 : STD_LOGIC;
  signal fsm_ce_n_4 : STD_LOGIC;
  signal \gtOp_carry__0_n_3\ : STD_LOGIC;
  signal gtOp_carry_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal \i__carry__0_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal in9 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \^pwm_out\ : STD_LOGIC;
  signal state11_in : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal state2 : STD_LOGIC;
  signal \state2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \state2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \state2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \state2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \state2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \^state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal threshold_v : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_count_v0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_v0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gtOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state2_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_state2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "pwm_high:01,load_new_ampl:00,pwm_low:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "pwm_high:01,load_new_ampl:00,pwm_low:10";
  attribute SOFT_HLUTNM of \count_v[0]_i_1\ : label is "soft_lutpair4";
begin
  CO(0) <= \^co\(0);
  pwm_out <= \^pwm_out\;
  \state__0\(1 downto 0) <= \^state__0\(1 downto 0);
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^co\(0),
      I1 => \^state__0\(0),
      I2 => \^state__0\(1),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FE0000000000"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_8_n_0\,
      I1 => \FSM_sequential_state[1]_i_7_n_0\,
      I2 => \FSM_sequential_state[1]_i_6_n_0\,
      I3 => \^state__0\(0),
      I4 => \^state__0\(1),
      I5 => state2,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044444440"
    )
        port map (
      I0 => \^state__0\(1),
      I1 => \^state__0\(0),
      I2 => \FSM_sequential_state[1]_i_6_n_0\,
      I3 => \FSM_sequential_state[1]_i_7_n_0\,
      I4 => \FSM_sequential_state[1]_i_8_n_0\,
      I5 => state2,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D0D0D0D0D0D0D01"
    )
        port map (
      I0 => \^co\(0),
      I1 => \^state__0\(1),
      I2 => \^state__0\(0),
      I3 => \FSM_sequential_state[1]_i_6_n_0\,
      I4 => \FSM_sequential_state[1]_i_7_n_0\,
      I5 => \FSM_sequential_state[1]_i_8_n_0\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555577777775"
    )
        port map (
      I0 => \^pwm_out\,
      I1 => state2,
      I2 => \FSM_sequential_state[1]_i_8_n_0\,
      I3 => \FSM_sequential_state[1]_i_7_n_0\,
      I4 => \FSM_sequential_state[1]_i_6_n_0\,
      I5 => state11_in,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => in9(6),
      I1 => in9(4),
      I2 => in9(10),
      I3 => \count_v_reg_n_0_[0]\,
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => in9(5),
      I1 => in9(3),
      I2 => in9(9),
      I3 => in9(2),
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => in9(11),
      I1 => in9(1),
      I2 => in9(8),
      I3 => in9(7),
      O => \FSM_sequential_state[1]_i_8_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => fsm_ce_n_4,
      Q => \^state__0\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => fsm_ce_n_3,
      Q => \^state__0\(1),
      R => '0'
    );
count_v0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count_v0_carry_n_0,
      CO(2) => count_v0_carry_n_1,
      CO(1) => count_v0_carry_n_2,
      CO(0) => count_v0_carry_n_3,
      CYINIT => \count_v_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(4 downto 1),
      S(3) => \count_v_reg_n_0_[4]\,
      S(2) => \count_v_reg_n_0_[3]\,
      S(1) => \count_v_reg_n_0_[2]\,
      S(0) => \count_v_reg_n_0_[1]\
    );
\count_v0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count_v0_carry_n_0,
      CO(3) => \count_v0_carry__0_n_0\,
      CO(2) => \count_v0_carry__0_n_1\,
      CO(1) => \count_v0_carry__0_n_2\,
      CO(0) => \count_v0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(8 downto 5),
      S(3) => \count_v_reg_n_0_[8]\,
      S(2) => \count_v_reg_n_0_[7]\,
      S(1) => \count_v_reg_n_0_[6]\,
      S(0) => \count_v_reg_n_0_[5]\
    );
\count_v0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_v0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_count_v0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_v0_carry__1_n_2\,
      CO(0) => \count_v0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_v0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => in9(11 downto 9),
      S(3) => '0',
      S(2) => \count_v_reg_n_0_[11]\,
      S(1) => \count_v_reg_n_0_[10]\,
      S(0) => \count_v_reg_n_0_[9]\
    );
\count_v[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^state__0\(0),
      I1 => \^state__0\(1),
      I2 => \count_v_reg_n_0_[0]\,
      O => \count_v[0]_i_1_n_0\
    );
\count_v_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ce_s,
      D => \count_v[0]_i_1_n_0\,
      Q => \count_v_reg_n_0_[0]\,
      R => '0'
    );
\count_v_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ce_s,
      D => in9(10),
      Q => \count_v_reg_n_0_[10]\,
      R => fsm_ce_n_1
    );
\count_v_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ce_s,
      D => in9(11),
      Q => \count_v_reg_n_0_[11]\,
      R => fsm_ce_n_1
    );
\count_v_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ce_s,
      D => in9(1),
      Q => \count_v_reg_n_0_[1]\,
      R => fsm_ce_n_1
    );
\count_v_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ce_s,
      D => in9(2),
      Q => \count_v_reg_n_0_[2]\,
      R => fsm_ce_n_1
    );
\count_v_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ce_s,
      D => in9(3),
      Q => \count_v_reg_n_0_[3]\,
      R => fsm_ce_n_1
    );
\count_v_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ce_s,
      D => in9(4),
      Q => \count_v_reg_n_0_[4]\,
      R => fsm_ce_n_1
    );
\count_v_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ce_s,
      D => in9(5),
      Q => \count_v_reg_n_0_[5]\,
      R => fsm_ce_n_1
    );
\count_v_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ce_s,
      D => in9(6),
      Q => \count_v_reg_n_0_[6]\,
      R => fsm_ce_n_1
    );
\count_v_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ce_s,
      D => in9(7),
      Q => \count_v_reg_n_0_[7]\,
      R => fsm_ce_n_1
    );
\count_v_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ce_s,
      D => in9(8),
      Q => \count_v_reg_n_0_[8]\,
      R => fsm_ce_n_1
    );
\count_v_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ce_s,
      D => in9(9),
      Q => \count_v_reg_n_0_[9]\,
      R => fsm_ce_n_1
    );
fsm_ce: entity work.mainBD_modulator_axi_ip_0_0_frequency_trigger_0
     port map (
      E(0) => fsm_ce_n_2,
      \FSM_sequential_state_reg[0]\ => \FSM_sequential_state_reg[0]_0\,
      \FSM_sequential_state_reg[0]_0\ => \FSM_sequential_state[0]_i_2_n_0\,
      \FSM_sequential_state_reg[0]_1\ => \FSM_sequential_state[0]_i_3_n_0\,
      \FSM_sequential_state_reg[1]\ => \FSM_sequential_state[1]_i_2_n_0\,
      \FSM_sequential_state_reg[1]_0\ => \FSM_sequential_state[1]_i_3_n_0\,
      \FSM_sequential_state_reg[1]_1\ => \FSM_sequential_state[1]_i_5_n_0\,
      Q(18 downto 0) => Q(18 downto 0),
      ce_s => ce_s,
      \count_v_reg[11]\ => \^state__0\(0),
      \count_v_reg[11]_0\ => \^state__0\(1),
      freq_trig_reg_0 => fsm_ce_n_1,
      freq_trig_reg_1 => fsm_ce_n_3,
      freq_trig_reg_2 => fsm_ce_n_4,
      freq_trig_reg_3(0) => freq_trig_reg(0),
      \minusOp_inferred__0/i__carry__3_0\(18 downto 0) => \minusOp_inferred__0/i__carry__3\(18 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp_carry_n_0,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\gtOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gtOp_carry_n_0,
      CO(3 downto 2) => \NLW_gtOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^co\(0),
      CO(0) => \gtOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \FSM_sequential_state[1]_i_4\(1 downto 0),
      O(3 downto 0) => \NLW_gtOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \FSM_sequential_state[1]_i_4_0\(1 downto 0)
    );
\i__carry__0_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => in9(11),
      I1 => threshold_v(11),
      I2 => threshold_v(10),
      I3 => in9(10),
      O => \i__carry__0_i_1__3_n_0\
    );
\i__carry__0_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => in9(9),
      I1 => threshold_v(9),
      I2 => threshold_v(8),
      I3 => in9(8),
      O => \i__carry__0_i_2__3_n_0\
    );
\i__carry__0_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => threshold_v(11),
      I1 => in9(11),
      I2 => threshold_v(10),
      I3 => in9(10),
      O => \i__carry__0_i_3__3_n_0\
    );
\i__carry__0_i_4__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => threshold_v(8),
      I1 => in9(8),
      I2 => threshold_v(9),
      I3 => in9(9),
      O => \i__carry__0_i_4__3_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => in9(7),
      I1 => threshold_v(7),
      I2 => threshold_v(6),
      I3 => in9(6),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => in9(10),
      I1 => threshold_v(10),
      I2 => in9(11),
      I3 => threshold_v(11),
      I4 => threshold_v(9),
      I5 => in9(9),
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => in9(5),
      I1 => threshold_v(5),
      I2 => threshold_v(4),
      I3 => in9(4),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => threshold_v(8),
      I1 => in9(8),
      I2 => in9(6),
      I3 => threshold_v(6),
      I4 => in9(7),
      I5 => threshold_v(7),
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => in9(3),
      I1 => threshold_v(3),
      I2 => threshold_v(2),
      I3 => in9(2),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => in9(4),
      I1 => threshold_v(4),
      I2 => in9(5),
      I3 => threshold_v(5),
      I4 => threshold_v(3),
      I5 => in9(3),
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D444"
    )
        port map (
      I0 => in9(1),
      I1 => threshold_v(1),
      I2 => \count_v_reg_n_0_[0]\,
      I3 => threshold_v(0),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => threshold_v(2),
      I1 => in9(2),
      I2 => in9(1),
      I3 => threshold_v(1),
      I4 => \count_v_reg_n_0_[0]\,
      I5 => threshold_v(0),
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => threshold_v(7),
      I1 => in9(7),
      I2 => threshold_v(6),
      I3 => in9(6),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => threshold_v(5),
      I1 => in9(5),
      I2 => threshold_v(4),
      I3 => in9(4),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => threshold_v(2),
      I1 => in9(2),
      I2 => threshold_v(3),
      I3 => in9(3),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => threshold_v(0),
      I1 => \count_v_reg_n_0_[0]\,
      I2 => threshold_v(1),
      I3 => in9(1),
      O => \i__carry_i_8__1_n_0\
    );
pwm_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^state__0\(0),
      I1 => \^state__0\(1),
      O => \^pwm_out\
    );
\state1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state11_in,
      CO(2) => \state1_inferred__0/i__carry_n_1\,
      CO(1) => \state1_inferred__0/i__carry_n_2\,
      CO(0) => \state1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__4_n_0\,
      S(2) => \i__carry_i_2__4_n_0\,
      S(1) => \i__carry_i_3__4_n_0\,
      S(0) => \i__carry_i_4__4_n_0\
    );
\state2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state2_inferred__0/i__carry_n_0\,
      CO(2) => \state2_inferred__0/i__carry_n_1\,
      CO(1) => \state2_inferred__0/i__carry_n_2\,
      CO(0) => \state2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__3_n_0\,
      DI(2) => \i__carry_i_2__3_n_0\,
      DI(1) => \i__carry_i_3__3_n_0\,
      DI(0) => \i__carry_i_4__3_n_0\,
      O(3 downto 0) => \NLW_state2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\state2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \state2_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_state2_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => state2,
      CO(0) => \state2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__0_i_1__3_n_0\,
      DI(0) => \i__carry__0_i_2__3_n_0\,
      O(3 downto 0) => \NLW_state2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_3__3_n_0\,
      S(0) => \i__carry__0_i_4__3_n_0\
    );
\threshold_v_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => fsm_ce_n_2,
      D => DOADO(0),
      Q => threshold_v(0),
      R => '0'
    );
\threshold_v_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => fsm_ce_n_2,
      D => DOADO(10),
      Q => threshold_v(10),
      R => '0'
    );
\threshold_v_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => fsm_ce_n_2,
      D => DOADO(11),
      Q => threshold_v(11),
      R => '0'
    );
\threshold_v_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => fsm_ce_n_2,
      D => DOADO(1),
      Q => threshold_v(1),
      R => '0'
    );
\threshold_v_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => fsm_ce_n_2,
      D => DOADO(2),
      Q => threshold_v(2),
      R => '0'
    );
\threshold_v_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => fsm_ce_n_2,
      D => DOADO(3),
      Q => threshold_v(3),
      R => '0'
    );
\threshold_v_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => fsm_ce_n_2,
      D => DOADO(4),
      Q => threshold_v(4),
      R => '0'
    );
\threshold_v_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => fsm_ce_n_2,
      D => DOADO(5),
      Q => threshold_v(5),
      R => '0'
    );
\threshold_v_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => fsm_ce_n_2,
      D => DOADO(6),
      Q => threshold_v(6),
      R => '0'
    );
\threshold_v_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => fsm_ce_n_2,
      D => DOADO(7),
      Q => threshold_v(7),
      R => '0'
    );
\threshold_v_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => fsm_ce_n_2,
      D => DOADO(8),
      Q => threshold_v(8),
      R => '0'
    );
\threshold_v_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => fsm_ce_n_2,
      D => DOADO(9),
      Q => threshold_v(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mainBD_modulator_axi_ip_0_0_modulator is
  port (
    pwm_out : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \minusOp_inferred__0/i__carry__6\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    freq_trig_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mainBD_modulator_axi_ip_0_0_modulator : entity is "modulator";
end mainBD_modulator_axi_ip_0_0_modulator;

architecture STRUCTURE of mainBD_modulator_axi_ip_0_0_modulator is
  signal ampl_cnt_s_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal freq_trig_s : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal sine_n_12 : STD_LOGIC;
  signal sine_n_13 : STD_LOGIC;
  signal sine_n_14 : STD_LOGIC;
  signal sine_n_15 : STD_LOGIC;
  signal sine_n_16 : STD_LOGIC;
  signal sine_n_17 : STD_LOGIC;
  signal sine_n_18 : STD_LOGIC;
  signal sine_n_19 : STD_LOGIC;
  signal sine_n_20 : STD_LOGIC;
  signal sine_n_21 : STD_LOGIC;
  signal sine_n_22 : STD_LOGIC;
  signal sine_n_23 : STD_LOGIC;
  signal sine_n_24 : STD_LOGIC;
  signal sine_s_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
counterampl: entity work.mainBD_modulator_axi_ip_0_0_counter
     port map (
      E(0) => freq_trig_s,
      Q(7 downto 0) => ampl_cnt_s_0(7 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
freq_ce: entity work.mainBD_modulator_axi_ip_0_0_frequency_trigger
     port map (
      E(0) => freq_trig_s,
      Q(31 downto 0) => Q(31 downto 0),
      freq_trig_reg_0(0) => freq_trig_reg(0),
      \minusOp_inferred__0/i__carry__6_0\(31 downto 0) => \minusOp_inferred__0/i__carry__6\(31 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
pwmmodule: entity work.mainBD_modulator_axi_ip_0_0_pwm
     port map (
      CO(0) => gtOp,
      DI(3) => sine_n_17,
      DI(2) => sine_n_18,
      DI(1) => sine_n_19,
      DI(0) => sine_n_20,
      DOADO(11 downto 0) => sine_s_reg(11 downto 0),
      \FSM_sequential_state[1]_i_4\(1) => sine_n_23,
      \FSM_sequential_state[1]_i_4\(0) => sine_n_24,
      \FSM_sequential_state[1]_i_4_0\(1) => sine_n_21,
      \FSM_sequential_state[1]_i_4_0\(0) => sine_n_22,
      \FSM_sequential_state_reg[0]_0\ => sine_n_12,
      Q(18 downto 0) => Q(30 downto 12),
      S(3) => sine_n_13,
      S(2) => sine_n_14,
      S(1) => sine_n_15,
      S(0) => sine_n_16,
      freq_trig_reg(0) => freq_trig_reg(0),
      \minusOp_inferred__0/i__carry__3\(18 downto 0) => \minusOp_inferred__0/i__carry__6\(30 downto 12),
      pwm_out => pwm_out,
      s00_axi_aclk => s00_axi_aclk,
      \state__0\(1 downto 0) => \state__0\(1 downto 0)
    );
sine: entity work.mainBD_modulator_axi_ip_0_0_sine
     port map (
      CO(0) => gtOp,
      D(7 downto 0) => ampl_cnt_s_0(7 downto 0),
      DI(3) => sine_n_17,
      DI(2) => sine_n_18,
      DI(1) => sine_n_19,
      DI(0) => sine_n_20,
      DOADO(11 downto 0) => sine_s_reg(11 downto 0),
      \FSM_sequential_state_reg[0]\ => sine_n_12,
      S(3) => sine_n_13,
      S(2) => sine_n_14,
      S(1) => sine_n_15,
      S(0) => sine_n_16,
      s00_axi_aclk => s00_axi_aclk,
      sine_s_reg_0(1) => sine_n_21,
      sine_s_reg_0(0) => sine_n_22,
      sine_s_reg_1(1) => sine_n_23,
      sine_s_reg_1(0) => sine_n_24,
      \state__0\(1 downto 0) => \state__0\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mainBD_modulator_axi_ip_0_0_modulator_axi_ip_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_out : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mainBD_modulator_axi_ip_0_0_modulator_axi_ip_v1_0_S00_AXI : entity is "modulator_axi_ip_v1_0_S00_AXI";
end mainBD_modulator_axi_ip_0_0_modulator_axi_ip_v1_0_S00_AXI;

architecture STRUCTURE of mainBD_modulator_axi_ip_0_0_modulator_axi_ip_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg2[31]_i_2\ : label is "soft_lutpair6";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(0),
      I4 => slv_reg2(0),
      I5 => slv_reg0(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(10),
      I4 => slv_reg2(10),
      I5 => \slv_reg0_reg_n_0_[10]\,
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(11),
      I4 => slv_reg2(11),
      I5 => \slv_reg0_reg_n_0_[11]\,
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(12),
      I4 => slv_reg2(12),
      I5 => \slv_reg0_reg_n_0_[12]\,
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(13),
      I4 => slv_reg2(13),
      I5 => \slv_reg0_reg_n_0_[13]\,
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(14),
      I4 => slv_reg2(14),
      I5 => \slv_reg0_reg_n_0_[14]\,
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(15),
      I4 => slv_reg2(15),
      I5 => \slv_reg0_reg_n_0_[15]\,
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(16),
      I4 => slv_reg2(16),
      I5 => \slv_reg0_reg_n_0_[16]\,
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(17),
      I4 => slv_reg2(17),
      I5 => \slv_reg0_reg_n_0_[17]\,
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(18),
      I4 => slv_reg2(18),
      I5 => \slv_reg0_reg_n_0_[18]\,
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(19),
      I4 => slv_reg2(19),
      I5 => \slv_reg0_reg_n_0_[19]\,
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(1),
      I4 => slv_reg2(1),
      I5 => \slv_reg0_reg_n_0_[1]\,
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(20),
      I4 => slv_reg2(20),
      I5 => \slv_reg0_reg_n_0_[20]\,
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(21),
      I4 => slv_reg2(21),
      I5 => \slv_reg0_reg_n_0_[21]\,
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(22),
      I4 => slv_reg2(22),
      I5 => \slv_reg0_reg_n_0_[22]\,
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(23),
      I4 => slv_reg2(23),
      I5 => \slv_reg0_reg_n_0_[23]\,
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(24),
      I4 => slv_reg2(24),
      I5 => \slv_reg0_reg_n_0_[24]\,
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(25),
      I4 => slv_reg2(25),
      I5 => \slv_reg0_reg_n_0_[25]\,
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(26),
      I4 => slv_reg2(26),
      I5 => \slv_reg0_reg_n_0_[26]\,
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(27),
      I4 => slv_reg2(27),
      I5 => \slv_reg0_reg_n_0_[27]\,
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(28),
      I4 => slv_reg2(28),
      I5 => \slv_reg0_reg_n_0_[28]\,
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(29),
      I4 => slv_reg2(29),
      I5 => \slv_reg0_reg_n_0_[29]\,
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(2),
      I4 => slv_reg2(2),
      I5 => \slv_reg0_reg_n_0_[2]\,
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(30),
      I4 => slv_reg2(30),
      I5 => \slv_reg0_reg_n_0_[30]\,
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(31),
      I4 => slv_reg2(31),
      I5 => \slv_reg0_reg_n_0_[31]\,
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(3),
      I4 => slv_reg2(3),
      I5 => \slv_reg0_reg_n_0_[3]\,
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(4),
      I4 => slv_reg2(4),
      I5 => \slv_reg0_reg_n_0_[4]\,
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(5),
      I4 => slv_reg2(5),
      I5 => \slv_reg0_reg_n_0_[5]\,
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(6),
      I4 => slv_reg2(6),
      I5 => \slv_reg0_reg_n_0_[6]\,
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(7),
      I4 => slv_reg2(7),
      I5 => \slv_reg0_reg_n_0_[7]\,
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(8),
      I4 => slv_reg2(8),
      I5 => \slv_reg0_reg_n_0_[8]\,
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(9),
      I4 => slv_reg2(9),
      I5 => \slv_reg0_reg_n_0_[9]\,
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
pwmmodulator: entity work.mainBD_modulator_axi_ip_0_0_modulator
     port map (
      Q(31 downto 0) => slv_reg2(31 downto 0),
      freq_trig_reg(0) => slv_reg0(0),
      \minusOp_inferred__0/i__carry__6\(31 downto 0) => slv_reg1(31 downto 0),
      pwm_out => pwm_out,
      s00_axi_aclk => s00_axi_aclk
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => \^s_axi_wready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(31)
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mainBD_modulator_axi_ip_0_0_modulator_axi_ip_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_out : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mainBD_modulator_axi_ip_0_0_modulator_axi_ip_v1_0 : entity is "modulator_axi_ip_v1_0";
end mainBD_modulator_axi_ip_0_0_modulator_axi_ip_v1_0;

architecture STRUCTURE of mainBD_modulator_axi_ip_0_0_modulator_axi_ip_v1_0 is
begin
modulator_axi_ip_v1_0_S00_AXI_inst: entity work.mainBD_modulator_axi_ip_0_0_modulator_axi_ip_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      pwm_out => pwm_out,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mainBD_modulator_axi_ip_0_0 is
  port (
    pwm_out : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mainBD_modulator_axi_ip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mainBD_modulator_axi_ip_0_0 : entity is "mainBD_modulator_axi_ip_0_0,modulator_axi_ip_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mainBD_modulator_axi_ip_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mainBD_modulator_axi_ip_0_0 : entity is "modulator_axi_ip_v1_0,Vivado 2019.1";
end mainBD_modulator_axi_ip_0_0;

architecture STRUCTURE of mainBD_modulator_axi_ip_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0, XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN mainBD_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S00_AXI, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN mainBD_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.mainBD_modulator_axi_ip_0_0_modulator_axi_ip_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      pwm_out => pwm_out,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
