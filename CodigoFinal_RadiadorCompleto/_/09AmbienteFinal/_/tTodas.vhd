LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY tTodas IS

	PORT (
		clk, enG, enL, enS, uD : IN STD_LOGIC;
		tG, tL, tS : OUT STD_LOGIC_VECTOR(8 DOWNTO 0));
END tTodas;

ARCHITECTURE comptTodas OF tTodas IS
BEGIN

	GEL : ENTITY work.tGel(comptGel)
		PORT MAP(
			clk => clk,
			enL => enG,
			upD => uD,
			tempOut => tG);

	LUA : ENTITY work.tLua(comptLua)
		PORT MAP(
			clk => clk,
			enL => enL,
			upD => uD,
			tempOut => tL);

	SOL : ENTITY work.tSol(comptSol)
		PORT MAP(
			clk => clk,
			enL => enS,
			upD => uD,
			tempOut => tS);
			
END comptTodas;