LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ConvAmbiente IS

	PORT (
		pulso, modo : IN STD_LOGIC;
		estado : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		tNormal, tGel, tLua, tSol : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		temp2, temp1, temp0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END ConvAmbiente;

ARCHITECTURE compConvAmbiente OF ConvAmbiente IS

	SIGNAL s_enH : STD_LOGIC;
	SIGNAL s_t2, s_t1, s_t0 : STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL s_tRef : STD_LOGIC_VECTOR (8 DOWNTO 0);

BEGIN

	enableConv : ENTITY work.mux2_1Modo(compMux2_1Modo)
		PORT MAP(
			i0 => '1',
			i1 => pulso,
			sel => modo,
			yOut => s_enH);

	inRefConv : ENTITY work.Mux4Amb(compMux4Amb)
		PORT MAP(
			tNormal => tNormal,
			tGel => tGel,
			tLua => tLua,
			tSol => tSol,
			Sel => estado,
			tRef => s_tRef);

	conv3Dig : ENTITY work.ConversorAmbiente(compConversorAmbiente)
		PORT MAP(
			tempIn => s_tRef,
			t10 => s_t2,
			t1 => s_t1,
			t01 => s_t0);

	conv7seg : ENTITY work.Conv7Amb(compConv7Amb)
		PORT MAP(
			en => s_enH,
			inPort0 => s_t0,
			inPort1 => s_t1,
			inPort2 => s_t2,
			outPort0 => temp0,
			outPort1 => temp1,
			outPort2 => temp2);

END compConvAmbiente;