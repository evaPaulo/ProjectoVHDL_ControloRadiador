LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY Conv7Amb IS

	PORT (
		en : IN STD_LOGIC;
		inPort2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		inPort1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		inPort0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);

		outPort2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		outPort1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		outPort0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));

END Conv7Amb;

ARCHITECTURE compConv7Amb OF Conv7Amb IS
BEGIN

	outPort0 <= "1111111" WHEN (en = '0') ELSE
		"1111001" WHEN (inPort0 = "0001") ELSE --1
		"0100100" WHEN (inPort0 = "0010") ELSE --2
		"0110000" WHEN (inPort0 = "0011") ELSE --3
		"0011001" WHEN (inPort0 = "0100") ELSE --4
		"0010010" WHEN (inPort0 = "0101") ELSE --5
		"0000010" WHEN (inPort0 = "0110") ELSE --6
		"1111000" WHEN (inPort0 = "0111") ELSE --7
		"0000000" WHEN (inPort0 = "1000") ELSE --8
		"0010000" WHEN (inPort0 = "1001") ELSE --9
		"1000000";

	outPort1 <= "1111111" WHEN (en = '0') ELSE
		"1111001" WHEN (inPort1 = "0001") ELSE --1
		"0100100" WHEN (inPort1 = "0010") ELSE --2
		"0110000" WHEN (inPort1 = "0011") ELSE --3
		"0011001" WHEN (inPort1 = "0100") ELSE --4
		"0010010" WHEN (inPort1 = "0101") ELSE --5
		"0000010" WHEN (inPort1 = "0110") ELSE --6
		"1111000" WHEN (inPort1 = "0111") ELSE --7
		"0000000" WHEN (inPort1 = "1000") ELSE --8
		"0010000" WHEN (inPort1 = "1001") ELSE --9
		"1000000";

	outPort2 <= "1111111" WHEN (en = '0') ELSE
		"1111001" WHEN (inPort2 = "0001") ELSE --1
		"0100100" WHEN (inPort2 = "0010") ELSE --2
		"0110000" WHEN (inPort2 = "0011") ELSE --3
		"0011001" WHEN (inPort2 = "0100") ELSE --4
		"0010010" WHEN (inPort2 = "0101") ELSE --5
		"0000010" WHEN (inPort2 = "0110") ELSE --6
		"1111000" WHEN (inPort2 = "0111") ELSE --7
		"0000000" WHEN (inPort2 = "1000") ELSE --8
		"0010000" WHEN (inPort2 = "1001") ELSE --9
		"1000000";

END compConv7Amb;