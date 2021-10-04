--------------------------------------------------------------------------------
-- File        : counter_rtl.vhd
-- Project     : modulator
-- Creation    : 15.06.2010.
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
-- Generate read addresses from the ROM where samples of the sine wave are stored
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
	
-- Entity defines the interface of a module
-- Generics are static, they are used at compile time
-- Ports are updated during operation and behave like signals on a schematic or
-- traces on a PCB
-- Entity is a primary design unit 

entity counter is
    generic(
        cnt_value_g : integer;   -- threshold value for counter
        depth_g     : integer    -- the number of samples in one period of the signal
    );

    port( 
        clk_in  : in  std_logic;   -- input clock signal
        cnt_en  : in  std_logic;   -- counter enable
        cnt_out : out std_logic_vector(depth_g - 1 downto 0) -- current counter value
    );
end entity;

-- Architecture is a secondary design unit and describes the functionality of the module 
-- One entity can have multiple architectures for different families,
-- technologies or different levels of description
-- The name should represent the level of description like 
-- structural, rtl, tb and maybe for which technology

architecture rtl of counter is

-- Between architecture and begin is declaration area for types, signals and constants
-- Everything declared here will be visible in the whole architecture

    signal cnt_out_s : std_logic_vector (depth_g - 1 downto 0) := (others => '0'); 
	                                                         -- current counter value

begin

-- Defines a sequential process
-- This will be universal (generic) counter

    counter_p: process
    begin
        -- Replaces the sensitivity list
        -- Suspends evaluation until an event occurs
        -- In our case event we are waiting for is rising edge on the clk_in input port
        wait until rising_edge(clk_in);
        if (cnt_en = '1') then
            -- conv_std_logic_vector function converts integer type to std_logic_vector type
            if (cnt_out_s = conv_std_logic_vector (cnt_value_g, depth_g)) then
                cnt_out_s <= (others => '0');    -- counter reset
            else
                cnt_out_s <= cnt_out_s + 1;      -- counting
            end if;
        end if;
    end process;

cnt_out <= cnt_out_s;

end;
