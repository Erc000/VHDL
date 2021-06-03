library IEEE;
use IEEE.STD_LOGIC_1164.all;

	entity a2 is
	port(a, b : in	std_logic;
		  s : out std_logic);
	end entity;
	
	architecture arc of a2 is
	begin
			s  <= a and b;
	end arc;