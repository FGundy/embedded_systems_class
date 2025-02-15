library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eight_bit_comparator is
    port (
        A : in std_logic_vector(7 downto 0);
        B : in std_logic_vector(7 downto 0);
        EQ : out std_logic;  -- '1' when A = B
        GT : out std_logic;  -- '1' when A > B
        LT : out std_logic   -- '1' when A < B
    );
end eight_bit_comparator;

architecture Behavioral of eight_bit_comparator is
begin
    process (A, B)
    begin
        if A = B then
            EQ <= '1';
            GT <= '0';
            LT <= '0';
        elsif A > B then
            EQ <= '0';
            GT <= '1';
            LT <= '0';
        else
            EQ <= '0';
            GT <= '0';
            LT <= '1';
        end if;
    end process;
end Behavioral;
