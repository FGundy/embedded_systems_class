----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2025 05:11:40 PM
-- Design Name: 
-- Module Name: dff_synch_active_high_reset_ce - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dff_synch_active_high_reset_ce is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        clock_enable : in STD_LOGIC;
        d : in STD_LOGIC;
        q : out STD_LOGIC
    );
end dff_synch_active_high_reset_ce;

architecture Behavioral of dff_synch_active_high_reset_ce is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                q <= '0';
            elsif clock_enable = '1' then
                q <= d;
            end if;
        end if;
    end process;
end Behavioral;


