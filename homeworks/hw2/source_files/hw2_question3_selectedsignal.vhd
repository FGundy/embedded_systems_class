----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2025 04:12:38 PM
-- Design Name: 
-- Module Name: hw2_question3_selectedsignal - Behavioral
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

entity hw2_question3_selectedsignal is
    port (
        D    : in std_logic;
        SEL  : in std_logic_vector(2 downto 0);
        Y    : out std_logic_vector(7 downto 0)
    );
end hw2_question3_selectedsignal;

architecture selected of hw2_question3_selectedsignal is
begin
    with SEL select
        Y <= "00000001" when "000",
             "00000010" when "001",
             "00000100" when "010",
             "00001000" when "011",
             "00010000" when "100",
             "00100000" when "101",
             "01000000" when "110",
             "10000000" when "111",
             "00000000" when others;  -- Default case
end selected;
