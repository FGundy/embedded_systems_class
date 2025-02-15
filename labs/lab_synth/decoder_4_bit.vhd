library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_4_bit is
  Port (
        A : in std_logic_vector(3 downto 0);  -- 4-bit input
        Y : out std_logic_vector(15 downto 0) -- 16-bit output
  );
end decoder_4_bit;

architecture Behavioral of decoder_4_bit is
begin
    -- Each output is driven by a unique combination of the input bits
    Y(0)  <= not A(3) and not A(2) and not A(1) and not A(0);
    Y(1)  <= not A(3) and not A(2) and not A(1) and A(0);
    Y(2)  <= not A(3) and not A(2) and A(1) and not A(0);
    Y(3)  <= not A(3) and not A(2) and A(1) and A(0);
    Y(4)  <= not A(3) and A(2) and not A(1) and not A(0);
    Y(5)  <= not A(3) and A(2) and not A(1) and A(0);
    Y(6)  <= not A(3) and A(2) and A(1) and not A(0);
    Y(7)  <= not A(3) and A(2) and A(1) and A(0);
    Y(8)  <= A(3) and not A(2) and not A(1) and not A(0);
    Y(9)  <= A(3) and not A(2) and not A(1) and A(0);
    Y(10) <= A(3) and not A(2) and A(1) and not A(0);
    Y(11) <= A(3) and not A(2) and A(1) and A(0);
    Y(12) <= A(3) and A(2) and not A(1) and not A(0);
    Y(13) <= A(3) and A(2) and not A(1) and A(0);
    Y(14) <= A(3) and A(2) and A(1) and not A(0);
    Y(15) <= A(3) and A(2) and A(1) and A(0);
end Behavioral;
