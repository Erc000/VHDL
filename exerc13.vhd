library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity exerc13 is
	port(
		
		a,b,c,d : in std_logic;
		NS,LO : inout std_logic
	 );
end exerc13;
 
architecture arcproced01 of exerc13 is
	signal o : std_logic_vector(3 downto 0);
begin
	o  <= a&b&c&d;
	
	NS <= '1' when o = "1100" else 
			'1' when o = "0100" else 
			'1' when o = "1000";
			
	LO <= '1' when o = "0000" else 
			'1' when o = "0001" else 
			'1' when o = "0010" else
			'1' when o = "0011";

end arcproced01;