LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY AmbienteFinal IS

	PORT (
		clk, pulso, divF : IN STD_LOGIC;
		up, dw, tP : IN STD_LOGIC;
		horaROM : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		radiador : OUT STD_LOGIC;
		tDzn, tUni, tDcm : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		modoLED : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END AmbienteFinal;

ARCHITECTURE compAmbienteFinal OF AmbienteFinal IS

	SIGNAL s_modo, s_uD : STD_LOGIC;
	SIGNAL s_stAtual : STD_LOGIC_VECTOR(1 DOWNTO 0);

	SIGNAL s_eG, s_eL, s_eS : STD_LOGIC;

	SIGNAL s_tROM : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL s_tG, s_tL, s_tS, s_tA : STD_LOGIC_VECTOR(8 DOWNTO 0);

BEGIN
	ROM : ENTITY work.romTemp(compRomTemp)
		PORT MAP(
			horas => horaROM,
			tAtual => s_tROM);

	FSM : ENTITY work.FSMambiente(compFSMambiente)
		PORT MAP(
			clk => clk,
			up => up,
			down => dw,
			tecla => tP,
			stOut => s_stAtual,
			modo => s_modo,
			ud => s_uD,
			eG => s_eG,
			eL => s_eL,
			eS => s_eS);

	tRef : ENTITY work.tTodas(comptTodas)
		PORT MAP(
			clk => clk,
			enG => s_eG,
			enL => s_eL,
			enS => s_eS,
			uD => s_uD,
			tG => s_tG,
			tL => s_tL,
			tS => s_tS);

	tSelect : ENTITY work.AmbienteBasico(compAmbienteBasico)
		PORT MAP(
			clk => clk,
			pulso => pulso,
			tSel => s_tROM,
			tGel => s_tG,
			tLua => s_tL,
			tSol => s_tS,
			radiador => radiador,
			tAmb => s_tA);

	conv : ENTITY work.ConvAmbiente(compConvAmbiente)
		PORT MAP(
			divF => divF,
			modo => s_modo,
			estado => s_stAtual,
			tNormal => s_tA,
			tGel => s_tG,
			tLua => s_tL,
			tSol => s_tS,
			temp2 => tDzn,
			temp1 => tUni,
			temp0 => tDcm);

	LEDs : ENTITY work.outLEDS(compOutLEDS)
		PORT MAP(
			modo => s_modo,
			hRom => s_tROM,
			estado => s_stAtual,
			ledArray => modoLED);

END compAmbienteFinal;