library IEEE;
use IEEE.STD_LOGIC_1164.all;

	entity exerc12_4 is
	port(a, b, c: in	std_logic;
		  x,y: out std_logic);
	end entity;
	
architecture arc of exerc12_4 is
	signal con : std_logic_vector(2 downto 0);
begin
	con <= a&b&c;
	process (con)
		begin
		case (con) is
			when "000" =>
				x <='0';
				y <='0';
			when "001" =>
				x <='1';
				y <='0';
			when "010" =>
				x <='1';
				y <='0';
			when "011" =>
				x <='1';
				y <='1';
			when "100" =>
				x <='0';
				y <='1';
			when "101" =>
				x <='0';
				y <='0';
			when "110" =>
				x <='1';
				y <='1';
			when "111" =>
				x <='1';
				y <='0';
			when others =>
				x <='Z';
				y <='Z';
		end case;
	end process;
	
end arc;