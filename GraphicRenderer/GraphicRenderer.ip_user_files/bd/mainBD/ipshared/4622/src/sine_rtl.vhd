--------------------------------------------------------------------------------
-- File        : sine_rtl.vhd
-- Project     : modulator
-- Creation    : 01.06.2010.
-- Limitations : none
-- Errors      : none known
-- Simulator   : XSim
-- Synthesizer : Vivado 2016.2
-- Platform    : Windows 7
-- Targets     : Simulation, Synthesis
---------------------------------------
-- Naming conv. : so_vhdl_guide.doc
---------------------------------------
-- Authors      : Maja Gordic (mgo1)
-- Organization : so-logic
-- Email        : mgo1@so-logic.co.at
-- Address      : Lustkandlg. 52/22, A-1090 Vienna Austria/Europe/Earth
--------------------------------------------------------------------------------
-- Copyright Notice
-- Copying of this document and giving it to others and the 
-- communication of the contents thereof is forbidden without authority.
-- Offenders are liable to payment of damages. All rights are reserved in
-- event of the grant or patent of the utility model or design.
--------------------------------------------------------------------------------
-- Function description
-- Generates an digital representation of an analog sine signal with desired 
-- frequency. It will use the counter values as addresses to fetch the next 
-- value of the sine wave from the ROM.
--------------------------------------------------------------------------------

-- Make reference to libraries that are necessary for this file:
-- the first part is a symbolic name, the path is defined depending of the tools
-- the second part is a package name 
-- the third part includes all functions from that package
-- Better for documentation would be to include only the functions that are necessary

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;

    use work.modulator_pkg.all;

-- Entity defines the interface of a module
-- Generics are static, they are used at compile time
-- Ports are updated during operation and behave like signals on a schematic or
-- traces on a PCB
-- Entity is a primary design unit
	
entity sine is
    generic(
        depth_g : integer range 1 to 99 := 8;   -- the number of samples in one period of the signal
        width_g : integer range 1 to 99 := 12   -- the number of bits used to represent amplitude value
    );
    port(
        clk_in   : in std_logic;                            -- input clock signal
        ampl_cnt : in std_logic_vector(depth_g-1 downto 0); -- address value for the sine waveform ROM
        sine_out : out std_logic_vector(width_g-1 downto 0) -- current amplitude value of the sine signal
    );
end entity;

-- Architecture is a secondary design unit and describes the functionality of the module 
-- One entity can have multiple architectures for different families,
-- technologies or different levels of description
-- The name should represent the level of description like 
-- structural, rtl, tb and maybe for which technology

architecture rtl of sine is

-- Between architecture and begin is declaration area for types, signals and constants
-- Everything declared here will be visible in the whole architecture

    constant sin_ampl_c : vector_t_arr := init_sin_f(depth_g, width_g); -- returns sine amplitude value

    signal ampl_cnt_s   : integer range 0 to 255 := 0;                           -- amplitude counter
    signal sine_s       : std_logic_vector(width_g-1 downto 0) := (others=>'0'); -- sine signal

begin

-- Defines a sequential process
-- Fetches amplitude values and frequency -> generates sine

    sine_p : process
    begin
        -- Replaces the sensitivity list
        -- Suspends evaluation until an event occurs
        -- In our case event we are waiting for is rising edge on the clk_in input port		
        wait until rising_edge(clk_in);
        -- converts ampl_cnt from std_logic_vector type to integer type
        ampl_cnt_s <= conv_integer(ampl_cnt);
        -- converts sin_ampl_c from integer type to std_logic_vector type        
        sine_s <= conv_std_logic_vector(sin_ampl_c(ampl_cnt_s), width_g); -- fetch amplitude

    end process;

    sine_out <= sine_s;

end;
