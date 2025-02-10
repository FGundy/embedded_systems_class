----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2025 03:54:58 PM
-- Design Name: 
-- Module Name: hw2_logic - Behavioral
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

library IEEE;
use IEEE.std_logic_1164.all;

entity hw_2_question_1 is
    port (
        A, B, C, D : in std_logic;  -- Inputs
        F          : out std_logic  -- Output
    );
end hw_2_question_1;

architecture concurrent of hw_2_question_1 is
begin
    -- Concurrent signal assignment for F
    F <= (not A and C and not D) or  -- A'CD'
         (not B and C) or            -- B'C
         (B and C and not D);        -- BCD'
end concurrent;

