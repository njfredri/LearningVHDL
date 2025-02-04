library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work; 
use work.example_and;

-- Entity declaration for the testbench
entity tb_and_gate is
end tb_and_gate;

-- Architecture declaration for the testbench
architecture behavior of tb_and_gate is
    component example_and
        port (
            a : in std_logic;
            b : in std_logic;
            and_out : out std_logic
        );
    end component;
    -- Signals to connect to the AND gate
    signal input_1 : std_logic := '0';
    signal input_2 : std_logic := '0';
    signal and_result : std_logic;
    
begin
    -- Instantiate the AND gate
    uut: example_and
        port map (
            a => input_1,
            b => input_2,
            and_out => and_result
        );

    -- Test process
    stim_proc: process
    begin
        -- Test all input combinations
        input_1 <= '0'; input_2 <= '0';
        wait for 10 ns;
        
        input_1 <= '0'; input_2 <= '1';
        wait for 10 ns;

        input_1 <= '1'; input_2 <= '0';
        wait for 10 ns;

        input_1 <= '1'; input_2 <= '1';
        wait for 10 ns;

        -- End simulation
        wait;
    end process;
end behavior;
