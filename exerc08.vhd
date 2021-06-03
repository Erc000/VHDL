library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity exerc08 is
	port(
	
    a,b,c,d : in std_logic;
    z : inout STD_LOGIC
	 );
	 
end entity;
 
architecture arcexerc08 of exerc08 is
begin
	
	z <= (not a and not b and c and d) or (not a and b and not c and d) or (not a and b and c and not d) or (not a and b and c and d) or (a and b and c and d) or (a and b and not c and d);

end arcexerc08;