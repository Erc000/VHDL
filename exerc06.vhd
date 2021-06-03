library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity exerc06 is
	port(
    x,y,z : in STD_LOGIC;
    saida : out STD_LOGIC);
end exerc06;
 
architecture arcproced01 of exerc06 is
begin
	
	saida <= (not x and not y and z) or (not x and y and not z) or (x and not y and not z);

end arcproced01;