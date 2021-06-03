library IEEE;
use IEEE.STD_LOGIC_1164.all;

	entity o2 is
	port(a, b : in	std_logic;
		  s : out std_logic);
	end entity;
	
	architecture arc of o2 is
	begin
			s  <= a or b;
	end arc;