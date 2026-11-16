LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY RelogioFinal_Tb IS
END RelogioFinal_Tb;

ARCHITECTURE compRelogioFinal_Tb OF RelogioFinal_Tb IS
	SIGNAL s_clk, s_pulso, s_divF, s_up, s_dw, s_ts : STD_LOGIC;

	SIGNAL s_horaRom : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL s_hD, s_hU, s_mD, s_mU : STD_LOGIC_VECTOR(6 DOWNTO 0);

BEGIN
	uut : ENTITY work.RelogioFinal(compRelogioFinal)
		PORT MAP(
			clk => s_clk,
			divF => s_divF,
			pulso => s_pulso,
			up => s_up,
			dw => s_dw,
			ts => s_ts,
			horaRom => s_horaRom,
			hD => s_hD,
			hU => s_hU,
			mD => s_mD,
			mU => s_mU);

	clock_process : PROCESS
	BEGIN
		s_clk <= '0';
		WAIT FOR 10 ns;
		s_clk <= '1';
		WAIT FOR 10 ns;
	END PROCESS;

	stim_proc : PROCESS
	BEGIN

		s_pulso <= '0';
		s_up <= '0';
		s_dw <= '0';
		s_ts <= '0';
		s_divF <= '0';

		WAIT FOR 20 ns;

		s_divF <= '0';
		s_pulso <= '1';
		s_up <= '1';
		s_dw <= '0';
		s_ts <= '0';
		s_divF <= '1';

		WAIT FOR 20 ns;

		s_pulso <= '1';
		s_up <= '1';
		s_dw <= '0';
		s_ts <= '1';

		WAIT FOR 20 ns;

		s_pulso <= '1';
		s_up <= '0';
		s_dw <= '1';
		s_ts <= '0';

		WAIT FOR 20 ns;

		s_pulso <= '1';
		s_up <= '1';
		s_dw <= '0';
		s_ts <= '1';

		WAIT FOR 20 ns;

		s_pulso <= '1';
		s_up <= '1';
		s_dw <= '0';
		s_ts <= '0';

		WAIT FOR 20 ns;

		s_pulso <= '1';
		s_up <= '1';
		s_dw <= '0';
		s_ts <= '1';

		WAIT FOR 40 ns;
	END PROCESS;

END compRelogioFinal_Tb;