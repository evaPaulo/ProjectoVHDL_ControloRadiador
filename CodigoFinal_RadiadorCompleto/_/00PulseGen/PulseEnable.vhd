LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY PulseEnable IS
	GENERIC (contagem : NATURAL := 20);
	PORT (
		clkIn : IN STD_LOGIC;
		enable : IN STD_LOGIC;
		clkOut : OUT STD_LOGIC);
END PulseEnable;

ARCHITECTURE compPulseEnable OF PulseEnable IS

	SIGNAL s_divCounter : NATURAL;

BEGIN
	ASSERT(contagem >= 2);

	PROCESS (clkIn)
	BEGIN
		IF (rising_edge(clkIn)) THEN
			IF (enable = '1') THEN
				IF (s_divCounter = contagem - 1) THEN
					clkOut <= '1';
					s_divCounter <= 0;
				ELSE
					IF (s_divCounter /= (contagem - 1)) THEN
						clkOut <= '0';
					END IF;

					s_divCounter <= s_divCounter + 1;

				END IF;
			END IF;
		END IF;
	END PROCESS;
END compPulseEnable;