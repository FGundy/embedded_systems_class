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

entity hw_2_question_2_selectedsignal is
    port (
        A, B : in std_logic;  -- Inputs
        F    : out std_logic  -- Output
    );
end hw_2_question_2_selectedsignal;

architecture selected of hw_2_question_2_selectedsignal is
    signal AB : std_logic_vector(1 downto 0);  -- Concatenated signal
begin
    AB <= A & B;  -- Concatenation of A and B into a 2-bit vector

    with AB select
        F <= '1' when "01",  -- A'B
             '1' when "10",  -- AB'
             '1' when "11",  -- A
             '0' when "00";  -- Default case
end selected;
