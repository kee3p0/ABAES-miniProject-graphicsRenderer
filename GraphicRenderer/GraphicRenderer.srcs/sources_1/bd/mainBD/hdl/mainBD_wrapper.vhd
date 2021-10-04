--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Fri Sep 18 14:35:49 2020
--Host        : DESKTOP-3K9CSVV running 64-bit major release  (build 9200)
--Command     : generate_target mainBD_wrapper.bd
--Design      : mainBD_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mainBD_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    GPIO_O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IIC_0_scl_io : inout STD_LOGIC;
    IIC_0_sda_io : inout STD_LOGIC;
    IIC_1_scl_io : inout STD_LOGIC;
    IIC_1_sda_io : inout STD_LOGIC;
    SPI0_MISO_I : in STD_LOGIC;
    SPI0_MOSI_O : out STD_LOGIC;
    SPI0_SCLK_O : out STD_LOGIC;
    SPI0_SS_O : out STD_LOGIC;
    UART16650_0_RXD : in STD_LOGIC;
    UART16650_0_TXD : out STD_LOGIC;
    UARTLITE_0_rxd : in STD_LOGIC;
    UARTLITE_0_txd : out STD_LOGIC;
    Vaux14_v_n : in STD_LOGIC;
    Vaux14_v_p : in STD_LOGIC;
    Vaux15_v_n : in STD_LOGIC;
    Vaux15_v_p : in STD_LOGIC;
    Vaux6_v_n : in STD_LOGIC;
    Vaux6_v_p : in STD_LOGIC;
    Vaux7_v_n : in STD_LOGIC;
    Vaux7_v_p : in STD_LOGIC;
    gpio_rtl_0_tri_io : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_rtl_tri_io : inout STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end mainBD_wrapper;

architecture STRUCTURE of mainBD_wrapper is
  component mainBD is
  port (
    SPI0_SCLK_O : out STD_LOGIC;
    SPI0_MISO_I : in STD_LOGIC;
    SPI0_MOSI_O : out STD_LOGIC;
    SPI0_SS_O : out STD_LOGIC;
    GPIO_O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    UART16650_0_RXD : in STD_LOGIC;
    UART16650_0_TXD : out STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    Vaux15_v_n : in STD_LOGIC;
    Vaux15_v_p : in STD_LOGIC;
    Vaux6_v_n : in STD_LOGIC;
    Vaux6_v_p : in STD_LOGIC;
    Vaux7_v_n : in STD_LOGIC;
    Vaux7_v_p : in STD_LOGIC;
    IIC_0_sda_i : in STD_LOGIC;
    IIC_0_sda_o : out STD_LOGIC;
    IIC_0_sda_t : out STD_LOGIC;
    IIC_0_scl_i : in STD_LOGIC;
    IIC_0_scl_o : out STD_LOGIC;
    IIC_0_scl_t : out STD_LOGIC;
    Vaux14_v_n : in STD_LOGIC;
    Vaux14_v_p : in STD_LOGIC;
    UARTLITE_0_rxd : in STD_LOGIC;
    UARTLITE_0_txd : out STD_LOGIC;
    IIC_1_sda_i : in STD_LOGIC;
    IIC_1_sda_o : out STD_LOGIC;
    IIC_1_sda_t : out STD_LOGIC;
    IIC_1_scl_i : in STD_LOGIC;
    IIC_1_scl_o : out STD_LOGIC;
    IIC_1_scl_t : out STD_LOGIC;
    gpio_rtl_0_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_rtl_0_tri_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_rtl_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_rtl_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_rtl_tri_t : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component mainBD;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal IIC_0_scl_i : STD_LOGIC;
  signal IIC_0_scl_o : STD_LOGIC;
  signal IIC_0_scl_t : STD_LOGIC;
  signal IIC_0_sda_i : STD_LOGIC;
  signal IIC_0_sda_o : STD_LOGIC;
  signal IIC_0_sda_t : STD_LOGIC;
  signal IIC_1_scl_i : STD_LOGIC;
  signal IIC_1_scl_o : STD_LOGIC;
  signal IIC_1_scl_t : STD_LOGIC;
  signal IIC_1_sda_i : STD_LOGIC;
  signal IIC_1_sda_o : STD_LOGIC;
  signal IIC_1_sda_t : STD_LOGIC;
  signal gpio_rtl_0_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_0_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_0_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal gpio_rtl_0_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal gpio_rtl_0_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_0_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_0_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal gpio_rtl_0_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal gpio_rtl_0_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_0_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_0_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal gpio_rtl_0_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal gpio_rtl_0_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_0_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_0_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal gpio_rtl_0_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal gpio_rtl_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal gpio_rtl_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal gpio_rtl_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal gpio_rtl_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal gpio_rtl_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal gpio_rtl_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal gpio_rtl_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_rtl_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_rtl_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal gpio_rtl_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
IIC_0_scl_iobuf: component IOBUF
     port map (
      I => IIC_0_scl_o,
      IO => IIC_0_scl_io,
      O => IIC_0_scl_i,
      T => IIC_0_scl_t
    );
IIC_0_sda_iobuf: component IOBUF
     port map (
      I => IIC_0_sda_o,
      IO => IIC_0_sda_io,
      O => IIC_0_sda_i,
      T => IIC_0_sda_t
    );
IIC_1_scl_iobuf: component IOBUF
     port map (
      I => IIC_1_scl_o,
      IO => IIC_1_scl_io,
      O => IIC_1_scl_i,
      T => IIC_1_scl_t
    );
IIC_1_sda_iobuf: component IOBUF
     port map (
      I => IIC_1_sda_o,
      IO => IIC_1_sda_io,
      O => IIC_1_sda_i,
      T => IIC_1_sda_t
    );
gpio_rtl_0_tri_iobuf_0: component IOBUF
     port map (
      I => gpio_rtl_0_tri_o_0(0),
      IO => gpio_rtl_0_tri_io(0),
      O => gpio_rtl_0_tri_i_0(0),
      T => gpio_rtl_0_tri_t_0(0)
    );
gpio_rtl_0_tri_iobuf_1: component IOBUF
     port map (
      I => gpio_rtl_0_tri_o_1(1),
      IO => gpio_rtl_0_tri_io(1),
      O => gpio_rtl_0_tri_i_1(1),
      T => gpio_rtl_0_tri_t_1(1)
    );
gpio_rtl_0_tri_iobuf_2: component IOBUF
     port map (
      I => gpio_rtl_0_tri_o_2(2),
      IO => gpio_rtl_0_tri_io(2),
      O => gpio_rtl_0_tri_i_2(2),
      T => gpio_rtl_0_tri_t_2(2)
    );
gpio_rtl_0_tri_iobuf_3: component IOBUF
     port map (
      I => gpio_rtl_0_tri_o_3(3),
      IO => gpio_rtl_0_tri_io(3),
      O => gpio_rtl_0_tri_i_3(3),
      T => gpio_rtl_0_tri_t_3(3)
    );
gpio_rtl_tri_iobuf_0: component IOBUF
     port map (
      I => gpio_rtl_tri_o_0(0),
      IO => gpio_rtl_tri_io(0),
      O => gpio_rtl_tri_i_0(0),
      T => gpio_rtl_tri_t_0(0)
    );
gpio_rtl_tri_iobuf_1: component IOBUF
     port map (
      I => gpio_rtl_tri_o_1(1),
      IO => gpio_rtl_tri_io(1),
      O => gpio_rtl_tri_i_1(1),
      T => gpio_rtl_tri_t_1(1)
    );
gpio_rtl_tri_iobuf_2: component IOBUF
     port map (
      I => gpio_rtl_tri_o_2(2),
      IO => gpio_rtl_tri_io(2),
      O => gpio_rtl_tri_i_2(2),
      T => gpio_rtl_tri_t_2(2)
    );
gpio_rtl_tri_iobuf_3: component IOBUF
     port map (
      I => gpio_rtl_tri_o_3(3),
      IO => gpio_rtl_tri_io(3),
      O => gpio_rtl_tri_i_3(3),
      T => gpio_rtl_tri_t_3(3)
    );
mainBD_i: component mainBD
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      GPIO_O(3 downto 0) => GPIO_O(3 downto 0),
      IIC_0_scl_i => IIC_0_scl_i,
      IIC_0_scl_o => IIC_0_scl_o,
      IIC_0_scl_t => IIC_0_scl_t,
      IIC_0_sda_i => IIC_0_sda_i,
      IIC_0_sda_o => IIC_0_sda_o,
      IIC_0_sda_t => IIC_0_sda_t,
      IIC_1_scl_i => IIC_1_scl_i,
      IIC_1_scl_o => IIC_1_scl_o,
      IIC_1_scl_t => IIC_1_scl_t,
      IIC_1_sda_i => IIC_1_sda_i,
      IIC_1_sda_o => IIC_1_sda_o,
      IIC_1_sda_t => IIC_1_sda_t,
      SPI0_MISO_I => SPI0_MISO_I,
      SPI0_MOSI_O => SPI0_MOSI_O,
      SPI0_SCLK_O => SPI0_SCLK_O,
      SPI0_SS_O => SPI0_SS_O,
      UART16650_0_RXD => UART16650_0_RXD,
      UART16650_0_TXD => UART16650_0_TXD,
      UARTLITE_0_rxd => UARTLITE_0_rxd,
      UARTLITE_0_txd => UARTLITE_0_txd,
      Vaux14_v_n => Vaux14_v_n,
      Vaux14_v_p => Vaux14_v_p,
      Vaux15_v_n => Vaux15_v_n,
      Vaux15_v_p => Vaux15_v_p,
      Vaux6_v_n => Vaux6_v_n,
      Vaux6_v_p => Vaux6_v_p,
      Vaux7_v_n => Vaux7_v_n,
      Vaux7_v_p => Vaux7_v_p,
      gpio_rtl_0_tri_i(3) => gpio_rtl_0_tri_i_3(3),
      gpio_rtl_0_tri_i(2) => gpio_rtl_0_tri_i_2(2),
      gpio_rtl_0_tri_i(1) => gpio_rtl_0_tri_i_1(1),
      gpio_rtl_0_tri_i(0) => gpio_rtl_0_tri_i_0(0),
      gpio_rtl_0_tri_o(3) => gpio_rtl_0_tri_o_3(3),
      gpio_rtl_0_tri_o(2) => gpio_rtl_0_tri_o_2(2),
      gpio_rtl_0_tri_o(1) => gpio_rtl_0_tri_o_1(1),
      gpio_rtl_0_tri_o(0) => gpio_rtl_0_tri_o_0(0),
      gpio_rtl_0_tri_t(3) => gpio_rtl_0_tri_t_3(3),
      gpio_rtl_0_tri_t(2) => gpio_rtl_0_tri_t_2(2),
      gpio_rtl_0_tri_t(1) => gpio_rtl_0_tri_t_1(1),
      gpio_rtl_0_tri_t(0) => gpio_rtl_0_tri_t_0(0),
      gpio_rtl_tri_i(3) => gpio_rtl_tri_i_3(3),
      gpio_rtl_tri_i(2) => gpio_rtl_tri_i_2(2),
      gpio_rtl_tri_i(1) => gpio_rtl_tri_i_1(1),
      gpio_rtl_tri_i(0) => gpio_rtl_tri_i_0(0),
      gpio_rtl_tri_o(3) => gpio_rtl_tri_o_3(3),
      gpio_rtl_tri_o(2) => gpio_rtl_tri_o_2(2),
      gpio_rtl_tri_o(1) => gpio_rtl_tri_o_1(1),
      gpio_rtl_tri_o(0) => gpio_rtl_tri_o_0(0),
      gpio_rtl_tri_t(3) => gpio_rtl_tri_t_3(3),
      gpio_rtl_tri_t(2) => gpio_rtl_tri_t_2(2),
      gpio_rtl_tri_t(1) => gpio_rtl_tri_t_1(1),
      gpio_rtl_tri_t(0) => gpio_rtl_tri_t_0(0)
    );
end STRUCTURE;
