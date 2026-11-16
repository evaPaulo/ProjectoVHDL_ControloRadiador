LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY outLEDS IS

	PORT (
		modo : IN STD_LOGIC;
		hRom, estado : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		ledArray : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END outLEDS;

ARCHITECTURE compOutLEDS OF outLEDS IS
	SIGNAL s_sel2 : STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN

	mux1 : ENTITY work.Mux2_2(compMux2_2)
		PORT MAP(
			i0 => hRom,
			i1 => estado,
			sel => modo,
			yOut => s_sel2);

	mux2 : ENTITY work.mux3_3(compMux3_3)
		PORT MAP(
			i0 => "001",
			i1 => "010",
			i2 => "100",
			sel => s_sel2,
			yOut => ledArray);
			
END compOutLEDS;