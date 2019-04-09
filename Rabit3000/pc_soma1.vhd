library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc_soma1 is
    port(   d_in : in unsigned(7 downto 0);
            d_out  : out unsigned(7 downto 0)
        );
    end entity;
    
    
architecture a_pc_soma1 of pc_soma1 is
signal aux : unsigned(7 downto 0);
begin
    aux <= d_in + "00000001";	
	d_out<=aux;	
end architecture;