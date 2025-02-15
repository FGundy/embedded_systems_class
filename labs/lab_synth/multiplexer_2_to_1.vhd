library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexer_2_to_1 is
  Port ( 
        A   : in std_logic;
        B   : in std_logic;
        SEL : in std_logic;
        Y   : out std_logic);
end multiplexer_2_to_1;

architecture Behavioral of multiplexer_2_to_1 is
begin
    Y <= A when SEL = '0' else B; 
end Behavioral;
