--------------------------------------------------------------------------------
-- File        : pwm_rtl.vhd
-- Project     : modulator
-- Creation    : 02.06.2010.
-- Edit        : May 2016.
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
-- Generating the PWM signal
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
    
entity pwm is
    generic( 
        width_g : integer range 1 to 99 := 12  -- the number of bits used to represent amplitude value
        );

    port( 
        clk_in              : in std_logic;                     -- input clock signal
        sw0                 : in std_logic;                     -- signal made for selecting frequency
        sine_ampl           : in std_logic_vector(width_g-1 downto 0);
                                                                -- current amplitude value of the sine signal
        div_factor_freqhigh : in std_logic_vector(31 downto 0); -- input clock division when sw0 = '1'
        div_factor_freqlow  : in std_logic_vector(31 downto 0); -- input clock division when sw0 = '0' 
        pwm_out             : out std_logic                     -- pulse width modulated signal
        );
end entity;

-- Architecture is a secondary design unit and describes the functionality of the module 
-- One entity can have multiple architectures for different families,
-- technologies or different levels of description
-- The name should represent the level of description like 
-- structural, rtl, tb and maybe for which technology

architecture rtl of pwm is

-- Between architecture and begin is declaration area for types, signals and constants
-- Everything declared here will be visible in the whole architecture
	
    type state_t is (load_new_ampl, pwm_high, pwm_low);   -- states load_new_ampl, pwm_high, pwm_low
    signal state: state_t ;
  
    signal ce_s : std_logic := '0';   -- clock enable signal for the fsm

begin

-- Defines a sequential process
-- process1 and process2 will constitute two-process model of the FSM (Finite State Machine)

    -- process1 models state register and next-state logic	
    process1_p : process (clk_in)

        -- threshold_v is variable that is telling us when pwm signal should be changed from 1 to 0
        -- integer range 0 to 4095 (in our case)		
        variable threshold_v : integer range 0 to ((2**width_g)-1) := 0;
        -- count_v is variable that counts the number of elapsed cycles
        -- when count_v reaches threshold_v value it is time to change pwm signal from 1 to 0
        -- integer range 0 to 4095 (in our case)
        variable count_v     : integer range 0 to ((2**width_g)-1) := 0;

    begin
        if (clk_in = '1' and clk_in'event) then
            if (ce_s = '1') then
                case state is

                    -- in load_new_ampl state we are loading new amplitude value of the sine signal
                    when load_new_ampl => 
                        -- set the threshold_v value to the current value of the sine signal
                        threshold_v := conv_integer (sine_ampl);
                        count_v := 0;             -- default assignment                      
                        
                        -- if current amplitude of the sine signal is greater than zero, there
                        -- will be a pulse on the PWM signal in the current period
                        -- (PWM will be 1 for a period of time)
						if (sine_ampl > 0) then
                            state <= pwm_high;	
						
                        -- if current amplitude value is equal to zero, there will be no pulse
                        -- on the PWM signal in the current period (PWM will always be 0)
                        elsif (sine_ampl = 0) then
                            state <= pwm_low;
                        end if;

						
                    -- when we are in pwm_high state, PWM = 1
                    when pwm_high =>
                        count_v := count_v + 1;   -- increment counter

                        -- while counter value is less than threshold_v, we stay in pwm_high state
                        if (count_v < ((2**width_g)-1) and count_v < threshold_v) then 
                            state <= pwm_high;
						
                        -- if one period of the PWM signal has elapsed we go to load_new_ampl state
                        elsif (count_v = ((2**width_g)-1)) then
                            state <= load_new_ampl;			 
						
                        -- if count_v is equal to threshold_v, we go to pwm_low state
                        elsif (count_v < ((2**width_g)-1) and count_v = threshold_v) then
                            state <= pwm_low;
                        end if;
						
						
                    -- when we are in pwm_low state, PWM = 0
                    when pwm_low =>
                        count_v := count_v + 1;   -- increment counter
						
                        -- while counter value is less than 4095, we stay in pwm_low state
                        if (count_v < ((2**width_g)-1)) then
                            state <= pwm_low;
							
                        -- if count_v is equal to 4095, we go to load_new_ampl state
                        -- to load a new amplitude value of the sine signal
                        elsif (count_v = ((2**width_g)-1)) then 
                            state <= load_new_ampl;
                        end if;
                end case;
            end if;
        end if;
    end process process1_p;
	
    -- process2 models output logic (logic that generates pwm signal)
    process2_p : process (state)
    begin
        case state is
            when load_new_ampl => pwm_out <= '0';
            when pwm_high      => pwm_out <= '1';
            when pwm_low       => pwm_out <= '0';
        end case;
    end process process2_p;
	
	
    fsm_ce: entity work.frequency_trigger(rtl)   -- frequency trigger module instance
        port map (
            clk_in              => clk_in,
            sw0                 => sw0,
            div_factor_freqhigh => div_factor_freqhigh,
            div_factor_freqlow  => div_factor_freqlow,
            freq_trig           => ce_s
        );
end;

