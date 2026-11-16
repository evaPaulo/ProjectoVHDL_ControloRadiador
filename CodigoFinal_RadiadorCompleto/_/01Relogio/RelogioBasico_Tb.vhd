LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY RelogioBasico_Tb IS
END RelogioBasico_Tb;

ARCHITECTURE compRelogioBasico_Tb OF RelogioBasico_Tb IS

	SIGNAL s_clk, s_pulso, s_modo, s_upD, s_enM, s_enH : STD_LOGIC;

	SIGNAL s_minOut : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL s_horOut : STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN

	uut : ENTITY work.RelogioBasico(compRelogioBasico)
		PORT MAP(
			clk => s_clk,
			pulso => s_pulso,
			modo => s_modo,
			upD => s_upD,
			enM => s_enM,
			enH => s_enH,
			minOut => s_minOut,
			horOut => s_horOut);

	clock_process : PROCESS
	BEGIN
		s_clk <= '0';
		WAIT FOR 10 ns;
		s_clk <= '1';
		WAIT FOR 10 ns;
	END PROCESS;
	stim_proc : PROCESS
	BEGIN

		s_modo <= '0';
		s_pulso <= '0';
		s_upD <= '1';
		s_enM <= '0';
		s_enH <= '0';

		WAIT FOR 40 ns;

		s_modo <= '0';
		s_pulso <= '0';
		s_upD <= '0';
		s_enM <= '0';
		s_enH <= '0';

		WAIT FOR 40 ns;

		s_modo <= '1';
		s_pulso <= '1';
		s_upD <= '1';
		s_enM <= '0';
		s_enH <= '0';

		WAIT FOR 40 ns;

		s_modo <= '1';
		s_pulso <= '1';
		s_upD <= '1';
		s_enM <= '1';
		s_enH <= '0';

		WAIT FOR 40 ns;

		s_modo <= '1';
		s_pulso <= '1';
		s_upD <= '1';
		s_enM <= '0';
		s_enH <= '1';

		WAIT FOR 40 ns;

		s_modo <= '1';
		s_pulso <= '1';
		s_upD <= '1';
		s_enM <= '1';
		s_enH <= '1';

		WAIT FOR 40 ns;
	END PROCESS;

END compRelogioBasico_Tb;