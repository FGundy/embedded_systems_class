----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2025 04:01:41 PM
-- Design Name: 
-- Module Name: hw2_question2_conditionalsignal - Behavioral
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

entity hw2_question2_conditionalsignal is
    port (
        A, B : in std_logic;  -- Inputs
        F    : out std_logic  -- Output
    );
end hw2_question2_conditionalsignal;

architecture conditional of hw2_question2_conditionalsignal is
begin
    F <= '1' when (not A and B) = '1' else   -- A'B
         '1' when (A = '1') else             -- A
         '1' when (A and not B) = '1' else   -- AB'
         '0';                                -- Default case (F = 0)
end conditional;
