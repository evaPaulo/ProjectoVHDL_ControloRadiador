LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ConversorAmbiente IS

	PORT (
		tempIn : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		t10, t1, t01 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));

END ConversorAmbiente;

ARCHITECTURE compConversorAmbiente OF ConversorAmbiente IS
	SIGNAL s_temp : INTEGER;
BEGIN

	s_temp <= to_integer(unsigned(tempIn));

	t01 <= STD_LOGIC_VECTOR(to_unsigned((s_temp REM 10), 4));
	t1 <= STD_LOGIC_VECTOR(to_unsigned(((s_temp / 10) REM 10), 4));
	t10 <= STD_LOGIC_VECTOR(to_unsigned((s_temp / 100), 4));

END compConversorAmbiente;