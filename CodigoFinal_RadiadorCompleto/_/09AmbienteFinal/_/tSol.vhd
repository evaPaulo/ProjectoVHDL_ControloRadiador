LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY tSol IS

	GENERIC (contMax : INTEGER := 511);
	PORT (
		clk : IN STD_LOGIC;
		enL : IN STD_LOGIC;
		upD : IN STD_LOGIC;
		tempOut : OUT STD_LOGIC_VECTOR (8 DOWNTO 0));
END tSol;

ARCHITECTURE comptSol OF tSol IS
	SIGNAL s_cont : INTEGER RANGE 0 TO 511 := 200;

BEGIN

	PROCESS (clk)
	BEGIN

		IF (rising_edge(clk)) THEN
			IF (enL = '1') THEN
				IF (upD = '0') THEN
					s_cont <= s_cont - 10;
				ELSIF (s_cont >= contMax) THEN
					s_cont <= 0;
				ELSE
					s_cont <= s_cont + 10;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	tempOut <= STD_LOGIC_VECTOR(to_unsigned((s_cont), 9));

END comptSol;