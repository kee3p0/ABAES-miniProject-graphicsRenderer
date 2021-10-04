--------------------------------------------------------------------------------
-- File        : frequency_trigger_rtl.vhd
-- Project     : modulator
-- Creation    : 30.05.2010.
-- Edit        : April 2015.
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
-- Generate one output signal with two possible frequencies, 
-- depending on the position of the two-state on-board switch (sw0)
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

entity frequency_trigger is
    port(
        clk_in              : in std_logic;                     -- input clock signal    
        sw0                 : in std_logic;                     -- signal made for selecting frequency        
        div_factor_freqhigh : in std_logic_vector(31 downto 0); -- input clock division factor when sw0 = '1'       
        div_factor_freqlow  : in std_logic_vector(31 downto 0); -- input clock division factor when sw0 = '0'
        freq_trig           : out std_logic                     -- output signal which frequency depends on the sw0 state
        );
end entity;

-- Architecture is a secondary design unit and describes the functionality of the module 
-- One entity can have multiple architectures for different families,
-- technologies or different levels of description
-- The name should represent the level of description like 
-- structural, rtl, tb and maybe for which technology

architecture rtl of frequency_trigger is

-- Between architecture and begin is declaration area for types, signals and constants
-- Everything declared here will be visible in the whole architecture

    signal freq_cnt_s : integer := 0;    -- clock counter

begin

-- Defines a sequential process
-- Counts to different values depending on the sw0

    freq_ce_p : process
    begin
        -- Replaces the sensitivity list
        -- Suspends evaluation until an event occurs
        -- In our case event we are waiting for is rising edge on the clk_in input port
        wait until rising_edge(clk_in);
        freq_trig  <= '0';              -- default assignment
        freq_cnt_s <= freq_cnt_s + 1;   -- counting

        if (sw0 = '0') then
            if (freq_cnt_s >= div_factor_freqlow - 1) then
                freq_trig <= '1';
                freq_cnt_s <= 0;        -- reset 
            end if;
        else
            if (freq_cnt_s >= div_factor_freqhigh - 1) then
                freq_trig <= '1';
                freq_cnt_s <= 0;        -- reset  
            end if;
        end if;
    end process;
end;
