LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY RadiadorFinal IS

	PORT (
		clk : IN STD_LOGIC;
		tUp, tDw, tS, tP : IN STD_LOGIC;
		acel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);

		radiador : OUT STD_LOGIC;
		LedG, LedL, LedS : OUT STD_LOGIC;
		gDzn, gUni, gDcm : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		hD, hU, mD, mU : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));

END RadiadorFinal;

ARCHITECTURE compRadiadorFinal OF RadiadorFinal IS

	SIGNAL s_divF, s_pulso : STD_LOGIC;
	SIGNAL s_tUp, s_tDw, s_tS, s_tP : STD_LOGIC;
	SIGNAL s_hROM : STD_LOGIC_VECTOR(4 DOWNTO 0);

BEGIN
	teclaU : ENTITY work.DebounceUnit(Behavioral)
		GENERIC MAP(
			kHzClkFreq => 50000,
			mSecMinInWidth => 100,
			inPolarity => '0',
			outPolarity => '1')

		PORT MAP(
			refClk => clk,
			dirtyIn => tUp,
			pulsedOut => s_tUp);
	teclaD : ENTITY work.DebounceUnit(Behavioral)
		GENERIC MAP(
			kHzClkFreq => 50000,
			mSecMinInWidth => 100,
			inPolarity => '0',
			outPolarity => '1')

		PORT MAP(
			refClk => clk,
			dirtyIn => tDw,
			pulsedOut => s_tDw);

	teclaS : ENTITY work.DebounceUnit(Behavioral)
		GENERIC MAP(
			kHzClkFreq => 50000,
			mSecMinInWidth => 100,
			inPolarity => '0',
			outPolarity => '1')

		PORT MAP(
			refClk => clk,
			dirtyIn => tS,
			pulsedOut => s_tS);

	teclaP : ENTITY work.DebounceUnit(Behavioral)
		GENERIC MAP(
			kHzClkFreq => 50000,
			mSecMinInWidth => 100,
			inPolarity => '0',
			outPolarity => '1')

		PORT MAP(
			refClk => clk,
			dirtyIn => tP,
			pulsedOut => s_tP);

	Pulsos : ENTITY work.PulseGen(compPulseGen)
		PORT MAP(
			clockIn => clk,
			acel => acel,
			pulseHex => s_divF,
			pulseOut => s_pulso);

	Relogio : ENTITY work.RelogioFinal(compRelogioFinal)
		PORT MAP(
			clk => clk,
			pulso => s_pulso,
			divF => s_divF,
			up => s_tUp,
			dw => s_tDw,
			tS => s_tS,
			horaRom => s_hROM,
			hD => hD,
			hU => hU,
			mD => mD,
			mU => mU);

	Ambiente : ENTITY work.AmbienteFinal(compAmbienteFinal)
		PORT MAP(
			clk => clk,
			pulso => s_pulso,
			divF => s_divF,
			up => s_tUp,
			dw => s_tDw,
			tP => s_tP,
			horaROM => s_hROM,
			radiador => radiador,
			tDzn => gDzn,
			tUni => gUni,
			tDcm => gDcm,
			modoLED(2) => LedS,
			modoLED(1) => LedL,
			modoLED(0) => LedG);
END compRadiadorFinal;