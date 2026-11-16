LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY DivFreq IS
	GENERIC (contagem : NATURAL := 20);
	PORT (
		clkIn : IN STD_LOGIC;
		clkOut : OUT STD_LOGIC);
END DivFreq;

ARCHITECTURE compDivFreq OF DivFreq IS

	SIGNAL s_divCounter : NATURAL;

BEGIN
	ASSERT(contagem >= 2);

	PROCESS (clkIn)
	BEGIN
		IF (rising_edge(clkIn)) THEN
			IF (s_divCounter = contagem - 1) THEN
				clkOut <= '0';
				s_divCounter <= 0;
			ELSE
				IF (s_divCounter = (contagem / 2 - 1)) THEN
					clkOut <= '1';
				END IF;
				s_divCounter <= s_divCounter + 1;
			END IF;
		END IF;
	END PROCESS;
END compDivFreq;