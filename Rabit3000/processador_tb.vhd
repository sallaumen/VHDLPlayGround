library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processador_tb is
end;

architecture a_processador_tb of processador_tb is
    component processador
        port(   clk, rst : in std_logic
            );
    end component;

    signal clk, rst : std_logic;
    
    begin
        uut : processador port map(clk=>clk,rst=>rst);

    process --clock
    begin
        clk<='0';
        wait for 25 ns;
        clk <='1';
        wait for 25 ns;
	end process;
	
	process --reset
	begin
		rst<='1';
		wait for 100 ns;
		rst<='0';
		wait;
	end process;
	
end architecture;