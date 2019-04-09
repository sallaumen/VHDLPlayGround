library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processador is
	port( clk,rst : in std_logic);
end entity;

	architecture a_processador of processador is
		component banco_ULA is
			port( 	wr_en, clk, rst, ctrl_muxb, wr_ram, ctrl_valram, ctrl_valreg : in std_logic;
					zero, maior, carry : out std_logic;
					ctrl_ula, ctrl_muxa : in unsigned (1 downto 0);
					reg_le1, reg_le2, reg_escreve : in unsigned (2 downto 0);
					pc_out : in unsigned (7 downto 0);
					const : in unsigned (15 downto 0);
					ula_out : out unsigned (15 downto 0)
				);
		end component;
		
		component maqEstados is
			port(	clk,rst,wr_en: in std_logic;
					estado: out unsigned(1 downto 0)
				);
		end component;
				
		component mux8bits is
			port(	in_a : in unsigned(7 downto 0);
					in_b : in unsigned(7 downto 0);
					enable : in std_logic;
					sel : in std_logic;
					saida : out unsigned(7 downto 0)
				);
				
		end component;

		component pc is
			port(	
					clk : in std_logic;
					rst : in std_logic;
					wr_en : in std_logic;
					estado : in unsigned(1 downto 0);
					data_in : in unsigned(7 downto 0);
					data_out : out unsigned(7 downto 0)
				);
		end component;		
		
		component rom18bits is
			port(	clk      : in std_logic;
					endereco : in unsigned(7 downto 0);
					dado     : out unsigned(17 downto 0)
				);
		end component;
		
		component uc is
			port(	instrucao : in unsigned(17 downto 0);
					zero_in, carry_in : in std_logic;
					const : out unsigned(15 downto 0);
					reg_le1, reg_le2, reg_escreve : out unsigned(2 downto 0);
					pega_pc, op_ula : out unsigned(1 downto 0);
					jump_en, escreve_reg, zero_wr, carry_wr, pega_const, ram_wr, ctrl_valram, ctrl_valreg : out std_logic
				);
		end component;
		
		component pc_soma1 is
			port( 	d_in : in unsigned(7 downto 0);
					d_out  : out unsigned(7 downto 0)
				);
		end component;
		
		component reg1bit is
			port( 	clk : in std_logic;
					rst : in std_logic;
					wr_en : in std_logic;
					data_in : in std_logic;
					data_out : out std_logic
				);
		end component;
		
		signal escreve_reg, pega_const, jump_en, clk_banco, carry_ula_out, zero_ula_out, zero_wr, carry_wr, zero_reg_out, carry_reg_out, clk_flag, wr_ram,
			   ctrl_valram, ctrl_valreg, escreve_reg_aux: std_logic;
		signal pega_pc, op_ula, estado : unsigned (1 downto 0);
		signal reg_le1, reg_le2, reg_escreve : unsigned (2 downto 0);
		signal ula_out8bits, pc_in, pc_out, pc_outsoma1, end_ram : unsigned (7 downto 0);
		signal const, ula_out : unsigned (15 downto 0);
		signal rom_out : unsigned (17 downto 0);
		
	begin
	
		banco_ULA_instanciado : banco_ULA port map (wr_en=>escreve_reg_aux, clk=>clk, rst=>rst, ctrl_muxb=>pega_const, ctrl_muxa=>pega_pc, ctrl_ula=>op_ula, reg_le1=>reg_le1, reg_le2=>reg_le2, reg_escreve=>reg_escreve,
													pc_out=>pc_out, const=>const, ula_out=>ula_out, zero=>zero_ula_out, carry=>carry_ula_out,wr_ram=>wr_ram, ctrl_valram=>ctrl_valram, ctrl_valreg=>ctrl_valreg);
													
		ula_out8bits <= ula_out(7 downto 0);

		maqEstados_instanciado : maqEstados port map (	clk=>clk, rst=>rst, wr_en=>'1', estado=>estado);
		
		mux8bits_instanciado : mux8bits port map (	in_a=>pc_outsoma1, in_b=>ula_out8bits, enable=>'1', sel=>jump_en, saida=>pc_in);
		
		pc_instanciado : pc port map (	clk=>clk, rst=>rst, wr_en=>'1', estado=>estado, data_in=>pc_in, data_out=>pc_out);
		
		rom18bits_instanciada : rom18bits port map (	clk=>clk, endereco=>pc_out, dado=>rom_out);
		
		uc_intanciada : uc port map (	instrucao=>rom_out, zero_in=>zero_reg_out, carry_in=>carry_reg_out, const=>const, reg_le1=>reg_le1, reg_le2=>reg_le2, reg_escreve=>reg_escreve, op_ula=>op_ula, jump_en=>jump_en, escreve_reg=>escreve_reg,
										pega_const=>pega_const, pega_pc=>pega_pc, zero_wr=>zero_wr, carry_wr=>carry_wr, ram_wr=>wr_ram, ctrl_valram=>ctrl_valram, ctrl_valreg=>ctrl_valreg);
										
		pc_soma1_instanciado : pc_soma1 port map (	d_in=>pc_out, d_out=>pc_outsoma1); 
		
		reg_zero : reg1bit port map (	clk=>clk_flag, rst=>rst, wr_en=>zero_wr, data_in=>zero_ula_out, data_out=>zero_reg_out);
		
		reg_carry : reg1bit port map (	clk=>clk_flag, rst=>rst, wr_en=>carry_wr, data_in=>carry_ula_out, data_out=>carry_reg_out);
		
		escreve_reg_aux <= 	'1' when estado = "01" and escreve_reg = '1' else '0';
		clk_flag <= '1' when estado = "10" else '0';
end architecture;
		
		
		
		
		
