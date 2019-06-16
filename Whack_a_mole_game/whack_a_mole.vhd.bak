library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real.all;

ENTITY whack_a_mole is
	GENERIC(
		freq_clk : integer := 50e6;
		NUM_HOLES : integer := 5;
		MAX_GAME_LEVEL : integer :=  10;
		GAME_TIME_SECONDS : integer := 20;
		NUM_SEG_DISPLAY : integer := 7;
		MIN_VALUE: INTEGER := 0;
		MAX_VALUE: INTEGER := 99
	);
	
	PORT(
	--in
	clk : in std_logic;
	rst_in : in std_logic;
	startGame_in : in std_logic;
	hammers : in std_logic_vector(NUM_HOLES - 1 downto 0);
	
	--out
	Current_Score: out std_logic_vector(NUM_SEG_DISPLAY*integer(ceil((log2(real(MAX_VALUE)))/real(4))) - 1 downto 0);
	high_Score: out std_logic_vector(NUM_SEG_DISPLAY*integer(ceil((log2(real(MAX_VALUE)))/real(4))) - 1 downto 0);
	holes : out std_logic_vector(NUM_HOLES - 1 downto 0)
	);
END ENTITY;

ARCHITECTURE arch OF whack_a_mole is
-- IMPORTA DEBOUNCE
	COMPONENT debounce IS
		GENERIC(
			time_ms : integer := 100; 
			freq_clk: integer := freq_clk 
		);
		PORT(
  		  button : in std_logic;
		  clk : in std_logic;
		  debounced_out : out std_logic
		);
    END COMPONENT;	
-- CONSTANTS
constant N_Hexas: integer := integer(ceil(log2(real(MAX_VALUE))/real(4)));
constant stepUpTime: integer := (FREQ_CLK ) * GAME_TIME_SECONDS/ MAX_GAME_LEVEL;
constant gameTime: integer := FREQ_CLK * GAME_TIME_SECONDS;

-- SIGNAL
signal rst : std_logic;
signal startGame : std_logic;
signal status : std_logic;
signal hitSuccess : std_logic;
signal hitPositions : std_logic_vector(NUM_HOLES - 1 downto 0);
signal moleVelocity : integer;
signal Score : integer range MIN_VALUE to MAX_VALUE;
signal currentScore_s: integer range MIN_VALUE to MAX_VALUE;		
signal highScore_s: integer range MIN_VALUE to MAX_VALUE;
signal molesPosition : std_logic_vector(NUM_HOLES - 1 downto 0);
signal currentScore : std_logic_vector(4*N_Hexas-1 downto 0);
signal highScore : std_logic_vector(4*N_Hexas-1 downto 0);
signal hitPositionsSignal: std_logic_vector(NUM_HOLES-1 downto 0);
signal hitSuccessSignal: integer;

type hexa is array (1 downto 0) of std_logic_vector(3 downto 0);
signal hex_current: hexa;
signal hex_high: hexa;

BEGIN
	-- Debounce: RESET, START and Hammers  
	dbc_rst: debounce port map(button => not rst_in, clk => clk, debounced_out => rst);

   	dbc_startGame: debounce port map(button => not startGame_in, clk => clk, debounced_out => startGame);
	 
	dbc_hammers_gen: for i in 0 to NUM_HOLES - 1 generate
		dbc_hammers_X: debounce port map(button => hammers(i), clk => clk, debounced_out => hitPositions(i));
  	end generate;
	
	-- HitDetector
	hitProcessDetection: process(clk)
	begin
	if(rising_edge(clk)) then
		hitPositionsSignal<= molesPosition and hitPositions;
		for k in NUM_HOLES-1 downto 0 loop
			if(hitPositionsSignal(k)='1') then
	--			hitSuccessSignal<=hitSuccessSignal+1;
				hitSuccess<='1';
			end if;
			hitSuccess <= '0';
		end loop;
	end if;
	end process;
	
	-- MoleGenerator
	process(clk, rst, moleVelocity, hitPositions)
	---------------------------------------------------------------------------------------------------------------------------------
	type INT_ARRAY is array (integer range <>) of integer range 0 to 3*FREQ_CLK;
	variable eachMoleOnTime : INT_ARRAY(0 to NUM_HOLES-1);
	variable maxMoleSpawnTime: integer := 1*FREQ_CLK;
	variable actualMolesPosition : std_logic_vector (NUM_HOLES-1 downto 0) := (others => '0');
	
	--Random
	variable rand_num : integer;
	variable seed : integer := 1;
	
	variable clk_couter : integer := 0;
	variable moleLifeLenght	: integer := 2*FREQ_CLK;
	
	begin	
		if (rst = '0') then
			rand_num := 0;
			actualMolesPosition(NUM_HOLES-1 downto 0) := (others => '0');
			for i in 0 to NUM_HOLES-1 loop
				eachMoleOnTime(i) := 0;
			end loop;
			clk_couter := 0;

		elsif (rising_edge(clk)) then
			clk_couter := clk_couter + 1;
			if (clk_couter = (maxMoleSpawnTime*2)/moleVelocity) then
				seed := seed*7;
				rand_num := seed rem 10;
				seed := seed - 3;

				actualMolesPosition(rand_num) := '1';
				eachMoleOnTime(rand_num) := moleLifeLenght;
				clk_couter := 0;
			else
				--Diminui tempo de vida de todos moles
				for i in 0 to NUM_HOLES-1 loop
					if (eachMoleOnTime(i) > 0) then
						eachMoleOnTime(i) := eachMoleOnTime(i)-1;
						-- checa se o tempo de vida dele acabou. se sim, MATE ELA!
						if (actualMolesPosition(i) = '1' and eachMoleOnTime(i) = 0 ) then
							actualMolesPosition(i) := '0';
						end if;
					end if;
				end loop;
				--Checa se uma marmota viva apanhou. MATA ELA!
				for i in 0 to NUM_HOLES-1 loop
					if (hitPositions(i) = '1') then
							actualMolesPosition(i) := '0';
							eachMoleOnTime(i) := 0;
					end if;
				end loop;
			end if;
		end if;
		holes <= actualMolesPosition;
	end process;
	
	-- GameControl
	gameControl: PROCESS(clk) 
    variable counterTotal: integer; 
    variable counterStepUpSpeed: integer;
    variable speed: integer;
    BEGIN
        IF clk'event and clk = '1' THEN
			-- Se resetou, force o fim do jogo
            IF rst = '1' THEN
                status <= '0';
                speed := 0;
                counterTotal := 0;
                counterStepUpSpeed := 0;
			
            ELSIF status = '1' THEN -- Se não resetou e o jogo estiver rodando:
                IF counterStepUpSpeed < stepUpTime - 1 THEN -- conta e gerencia a velocidade baseado no StepUpTime
                    counterStepUpSpeed := counterStepUpSpeed + 1;
                ELSIF speed < MAX_GAME_LEVEL THEN
                    speed := speed + 1;
                    counterStepUpSpeed := 0;
                END IF;
                IF counterTotal >= gameTime - 1 THEN -- conta e gerencia o tempo de jogo baseado no gameTime = GAME_TIME_SECONDS * FREQ_CLK 
                    status <= '0'; -- se acabou o tempo, encerra
                    speed := 0; -- manda velociade para 0
                ELSE
                    counterTotal := counterTotal + 1;
                END IF;
                
            ELSIF startGame = '1' THEN -- SE nao resetou e não está rodando, startGame está acionado? Se sim:
                status <= '1'; -- inicia o jogo
                speed := 1; -- coloca a velocidade inicial
                counterTotal := 0; -- reinicia o contador do tempo de jogo;
            END IF;
        moleVelocity <= speed; -- independente de tudo, quando der clock passa a variavel speed para moleVelocity
		
        END IF;
    END PROCESS;
	--Score
	process (hitSuccess, status)
	begin		
		if (status = '1') then
			if rising_edge(hitSuccess) then
				score <= score + 1;
				currentScore_s <= score;				
			end if;	
		elsif (status = '0') then
				if (currentScore_s > highScore_s) then 
					highScore_s <= currentScore_s;
					score <= 0;
				else 
					score <=0;
				end if;
		end if;
		highScore <= std_logic_vector(to_unsigned(highScore_s, N_Hexas*4));
		currentScore <= std_logic_vector(to_unsigned(currentScore_s, N_Hexas*4));
	end process;

	-- CurrentScore
	SSD_CurrentScore: for i in 1 to N_Hexas generate
		hex_current(i-1) <= currentScore(4*i-1 downto 4*(i-1));
		Current_Score(7*i-1 downto 7*(i-1)) <=		"1000000" WHEN hex_current(i-1) = "0000" ELSE
													"1111001" WHEN hex_current(i-1) = "0001" ELSE
													"0100100" WHEN hex_current(i-1) = "0010" ELSE
													"0110000" WHEN hex_current(i-1) = "0011" ELSE
													"0011001" WHEN hex_current(i-1) = "0100" ELSE
													"0010010" WHEN hex_current(i-1) = "0101" ELSE
													"0000010" WHEN hex_current(i-1) = "0110" ELSE
													"1111000" WHEN hex_current(i-1) = "0111" ELSE
													"0000000" WHEN hex_current(i-1) = "1000" ELSE
													"0010000" WHEN hex_current(i-1) = "1001" ELSE
													"0001000" WHEN hex_current(i-1) = "1010" ELSE
													"0000011" WHEN hex_current(i-1) = "1011" ELSE
													"1000110" WHEN hex_current(i-1) = "1100" ELSE
													"0100001" WHEN hex_current(i-1) = "1101" ELSE
													"0000110" WHEN hex_current(i-1) = "1110" ELSE
													"0001110" WHEN hex_current(i-1) = "1111" ELSE
													"1100100";

	end generate SSD_CurrentScore;
	
	-- HighScore
	 SSD_driver: for i in 1 to N_Hexas generate
		hex_high(i-1) <= highScore(4*i-1 downto 4*(i-1));
		High_Score(7*i-1 downto 7*(i-1)) <=	"1000000" WHEN hex_high(i-1) = "0000" ELSE
                                            "1111001" WHEN hex_high(i-1) = "0001" ELSE
                                            "0100100" WHEN hex_high(i-1) = "0010" ELSE
                                            "0110000" WHEN hex_high(i-1) = "0011" ELSE
                                            "0011001" WHEN hex_high(i-1) = "0100" ELSE
                                            "0010010" WHEN hex_high(i-1) = "0101" ELSE
                                            "0000010" WHEN hex_high(i-1) = "0110" ELSE
                                            "1111000" WHEN hex_high(i-1) = "0111" ELSE
                                            "0000000" WHEN hex_high(i-1) = "1000" ELSE
                                            "0010000" WHEN hex_high(i-1) = "1001" ELSE
                                            "0001000" WHEN hex_high(i-1) = "1010" ELSE
                                            "0000011" WHEN hex_high(i-1) = "1011" ELSE
                                            "1000110" WHEN hex_high(i-1) = "1100" ELSE
                                            "0100001" WHEN hex_high(i-1) = "1101" ELSE
                                            "0000110" WHEN hex_high(i-1) = "1110" ELSE
                                            "0001110" WHEN hex_high(i-1) = "1111" ELSE
                                            "1100100";

	end generate SSD_driver;	
	
END ARCHITECTURE;