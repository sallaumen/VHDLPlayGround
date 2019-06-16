library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;
use work.MyPackage.all;

entity int2disp1 is
	generic (
		MIN_VALUE:integer := 0;
		MAX_VALUE:integer := 99
	);
	
	port (
		score: in integer range MIN_VALUE to MAX_VALUE;
		ssds1: out SSDArray(NATURAL(FLOOR (LOG10(REAL(MAX_VALUE)))) DOWNTO 0)
	);
end entity;
--
architecture int2disp1 of int2disp1 IS

	TYPE div_array IS ARRAY (2 DOWNTO 0) OF NATURAL;
	SIGNAL disp1, div1: div_array;
	SIGNAL disp2, div2: div_array;

	signal posScore: integer range MIN_VALUE to MAX_VALUE;
	
begin
	
	posScore <= abs(score);
	
	disp1(0) <= posScore mod 10;
	div1(0) <= posScore / 10;
	DIVISOR1: FOR k IN 0 TO 1 GENERATE
	
		ssds1(k) <= NUM_0 WHEN disp1(k) = 0 ELSE
					  NUM_1 WHEN disp1(k) = 1 ELSE
					  NUM_2 WHEN disp1(k) = 2 ELSE
					  NUM_3 WHEN disp1(k) = 3 ELSE
					  NUM_4 WHEN disp1(k) = 4 ELSE
					  NUM_5 WHEN disp1(k) = 5 ELSE
					  NUM_6 WHEN disp1(k) = 6 ELSE
					  NUM_7 WHEN disp1(k) = 7 ELSE
					  NUM_8 WHEN disp1(k) = 8 ELSE
					  NUM_9 WHEN disp1(k) = 9;
					  
					  
		disp1(k+1) <= div1(k) mod 10;
		div1(k+1) <= div1(k) / 10;
	
	END GENERATE DIVISOR1;
	
end architecture;

