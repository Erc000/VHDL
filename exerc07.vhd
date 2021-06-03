library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity exerc07 is
	port(
	
    a,b,c : in std_logic;
    s : inout STD_LOGIC
	 );
	 
end entity;
 
architecture arcexerc07 of exerc07 is
begin
	
	s <= (not a and not b) or (b and not c) or (not a and b) or (a and not b and c);

end arcexerc07;