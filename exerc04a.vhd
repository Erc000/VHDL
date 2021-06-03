library IEEE;
use IEEE.STD_LOGIC_1164.all;

	entity exerc04a is
	port(a, b, c: in	std_logic;
		  s	: out std_logic);
	end exerc04a;
	
architecture arc of exerc04a is
begin
	process (a, b,c)
	begin
	if (((not a and not b and c) or (a and b and c) or (not b and not c))='1') then
	s <= '1';
	else
	s <='0';
	end if;
	end process;
end arc;