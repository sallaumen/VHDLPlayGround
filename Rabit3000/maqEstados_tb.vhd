library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity maqEstados_tb is
end;

architecture a_maqEstados_tb of maqEstados_tb is
	component maqEstados
	port( 	clk,rst,wr_en : in std_logic;
			estado: out unsigned(1 downto 0)
		);
	end component;
	signal clk, rst, wr_en : std_logic;
	signal estado : unsigned (1 downto 0);
	begin
	uut : maqEstados port map (clk=>clk,rst=>rst,wr_en=>wr_en,estado=>estado);
	
	process -- clock
	begin
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
	end process;
	
	process -- reset
	begin
		rst <= '1';
		wait for 100 ns;
		rst <= '0';
		wait;
	end process;
	
	process
	begin
		wr_en<='1';
		wait;
	end process;
end architecture;
	