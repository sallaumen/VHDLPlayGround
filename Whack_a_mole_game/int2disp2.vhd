library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;
use work.MyPackage.all;

entity int2disp2 is
	generic (
		MIN_VALUE:integer := 0;
		MAX_VALUE:integer := 99
	);
	
	port (
		highScore: in integer range MIN_VALUE to MAX_VALUE;
		ssds2: out SSDArray(NATURAL(FLOOR (LOG10(REAL(MAX_VALUE)))) DOWNTO 0)
	);
end entity;
--
architecture int2disp2 of int2disp2 IS

	TYPE div_array IS ARRAY (4 DOWNTO 0) OF NATURAL;
	SIGNAL disp2, div2: div_array;

	signal poshighScore: integer range MIN_VALUE to MAX_VALUE;
	
begin

	poshighScore <= abs(highscore);
	
	disp2(0) <= poshighScore mod 10;
	div2(0) <= poshighScore / 10;
	
	DIVISOR2: FOR i IN 0 TO 1 GENERATE
	
		ssds2(i) <= NUM_0 WHEN disp2(i) = 0 ELSE
					  NUM_1 WHEN disp2(i) = 1 ELSE
					  NUM_2 WHEN disp2(i) = 2 ELSE
					  NUM_3 WHEN disp2(i) = 3 ELSE
					  NUM_4 WHEN disp2(i) = 4 ELSE
					  NUM_5 WHEN disp2(i) = 5 ELSE
					  NUM_6 WHEN disp2(i) = 6 ELSE
					  NUM_7 WHEN disp2(i) = 7 ELSE
					  NUM_8 WHEN disp2(i) = 8 ELSE
					  NUM_9 WHEN disp2(i) = 9;
					  
					  
		disp2(i+1) <= div2(i) mod 10;
		div2(i+1) <= div2(i) / 10;
	
	END GENERATE DIVISOR2;
	
end architecture;

