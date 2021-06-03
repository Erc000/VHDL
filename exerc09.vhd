library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- exercicio 10
entity exerc09 is
	port(
	
    palavra : in std_logic_vector(3 downto 0);
    par,impar : inout STD_LOGIC);
	 
end exerc09;
 
architecture arcproced01 of exerc09 is
begin
	
	impar <= (palavra(0) xor palavra(1) xor palavra(2) xor palavra(3));
	par <= not impar;

end arcproced01;