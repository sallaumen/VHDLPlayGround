library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity banco_ULA_tb is
end;

architecture a_banco_ULA_tb of banco_ULA_tb is
	component banco_ULA
	port( 	wr_en,clk,rst,ctrl_mux : in std_logic;
			zero, maior : out std_logic;
			ctrl_ula : in unsigned (1 downto 0);
			reg_le1, reg_le2, reg_escreve : in unsigned (2 downto 0);
			const : in unsigned (15 downto 0);
			debug : out unsigned (15 downto 0)
	);
	end component;
	signal clk, rst, wr_en, zero, maior, ctrl_mux : std_logic;
	signal ctrl_ula : unsigned (1 downto 0);
	signal reg_le1, reg_le2, reg_escreve : unsigned (2 downto 0);
	signal const, debug : unsigned (15 downto 0);
	
	begin
		uut : banco_ULA port map(	clk=>clk,rst=>rst,wr_en=>wr_en,zero=>zero,maior=>maior,ctrl_ula=>ctrl_ula,ctrl_mux=>ctrl_mux,reg_le1=>reg_le1,
									reg_le2=>reg_le2,reg_escreve=>reg_escreve,const=>const,debug=>debug
						);
	process --clock
	begin
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
	end process;
	
	process --reset
	begin
		rst <= '1';
		wait for 200 ns;
		rst <= '0';
		wait for 3000 ns;
		rst <= '1';
		wait;
	end process;
	
	process
	begin
	
		--nao muda nada, rst = 1
		wr_en <= '1';
		ctrl_ula <= "00"; 	--soma
		ctrl_mux <= '0'; 	--pega o registrador
		reg_le1 <= "001";	--mostra 0 no data_out1
		reg_le2 <= "010";	--mostra 0 no data_out2
		reg_escreve <= "000";
		const <= "1111111111111111";
		wait for 100 ns;
		
		--nao muda nada, rst = 1
		wr_en <= '1';
		ctrl_ula <= "01"; 	--subtrai
		ctrl_mux <= '1'; 	--pega const
		reg_le1 <= "001";	--mostra 0
		reg_le2 <= "010";	--mostra 0
		reg_escreve <= "000";
		const <= "0000000000000000";
		wait for 100 ns;
		
		wr_en <= '1';
		ctrl_ula <= "00"; 	--soma
		ctrl_mux <= '1'; 	--pega const
		reg_le1 <= "000";	--mostra 0
		reg_le2 <= "010";	--mostra 0
		reg_escreve <= "001"; --salva no r1 o valor da const
		const <= "0000000000000011";
		wait for 100 ns;
		
		wr_en <= '1';
		ctrl_ula <= "00"; 	--soma
		ctrl_mux <= '1'; 	--pega const
		reg_le1 <= "000";	--mostra 0
		reg_le2 <= "010";	--mostra 0
		reg_escreve <= "010"; --salva no r2 o valor da const
		const <= "0000000000000100"; 
		wait for 100 ns;
		
		wr_en <= '1';
		ctrl_ula <= "00"; 	--soma
		ctrl_mux <= '0'; 	--pega o registrador
		reg_le1 <= "001";	--mostra 3
		reg_le2 <= "010";	--mostra 4
		reg_escreve <= "011"; --salva no r3 o valor r1+r2
		const <= "0000000000000100"; 
		wait for 100 ns;
		
		wr_en <= '1';
		ctrl_ula <= "01"; 	--subtrai
		ctrl_mux <= '0'; 	--pega o registrador
		reg_le1 <= "011";	--mostra 7
		reg_le2 <= "001";	--mostra 3
		reg_escreve <= "100"; --salva no r4 o valor r3-r2
		const <= "0000000000000100"; 
		wait for 100 ns;
		
		wr_en <= '1';
		ctrl_ula <= "00"; 	--soma
		ctrl_mux <= '1'; 	--pega const
		reg_le1 <= "000";	--mostra 0
		reg_le2 <= "001";	--mostra 3
		reg_escreve <= "001"; --zera r1
		const <= "0000000000000000"; 
		wait for 100 ns;
		
		wr_en <= '1';
		ctrl_ula <= "00"; 	--soma
		ctrl_mux <= '0'; 	--pega o registrador
		reg_le1 <= "000";	--mostra 0
		reg_le2 <= "001";	--mostra 0
		reg_escreve <= "001"; --zera r1
		const <= "0000000000000100"; 
		wait for 100 ns;
		
		wait;
		end process;
end architecture;