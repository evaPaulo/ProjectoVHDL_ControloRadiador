LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Conversor2Dig IS

	PORT (
		horaIn : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		minIn : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		horaDez, horaUnd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		minDez, minUnd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));

END Conversor2Dig;

ARCHITECTURE compConversor2Dig OF Conversor2Dig IS
	SIGNAL s_Min, s_Hora : INTEGER;
BEGIN

	s_Min <= to_integer(unsigned(minIn));
	s_Hora <= to_integer(unsigned(horaIn));
	minUnd <= STD_LOGIC_VECTOR(to_unsigned((s_Min REM 10), 4));
	minDez <= STD_LOGIC_VECTOR(to_unsigned((s_Min / 10), 4));

	horaUnd <= STD_LOGIC_VECTOR(to_unsigned((s_Hora REM 10), 4));
	horaDez <= STD_LOGIC_VECTOR(to_unsigned((s_Hora / 10), 4));

END compConversor2Dig;