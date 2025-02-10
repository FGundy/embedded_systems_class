----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2025 04:17:08 PM
-- Design Name: 
-- Module Name: hw2_question4_selectedsignal - Behavioral
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

entity hw2_question4_selectedsignal is
    port (
        I : in std_logic_vector(7 downto 0);  -- 8 input lines
        Y : out std_logic_vector(2 downto 0)  -- 3-bit binary output
    );
end hw2_question4_selectedsignal;

architecture selected of hw2_question4_selectedsignal is
begin
    with I select
        Y <= "111" when "10000000",  -- I7 active
             "110" when "01000000",  -- I6 active
             "101" when "00100000",  -- I5 active
             "100" when "00010000",  -- I4 active
             "011" when "00001000",  -- I3 active
             "010" when "00000100",  -- I2 active
             "001" when "00000010",  -- I1 active
             "000" when "00000001",  -- I0 active
             "000" when others;      -- Default case
end selected;
