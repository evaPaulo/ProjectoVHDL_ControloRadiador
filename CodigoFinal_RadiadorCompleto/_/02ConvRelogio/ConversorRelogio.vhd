LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY ConversorRelogio IS

	PORT (
		pulseIn : IN STD_LOGIC;
		modo, mmH : IN STD_LOGIC;
		minuIn : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		horaIn : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		horaD, horaU : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		minuD, minuU : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END ConversorRelogio;

ARCHITECTURE compConversorRelogio OF ConversorRelogio IS
	SIGNAL s_enM, s_enH : STD_LOGIC;
	SIGNAL s_mmU, s_mmD, s_hhU, s_hhD : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN

	pulsos : ENTITY work.MuxHEXA(compMuxHEXA)
		PORT MAP(
			i0 => "11",
			i1(0) => pulseIn,
			i1(1) => '1',
			i2(0) => '1',
			i2(1) => pulseIn,
			sel(0) => mmH,
			sel(1) => modo,
			Yout(0) => s_enM,
			Yout(1) => s_enH);

	conv2D : ENTITY work.Conversor2Dig(compConversor2Dig)
		PORT MAP(
			minIn => minuIn,
			horaIn => horaIn,
			horaDez => s_hhD,
			horaUnd => s_hhU,
			minDez => s_mmD,
			minUnd => s_mmU);

	convHx : ENTITY work.Conv7Rel(compConv7Rel)
		PORT MAP(
			enMM => s_enM,
			enHH => s_enH,
			inPort0 => s_mmU,
			inPort1 => s_mmD,
			inPort2 => s_hhU,
			inPort3 => s_hhD,
			outPort0 => minuU,
			outPort1 => minuD,
			outPort2 => horaU,
			outPort3 => horaD);
			
END	compConversorRelogio;		