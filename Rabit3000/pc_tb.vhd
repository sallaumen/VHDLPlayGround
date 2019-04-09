library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc_tb is end;

architecture a_pc_tb of pc_tb is
	component pc port(
							clk : in std_logic;
							rst : in std_logic;
							wr_en : in std_logic;
							estado : in unsigned(1 downto 0);
							data_in : in unsigned(7 downto 0);
							data_out : out unsigned(7 downto 0)
						);
	end component;
	
	signal clk, rst, wr_en : std_logic;
	signal estado : unsigned(1 downto 0);
	signal data_in, data_out : unsigned(7 downto 0);
	
	begin
		
	uut : pc port map(clk=>clk,rst=>rst,wr_en=>wr_en,estado=>estado,data_in=>data_in,data_out=>data_out);
	
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
	
	process -- wr_en
	begin
	
		wr_en <= '0';
		wait for 50 ns;
		wr_en <= '1';
		wait;
	end process;
	
	process -- estado
	begin
		estado <= "00";
		wait for 100 ns;
		estado <= "01";
		wait for 100 ns;
		estado <= "10";
		wait for 100 ns;
	end process;
	
	process
	begin
		data_in <= "00000001";
		wait for 200 ns;
		
		data_in <= "00000010";
		wait for 100 ns;
		
		data_in <= "00000010";
		wait for 100 ns;
		
		data_in <= "11111111";
		wait for 100 ns;
		
		data_in <= "00000000";
		wait for 100 ns;
		
		data_in <= "00000001";
		wait for 100 ns;
	end process;
end architecture;