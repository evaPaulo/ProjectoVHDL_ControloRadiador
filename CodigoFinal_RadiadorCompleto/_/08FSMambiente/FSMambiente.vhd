LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FSMambiente IS
	PORT (
		clk : IN STD_LOGIC;
		up, down : IN STD_LOGIC;
		tecla : IN STD_LOGIC;
		stOut : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		modo, ud : OUT STD_LOGIC;
		eG, eL, eS : OUT STD_LOGIC);
END FSMambiente;

ARCHITECTURE compFSMambiente OF FSMambiente IS
	TYPE TState IS (NORMAL, GEL, LUA, SOL);

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
				stOut <= "00";
				eG <= '0';
				eL <= '0';
				eS <= '0';

				IF (tecla = '1') THEN
					nS <= GEL;
				ELSE
					ns <= NORMAL;
				END IF;
			WHEN GEL =>
				modo <= '1';
				stOut <= "01";
				eG <= '0';
				eL <= '0';
				eS <= '0';

				IF (tecla = '1') THEN
					nS <= LUA;
				ELSE
					nS <= GEL;
				END IF;
				IF (up = '1') THEN
					eG <= '1';
					ud <= '1';
				ELSIF (down = '1') THEN
					eG <= '1';
					ud <= '0';
				END IF;

			WHEN LUA =>
				modo <= '1';
				stOut <= "10";
				eG <= '0';
				eL <= '0';
				eS <= '0';

				IF (tecla = '1') THEN
					nS <= SOL;
				ELSE
					nS <= LUA;
				END IF;
				IF (up = '1') THEN
					eL <= '1';
					ud <= '1';
				ELSIF (down = '1') THEN
					eL <= '1';
					ud <= '0';
				END IF;

			WHEN SOL =>
				modo <= '1';
				stOut <= "11";
				eG <= '0';
				eL <= '0';
				eS <= '0';

				IF (tecla = '1') THEN
					nS <= NORMAL;
				ELSE
					nS <= SOL;
				END IF;
				IF (up = '1') THEN
					eS <= '1';
					ud <= '1';
				ELSIF (down = '1') THEN
					eS <= '1';
					ud <= '0';
				END IF;

		END CASE;
	END PROCESS;

END compFSMambiente;