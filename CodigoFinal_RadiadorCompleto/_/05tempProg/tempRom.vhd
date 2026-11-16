LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY romTemp IS
	PORT (
		horas : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		tAtual : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END romTemp;

ARCHITECTURE compRomTemp OF romTemp IS
	SUBTYPE tipo IS STD_LOGIC_VECTOR(1 DOWNTO 0);
	TYPE tipoROM IS ARRAY(0 TO 23) OF tipo;
	CONSTANT c_memory : tipoROM := ("01", "01", "01", "01", "01", --00:00 - 04:00
	"10", "10", --05:00 - 06:00
	"11", "11", "11", "11", "11", "11", "11", "11", "11", "11", "11", --07:00 - 17:00
	"10", "10", --18:00 - 19:00
	"01", "01", "01", "01", OTHERS => "00"); --20:00 - 23:00

BEGIN

	tAtual <= c_memory(to_integer(unsigned(horas)));
END compRomTemp;