LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RelogioBasico IS

	PORT (
		clk, pulso, modo : IN STD_LOGIC;
		upD, enM, enH : IN STD_LOGIC;
		minOut : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		horOut : OUT STD_LOGIC_VECTOR(4 DOWNTO 0));
END RelogioBasico;

ARCHITECTURE compRelogioBasico OF RelogioBasico IS

	SIGNAL s_minMux, s_horMux : STD_LOGIC;
	SIGNAL s_contFim : STD_LOGIC;

BEGIN

	muxMin : ENTITY work.mux2_1Modo(compMux2_1Modo)
		PORT MAP(
			i0 => pulso,
			i1 => enM,
			sel => modo,
			yOut => s_minMux);

	Minutos : ENTITY work.Minuto(compMinuto)
		PORT MAP(
			clk => clk,
			enL => s_minMux,
			upD => upD,
			minOut => minOut,
			contFim => s_contFim);

	muxHrs : ENTITY work.mux2_1Modo(compMux2_1Modo)
		PORT MAP(
			i0 => (pulso AND s_contFim),
			i1 => enH,
			sel => modo,
			yOut => s_horMux);

	Horas : ENTITY work.Hora(compHora)
		PORT MAP(
			clk => clk,
			enL => s_horMux,
			upD => upD,
			horaOut => horOut);
END	compRelogioBasico;		