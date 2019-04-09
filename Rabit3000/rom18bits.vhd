library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom18bits is
    port(   clk      : in std_logic;
            endereco : in unsigned(7 downto 0);
            dado     : out unsigned(17 downto 0) 
        );
    end entity;

    architecture a_rom18bits of rom18bits is
        type mem is array (0 to 255) of unsigned (17 downto 0);
        constant conteudo_rom : mem := (
            0 => "100010110000000001", 			--ld C, 1			Carrega em C o valor 1 								CARREGA MEMORIA
            1 => "100000010110000000",			--	ld A, C			Coloca em A o valor que estava em C				%il1
            2 => "100110110110000000",			--	ld (C), C		Escreve na mesmoria, o valor de C, no local de memoria dado pelo valor de C
            3 => "010010000000000001",			--	add A, 1		Soma 1 e A
            4 => "100000110010000000",			--	ld C, A			Joga o novo valor de A, para C (C = C+1)
            5 => "010110000000100000",			--	sub 32			Subtrai 32 de A
            6 => "111010000100000101",			--	jr NZ, -5		Se a A for menor que 32, da um loop, se nao, o programa segue	%fl1
            7 => "100010110000000010",			--ld C, 2			Carega em C o valor 2								ENCONTRA PRIMO
            8 => "100011010000100000",			--ld E, 32			ESSA LINHA NAO FAZ NADA NO PROGRAMA, ERA PRA SER UMA AUXILIAR QUE NAO USAMOS
			9 => "100000010110000000",			--	ld A, C			Carrega o valor de C em A				%il1
            10=> "100001000010000000",			--	ld D, A			Carrega o valor de A em D
			11=> "100000010110000000",			--		ld A, C		A será o ponteiro para a memória					%il2
			12=> "010001000000000000",			--		add A, D	Soma em A o valor do primo que está sendo trabalhado
			13=> "100110010001000000",			--		ld (A), 0	Toda posicao multipla de A recebe 0
			14=> "100000110010000000",			--		ld C, A		Usa o C para guardar o valor de A
			15=> "010110000000100000",			--		sub  A, 32	Subtrai 32 de A
			16=> "111001000100000101",			--		jr C, -5	Se o valor obtido acima for menor que 0, volta pro começo deste loop			%fl2
			17=> "100000011000000000",			--	ld A, D			Coloca em A o valor do D, que era o valor que iniciou o loop acima
			18=> "010010000000000001",			--	add A, 1		Soma 1 neste valor, para analizar os multiplos do proximo numero
			19=> "100000110010000000",			--	ld C, A			Usa o C para guardar o valor de A
			20=> "010110000000100000",			--	sub A, 32		Subtrai 32 de A
			21=> "111001000100001100",			--	jr C, -12 		Se o valor obtido acima for menor que 0, volta pro começo deste loop 						%fl1
			22=> "100010110000000001",			--ld C, 1			Usa o C como um contador, começando de 1, nesta linha					PRINTA MEMORIA EM D
			23=> "100000010110000000",			--	ld A, C			Carrega A com o valor de C						%il1
			24=> "100101000110000000",			--	ld D, (C)		Escreve em D o valor do endereço na C na RAM  
			25=> "010010010000000001",			--	add A, 1		Soma 1 em A
			26=> "100000110010000000",			--	ld C, A			Passa A para C( Cnovo = C + 1)
			27=> "010110000000100000",			--	sub 32			Subtrai 32 de A
			28=> "111010000100000101",			--	jr NZ, -5		Se o valor obtido acima for diferente de 0, volta pro começo deste loop	%fl1	
			100=>"111100000000100000",
            others => (others=>'0')
        );
    begin
        process(clk)
        begin
            if(rising_edge(clk)) then
                dado <= conteudo_rom(to_integer(endereco));
            end if;
        end process;
    end architecture;

