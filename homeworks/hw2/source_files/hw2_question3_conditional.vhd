----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2025 04:10:36 PM
-- Design Name: 
-- Module Name: hw2_question3_conditional - Behavioral
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

entity hw2_question3_conditional is
    port (
        D    : in std_logic;
        SEL  : in std_logic_vector(2 downto 0);
        Y    : out std_logic_vector(7 downto 0)
    );
end hw2_question3_conditional;

architecture conditional of hw2_question3_conditional is
begin
    Y <= "00000001" when SEL = "000" else
         "00000010" when SEL = "001" else
         "00000100" when SEL = "010" else
         "00001000" when SEL = "011" else
         "00010000" when SEL = "100" else
         "00100000" when SEL = "101" else
         "01000000" when SEL = "110" else
         "10000000" when SEL = "111" else
         "00000000";  -- Default case
end conditional;

