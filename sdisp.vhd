library ieee;
use ieee.std_logic_1164.all;

entity sdisp is port(
	entclk,rst: in bit;
	l: out bit;
	unid: out bit_vector(6 downto 0);   --saida display unidadades
	deze: out bit_vector(6 downto 0) 	--saida display dezenas
);
end sdisp;

architecture arc_sdisp of sdisp is

signal cont : integer range 0 to 9 :=0;
signal contd: integer range 0 to 6 :=0;

begin
	l <= entclk;
	process(entclk,rst)
	begin
		if ((entclk = '1') and entclk 'event) then 
			if (cont = 9 or rst = '1') then
				contd <= contd + 1;
				cont <= 0;
			else
				cont <= cont + 1;
			end if;
			if ((contd = 5 and cont = 9) or rst = '1') then
				contd <= 0;
			end if;
		end if;
	end process;
	
	process(cont,contd)
	begin
									--		 ══ 
		if (cont = 0) then	--		║  ║
			unid <= "1111110";--		  
		end if;					--		║  ║
									--		 ══  
									--		  
									
		if (cont = 1) then	--		   ║
			unid <= "0110000";--		  
		end if;					--		   ║
									--		   
									
									--		 ══ 
		if (cont = 2) then	--		   ║
			unid <= "1101101";--		 ══ 
		end if;					--		║  
									--		 ══  
									
									--		 ══ 
		if (cont = 3) then	--		   ║
			unid <= "1111001";--		 ══ 
		end if;					--		   ║
									--		 ══  
									
									--		  
		if (cont = 4) then	--		║  ║
			unid <= "0110011";--		 ══ 
		end if;					--		   ║
									--		   
									
									--		 ══ 
		if (cont = 5) then	--		║   
			unid <= "1011011";--		 ══ 
		end if;					--		   ║
									--		 ══  
									
									--		 ══ 
		if (cont = 6) then	--		║  
			unid <= "1011111";--		 ══ 
		end if;					--		║  ║
									--		 ══  
									
									--		 ══ 
		if (cont = 7) then	--		   ║
			unid <= "1110000";--		  
		end if;					--		   ║
									--		   
									
									--		 ══ 
		if (cont = 8) then	--		║  ║
			unid <= "1111111";--		 ══ 
		end if;					--		║  ║
									--		 ══  
									
									--		 ══ 
		if (cont = 9) then	--		║  ║
			unid <= "1111011";--		 ══ 
		end if;					--		   ║
									--		 ══  
		
		
		
									--		 ══ 
		if (contd = 0) then	--		║  ║
			deze <= "1111110";--		  
		end if;					--		║  ║
									--		 ══  
									--		  
									
		if (contd = 1) then	--		   ║
			deze <= "0110000";--		  
		end if;					--		   ║
									--		   
									
									--		 ══ 
		if (contd = 2) then	--		   ║
			deze <= "1101101";--		 ══ 
		end if;					--		║  
									--		 ══  
									
									--		 ══ 
		if (contd = 3) then	--		   ║
			deze <= "1111001";--		 ══ 
		end if;					--		   ║
									--		 ══  
									
									--		  
		if (contd = 4) then	--		║  ║
			deze <= "0110011";--		 ══ 
		end if;					--		   ║
									--		   
									
									--		 ══ 
		if (contd = 5) then	--		║   
			deze <= "1011011";--		 ══ 
		end if;					--		   ║
									--		 ══  
		
	end process;
	
end arc_sdisp;