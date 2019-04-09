library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity maqEstados is
	port( 	clk,rst,wr_en: in std_logic;
			estado: out unsigned(1 downto 0)
		);
end entity;
architecture a_maqEstados of maqEstados is
	signal estado_s: unsigned(1 downto 0);
	begin
	process(clk,rst)
	begin
		if rst='1' then
			estado_s <= "00";
		elsif wr_en = '1' then 
			if rising_edge(clk) then
				if estado_s="10" then -- se agora esta em 2
					estado_s <= "00"; -- o prox vai voltar ao zero
				else
					estado_s <= estado_s+1; -- senao avanca
				end if;
			end if;
		end if;
	end process;
	estado <= estado_s;
end architecture;
