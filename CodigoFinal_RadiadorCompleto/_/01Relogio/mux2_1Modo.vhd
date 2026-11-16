LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux2_1Modo IS
	PORT (
		i0, i1 : IN STD_LOGIC;
		sel : IN STD_LOGIC;
		yout : OUT STD_LOGIC);

END mux2_1Modo;

ARCHITECTURE compMux2_1Modo OF mux2_1Modo IS
BEGIN

	yout <= i1 WHEN(sel = '1') ELSE
		i0;

END compMux2_1Modo;