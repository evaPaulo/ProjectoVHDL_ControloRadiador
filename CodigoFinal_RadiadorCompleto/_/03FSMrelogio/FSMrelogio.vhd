LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FSMrelogio IS
	PORT (
		clk : IN STD_LOGIC;
		up, down : IN STD_LOGIC;
		tecla : IN STD_LOGIC;
		modo, ud, mmH : OUT STD_LOGIC;
		enH, enM : OUT STD_LOGIC);
END FSMrelogio;

ARCHITECTURE compFSMrelogio OF FSMrelogio IS
	TYPE TState IS (NORMAL, MINUTOS, HORAS);

	SIGNAL pS, nS : TState;

BEGIN

	sync_proc : PROCESS (clk)
	BEGIN
		IF (rising_edge(clk)) THEN
			pS <= nS;
		END IF;
	END PROCESS;

	proc_combin : PROCESS (pS, tecla, up, down)
	BEGIN

		CASE pS IS

			WHEN NORMAL =>
				modo <= '0';
				enH <= '0';
				enM <= '0';
				ud <= '1';
				mmH <= '0';

				IF (tecla = '1') THEN
					nS <= MINUTOS;
				ELSE
					ns <= NORMAL;
				END IF;
			WHEN MINUTOS =>
				modo <= '1';
				enH <= '0';
				enM <= '0';
				ud <= '0';
				mmH <= '0';

				IF (tecla = '1') THEN
					nS <= HORAS;
				ELSE
					nS <= MINUTOS;
				END IF;
				IF (up = '1') THEN
					enM <= '1';
					ud <= '1';
				ELSIF (down = '1') THEN
					enM <= '1';
					ud <= '0';
				END IF;

			WHEN HORAS =>
				modo <= '1';
				enH <= '0';
				enM <= '0';
				ud <= '0';
				mmH <= '1';

				IF (tecla = '1') THEN
					nS <= NORMAL;
				ELSE
					nS <= HORAS;
				END IF;
				IF (up = '1') THEN
					enH <= '1';
					ud <= '1';
				ELSIF (down = '1') THEN
					enH <= '1';
					ud <= '0';
				END IF;

		END CASE;
	END PROCESS;

END compFSMrelogio;