LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY PulseGen IS

	PORT (
		clockIn : IN STD_LOGIC;
		acel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		pulseHex : OUT STD_LOGIC;
		pulseOut : OUT STD_LOGIC);
END PulseGen;

ARCHITECTURE compPulseGen OF PulseGen IS
	SIGNAL s_normal : STD_LOGIC;
	SIGNAL s_v0, s_v1, s_v2, s_v3 : STD_LOGIC;
BEGIN

	Normal1 : ENTITY work.DivFreq(compDivFreq)
		GENERIC MAP(contagem => 2)
		PORT MAP(
			clkIn => clockIn,
			clkOut => s_normal);

	Normal2 : ENTITY work.PulseEnable(compPulseEnable)
		GENERIC MAP(contagem => 1500000000)
		PORT MAP(
			clkIN => ClockIn,
			enable => s_normal AND ClockIn,
			clkOut => s_v0);

	acel01 : ENTITY work.PulseEnable(compPulseEnable)
		GENERIC MAP(contagem => 50000000)
		PORT MAP(
			clkIN => ClockIn,
			enable => '1',
			clkOut => s_v1);

	acel10 : ENTITY work.PulseEnable(compPulseEnable)
		GENERIC MAP(contagem => 5000000)
		PORT MAP(
			clkIN => ClockIn,
			enable => '1',
			clkOut => s_v2);

	acel11 : ENTITY work.PulseEnable(compPulseEnable)
		GENERIC MAP(contagem => 833333)
		PORT MAP(
			clkIN => ClockIn,
			enable => '1',
			clkOut => s_v3);

	saida1 : ENTITY work.Mux4(compMux4)
		PORT MAP(
			i0 => s_v0 AND s_normal,
			i1 => s_v1,
			i2 => s_v2,
			i3 => s_v3,
			sel => acel,
			yOut => pulseOut);

END compPulseGen;