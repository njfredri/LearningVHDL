library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity example_and is
    port(
        a : in std_logic;
        b : in std_logic;
        and_out : out std_logic
    );
end example_and;

architecture rtl of example_and is
    signal and_gate : std_logic;
begin
    and_gate <= a and b;
    and_out <= and_gate;    
end rtl;