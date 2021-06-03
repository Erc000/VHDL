library IEEE;
use IEEE.STD_LOGIC_1164.all;

	entity exerc12_3 is
	port(a, b, c: in	std_logic;
		  x,y: out std_logic);
	end entity;
	
architecture arc of exerc12_3 is
begin
	process (a,b,c)
	begin
	if ((b or (not a and c))='1') then
	x <= '1';
	else
	x <='0';
	end if;
	end process;
	
	process (a,b,c)
	begin
	if (((a and not c) or (not a and b and c))='1') then
	y <= '1';
	else
	y <='0';
	end if;
	end process;
end arc;