library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder_4bit is
  Port (
       D : in std_logic_vector(3 downto 0);  -- 4 inputs
       Y : out std_logic_vector(1 downto 0)  -- 2 outputs
  );
end encoder_4bit;

architecture Behavioral of encoder_4bit is
begin
    -- Logic for Y(1)
    Y(1) <= D(2) or D(3);
    
    -- Logic for Y(0)
    Y(0) <= D(1) or D(3);
    
end Behavioral;
