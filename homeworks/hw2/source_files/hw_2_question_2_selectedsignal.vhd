----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2025 03:59:43 PM
-- Design Name: 
-- Module Name: hw_2_question_2_selectedsignal - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity hw_2_question_2_selectedsignal is
    port (
        D    : in std_logic;
        SEL  : in std_logic_vector(2 downto 0);
        Y    : out std_logic_vector(7 downto 0)
    );
end hw_2_question_2_selectedsignal;

architecture selected of hw_2_question_2_selectedsignal is
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
