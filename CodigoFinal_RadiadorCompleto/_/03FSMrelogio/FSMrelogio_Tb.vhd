LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FSMrelogio_Tb IS
END FSMrelogio_Tb;

ARCHITECTURE compFSMrelogio_Tb OF FSMrelogio_Tb IS

	SIGNAL s_clk, s_up, s_down, s_tecla : STD_LOGIC;

	SIGNAL s_modo, s_ud, s_mmH, s_enH, s_enM : STD_LOGIC;

BEGIN

	uut : ENTITY work.FSMrelogio(compFSMrelogio)
		PORT MAP(
			clk => s_clk,
			up => s_up,
			down => s_down,
			tecla => s_tecla,
			modo => s_modo,
			ud => s_ud,
			mmH => s_mmH,
			enH => s_enH,
			enM => s_enM);

	clock_process : PROCESS
	BEGIN
		s_clk <= '0';
		WAIT FOR 10 ns;
		s_clk <= '1';
		WAIT FOR 10 ns;
	END PROCESS;

	stim_proc : PROCESS
	BEGIN

		s_up <= '0';
		s_down <= '0';
		s_tecla <= '0';

		WAIT FOR 40 ns;

		s_up <= '1';
		s_down <= '0';
		s_tecla <= '0';

		WAIT FOR 40 ns;

		s_up <= '1';
		s_down <= '0';
		s_tecla <= '1';

		WAIT FOR 40 ns;

		s_up <= '0';
		s_down <= '1';
		s_tecla <= '0';

		WAIT FOR 40 ns;

		s_up <= '1';
		s_down <= '1';
		s_tecla <= '0';

		WAIT FOR 40 ns;

		s_up <= '1';
		s_down <= '1';
		s_tecla <= '1';

		WAIT FOR 40 ns;
		s_up <= '0';
		s_down <= '0';
		s_tecla <= '0';

		WAIT FOR 40 ns;

		s_up <= '0';
		s_down <= '0';
		s_tecla <= '1';

		WAIT FOR 40 ns;

		s_up <= '0';
		s_down <= '0';
		s_tecla <= '1';

		WAIT FOR 40 ns;

	END PROCESS;

END compFSMrelogio_Tb;