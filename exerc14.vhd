library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity exerc14 is
	port(
	i  : in std_logic_vector(1 downto 0);
	en : in std_logic;
	y  : out std_logic_vector(3 downto 0));
end entity;
 
architecture arcproced03 of exerc14 is
begin
	
	with i&en select y <= 
			"0000"	when "--0",
			"0001"	when "001",
			"0010"	when "011",
			"0100"	when "101",
			"1000"	when "111",
			"1111"	when others;

end arcproced03;


