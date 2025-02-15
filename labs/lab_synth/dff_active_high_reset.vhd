
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dff_active_low_reset is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        d : in STD_LOGIC;
        q : out STD_LOGIC
    );
end dff_active_low_reset;

architecture Behavioral of dff_active_low_reset is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '0' then
                q <= '0';
            else
                q <= d;
            end if;
        end if;
    end process;
end Behavioral;

