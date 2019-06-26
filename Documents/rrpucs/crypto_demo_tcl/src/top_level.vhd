------------------------------------------------------------------------------
--! \file top_level.vhd
--! 
--! \brief  
--! 
--! \author 
--! 
--! \date 
--! 
--! \version 0.1.0 
--! 
--! \copyright 
--! 
------------------------------------------------------------------------------

library ieee; 
--! use standard library 
use ieee.numeric_std.all; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 

entity top_level is 
    port (
        -- inputs
        top_level_clock_in		:in std_logic; --! top_level clock input
        top_level_reset_n_in	:in std_logic --! top_level reset active low input
            
        -- outputs 

        -- debugs
    
    ); 
end top_level; 

architecture rtl of top_level is
    -- types
    
    type top_level_state_type is(
        top_level_IDLE,
        top_level_END
    ); 
    
    -- signals 
    signal top_level_state : top_level_state_type; 
    
    begin
    
        -- assignments 
    
        -- processes
    
        test_process : process (top_level_clock_in, top_level_reset_n_in)
        begin
            if (top_level_reset_n_in = '0')then
            top_level_state <= top_level_IDLE; 
    
            elsif (rising_edge(top_level_clock_in))then
                case top_level_state is 
                    when top_level_IDLE => 
                        top_level_state <= top_level_END;

                    when top_level_END => 
                        top_level_state <= top_level_IDLE; 

                    when others => null; 
                end case; 
            end if; 
        end process; 
    
end rtl; 
