----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2025 04:16:07 PM
-- Design Name: 
-- Module Name: hw2_question4_conditional - Behavioral
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

entity hw2_question4_conditional is
    port (
        I : in std_logic_vector(7 downto 0);  -- 8 input lines
        Y : out std_logic_vector(2 downto 0)  -- 3-bit binary output
    );
end hw2_question4_conditional;

architecture conditional of hw2_question4_conditional is
begin
    Y <= "111" when I(7) = '1' else  -- I7 active
         "110" when I(6) = '1' else  -- I6 active
         "101" when I(5) = '1' else  -- I5 active
         "100" when I(4) = '1' else  -- I4 active
         "011" when I(3) = '1' else  -- I3 active
         "010" when I(2) = '1' else  -- I2 active
         "001" when I(1) = '1' else  -- I1 active
         "000" when I(0) = '1' else  -- I0 active
         "000";                      -- Default case (no input active)
end conditional;

