library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity banco_ULA is
	port( 	wr_en, clk, rst, ctrl_muxb, wr_ram, ctrl_valram, ctrl_valreg : in std_logic;
			zero, maior, carry : out std_logic;
			ctrl_ula, ctrl_muxa : in unsigned (1 downto 0);
			reg_le1, reg_le2, reg_escreve : in unsigned (2 downto 0);
            pc_out : in unsigned (7 downto 0);
			const : in unsigned (15 downto 0);
			ula_out : out unsigned (15 downto 0)
	);
end entity;
architecture a_banco_ULA of banco_ULA is
		component bancoReg16bits is
			port( 	wr_en, clk, rst : in std_logic;
					reg_le1, reg_le2, reg_escreve : in unsigned (2 downto 0);
					data_in : in unsigned (15 downto 0);
					data_out1, data_out2 : out unsigned (15 downto 0)
			);
		end component;
		
		component ULA is
			port(	a : in unsigned(15 downto 0);
					b: in unsigned (15 downto 0);
					sel : in unsigned (1 downto 0);
					saida : out unsigned(15 downto 0);
					zero : out std_logic;
					maior : out std_logic;
					carry : out std_logic
				);
		end component;
		
		component mux16bits is
			port(	in_a : in unsigned(15 downto 0);
					in_b : in unsigned(15 downto 0);
					enable : in std_logic;
					sel : in std_logic;
					saida : out unsigned(15 downto 0)
				);
		end component;

		component mux16bits_4sect is
			port(	in_a : in unsigned(15 downto 0);
					in_b : in unsigned(15 downto 0);
					in_ram : in unsigned(15 downto 0);
					enable : in std_logic;
					sel : in unsigned (1 downto 0);
					saida : out unsigned(15 downto 0)
				);
		end component;

		component ram is
			port(
 				clk : in std_logic;
				endereco : in unsigned(7 downto 0);
				wr_en : in std_logic;
				dado_in : in unsigned(15 downto 0);
				dado_out : out unsigned(15 downto 0)
 			);
		end component;
		
		signal entrada1_ula, entrada2_ula, saida_ula, entrada_muxa, entrada_muxb, in_b_aux, entrada_muxram, in_ram, saida_muxvalreg, in_ram_aux : unsigned(15 downto 0);
		signal end_aux : unsigned (7 downto 0);
		signal wr_en_aux, clk_aux, rst_aux : std_logic;
		
	begin
		banco: bancoReg16bits port map( wr_en=>wr_en_aux,
                                        clk=>clk_aux, 
                                        rst=>rst_aux,
                                        reg_le1=>reg_le1,
                                        reg_le2=>reg_le2,
                                        reg_escreve=>reg_escreve,
										data_in=>saida_muxvalreg,
                                        data_out1=>entrada_muxa,
                                        data_out2=>entrada_muxb);
										
		ULA_inst: ULA port map(         a=>entrada1_ula,
                                        b=>entrada2_ula,
                                        sel=>ctrl_ula,
                                        saida=>saida_ula,
                                        zero=>zero,
                                        maior=>maior,
										carry=>carry);
		
		MUXA: mux16bits_4sect port map(   	   	in_a=>entrada_muxa,
												in_b=>in_b_aux,
												in_ram=>entrada_muxram,
												enable=>'1',                      		           
												sel=>ctrl_muxa,
												saida=>entrada1_ula);
		
		MUXB: mux16bits port map(	          	in_a=>entrada_muxb,
												in_b=>const,
												enable=>'1',
												sel=>ctrl_muxb,
												saida=>entrada2_ula);
											  
		MUXVALRAM : mux16bits port map(			in_a=>entrada_muxa,
												in_b=>const,
												enable=>'1',
												sel=>ctrl_valram,
												saida=>in_ram);
		
		RAM_INST: ram port map(					clk=>clk_aux,
												endereco=> end_aux,
												dado_out=>entrada_muxram,
												wr_en=>wr_ram,
												dado_in=>in_ram);
							
		MUXVALREG : mux16bits port map(			in_a=>saida_ula,
												in_b=>entrada_muxram,
												enable=>'1',
												sel=>ctrl_valreg,
												saida=>saida_muxvalreg);

		in_b_aux <= "00000000" & pc_out;
		wr_en_aux <= wr_en;
		clk_aux <= clk;
		rst_aux <= rst;
		
		end_aux <= "00" & entrada_muxb(5 downto 0);
				
		ula_out <= saida_ula;		
		
end architecture;
