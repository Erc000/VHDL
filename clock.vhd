library ieee;
use ieee.std_logic_1164.all;

entity clock is port(
	ent: in bit;
	s10hz,s1hz: out bit);
end clock;

architecture arc_clock of clock is

	signal cont1: integer range 0 to 5000000 :=0; 
	signal cont2: integer range 0 to 50000000 :=0;
	signal scont1, scont2: bit;

begin

	process(ent)
	begin
		if (ent = '1' and ent 'event) then 
			if (cont1 = 4999999) then
				scont1 <= not(scont1);
				cont1 <= 0;
			else 
				cont1 <= cont1 + 1;
			end if;
			if (cont2 = 49999999) then
				scont2 <= not(scont2);
				cont2 <= 0;
			else 
				cont2 <= cont2 + 1; 
			end if;
		end if;
	end process;

	s10hz <= scont1; -- 10hz 
	s1hz <= scont2;  -- 1hz 

end arc_clock;