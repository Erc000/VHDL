library ieee;
use ieee.std_logic_1164.all;

entity proced01 is port(
	ent50hz,reset: in bit;
	led: out bit;
	u1hz,										--u1hzx : diplay das unidadades de clock de 1 hertz de numero x
	d1hz: out bit_vector(6 downto 0) --d1hzx : diplay das dezenas de clock de 1 hertz de numero x
);
end proced01;

architecture arc_proced01 of proced01 is
	component clock is  port(
		ent: in bit;
		s10hz,s1hz: out bit); -- sinal 10hz; sinal 1hz
	end component;

	component sdisp is port(
		entclk,rst: in bit;
		l: out bit;
		unid: out bit_vector(6 downto 0);  --saida display unidadades
		deze: out bit_vector(6 downto 0)); --saida display dezenas
	end component;

	signal aux10hz, aux1hz: bit; -- sinal 10hz; sinal 1hz

begin

	bloc_clk: clock port map (ent => ent50hz,s10hz => aux10hz,s1hz => aux1hz);

	bloc_disp1hz: sdisp port map (entclk => aux1hz, rst => reset, l => led,unid => u1hz, deze => d1hz);

end arc_proced01;
