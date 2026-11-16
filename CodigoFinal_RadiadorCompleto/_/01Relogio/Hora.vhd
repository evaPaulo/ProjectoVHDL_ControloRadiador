LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Hora IS

	GENERIC (contMax : INTEGER := 23);
	PORT (
		clk : IN STD_LOGIC;
		enL : IN STD_LOGIC;
		upD : IN STD_LOGIC;
		horaOut : OUT STD_LOGIC_VECTOR (4 DOWNTO 0));
END Hora;

ARCHITECTURE compHora OF Hora IS
	SIGNAL s_cont : INTEGER RANGE 0 TO 23;
BEGIN

	ASSERT(s_cont <= 23);

	PROCESS (clk)
	BEGIN

		IF (rising_edge(clk)) THEN
			IF (enL = '1') THEN
				IF (upD = '0') THEN
					s_cont <= s_cont - 1;
				ELSIF (s_cont >= contMax) THEN
					s_cont <= 0;
				ELSE
					s_cont <= s_cont + 1;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	horaOut <= STD_LOGIC_VECTOR(to_unsigned((s_cont), 5));

END compHora;