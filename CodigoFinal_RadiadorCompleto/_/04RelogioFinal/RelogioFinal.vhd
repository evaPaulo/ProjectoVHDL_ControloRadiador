LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY RelogioFinal IS

	PORT (
		clk, pulso, divF : IN STD_LOGIC;
		up, dw, tS : IN STD_LOGIC;
		horaRom : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		hD, hU, mD, mU : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END RelogioFinal;

ARCHITECTURE compRelogioFinal OF RelogioFinal IS
	--sinais de saida da FSM
	SIGNAL s_modo, s_mmH, s_ud, s_enM, s_enH : STD_LOGIC;
	--sinais de saida do RelogioBasico
	SIGNAL s_minCont : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL s_horCont : STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN

	FSMrel : ENTITY work.FSMrelogio(compFSMrelogio)
		PORT MAP(
			clk => clk,
			up => up,
			down => dw,
			tecla => tS,
			modo => s_modo,
			uD => s_uD,
			mmH => s_mmH,
			enM => s_enM,
			enH => s_enH);

	relBas : ENTITY work.RelogioBasico(compRelogioBasico)
		PORT MAP(
			clk => clk,
			pulso => pulso,
			upD => s_uD,
			modo => s_modo,
			enM => s_enM,
			enH => s_enH,
			minOut => s_minCont,
			horOut => s_horCont);

	horaROM <= s_horCont;

	convRel : ENTITY work.ConversorRelogio(compConversorRelogio)
		PORT MAP(
			pulseIn => divF,
			modo => s_modo,
			mmH => s_mmH,
			minuIn => s_minCont,
			horaIn => s_horCont,
			horaD => hD,
			horaU => hU,
			minuD => mD,
			minuU => mU);
			
END compRelogioFinal;