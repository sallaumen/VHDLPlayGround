library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bancoReg16Bits is
	port( 	wr_en,clk,rst : in std_logic;
			reg_le1, reg_le2, reg_escreve : in unsigned (2 downto 0);
			data_in : in unsigned (15 downto 0);
			data_out1, data_out2 : out unsigned (15 downto 0)
	);
end entity;
	architecture a_bancoReg16Bits of bancoReg16Bits is
		component reg16bits is
			port( 	clk : in std_logic;
					rst : in std_logic;
					wr_en : in std_logic;
					data_in : in unsigned(15 downto 0);
					data_out : out unsigned(15 downto 0)
			);
		end component;
		
		
		signal 	wr_en1, wr_en2, wr_en3, wr_en4, wr_en5, wr_en6, wr_en7: std_logic;
		signal 	out0,out1,out2,out3,out4,out5,out6,out7 : unsigned (15 downto 0);
begin
	r0: reg16bits port map(clk=>clk,rst=>rst,wr_en=>wr_en,data_in=>"0000000000000000",data_out=>out0);
	r1: reg16bits port map(clk=>clk,rst=>rst,wr_en=>wr_en1,data_in=>data_in,data_out=>out1);
	r2: reg16bits port map(clk=>clk,rst=>rst,wr_en=>wr_en2,data_in=>data_in,data_out=>out2);
	r3: reg16bits port map(clk=>clk,rst=>rst,wr_en=>wr_en3,data_in=>data_in,data_out=>out3);
	r4: reg16bits port map(clk=>clk,rst=>rst,wr_en=>wr_en4,data_in=>data_in,data_out=>out4);
	r5: reg16bits port map(clk=>clk,rst=>rst,wr_en=>wr_en5,data_in=>data_in,data_out=>out5);
	r6: reg16bits port map(clk=>clk,rst=>rst,wr_en=>wr_en6,data_in=>data_in,data_out=>out6);
	r7: reg16bits port map(clk=>clk,rst=>rst,wr_en=>wr_en7,data_in=>data_in,data_out=>out7);
	
	
	data_out1 <=out0 when reg_le1 = "000" else
				out1 when reg_le1 = "001" else
				out2 when reg_le1 = "010" else
				out3 when reg_le1 = "011" else
				out4 when reg_le1 = "100" else
				out5 when reg_le1 = "101" else
				out6 when reg_le1 = "110" else
				out7 when reg_le1 = "111" else
				"0000000000000000";
			
	data_out2 <=out0 when reg_le2 = "000" else
				out1 when reg_le2 = "001" else
				out2 when reg_le2 = "010" else
				out3 when reg_le2 = "011" else
				out4 when reg_le2 = "100" else
				out5 when reg_le2 = "101" else
				out6 when reg_le2 = "110" else
				out7 when reg_le2 = "111" else
				"0000000000000000";
				
	wr_en1 <= '1' when reg_escreve = "001" and wr_en = '1' else '0';
	wr_en2 <= '1' when reg_escreve = "010" and wr_en = '1' else '0';
	wr_en3 <= '1' when reg_escreve = "011" and wr_en = '1' else '0';
	wr_en4 <= '1' when reg_escreve = "100" and wr_en = '1' else '0';
	wr_en5 <= '1' when reg_escreve = "101" and wr_en = '1' else '0';
	wr_en6 <= '1' when reg_escreve = "110" and wr_en = '1' else '0';
	wr_en7 <= '1' when reg_escreve = "111" and wr_en = '1' else '0';
				
	
end architecture;
