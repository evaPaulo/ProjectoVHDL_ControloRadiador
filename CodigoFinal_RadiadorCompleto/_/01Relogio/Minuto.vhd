LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Minuto IS

	GENERIC (contMax : INTEGER := 59);
	PORT (
		clk : IN STD_LOGIC;
		enL : IN STD_LOGIC;
		upD : IN STD_LOGIC;
		minOut : OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
		contFim : OUT STD_LOGIC);
END Minuto;

ARCHITECTURE compMinuto OF Minuto IS
	SIGNAL s_cont : INTEGER RANGE 0 TO 59;

BEGIN

	ASSERT (s_cont <= 59);

	PROCESS (clk)
	BEGIN

		IF (rising_edge(clk)) THEN
			IF (enL = '1') THEN
				IF (upD = '0') THEN
					s_cont <= s_cont - 1;
				ELSIF (s_cont >= contMax) THEN
					s_cont <= 0;
					contFim <= '0';
				ELSE
					s_cont <= s_cont + 1;

					IF (s_cont = contMAX - 1) THEN
						contFim <= '1';
					ELSE
						contFim <= '0';
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	minOut <= STD_LOGIC_VECTOR(to_unsigned((s_cont), 6));

END compMinuto;