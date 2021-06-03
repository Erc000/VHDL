library IEEE;
use IEEE.STD_LOGIC_1164.all;

	entity exerc04b is
	port(a, b, c		:		in	std_logic;
		  s			:	  out std_logic);
	end exerc04b;
	
architecture arc of exerc04b is
begin
	process (a, b, c)
	begin
	if (((a or b or not c ) and (not a or c) and (not a or not b))='1') then
	s <='1';
	else
	s <='0';
	end if;
	end process;
end arc;