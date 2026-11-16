LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY AmbienteBasico IS

	PORT (
		clk, pulso : IN STD_LOGIC;
		tSel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		tGel, tLua, tSol : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		tAmb : OUT STD_LOGIC_VECTOR(8 DOWNTO 0));

END AmbienteBasico;

ARCHITECTURE compAmbienteBasico OF AmbienteBasico IS

	SIGNAL s_upD : STD_LOGIC;
	SIGNAL s_tAtual, s_tRef : STD_LOGIC_VECTOR(8 DOWNTO 0);

BEGIN

	selecao : ENTITY work.MuxAmb(compMuxAmb)
		PORT MAP(
			TGel => tGel,
			TLua => tLua,
			TSol => tSol,
			sel => tSel,
			tRef => s_tRef);

	cont9 : ENTITY work.TempSala(compTempSala)
		PORT MAP(
			clk => clk,
			enL => pulso,
			upD => s_upD,
			tempOut => s_tRef);

	control : ENTITY work.tempControl(compTempControl)
		PORT MAP(
			clk => clk,
			tRef => S_tRef,
			tAtual => s_tAtual,
			controlOut => s_upD);
			
END compAmbienteBasico;