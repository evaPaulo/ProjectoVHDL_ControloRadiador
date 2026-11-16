LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tempControl IS
	PORT (
		clk : IN STD_LOGIC;
		tRef, tAtual : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		controlOut : OUT STD_LOGIC);
END tempControl;

ARCHITECTURE compTempControl OF tempControl IS

	SIGNAL s_maxVal, s_minVal, s_Ref, s_Count : INTEGER;

BEGIN
	s_Ref <= to_integer (unsigned (tRef));
	s_Count <= to_integer (unsigned (tAtual));
	s_minVal <= s_Ref - 20;
	s_maxVal <= s_Ref + 20;

	PROCESS (clk, tRef)
	BEGIN

		IF (rising_edge(clk)) THEN
			IF (s_Count <= s_minVal) THEN
				controlOut <= '1';
			ELSIF (s_Count >= s_maxVal) THEN
				controlOut <= '0';
			END IF;
		END IF;

	END PROCESS;

END compTempControl;