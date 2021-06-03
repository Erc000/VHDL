library IEEE;
use IEEE.STD_LOGIC_1164.all;

	entity exerc12 is
	port(a,b,c : in	std_logic;
		  x,y: out std_logic);
	end entity;
	
	architecture arc of exerc12 is
		
		component a2 is
		port(a, b : in	std_logic;
			s : out std_logic);
		end component;
	
		component o2 is
		port(a, b : in	std_logic;
			s : out std_logic);
		end component;
	
		signal aux : std_logic_vector(3 downto 0);
	begin

		p1: a2 port map (a,c,aux(0));
		p2: o2 port map (aux(0),b,x);
		
		p3: a2 port map (a,c,aux(1));
		p4: a2 port map (a,b,aux(2));
		p5: a2 port map (aux(2),c,aux(3));
		p6: o2 port map (aux(1),aux(3),y);

	end arc;