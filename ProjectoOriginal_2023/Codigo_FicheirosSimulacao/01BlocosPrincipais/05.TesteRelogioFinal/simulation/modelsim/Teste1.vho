-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/31/2023 15:09:50"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Teste1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Teste1;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Teste1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \relogio|FSMrel|pS.HORAS~feeder_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \dTeclaS|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \dTeclaS|s_dirtyIn~q\ : std_logic;
SIGNAL \dTeclaS|s_previousIn~q\ : std_logic;
SIGNAL \dTeclaS|Add0~0_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~1\ : std_logic;
SIGNAL \dTeclaS|Add0~2_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt[17]~4_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~3\ : std_logic;
SIGNAL \dTeclaS|Add0~4_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~5\ : std_logic;
SIGNAL \dTeclaS|Add0~6_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~7\ : std_logic;
SIGNAL \dTeclaS|Add0~8_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~9\ : std_logic;
SIGNAL \dTeclaS|Add0~10_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \dTeclaS|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~11\ : std_logic;
SIGNAL \dTeclaS|Add0~12_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~37\ : std_logic;
SIGNAL \dTeclaS|Add0~38_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~39\ : std_logic;
SIGNAL \dTeclaS|Add0~40_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~41\ : std_logic;
SIGNAL \dTeclaS|Add0~42_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \dTeclaS|LessThan0~3_combout\ : std_logic;
SIGNAL \dTeclaS|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \dTeclaS|LessThan0~0_combout\ : std_logic;
SIGNAL \dTeclaS|LessThan0~1_combout\ : std_logic;
SIGNAL \dTeclaS|LessThan0~2_combout\ : std_logic;
SIGNAL \dTeclaS|LessThan0~4_combout\ : std_logic;
SIGNAL \dTeclaS|LessThan0~5_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt[17]~2_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~13\ : std_logic;
SIGNAL \dTeclaS|Add0~14_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~15\ : std_logic;
SIGNAL \dTeclaS|Add0~16_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~17\ : std_logic;
SIGNAL \dTeclaS|Add0~18_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~19\ : std_logic;
SIGNAL \dTeclaS|Add0~20_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~21\ : std_logic;
SIGNAL \dTeclaS|Add0~22_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~23\ : std_logic;
SIGNAL \dTeclaS|Add0~24_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~25\ : std_logic;
SIGNAL \dTeclaS|Add0~26_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~27\ : std_logic;
SIGNAL \dTeclaS|Add0~28_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~29\ : std_logic;
SIGNAL \dTeclaS|Add0~30_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~31\ : std_logic;
SIGNAL \dTeclaS|Add0~32_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~33\ : std_logic;
SIGNAL \dTeclaS|Add0~34_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~35\ : std_logic;
SIGNAL \dTeclaS|Add0~36_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \dTeclaS|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \dTeclaS|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \dTeclaS|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \dTeclaS|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \dTeclaS|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt[17]~29_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \dTeclaS|Add0~43\ : std_logic;
SIGNAL \dTeclaS|Add0~44_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt[17]~5_combout\ : std_logic;
SIGNAL \dTeclaS|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \dTeclaS|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \dTeclaS|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \dTeclaS|s_pulsedOut~q\ : std_logic;
SIGNAL \relogio|FSMrel|pS.HORAS~q\ : std_logic;
SIGNAL \relogio|FSMrel|pS.NORMAL~0_combout\ : std_logic;
SIGNAL \relogio|FSMrel|pS.NORMAL~q\ : std_logic;
SIGNAL \relogio|FSMrel|pS.MINUTOS~0_combout\ : std_logic;
SIGNAL \relogio|FSMrel|pS.MINUTOS~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \dTeclaU|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \dTeclaU|s_dirtyIn~q\ : std_logic;
SIGNAL \dTeclaU|s_previousIn~q\ : std_logic;
SIGNAL \dTeclaU|Add0~0_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~23\ : std_logic;
SIGNAL \dTeclaU|Add0~24_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~25\ : std_logic;
SIGNAL \dTeclaU|Add0~26_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~27\ : std_logic;
SIGNAL \dTeclaU|Add0~28_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~29\ : std_logic;
SIGNAL \dTeclaU|Add0~30_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~31\ : std_logic;
SIGNAL \dTeclaU|Add0~32_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~33\ : std_logic;
SIGNAL \dTeclaU|Add0~34_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~35\ : std_logic;
SIGNAL \dTeclaU|Add0~36_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~37\ : std_logic;
SIGNAL \dTeclaU|Add0~38_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~39\ : std_logic;
SIGNAL \dTeclaU|Add0~40_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \dTeclaU|LessThan0~3_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~1\ : std_logic;
SIGNAL \dTeclaU|Add0~2_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~3\ : std_logic;
SIGNAL \dTeclaU|Add0~4_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~5\ : std_logic;
SIGNAL \dTeclaU|Add0~6_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~7\ : std_logic;
SIGNAL \dTeclaU|Add0~8_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~9\ : std_logic;
SIGNAL \dTeclaU|Add0~10_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~11\ : std_logic;
SIGNAL \dTeclaU|Add0~12_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~13\ : std_logic;
SIGNAL \dTeclaU|Add0~14_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \dTeclaU|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \dTeclaU|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \dTeclaU|LessThan0~0_combout\ : std_logic;
SIGNAL \dTeclaU|LessThan0~1_combout\ : std_logic;
SIGNAL \dTeclaU|LessThan0~2_combout\ : std_logic;
SIGNAL \dTeclaU|LessThan0~4_combout\ : std_logic;
SIGNAL \dTeclaU|LessThan0~5_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt[21]~5_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt[21]~29_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt[21]~4_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~41\ : std_logic;
SIGNAL \dTeclaU|Add0~42_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~43\ : std_logic;
SIGNAL \dTeclaU|Add0~44_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt[21]~2_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~15\ : std_logic;
SIGNAL \dTeclaU|Add0~16_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~17\ : std_logic;
SIGNAL \dTeclaU|Add0~18_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~19\ : std_logic;
SIGNAL \dTeclaU|Add0~20_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \dTeclaU|Add0~21\ : std_logic;
SIGNAL \dTeclaU|Add0~22_combout\ : std_logic;
SIGNAL \dTeclaU|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \dTeclaU|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \dTeclaU|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \dTeclaU|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \dTeclaU|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \dTeclaU|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \dTeclaU|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \dTeclaU|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \dTeclaU|s_pulsedOut~q\ : std_logic;
SIGNAL \relogio|FSMrel|ud~0_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add0~0_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add1~0_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|s_cont~0_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~0_combout\ : std_logic;
SIGNAL \pulsos|acel11|s_divCounter~3_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~1\ : std_logic;
SIGNAL \pulsos|acel11|Add0~2_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~3\ : std_logic;
SIGNAL \pulsos|acel11|Add0~4_combout\ : std_logic;
SIGNAL \pulsos|acel11|s_divCounter~2_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~5\ : std_logic;
SIGNAL \pulsos|acel11|Add0~6_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~7\ : std_logic;
SIGNAL \pulsos|acel11|Add0~8_combout\ : std_logic;
SIGNAL \pulsos|acel11|s_divCounter~1_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~9\ : std_logic;
SIGNAL \pulsos|acel11|Add0~10_combout\ : std_logic;
SIGNAL \pulsos|acel11|s_divCounter~0_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~11\ : std_logic;
SIGNAL \pulsos|acel11|Add0~12_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~13\ : std_logic;
SIGNAL \pulsos|acel11|Add0~14_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~15\ : std_logic;
SIGNAL \pulsos|acel11|Add0~16_combout\ : std_logic;
SIGNAL \pulsos|acel11|s_divCounter~4_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~17\ : std_logic;
SIGNAL \pulsos|acel11|Add0~18_combout\ : std_logic;
SIGNAL \pulsos|acel11|s_divCounter~5_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~19\ : std_logic;
SIGNAL \pulsos|acel11|Add0~20_combout\ : std_logic;
SIGNAL \pulsos|acel11|s_divCounter~6_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~21\ : std_logic;
SIGNAL \pulsos|acel11|Add0~22_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~23\ : std_logic;
SIGNAL \pulsos|acel11|Add0~24_combout\ : std_logic;
SIGNAL \pulsos|acel11|s_divCounter~7_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~25\ : std_logic;
SIGNAL \pulsos|acel11|Add0~26_combout\ : std_logic;
SIGNAL \pulsos|acel11|s_divCounter~8_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~27\ : std_logic;
SIGNAL \pulsos|acel11|Add0~28_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~29\ : std_logic;
SIGNAL \pulsos|acel11|Add0~30_combout\ : std_logic;
SIGNAL \pulsos|acel11|s_divCounter~9_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~31\ : std_logic;
SIGNAL \pulsos|acel11|Add0~32_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~33\ : std_logic;
SIGNAL \pulsos|acel11|Add0~34_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~35\ : std_logic;
SIGNAL \pulsos|acel11|Add0~36_combout\ : std_logic;
SIGNAL \pulsos|acel11|s_divCounter~10_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~37\ : std_logic;
SIGNAL \pulsos|acel11|Add0~38_combout\ : std_logic;
SIGNAL \pulsos|acel11|s_divCounter~11_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~39\ : std_logic;
SIGNAL \pulsos|acel11|Add0~40_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~41\ : std_logic;
SIGNAL \pulsos|acel11|Add0~42_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~43\ : std_logic;
SIGNAL \pulsos|acel11|Add0~44_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~45\ : std_logic;
SIGNAL \pulsos|acel11|Add0~46_combout\ : std_logic;
SIGNAL \pulsos|acel11|Equal0~6_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~47\ : std_logic;
SIGNAL \pulsos|acel11|Add0~48_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~49\ : std_logic;
SIGNAL \pulsos|acel11|Add0~50_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~51\ : std_logic;
SIGNAL \pulsos|acel11|Add0~52_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~53\ : std_logic;
SIGNAL \pulsos|acel11|Add0~54_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~55\ : std_logic;
SIGNAL \pulsos|acel11|Add0~56_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~57\ : std_logic;
SIGNAL \pulsos|acel11|Add0~58_combout\ : std_logic;
SIGNAL \pulsos|acel11|Add0~59\ : std_logic;
SIGNAL \pulsos|acel11|Add0~60_combout\ : std_logic;
SIGNAL \pulsos|acel11|Equal0~7_combout\ : std_logic;
SIGNAL \pulsos|acel11|Equal0~8_combout\ : std_logic;
SIGNAL \pulsos|acel11|Equal0~5_combout\ : std_logic;
SIGNAL \pulsos|acel11|Equal0~1_combout\ : std_logic;
SIGNAL \pulsos|acel11|Equal0~2_combout\ : std_logic;
SIGNAL \pulsos|acel11|Equal0~3_combout\ : std_logic;
SIGNAL \pulsos|acel11|Equal0~0_combout\ : std_logic;
SIGNAL \pulsos|acel11|Equal0~4_combout\ : std_logic;
SIGNAL \pulsos|acel11|Equal0~9_combout\ : std_logic;
SIGNAL \pulsos|acel11|clkOut~q\ : std_logic;
SIGNAL \pulsos|saida2|Add0~0_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~1\ : std_logic;
SIGNAL \pulsos|saida2|Add0~2_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~1_cout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~2_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~3\ : std_logic;
SIGNAL \pulsos|acel10|Add0~4_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~5\ : std_logic;
SIGNAL \pulsos|acel10|Add0~6_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~7\ : std_logic;
SIGNAL \pulsos|acel10|Add0~8_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~9\ : std_logic;
SIGNAL \pulsos|acel10|Add0~10_combout\ : std_logic;
SIGNAL \pulsos|acel10|s_divCounter~0_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~11\ : std_logic;
SIGNAL \pulsos|acel10|Add0~12_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~13\ : std_logic;
SIGNAL \pulsos|acel10|Add0~14_combout\ : std_logic;
SIGNAL \pulsos|acel10|s_divCounter~1_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~15\ : std_logic;
SIGNAL \pulsos|acel10|Add0~16_combout\ : std_logic;
SIGNAL \pulsos|acel10|s_divCounter~2_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~17\ : std_logic;
SIGNAL \pulsos|acel10|Add0~18_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~19\ : std_logic;
SIGNAL \pulsos|acel10|Add0~20_combout\ : std_logic;
SIGNAL \pulsos|acel10|s_divCounter~3_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~21\ : std_logic;
SIGNAL \pulsos|acel10|Add0~22_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~23\ : std_logic;
SIGNAL \pulsos|acel10|Add0~24_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~25\ : std_logic;
SIGNAL \pulsos|acel10|Add0~26_combout\ : std_logic;
SIGNAL \pulsos|acel10|s_divCounter~4_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~27\ : std_logic;
SIGNAL \pulsos|acel10|Add0~28_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~29\ : std_logic;
SIGNAL \pulsos|acel10|Add0~30_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~31\ : std_logic;
SIGNAL \pulsos|acel10|Add0~32_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~33\ : std_logic;
SIGNAL \pulsos|acel10|Add0~34_combout\ : std_logic;
SIGNAL \pulsos|acel10|s_divCounter~5_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~35\ : std_logic;
SIGNAL \pulsos|acel10|Add0~36_combout\ : std_logic;
SIGNAL \pulsos|acel10|s_divCounter~6_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~37\ : std_logic;
SIGNAL \pulsos|acel10|Add0~38_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~39\ : std_logic;
SIGNAL \pulsos|acel10|Add0~40_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~41\ : std_logic;
SIGNAL \pulsos|acel10|Add0~42_combout\ : std_logic;
SIGNAL \pulsos|acel10|s_divCounter~7_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~43\ : std_logic;
SIGNAL \pulsos|acel10|Add0~44_combout\ : std_logic;
SIGNAL \pulsos|acel10|Equal0~6_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~45\ : std_logic;
SIGNAL \pulsos|acel10|Add0~46_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~47\ : std_logic;
SIGNAL \pulsos|acel10|Add0~48_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~49\ : std_logic;
SIGNAL \pulsos|acel10|Add0~50_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~51\ : std_logic;
SIGNAL \pulsos|acel10|Add0~52_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~53\ : std_logic;
SIGNAL \pulsos|acel10|Add0~54_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~55\ : std_logic;
SIGNAL \pulsos|acel10|Add0~56_combout\ : std_logic;
SIGNAL \pulsos|acel10|Add0~57\ : std_logic;
SIGNAL \pulsos|acel10|Add0~58_combout\ : std_logic;
SIGNAL \pulsos|acel10|Equal0~7_combout\ : std_logic;
SIGNAL \pulsos|acel10|Equal0~8_combout\ : std_logic;
SIGNAL \pulsos|acel10|Equal0~5_combout\ : std_logic;
SIGNAL \pulsos|acel10|Equal0~3_combout\ : std_logic;
SIGNAL \pulsos|acel10|Equal0~1_combout\ : std_logic;
SIGNAL \pulsos|acel10|Equal0~2_combout\ : std_logic;
SIGNAL \pulsos|acel10|Equal0~0_combout\ : std_logic;
SIGNAL \pulsos|acel10|Equal0~4_combout\ : std_logic;
SIGNAL \pulsos|acel10|Equal0~9_combout\ : std_logic;
SIGNAL \pulsos|acel10|clkOut~feeder_combout\ : std_logic;
SIGNAL \pulsos|acel10|clkOut~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \pulsos|saida2|Add0~3\ : std_logic;
SIGNAL \pulsos|saida2|Add0~4_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~5\ : std_logic;
SIGNAL \pulsos|saida2|Add0~6_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~7\ : std_logic;
SIGNAL \pulsos|saida2|Add0~8_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~9\ : std_logic;
SIGNAL \pulsos|saida2|Add0~10_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~11\ : std_logic;
SIGNAL \pulsos|saida2|Add0~12_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~13\ : std_logic;
SIGNAL \pulsos|saida2|Add0~14_combout\ : std_logic;
SIGNAL \pulsos|saida2|s_divCounter~7_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~15\ : std_logic;
SIGNAL \pulsos|saida2|Add0~16_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~17\ : std_logic;
SIGNAL \pulsos|saida2|Add0~18_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~19\ : std_logic;
SIGNAL \pulsos|saida2|Add0~20_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~21\ : std_logic;
SIGNAL \pulsos|saida2|Add0~22_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~23\ : std_logic;
SIGNAL \pulsos|saida2|Add0~24_combout\ : std_logic;
SIGNAL \pulsos|saida2|s_divCounter~6_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~25\ : std_logic;
SIGNAL \pulsos|saida2|Add0~26_combout\ : std_logic;
SIGNAL \pulsos|saida2|s_divCounter~5_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~27\ : std_logic;
SIGNAL \pulsos|saida2|Add0~28_combout\ : std_logic;
SIGNAL \pulsos|saida2|s_divCounter~4_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~29\ : std_logic;
SIGNAL \pulsos|saida2|Add0~30_combout\ : std_logic;
SIGNAL \pulsos|saida2|s_divCounter~11_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~31\ : std_logic;
SIGNAL \pulsos|saida2|Add0~32_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~33\ : std_logic;
SIGNAL \pulsos|saida2|Add0~34_combout\ : std_logic;
SIGNAL \pulsos|saida2|s_divCounter~10_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~35\ : std_logic;
SIGNAL \pulsos|saida2|Add0~36_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~37\ : std_logic;
SIGNAL \pulsos|saida2|Add0~38_combout\ : std_logic;
SIGNAL \pulsos|saida2|s_divCounter~3_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~39\ : std_logic;
SIGNAL \pulsos|saida2|Add0~40_combout\ : std_logic;
SIGNAL \pulsos|saida2|s_divCounter~2_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~41\ : std_logic;
SIGNAL \pulsos|saida2|Add0~42_combout\ : std_logic;
SIGNAL \pulsos|saida2|s_divCounter~1_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~43\ : std_logic;
SIGNAL \pulsos|saida2|Add0~44_combout\ : std_logic;
SIGNAL \pulsos|saida2|s_divCounter~0_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~45\ : std_logic;
SIGNAL \pulsos|saida2|Add0~46_combout\ : std_logic;
SIGNAL \pulsos|saida2|s_divCounter~9_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~47\ : std_logic;
SIGNAL \pulsos|saida2|Add0~48_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~49\ : std_logic;
SIGNAL \pulsos|saida2|Add0~50_combout\ : std_logic;
SIGNAL \pulsos|saida2|s_divCounter~8_combout\ : std_logic;
SIGNAL \pulsos|saida2|Equal0~7_combout\ : std_logic;
SIGNAL \pulsos|saida2|Equal0~8_combout\ : std_logic;
SIGNAL \pulsos|saida2|Equal0~2_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~51\ : std_logic;
SIGNAL \pulsos|saida2|Add0~52_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~53\ : std_logic;
SIGNAL \pulsos|saida2|Add0~54_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~55\ : std_logic;
SIGNAL \pulsos|saida2|Add0~56_combout\ : std_logic;
SIGNAL \pulsos|saida2|Equal0~1_combout\ : std_logic;
SIGNAL \pulsos|saida2|Equal0~3_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~57\ : std_logic;
SIGNAL \pulsos|saida2|Add0~58_combout\ : std_logic;
SIGNAL \pulsos|saida2|Add0~59\ : std_logic;
SIGNAL \pulsos|saida2|Add0~60_combout\ : std_logic;
SIGNAL \pulsos|saida2|Equal0~0_combout\ : std_logic;
SIGNAL \pulsos|saida2|Equal0~4_combout\ : std_logic;
SIGNAL \pulsos|saida2|Equal0~5_combout\ : std_logic;
SIGNAL \pulsos|saida2|Equal0~6_combout\ : std_logic;
SIGNAL \pulsos|saida2|Equal0~9_combout\ : std_logic;
SIGNAL \pulsos|acel01|clkOut~feeder_combout\ : std_logic;
SIGNAL \pulsos|acel01|clkOut~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~0_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~0_combout\ : std_logic;
SIGNAL \pulsos|Normal1|s_divCounter~0_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~1\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~2_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~3\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~4_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~5\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~6_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~7\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~8_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~9\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~10_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~11\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~12_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~13\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~14_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~15\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~16_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~17\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~18_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~19\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~20_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~21\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~22_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~23\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~24_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~25\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~26_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~27\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~28_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~29\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~30_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~31\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~32_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~33\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~34_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~35\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~36_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~37\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~38_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~39\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~40_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~41\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~42_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~43\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~44_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~45\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~46_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Equal0~6_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~47\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~48_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~49\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~50_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~51\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~52_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~53\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~54_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~55\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~56_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~57\ : std_logic;
SIGNAL \pulsos|Normal1|Add0~58_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Equal0~7_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Equal0~8_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Equal0~5_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Equal0~2_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Equal0~0_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Equal0~1_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Equal0~3_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Equal0~4_combout\ : std_logic;
SIGNAL \pulsos|Normal1|Equal0~9_combout\ : std_logic;
SIGNAL \pulsos|Normal1|clkOut~0_combout\ : std_logic;
SIGNAL \pulsos|Normal1|clkOut~q\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~1\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~2_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~3\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~4_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~5\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~6_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~7\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~8_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~9\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~10_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~11\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~12_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~13\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~14_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~15\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~16_combout\ : std_logic;
SIGNAL \pulsos|Normal2|s_divCounter~1_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~17\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~18_combout\ : std_logic;
SIGNAL \pulsos|Normal2|s_divCounter~0_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~19\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~20_combout\ : std_logic;
SIGNAL \pulsos|Normal2|s_divCounter~2_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~21\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~22_combout\ : std_logic;
SIGNAL \pulsos|Normal2|s_divCounter~3_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~23\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~24_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~25\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~26_combout\ : std_logic;
SIGNAL \pulsos|Normal2|s_divCounter~4_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~27\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~28_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~29\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~30_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~31\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~32_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~33\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~34_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~35\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~36_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~37\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~38_combout\ : std_logic;
SIGNAL \pulsos|Normal2|s_divCounter~5_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~39\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~40_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~41\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~42_combout\ : std_logic;
SIGNAL \pulsos|Normal2|s_divCounter~6_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~43\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~44_combout\ : std_logic;
SIGNAL \pulsos|Normal2|s_divCounter~7_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~45\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~46_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~47\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~48_combout\ : std_logic;
SIGNAL \pulsos|Normal2|s_divCounter~8_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~49\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~50_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~51\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~52_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~53\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~54_combout\ : std_logic;
SIGNAL \pulsos|Normal2|s_divCounter~9_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~55\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~56_combout\ : std_logic;
SIGNAL \pulsos|Normal2|s_divCounter~10_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~57\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~58_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~59\ : std_logic;
SIGNAL \pulsos|Normal2|Add0~60_combout\ : std_logic;
SIGNAL \pulsos|Normal2|s_divCounter~11_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Equal0~7_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Equal0~8_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Equal0~0_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Equal0~1_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Equal0~3_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Equal0~2_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Equal0~4_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Equal0~5_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Equal0~6_combout\ : std_logic;
SIGNAL \pulsos|Normal2|Equal0~9_combout\ : std_logic;
SIGNAL \pulsos|Normal2|clkOut~q\ : std_logic;
SIGNAL \pulsos|comb~0_combout\ : std_logic;
SIGNAL \pulsos|saida1|yout~0_combout\ : std_logic;
SIGNAL \pulsos|saida1|yout~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \dTeclaD|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \dTeclaD|s_dirtyIn~q\ : std_logic;
SIGNAL \dTeclaD|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \dTeclaD|s_previousIn~q\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt[14]~4_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~0_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~1\ : std_logic;
SIGNAL \dTeclaD|Add0~2_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~3\ : std_logic;
SIGNAL \dTeclaD|Add0~4_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~5\ : std_logic;
SIGNAL \dTeclaD|Add0~7\ : std_logic;
SIGNAL \dTeclaD|Add0~8_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~9\ : std_logic;
SIGNAL \dTeclaD|Add0~10_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~11\ : std_logic;
SIGNAL \dTeclaD|Add0~12_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt[14]~2_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~13\ : std_logic;
SIGNAL \dTeclaD|Add0~14_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~15\ : std_logic;
SIGNAL \dTeclaD|Add0~16_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~17\ : std_logic;
SIGNAL \dTeclaD|Add0~18_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~19\ : std_logic;
SIGNAL \dTeclaD|Add0~20_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~21\ : std_logic;
SIGNAL \dTeclaD|Add0~22_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~23\ : std_logic;
SIGNAL \dTeclaD|Add0~24_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~25\ : std_logic;
SIGNAL \dTeclaD|Add0~26_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~27\ : std_logic;
SIGNAL \dTeclaD|Add0~28_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~29\ : std_logic;
SIGNAL \dTeclaD|Add0~30_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~31\ : std_logic;
SIGNAL \dTeclaD|Add0~32_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~33\ : std_logic;
SIGNAL \dTeclaD|Add0~34_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~35\ : std_logic;
SIGNAL \dTeclaD|Add0~36_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~37\ : std_logic;
SIGNAL \dTeclaD|Add0~38_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~39\ : std_logic;
SIGNAL \dTeclaD|Add0~40_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~41\ : std_logic;
SIGNAL \dTeclaD|Add0~42_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \dTeclaD|LessThan0~5_combout\ : std_logic;
SIGNAL \dTeclaD|LessThan0~2_combout\ : std_logic;
SIGNAL \dTeclaD|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \dTeclaD|LessThan0~0_combout\ : std_logic;
SIGNAL \dTeclaD|LessThan0~1_combout\ : std_logic;
SIGNAL \dTeclaD|LessThan0~3_combout\ : std_logic;
SIGNAL \dTeclaD|LessThan0~4_combout\ : std_logic;
SIGNAL \dTeclaD|LessThan0~6_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt[14]~5_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~6_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \dTeclaD|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \dTeclaD|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \dTeclaD|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \dTeclaD|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \dTeclaD|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \dTeclaD|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt[14]~29_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \dTeclaD|Add0~43\ : std_logic;
SIGNAL \dTeclaD|Add0~44_combout\ : std_logic;
SIGNAL \dTeclaD|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \dTeclaD|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \dTeclaD|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \dTeclaD|s_pulsedOut~q\ : std_logic;
SIGNAL \relogio|relBas|muxMin|yout~0_combout\ : std_logic;
SIGNAL \relogio|relBas|muxMin|yout~1_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add0~1\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add0~2_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add1~1\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add1~2_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|s_cont~5_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add0~7\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add0~8_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add1~3\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add1~5\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add1~7\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add1~8_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|s_cont~3_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add0~9\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add0~10_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add1~9\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add1~10_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|s_cont~2_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|contFim~0_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|LessThan0~0_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add0~3\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add0~4_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add1~4_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|s_cont~1_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add0~5\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add0~6_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|Add1~6_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|s_cont~4_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~1\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~3\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~5\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~7\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~9\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~11\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~13\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~15\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~1\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~3\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~5\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~7\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~9\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~11\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~13\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~15\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~17\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~19\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~1\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~3\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~5\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[0]~10_combout\ : std_logic;
SIGNAL \pulsos|saida2|clkOut~1_combout\ : std_logic;
SIGNAL \pulsos|saida2|clkOut~0_combout\ : std_logic;
SIGNAL \pulsos|saida2|clkOut~2_combout\ : std_logic;
SIGNAL \pulsos|saida2|clkOut~3_combout\ : std_logic;
SIGNAL \pulsos|saida2|clkOut~q\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[0]~23_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0~11_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0~24_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|Equal7~0_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[2]~25_combout\ : std_logic;
SIGNAL \relogio|convRel|pulsos|yout~0_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[5]~13_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[5]~27_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[3]~26_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[5]~12_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[3]~14_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[4]~16_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|Equal0~2_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[6]~17_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[6]~15_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[4]~18_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[5]~19_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[5]~20_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[6]~21_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort0[6]~22_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort1[0]~0_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort1~1_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort1[2]~2_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort1[3]~3_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort1[4]~4_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort1[6]~5_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort1[4]~6_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort1[4]~7_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort1[5]~8_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort1[6]~9_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort1[6]~10_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add0~1\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add0~3\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add0~4_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add1~3\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add1~4_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|s_cont~4_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|contFim~1_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|contFim~2_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|contFim~3_combout\ : std_logic;
SIGNAL \relogio|relBas|Minutos|contFim~q\ : std_logic;
SIGNAL \relogio|relBas|muxHrs|yout~0_combout\ : std_logic;
SIGNAL \relogio|relBas|muxHrs|yout~1_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add1~5\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add1~6_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add0~5\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add0~6_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|s_cont~6_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add0~7\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add0~8_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add1~7\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add1~8_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|s_cont~5_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|s_cont~2_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|s_cont~8_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add0~0_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add1~0_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|s_cont~3_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add1~1\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add1~2_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|Add0~2_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|s_cont~7_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~1\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~3\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~5\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~7\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~9\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~11\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~13\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~15\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~1\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~3\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~5\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[0]~6_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[0]~21_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2~7_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2~22_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|Equal25~0_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[2]~23_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[5]~11_combout\ : std_logic;
SIGNAL \relogio|convRel|pulsos|yout[1]~1_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[3]~8_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[3]~9_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[3]~10_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[3]~12_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|Equal18~2_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[6]~15_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[6]~13_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[4]~14_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[4]~16_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[5]~17_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[5]~18_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[6]~19_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort2[6]~20_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ : std_logic;
SIGNAL \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort3[0]~11_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort3[2]~12_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort3[6]~8_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort3[4]~9_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort3[4]~10_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|outPort3[3]~13_combout\ : std_logic;
SIGNAL \relogio|relBas|Horas|s_cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \relogio|relBas|Minutos|s_cont\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dTeclaU|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \pulsos|saida2|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \dTeclaD|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \pulsos|acel10|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \pulsos|acel11|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \pulsos|Normal1|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \pulsos|Normal2|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \dTeclaS|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \relogio|convRel|convHx|ALT_INV_outPort3[3]~13_combout\ : std_logic;
SIGNAL \relogio|convRel|convHx|ALT_INV_outPort3[6]~8_combout\ : std_logic;
SIGNAL \relogio|convRel|pulsos|ALT_INV_yout[1]~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\relogio|convRel|convHx|ALT_INV_outPort3[3]~13_combout\ <= NOT \relogio|convRel|convHx|outPort3[3]~13_combout\;
\relogio|convRel|convHx|ALT_INV_outPort3[6]~8_combout\ <= NOT \relogio|convRel|convHx|outPort3[6]~8_combout\;
\relogio|convRel|pulsos|ALT_INV_yout[1]~1_combout\ <= NOT \relogio|convRel|pulsos|yout[1]~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort0[0]~23_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort0~24_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort0[2]~25_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort0[3]~14_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort0[4]~18_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort0[5]~20_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort0[6]~22_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort1[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort1~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort1[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort1[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort1[4]~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort1[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort1[6]~10_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort2[0]~21_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort2~22_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort2[2]~23_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort2[3]~12_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort2[4]~16_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort2[5]~18_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort2[6]~20_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort3[0]~11_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|pulsos|ALT_INV_yout[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort3[2]~12_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort3[0]~11_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|outPort3[4]~10_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|ALT_INV_outPort3[3]~13_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|convRel|convHx|ALT_INV_outPort3[6]~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X97_Y36_N10
\relogio|FSMrel|pS.HORAS~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|FSMrel|pS.HORAS~feeder_combout\ = \relogio|FSMrel|pS.MINUTOS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \relogio|FSMrel|pS.MINUTOS~q\,
	combout => \relogio|FSMrel|pS.HORAS~feeder_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X89_Y35_N30
\dTeclaS|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_dirtyIn~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \dTeclaS|s_dirtyIn~0_combout\);

-- Location: FF_X89_Y35_N31
\dTeclaS|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_dirtyIn~q\);

-- Location: FF_X89_Y35_N9
\dTeclaS|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dTeclaS|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_previousIn~q\);

-- Location: LCCOMB_X88_Y37_N10
\dTeclaS|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~0_combout\ = \dTeclaS|s_debounceCnt\(0) $ (VCC)
-- \dTeclaS|Add0~1\ = CARRY(\dTeclaS|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(0),
	datad => VCC,
	combout => \dTeclaS|Add0~0_combout\,
	cout => \dTeclaS|Add0~1\);

-- Location: LCCOMB_X88_Y37_N12
\dTeclaS|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~2_combout\ = (\dTeclaS|s_debounceCnt\(1) & (\dTeclaS|Add0~1\ & VCC)) # (!\dTeclaS|s_debounceCnt\(1) & (!\dTeclaS|Add0~1\))
-- \dTeclaS|Add0~3\ = CARRY((!\dTeclaS|s_debounceCnt\(1) & !\dTeclaS|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(1),
	datad => VCC,
	cin => \dTeclaS|Add0~1\,
	combout => \dTeclaS|Add0~2_combout\,
	cout => \dTeclaS|Add0~3\);

-- Location: LCCOMB_X88_Y35_N2
\dTeclaS|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~21_combout\ = (\dTeclaS|Add0~2_combout\ & \dTeclaS|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|Add0~2_combout\,
	datac => \dTeclaS|s_debounceCnt[17]~5_combout\,
	combout => \dTeclaS|s_debounceCnt~21_combout\);

-- Location: LCCOMB_X88_Y35_N0
\dTeclaS|s_debounceCnt[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt[17]~4_combout\ = (((\dTeclaS|s_debounceCnt\(22)) # (\dTeclaS|s_debounceCnt[17]~29_combout\)) # (!\dTeclaS|s_previousIn~q\)) # (!\dTeclaS|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_dirtyIn~q\,
	datab => \dTeclaS|s_previousIn~q\,
	datac => \dTeclaS|s_debounceCnt\(22),
	datad => \dTeclaS|s_debounceCnt[17]~29_combout\,
	combout => \dTeclaS|s_debounceCnt[17]~4_combout\);

-- Location: FF_X88_Y35_N3
\dTeclaS|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~21_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(1));

-- Location: LCCOMB_X88_Y37_N14
\dTeclaS|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~4_combout\ = (\dTeclaS|s_debounceCnt\(2) & ((GND) # (!\dTeclaS|Add0~3\))) # (!\dTeclaS|s_debounceCnt\(2) & (\dTeclaS|Add0~3\ $ (GND)))
-- \dTeclaS|Add0~5\ = CARRY((\dTeclaS|s_debounceCnt\(2)) # (!\dTeclaS|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(2),
	datad => VCC,
	cin => \dTeclaS|Add0~3\,
	combout => \dTeclaS|Add0~4_combout\,
	cout => \dTeclaS|Add0~5\);

-- Location: LCCOMB_X88_Y35_N12
\dTeclaS|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~22_combout\ = (\dTeclaS|Add0~4_combout\ & \dTeclaS|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|Add0~4_combout\,
	datac => \dTeclaS|s_debounceCnt[17]~5_combout\,
	combout => \dTeclaS|s_debounceCnt~22_combout\);

-- Location: FF_X88_Y35_N13
\dTeclaS|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~22_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(2));

-- Location: LCCOMB_X88_Y37_N16
\dTeclaS|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~6_combout\ = (\dTeclaS|s_debounceCnt\(3) & (\dTeclaS|Add0~5\ & VCC)) # (!\dTeclaS|s_debounceCnt\(3) & (!\dTeclaS|Add0~5\))
-- \dTeclaS|Add0~7\ = CARRY((!\dTeclaS|s_debounceCnt\(3) & !\dTeclaS|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(3),
	datad => VCC,
	cin => \dTeclaS|Add0~5\,
	combout => \dTeclaS|Add0~6_combout\,
	cout => \dTeclaS|Add0~7\);

-- Location: LCCOMB_X88_Y35_N30
\dTeclaS|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~23_combout\ = (\dTeclaS|s_debounceCnt[17]~5_combout\ & \dTeclaS|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaS|s_debounceCnt[17]~5_combout\,
	datad => \dTeclaS|Add0~6_combout\,
	combout => \dTeclaS|s_debounceCnt~23_combout\);

-- Location: FF_X88_Y35_N31
\dTeclaS|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~23_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(3));

-- Location: LCCOMB_X88_Y37_N18
\dTeclaS|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~8_combout\ = (\dTeclaS|s_debounceCnt\(4) & ((GND) # (!\dTeclaS|Add0~7\))) # (!\dTeclaS|s_debounceCnt\(4) & (\dTeclaS|Add0~7\ $ (GND)))
-- \dTeclaS|Add0~9\ = CARRY((\dTeclaS|s_debounceCnt\(4)) # (!\dTeclaS|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(4),
	datad => VCC,
	cin => \dTeclaS|Add0~7\,
	combout => \dTeclaS|Add0~8_combout\,
	cout => \dTeclaS|Add0~9\);

-- Location: LCCOMB_X88_Y35_N8
\dTeclaS|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~24_combout\ = (\dTeclaS|Add0~8_combout\ & \dTeclaS|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|Add0~8_combout\,
	datac => \dTeclaS|s_debounceCnt[17]~5_combout\,
	combout => \dTeclaS|s_debounceCnt~24_combout\);

-- Location: FF_X88_Y35_N9
\dTeclaS|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~24_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(4));

-- Location: LCCOMB_X88_Y37_N20
\dTeclaS|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~10_combout\ = (\dTeclaS|s_debounceCnt\(5) & (\dTeclaS|Add0~9\ & VCC)) # (!\dTeclaS|s_debounceCnt\(5) & (!\dTeclaS|Add0~9\))
-- \dTeclaS|Add0~11\ = CARRY((!\dTeclaS|s_debounceCnt\(5) & !\dTeclaS|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(5),
	datad => VCC,
	cin => \dTeclaS|Add0~9\,
	combout => \dTeclaS|Add0~10_combout\,
	cout => \dTeclaS|Add0~11\);

-- Location: LCCOMB_X88_Y35_N4
\dTeclaS|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~25_combout\ = (\dTeclaS|s_debounceCnt[17]~5_combout\ & \dTeclaS|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaS|s_debounceCnt[17]~5_combout\,
	datad => \dTeclaS|Add0~10_combout\,
	combout => \dTeclaS|s_debounceCnt~25_combout\);

-- Location: FF_X88_Y35_N5
\dTeclaS|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~25_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(5));

-- Location: LCCOMB_X88_Y35_N18
\dTeclaS|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_pulsedOut~7_combout\ = (!\dTeclaS|s_debounceCnt\(2) & (!\dTeclaS|s_debounceCnt\(4) & (!\dTeclaS|s_debounceCnt\(3) & !\dTeclaS|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(2),
	datab => \dTeclaS|s_debounceCnt\(4),
	datac => \dTeclaS|s_debounceCnt\(3),
	datad => \dTeclaS|s_debounceCnt\(1),
	combout => \dTeclaS|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X88_Y37_N22
\dTeclaS|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~12_combout\ = (\dTeclaS|s_debounceCnt\(6) & ((GND) # (!\dTeclaS|Add0~11\))) # (!\dTeclaS|s_debounceCnt\(6) & (\dTeclaS|Add0~11\ $ (GND)))
-- \dTeclaS|Add0~13\ = CARRY((\dTeclaS|s_debounceCnt\(6)) # (!\dTeclaS|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(6),
	datad => VCC,
	cin => \dTeclaS|Add0~11\,
	combout => \dTeclaS|Add0~12_combout\,
	cout => \dTeclaS|Add0~13\);

-- Location: LCCOMB_X88_Y36_N14
\dTeclaS|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~36_combout\ = (\dTeclaS|s_debounceCnt\(18) & ((GND) # (!\dTeclaS|Add0~35\))) # (!\dTeclaS|s_debounceCnt\(18) & (\dTeclaS|Add0~35\ $ (GND)))
-- \dTeclaS|Add0~37\ = CARRY((\dTeclaS|s_debounceCnt\(18)) # (!\dTeclaS|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(18),
	datad => VCC,
	cin => \dTeclaS|Add0~35\,
	combout => \dTeclaS|Add0~36_combout\,
	cout => \dTeclaS|Add0~37\);

-- Location: LCCOMB_X88_Y36_N16
\dTeclaS|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~38_combout\ = (\dTeclaS|s_debounceCnt\(19) & (\dTeclaS|Add0~37\ & VCC)) # (!\dTeclaS|s_debounceCnt\(19) & (!\dTeclaS|Add0~37\))
-- \dTeclaS|Add0~39\ = CARRY((!\dTeclaS|s_debounceCnt\(19) & !\dTeclaS|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(19),
	datad => VCC,
	cin => \dTeclaS|Add0~37\,
	combout => \dTeclaS|Add0~38_combout\,
	cout => \dTeclaS|Add0~39\);

-- Location: LCCOMB_X88_Y37_N2
\dTeclaS|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt[19]~20_combout\ = (\dTeclaS|s_debounceCnt[17]~4_combout\ & (\dTeclaS|s_debounceCnt[17]~2_combout\ & ((\dTeclaS|Add0~38_combout\) # (!\dTeclaS|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_previousIn~q\,
	datab => \dTeclaS|s_debounceCnt[17]~4_combout\,
	datac => \dTeclaS|Add0~38_combout\,
	datad => \dTeclaS|s_debounceCnt[17]~2_combout\,
	combout => \dTeclaS|s_debounceCnt[19]~20_combout\);

-- Location: FF_X88_Y37_N3
\dTeclaS|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(19));

-- Location: LCCOMB_X88_Y36_N18
\dTeclaS|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~40_combout\ = (\dTeclaS|s_debounceCnt\(20) & ((GND) # (!\dTeclaS|Add0~39\))) # (!\dTeclaS|s_debounceCnt\(20) & (\dTeclaS|Add0~39\ $ (GND)))
-- \dTeclaS|Add0~41\ = CARRY((\dTeclaS|s_debounceCnt\(20)) # (!\dTeclaS|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(20),
	datad => VCC,
	cin => \dTeclaS|Add0~39\,
	combout => \dTeclaS|Add0~40_combout\,
	cout => \dTeclaS|Add0~41\);

-- Location: LCCOMB_X89_Y37_N30
\dTeclaS|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt[20]~9_combout\ = (\dTeclaS|s_debounceCnt[17]~4_combout\ & (\dTeclaS|Add0~40_combout\ & \dTeclaS|s_debounceCnt[17]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt[17]~4_combout\,
	datac => \dTeclaS|Add0~40_combout\,
	datad => \dTeclaS|s_debounceCnt[17]~5_combout\,
	combout => \dTeclaS|s_debounceCnt[20]~9_combout\);

-- Location: FF_X89_Y37_N31
\dTeclaS|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(20));

-- Location: LCCOMB_X88_Y36_N20
\dTeclaS|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~42_combout\ = (\dTeclaS|s_debounceCnt\(21) & (\dTeclaS|Add0~41\ & VCC)) # (!\dTeclaS|s_debounceCnt\(21) & (!\dTeclaS|Add0~41\))
-- \dTeclaS|Add0~43\ = CARRY((!\dTeclaS|s_debounceCnt\(21) & !\dTeclaS|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(21),
	datad => VCC,
	cin => \dTeclaS|Add0~41\,
	combout => \dTeclaS|Add0~42_combout\,
	cout => \dTeclaS|Add0~43\);

-- Location: LCCOMB_X88_Y36_N30
\dTeclaS|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt[21]~10_combout\ = (\dTeclaS|Add0~42_combout\ & (\dTeclaS|s_debounceCnt[17]~4_combout\ & \dTeclaS|s_debounceCnt[17]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|Add0~42_combout\,
	datac => \dTeclaS|s_debounceCnt[17]~4_combout\,
	datad => \dTeclaS|s_debounceCnt[17]~5_combout\,
	combout => \dTeclaS|s_debounceCnt[21]~10_combout\);

-- Location: FF_X88_Y36_N31
\dTeclaS|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(21));

-- Location: LCCOMB_X88_Y37_N0
\dTeclaS|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|LessThan0~3_combout\ = (\dTeclaS|s_debounceCnt\(15)) # ((\dTeclaS|s_debounceCnt\(17)) # (\dTeclaS|s_debounceCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(15),
	datac => \dTeclaS|s_debounceCnt\(17),
	datad => \dTeclaS|s_debounceCnt\(16),
	combout => \dTeclaS|LessThan0~3_combout\);

-- Location: LCCOMB_X88_Y35_N22
\dTeclaS|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_pulsedOut~8_combout\ = (!\dTeclaS|s_debounceCnt\(5) & \dTeclaS|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaS|s_debounceCnt\(5),
	datad => \dTeclaS|s_pulsedOut~7_combout\,
	combout => \dTeclaS|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X89_Y37_N16
\dTeclaS|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|LessThan0~0_combout\ = (\dTeclaS|s_debounceCnt\(7)) # ((\dTeclaS|s_debounceCnt\(6) & ((\dTeclaS|s_debounceCnt\(0)) # (!\dTeclaS|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(6),
	datab => \dTeclaS|s_debounceCnt\(0),
	datac => \dTeclaS|s_debounceCnt\(7),
	datad => \dTeclaS|s_pulsedOut~8_combout\,
	combout => \dTeclaS|LessThan0~0_combout\);

-- Location: LCCOMB_X89_Y37_N18
\dTeclaS|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|LessThan0~1_combout\ = (\dTeclaS|s_debounceCnt\(10)) # ((\dTeclaS|s_debounceCnt\(9) & (\dTeclaS|s_debounceCnt\(8) & \dTeclaS|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(10),
	datab => \dTeclaS|s_debounceCnt\(9),
	datac => \dTeclaS|s_debounceCnt\(8),
	datad => \dTeclaS|LessThan0~0_combout\,
	combout => \dTeclaS|LessThan0~1_combout\);

-- Location: LCCOMB_X89_Y37_N20
\dTeclaS|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|LessThan0~2_combout\ = (\dTeclaS|s_debounceCnt\(12)) # ((\dTeclaS|s_debounceCnt\(13)) # ((\dTeclaS|s_debounceCnt\(11) & \dTeclaS|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(12),
	datab => \dTeclaS|s_debounceCnt\(11),
	datac => \dTeclaS|s_debounceCnt\(13),
	datad => \dTeclaS|LessThan0~1_combout\,
	combout => \dTeclaS|LessThan0~2_combout\);

-- Location: LCCOMB_X89_Y37_N2
\dTeclaS|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|LessThan0~4_combout\ = (\dTeclaS|s_debounceCnt\(18) & ((\dTeclaS|LessThan0~3_combout\) # ((\dTeclaS|s_debounceCnt\(14) & \dTeclaS|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|LessThan0~3_combout\,
	datab => \dTeclaS|s_debounceCnt\(14),
	datac => \dTeclaS|s_debounceCnt\(18),
	datad => \dTeclaS|LessThan0~2_combout\,
	combout => \dTeclaS|LessThan0~4_combout\);

-- Location: LCCOMB_X89_Y37_N0
\dTeclaS|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|LessThan0~5_combout\ = (\dTeclaS|s_debounceCnt\(21)) # ((\dTeclaS|s_debounceCnt\(20)) # ((\dTeclaS|s_debounceCnt\(19) & \dTeclaS|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(21),
	datab => \dTeclaS|s_debounceCnt\(19),
	datac => \dTeclaS|s_debounceCnt\(20),
	datad => \dTeclaS|LessThan0~4_combout\,
	combout => \dTeclaS|LessThan0~5_combout\);

-- Location: LCCOMB_X89_Y37_N6
\dTeclaS|s_debounceCnt[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt[17]~2_combout\ = (\dTeclaS|s_dirtyIn~q\ & ((!\dTeclaS|LessThan0~5_combout\) # (!\dTeclaS|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_dirtyIn~q\,
	datac => \dTeclaS|s_debounceCnt\(22),
	datad => \dTeclaS|LessThan0~5_combout\,
	combout => \dTeclaS|s_debounceCnt[17]~2_combout\);

-- Location: LCCOMB_X89_Y37_N12
\dTeclaS|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~3_combout\ = (\dTeclaS|s_debounceCnt[17]~2_combout\ & ((\dTeclaS|Add0~12_combout\) # (!\dTeclaS|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|Add0~12_combout\,
	datac => \dTeclaS|s_previousIn~q\,
	datad => \dTeclaS|s_debounceCnt[17]~2_combout\,
	combout => \dTeclaS|s_debounceCnt~3_combout\);

-- Location: FF_X89_Y37_N13
\dTeclaS|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~3_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(6));

-- Location: LCCOMB_X88_Y37_N24
\dTeclaS|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~14_combout\ = (\dTeclaS|s_debounceCnt\(7) & (\dTeclaS|Add0~13\ & VCC)) # (!\dTeclaS|s_debounceCnt\(7) & (!\dTeclaS|Add0~13\))
-- \dTeclaS|Add0~15\ = CARRY((!\dTeclaS|s_debounceCnt\(7) & !\dTeclaS|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(7),
	datad => VCC,
	cin => \dTeclaS|Add0~13\,
	combout => \dTeclaS|Add0~14_combout\,
	cout => \dTeclaS|Add0~15\);

-- Location: LCCOMB_X89_Y37_N4
\dTeclaS|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~13_combout\ = (\dTeclaS|Add0~14_combout\ & \dTeclaS|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaS|Add0~14_combout\,
	datad => \dTeclaS|s_debounceCnt[17]~5_combout\,
	combout => \dTeclaS|s_debounceCnt~13_combout\);

-- Location: FF_X89_Y37_N5
\dTeclaS|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~13_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(7));

-- Location: LCCOMB_X88_Y37_N26
\dTeclaS|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~16_combout\ = (\dTeclaS|s_debounceCnt\(8) & ((GND) # (!\dTeclaS|Add0~15\))) # (!\dTeclaS|s_debounceCnt\(8) & (\dTeclaS|Add0~15\ $ (GND)))
-- \dTeclaS|Add0~17\ = CARRY((\dTeclaS|s_debounceCnt\(8)) # (!\dTeclaS|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(8),
	datad => VCC,
	cin => \dTeclaS|Add0~15\,
	combout => \dTeclaS|Add0~16_combout\,
	cout => \dTeclaS|Add0~17\);

-- Location: LCCOMB_X88_Y37_N4
\dTeclaS|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~14_combout\ = (\dTeclaS|s_debounceCnt[17]~2_combout\ & ((\dTeclaS|Add0~16_combout\) # (!\dTeclaS|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_previousIn~q\,
	datac => \dTeclaS|Add0~16_combout\,
	datad => \dTeclaS|s_debounceCnt[17]~2_combout\,
	combout => \dTeclaS|s_debounceCnt~14_combout\);

-- Location: FF_X88_Y37_N5
\dTeclaS|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~14_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(8));

-- Location: LCCOMB_X88_Y37_N28
\dTeclaS|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~18_combout\ = (\dTeclaS|s_debounceCnt\(9) & (\dTeclaS|Add0~17\ & VCC)) # (!\dTeclaS|s_debounceCnt\(9) & (!\dTeclaS|Add0~17\))
-- \dTeclaS|Add0~19\ = CARRY((!\dTeclaS|s_debounceCnt\(9) & !\dTeclaS|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(9),
	datad => VCC,
	cin => \dTeclaS|Add0~17\,
	combout => \dTeclaS|Add0~18_combout\,
	cout => \dTeclaS|Add0~19\);

-- Location: LCCOMB_X88_Y37_N6
\dTeclaS|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~15_combout\ = (\dTeclaS|s_debounceCnt[17]~2_combout\ & ((\dTeclaS|Add0~18_combout\) # (!\dTeclaS|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|Add0~18_combout\,
	datac => \dTeclaS|s_previousIn~q\,
	datad => \dTeclaS|s_debounceCnt[17]~2_combout\,
	combout => \dTeclaS|s_debounceCnt~15_combout\);

-- Location: FF_X88_Y37_N7
\dTeclaS|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~15_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(9));

-- Location: LCCOMB_X88_Y37_N30
\dTeclaS|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~20_combout\ = (\dTeclaS|s_debounceCnt\(10) & ((GND) # (!\dTeclaS|Add0~19\))) # (!\dTeclaS|s_debounceCnt\(10) & (\dTeclaS|Add0~19\ $ (GND)))
-- \dTeclaS|Add0~21\ = CARRY((\dTeclaS|s_debounceCnt\(10)) # (!\dTeclaS|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(10),
	datad => VCC,
	cin => \dTeclaS|Add0~19\,
	combout => \dTeclaS|Add0~20_combout\,
	cout => \dTeclaS|Add0~21\);

-- Location: LCCOMB_X89_Y37_N10
\dTeclaS|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~16_combout\ = (\dTeclaS|Add0~20_combout\ & \dTeclaS|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|Add0~20_combout\,
	datad => \dTeclaS|s_debounceCnt[17]~5_combout\,
	combout => \dTeclaS|s_debounceCnt~16_combout\);

-- Location: FF_X89_Y37_N11
\dTeclaS|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~16_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(10));

-- Location: LCCOMB_X88_Y36_N0
\dTeclaS|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~22_combout\ = (\dTeclaS|s_debounceCnt\(11) & (\dTeclaS|Add0~21\ & VCC)) # (!\dTeclaS|s_debounceCnt\(11) & (!\dTeclaS|Add0~21\))
-- \dTeclaS|Add0~23\ = CARRY((!\dTeclaS|s_debounceCnt\(11) & !\dTeclaS|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(11),
	datad => VCC,
	cin => \dTeclaS|Add0~21\,
	combout => \dTeclaS|Add0~22_combout\,
	cout => \dTeclaS|Add0~23\);

-- Location: LCCOMB_X89_Y37_N24
\dTeclaS|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~17_combout\ = (\dTeclaS|s_debounceCnt[17]~2_combout\ & ((\dTeclaS|Add0~22_combout\) # (!\dTeclaS|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_previousIn~q\,
	datac => \dTeclaS|Add0~22_combout\,
	datad => \dTeclaS|s_debounceCnt[17]~2_combout\,
	combout => \dTeclaS|s_debounceCnt~17_combout\);

-- Location: FF_X89_Y37_N25
\dTeclaS|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~17_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(11));

-- Location: LCCOMB_X88_Y36_N2
\dTeclaS|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~24_combout\ = (\dTeclaS|s_debounceCnt\(12) & ((GND) # (!\dTeclaS|Add0~23\))) # (!\dTeclaS|s_debounceCnt\(12) & (\dTeclaS|Add0~23\ $ (GND)))
-- \dTeclaS|Add0~25\ = CARRY((\dTeclaS|s_debounceCnt\(12)) # (!\dTeclaS|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(12),
	datad => VCC,
	cin => \dTeclaS|Add0~23\,
	combout => \dTeclaS|Add0~24_combout\,
	cout => \dTeclaS|Add0~25\);

-- Location: LCCOMB_X88_Y36_N28
\dTeclaS|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~11_combout\ = (\dTeclaS|Add0~24_combout\ & \dTeclaS|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|Add0~24_combout\,
	datad => \dTeclaS|s_debounceCnt[17]~5_combout\,
	combout => \dTeclaS|s_debounceCnt~11_combout\);

-- Location: FF_X88_Y36_N29
\dTeclaS|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~11_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(12));

-- Location: LCCOMB_X88_Y36_N4
\dTeclaS|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~26_combout\ = (\dTeclaS|s_debounceCnt\(13) & (\dTeclaS|Add0~25\ & VCC)) # (!\dTeclaS|s_debounceCnt\(13) & (!\dTeclaS|Add0~25\))
-- \dTeclaS|Add0~27\ = CARRY((!\dTeclaS|s_debounceCnt\(13) & !\dTeclaS|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(13),
	datad => VCC,
	cin => \dTeclaS|Add0~25\,
	combout => \dTeclaS|Add0~26_combout\,
	cout => \dTeclaS|Add0~27\);

-- Location: LCCOMB_X89_Y35_N2
\dTeclaS|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~12_combout\ = (\dTeclaS|Add0~26_combout\ & \dTeclaS|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaS|Add0~26_combout\,
	datad => \dTeclaS|s_debounceCnt[17]~5_combout\,
	combout => \dTeclaS|s_debounceCnt~12_combout\);

-- Location: FF_X89_Y35_N3
\dTeclaS|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~12_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(13));

-- Location: LCCOMB_X88_Y36_N6
\dTeclaS|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~28_combout\ = (\dTeclaS|s_debounceCnt\(14) & ((GND) # (!\dTeclaS|Add0~27\))) # (!\dTeclaS|s_debounceCnt\(14) & (\dTeclaS|Add0~27\ $ (GND)))
-- \dTeclaS|Add0~29\ = CARRY((\dTeclaS|s_debounceCnt\(14)) # (!\dTeclaS|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(14),
	datad => VCC,
	cin => \dTeclaS|Add0~27\,
	combout => \dTeclaS|Add0~28_combout\,
	cout => \dTeclaS|Add0~29\);

-- Location: LCCOMB_X89_Y37_N14
\dTeclaS|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~18_combout\ = (\dTeclaS|s_debounceCnt[17]~2_combout\ & ((\dTeclaS|Add0~28_combout\) # (!\dTeclaS|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_previousIn~q\,
	datac => \dTeclaS|Add0~28_combout\,
	datad => \dTeclaS|s_debounceCnt[17]~2_combout\,
	combout => \dTeclaS|s_debounceCnt~18_combout\);

-- Location: FF_X89_Y37_N15
\dTeclaS|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~18_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(14));

-- Location: LCCOMB_X88_Y36_N8
\dTeclaS|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~30_combout\ = (\dTeclaS|s_debounceCnt\(15) & (\dTeclaS|Add0~29\ & VCC)) # (!\dTeclaS|s_debounceCnt\(15) & (!\dTeclaS|Add0~29\))
-- \dTeclaS|Add0~31\ = CARRY((!\dTeclaS|s_debounceCnt\(15) & !\dTeclaS|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(15),
	datad => VCC,
	cin => \dTeclaS|Add0~29\,
	combout => \dTeclaS|Add0~30_combout\,
	cout => \dTeclaS|Add0~31\);

-- Location: LCCOMB_X88_Y35_N16
\dTeclaS|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~6_combout\ = (\dTeclaS|s_debounceCnt[17]~5_combout\ & \dTeclaS|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaS|s_debounceCnt[17]~5_combout\,
	datad => \dTeclaS|Add0~30_combout\,
	combout => \dTeclaS|s_debounceCnt~6_combout\);

-- Location: FF_X88_Y35_N17
\dTeclaS|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~6_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(15));

-- Location: LCCOMB_X88_Y36_N10
\dTeclaS|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~32_combout\ = (\dTeclaS|s_debounceCnt\(16) & ((GND) # (!\dTeclaS|Add0~31\))) # (!\dTeclaS|s_debounceCnt\(16) & (\dTeclaS|Add0~31\ $ (GND)))
-- \dTeclaS|Add0~33\ = CARRY((\dTeclaS|s_debounceCnt\(16)) # (!\dTeclaS|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(16),
	datad => VCC,
	cin => \dTeclaS|Add0~31\,
	combout => \dTeclaS|Add0~32_combout\,
	cout => \dTeclaS|Add0~33\);

-- Location: LCCOMB_X88_Y36_N24
\dTeclaS|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~7_combout\ = (\dTeclaS|Add0~32_combout\ & \dTeclaS|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|Add0~32_combout\,
	datad => \dTeclaS|s_debounceCnt[17]~5_combout\,
	combout => \dTeclaS|s_debounceCnt~7_combout\);

-- Location: FF_X88_Y36_N25
\dTeclaS|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~7_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(16));

-- Location: LCCOMB_X88_Y36_N12
\dTeclaS|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~34_combout\ = (\dTeclaS|s_debounceCnt\(17) & (\dTeclaS|Add0~33\ & VCC)) # (!\dTeclaS|s_debounceCnt\(17) & (!\dTeclaS|Add0~33\))
-- \dTeclaS|Add0~35\ = CARRY((!\dTeclaS|s_debounceCnt\(17) & !\dTeclaS|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|s_debounceCnt\(17),
	datad => VCC,
	cin => \dTeclaS|Add0~33\,
	combout => \dTeclaS|Add0~34_combout\,
	cout => \dTeclaS|Add0~35\);

-- Location: LCCOMB_X88_Y35_N26
\dTeclaS|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~8_combout\ = (\dTeclaS|Add0~34_combout\ & \dTeclaS|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaS|Add0~34_combout\,
	datac => \dTeclaS|s_debounceCnt[17]~5_combout\,
	combout => \dTeclaS|s_debounceCnt~8_combout\);

-- Location: FF_X88_Y35_N27
\dTeclaS|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~8_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(17));

-- Location: LCCOMB_X88_Y35_N24
\dTeclaS|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt[18]~19_combout\ = (\dTeclaS|s_debounceCnt[17]~4_combout\ & (\dTeclaS|s_debounceCnt[17]~2_combout\ & ((\dTeclaS|Add0~36_combout\) # (!\dTeclaS|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_previousIn~q\,
	datab => \dTeclaS|s_debounceCnt[17]~4_combout\,
	datac => \dTeclaS|Add0~36_combout\,
	datad => \dTeclaS|s_debounceCnt[17]~2_combout\,
	combout => \dTeclaS|s_debounceCnt[18]~19_combout\);

-- Location: FF_X88_Y35_N25
\dTeclaS|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(18));

-- Location: LCCOMB_X88_Y35_N6
\dTeclaS|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_pulsedOut~5_combout\ = (!\dTeclaS|s_debounceCnt\(18) & (!\dTeclaS|s_debounceCnt\(19) & (!\dTeclaS|s_debounceCnt\(11) & !\dTeclaS|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(18),
	datab => \dTeclaS|s_debounceCnt\(19),
	datac => \dTeclaS|s_debounceCnt\(11),
	datad => \dTeclaS|s_debounceCnt\(14),
	combout => \dTeclaS|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X88_Y35_N20
\dTeclaS|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_pulsedOut~2_combout\ = (!\dTeclaS|s_debounceCnt\(17) & (!\dTeclaS|s_debounceCnt\(15) & (!\dTeclaS|s_debounceCnt\(6) & !\dTeclaS|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(17),
	datab => \dTeclaS|s_debounceCnt\(15),
	datac => \dTeclaS|s_debounceCnt\(6),
	datad => \dTeclaS|s_debounceCnt\(16),
	combout => \dTeclaS|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X88_Y35_N14
\dTeclaS|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_pulsedOut~3_combout\ = (!\dTeclaS|s_debounceCnt\(12) & (!\dTeclaS|s_debounceCnt\(13) & (!\dTeclaS|s_debounceCnt\(21) & !\dTeclaS|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(12),
	datab => \dTeclaS|s_debounceCnt\(13),
	datac => \dTeclaS|s_debounceCnt\(21),
	datad => \dTeclaS|s_debounceCnt\(20),
	combout => \dTeclaS|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X88_Y37_N8
\dTeclaS|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_pulsedOut~4_combout\ = (!\dTeclaS|s_debounceCnt\(9) & (!\dTeclaS|s_debounceCnt\(8) & (!\dTeclaS|s_debounceCnt\(10) & !\dTeclaS|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(9),
	datab => \dTeclaS|s_debounceCnt\(8),
	datac => \dTeclaS|s_debounceCnt\(10),
	datad => \dTeclaS|s_debounceCnt\(7),
	combout => \dTeclaS|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X88_Y35_N28
\dTeclaS|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_pulsedOut~6_combout\ = (\dTeclaS|s_pulsedOut~5_combout\ & (\dTeclaS|s_pulsedOut~2_combout\ & (\dTeclaS|s_pulsedOut~3_combout\ & \dTeclaS|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_pulsedOut~5_combout\,
	datab => \dTeclaS|s_pulsedOut~2_combout\,
	datac => \dTeclaS|s_pulsedOut~3_combout\,
	datad => \dTeclaS|s_pulsedOut~4_combout\,
	combout => \dTeclaS|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X88_Y35_N10
\dTeclaS|s_debounceCnt[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt[17]~29_combout\ = (\dTeclaS|s_debounceCnt\(0)) # ((\dTeclaS|s_debounceCnt\(5)) # ((!\dTeclaS|s_pulsedOut~6_combout\) # (!\dTeclaS|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(0),
	datab => \dTeclaS|s_debounceCnt\(5),
	datac => \dTeclaS|s_pulsedOut~7_combout\,
	datad => \dTeclaS|s_pulsedOut~6_combout\,
	combout => \dTeclaS|s_debounceCnt[17]~29_combout\);

-- Location: LCCOMB_X89_Y37_N26
\dTeclaS|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt[22]~27_combout\ = (\dTeclaS|s_debounceCnt\(22) & (((!\dTeclaS|LessThan0~5_combout\)))) # (!\dTeclaS|s_debounceCnt\(22) & (((\dTeclaS|s_debounceCnt[17]~29_combout\)) # (!\dTeclaS|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_debounceCnt\(22),
	datab => \dTeclaS|s_previousIn~q\,
	datac => \dTeclaS|s_debounceCnt[17]~29_combout\,
	datad => \dTeclaS|LessThan0~5_combout\,
	combout => \dTeclaS|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X88_Y36_N22
\dTeclaS|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|Add0~44_combout\ = \dTeclaS|Add0~43\ $ (\dTeclaS|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dTeclaS|s_debounceCnt\(22),
	cin => \dTeclaS|Add0~43\,
	combout => \dTeclaS|Add0~44_combout\);

-- Location: LCCOMB_X89_Y37_N22
\dTeclaS|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt[22]~28_combout\ = (\dTeclaS|s_dirtyIn~q\ & (\dTeclaS|s_debounceCnt[22]~27_combout\ & ((\dTeclaS|Add0~44_combout\) # (!\dTeclaS|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_dirtyIn~q\,
	datab => \dTeclaS|s_previousIn~q\,
	datac => \dTeclaS|s_debounceCnt[22]~27_combout\,
	datad => \dTeclaS|Add0~44_combout\,
	combout => \dTeclaS|s_debounceCnt[22]~28_combout\);

-- Location: FF_X89_Y37_N23
\dTeclaS|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(22));

-- Location: LCCOMB_X89_Y37_N28
\dTeclaS|s_debounceCnt[17]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt[17]~5_combout\ = (\dTeclaS|s_dirtyIn~q\ & (\dTeclaS|s_previousIn~q\ & ((!\dTeclaS|LessThan0~5_combout\) # (!\dTeclaS|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_dirtyIn~q\,
	datab => \dTeclaS|s_previousIn~q\,
	datac => \dTeclaS|s_debounceCnt\(22),
	datad => \dTeclaS|LessThan0~5_combout\,
	combout => \dTeclaS|s_debounceCnt[17]~5_combout\);

-- Location: LCCOMB_X89_Y37_N8
\dTeclaS|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_debounceCnt~26_combout\ = (\dTeclaS|Add0~0_combout\ & \dTeclaS|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|Add0~0_combout\,
	datad => \dTeclaS|s_debounceCnt[17]~5_combout\,
	combout => \dTeclaS|s_debounceCnt~26_combout\);

-- Location: FF_X89_Y37_N9
\dTeclaS|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_debounceCnt~26_combout\,
	ena => \dTeclaS|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_debounceCnt\(0));

-- Location: LCCOMB_X89_Y35_N12
\dTeclaS|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_pulsedOut~9_combout\ = (\dTeclaS|s_previousIn~q\ & (\dTeclaS|s_debounceCnt\(0) & (\dTeclaS|s_dirtyIn~q\ & !\dTeclaS|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_previousIn~q\,
	datab => \dTeclaS|s_debounceCnt\(0),
	datac => \dTeclaS|s_dirtyIn~q\,
	datad => \dTeclaS|s_debounceCnt\(22),
	combout => \dTeclaS|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X89_Y35_N0
\dTeclaS|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaS|s_pulsedOut~10_combout\ = (\dTeclaS|s_pulsedOut~9_combout\ & (\dTeclaS|s_pulsedOut~7_combout\ & (!\dTeclaS|s_debounceCnt\(5) & \dTeclaS|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaS|s_pulsedOut~9_combout\,
	datab => \dTeclaS|s_pulsedOut~7_combout\,
	datac => \dTeclaS|s_debounceCnt\(5),
	datad => \dTeclaS|s_pulsedOut~6_combout\,
	combout => \dTeclaS|s_pulsedOut~10_combout\);

-- Location: FF_X89_Y35_N1
\dTeclaS|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaS|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaS|s_pulsedOut~q\);

-- Location: FF_X97_Y36_N11
\relogio|FSMrel|pS.HORAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|FSMrel|pS.HORAS~feeder_combout\,
	ena => \dTeclaS|s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|FSMrel|pS.HORAS~q\);

-- Location: LCCOMB_X97_Y36_N8
\relogio|FSMrel|pS.NORMAL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|FSMrel|pS.NORMAL~0_combout\ = !\relogio|FSMrel|pS.HORAS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \relogio|FSMrel|pS.HORAS~q\,
	combout => \relogio|FSMrel|pS.NORMAL~0_combout\);

-- Location: FF_X97_Y36_N9
\relogio|FSMrel|pS.NORMAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|FSMrel|pS.NORMAL~0_combout\,
	ena => \dTeclaS|s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|FSMrel|pS.NORMAL~q\);

-- Location: LCCOMB_X97_Y36_N0
\relogio|FSMrel|pS.MINUTOS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|FSMrel|pS.MINUTOS~0_combout\ = !\relogio|FSMrel|pS.NORMAL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|FSMrel|pS.NORMAL~q\,
	combout => \relogio|FSMrel|pS.MINUTOS~0_combout\);

-- Location: FF_X97_Y36_N1
\relogio|FSMrel|pS.MINUTOS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|FSMrel|pS.MINUTOS~0_combout\,
	ena => \dTeclaS|s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|FSMrel|pS.MINUTOS~q\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X114_Y41_N4
\dTeclaU|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \dTeclaU|s_dirtyIn~0_combout\);

-- Location: FF_X114_Y41_N5
\dTeclaU|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_dirtyIn~q\);

-- Location: FF_X109_Y41_N1
\dTeclaU|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dTeclaU|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_previousIn~q\);

-- Location: LCCOMB_X110_Y42_N10
\dTeclaU|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~0_combout\ = \dTeclaU|s_debounceCnt\(0) $ (VCC)
-- \dTeclaU|Add0~1\ = CARRY(\dTeclaU|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(0),
	datad => VCC,
	combout => \dTeclaU|Add0~0_combout\,
	cout => \dTeclaU|Add0~1\);

-- Location: LCCOMB_X110_Y41_N0
\dTeclaU|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~22_combout\ = (\dTeclaU|s_debounceCnt\(11) & (\dTeclaU|Add0~21\ & VCC)) # (!\dTeclaU|s_debounceCnt\(11) & (!\dTeclaU|Add0~21\))
-- \dTeclaU|Add0~23\ = CARRY((!\dTeclaU|s_debounceCnt\(11) & !\dTeclaU|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(11),
	datad => VCC,
	cin => \dTeclaU|Add0~21\,
	combout => \dTeclaU|Add0~22_combout\,
	cout => \dTeclaU|Add0~23\);

-- Location: LCCOMB_X110_Y41_N2
\dTeclaU|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~24_combout\ = (\dTeclaU|s_debounceCnt\(12) & ((GND) # (!\dTeclaU|Add0~23\))) # (!\dTeclaU|s_debounceCnt\(12) & (\dTeclaU|Add0~23\ $ (GND)))
-- \dTeclaU|Add0~25\ = CARRY((\dTeclaU|s_debounceCnt\(12)) # (!\dTeclaU|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(12),
	datad => VCC,
	cin => \dTeclaU|Add0~23\,
	combout => \dTeclaU|Add0~24_combout\,
	cout => \dTeclaU|Add0~25\);

-- Location: LCCOMB_X111_Y41_N8
\dTeclaU|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~11_combout\ = (\dTeclaU|Add0~24_combout\ & \dTeclaU|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|Add0~24_combout\,
	datad => \dTeclaU|s_debounceCnt[21]~5_combout\,
	combout => \dTeclaU|s_debounceCnt~11_combout\);

-- Location: FF_X111_Y41_N9
\dTeclaU|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~11_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(12));

-- Location: LCCOMB_X110_Y41_N4
\dTeclaU|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~26_combout\ = (\dTeclaU|s_debounceCnt\(13) & (\dTeclaU|Add0~25\ & VCC)) # (!\dTeclaU|s_debounceCnt\(13) & (!\dTeclaU|Add0~25\))
-- \dTeclaU|Add0~27\ = CARRY((!\dTeclaU|s_debounceCnt\(13) & !\dTeclaU|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(13),
	datad => VCC,
	cin => \dTeclaU|Add0~25\,
	combout => \dTeclaU|Add0~26_combout\,
	cout => \dTeclaU|Add0~27\);

-- Location: LCCOMB_X111_Y41_N22
\dTeclaU|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~12_combout\ = (\dTeclaU|Add0~26_combout\ & \dTeclaU|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaU|Add0~26_combout\,
	datad => \dTeclaU|s_debounceCnt[21]~5_combout\,
	combout => \dTeclaU|s_debounceCnt~12_combout\);

-- Location: FF_X111_Y41_N23
\dTeclaU|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~12_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(13));

-- Location: LCCOMB_X110_Y41_N6
\dTeclaU|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~28_combout\ = (\dTeclaU|s_debounceCnt\(14) & ((GND) # (!\dTeclaU|Add0~27\))) # (!\dTeclaU|s_debounceCnt\(14) & (\dTeclaU|Add0~27\ $ (GND)))
-- \dTeclaU|Add0~29\ = CARRY((\dTeclaU|s_debounceCnt\(14)) # (!\dTeclaU|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(14),
	datad => VCC,
	cin => \dTeclaU|Add0~27\,
	combout => \dTeclaU|Add0~28_combout\,
	cout => \dTeclaU|Add0~29\);

-- Location: LCCOMB_X109_Y41_N16
\dTeclaU|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~18_combout\ = (\dTeclaU|s_debounceCnt[21]~2_combout\ & ((\dTeclaU|Add0~28_combout\) # (!\dTeclaU|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|Add0~28_combout\,
	datac => \dTeclaU|s_debounceCnt[21]~2_combout\,
	datad => \dTeclaU|s_previousIn~q\,
	combout => \dTeclaU|s_debounceCnt~18_combout\);

-- Location: FF_X109_Y41_N17
\dTeclaU|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~18_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(14));

-- Location: LCCOMB_X110_Y41_N8
\dTeclaU|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~30_combout\ = (\dTeclaU|s_debounceCnt\(15) & (\dTeclaU|Add0~29\ & VCC)) # (!\dTeclaU|s_debounceCnt\(15) & (!\dTeclaU|Add0~29\))
-- \dTeclaU|Add0~31\ = CARRY((!\dTeclaU|s_debounceCnt\(15) & !\dTeclaU|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(15),
	datad => VCC,
	cin => \dTeclaU|Add0~29\,
	combout => \dTeclaU|Add0~30_combout\,
	cout => \dTeclaU|Add0~31\);

-- Location: LCCOMB_X110_Y41_N24
\dTeclaU|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~6_combout\ = (\dTeclaU|Add0~30_combout\ & \dTeclaU|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaU|Add0~30_combout\,
	datad => \dTeclaU|s_debounceCnt[21]~5_combout\,
	combout => \dTeclaU|s_debounceCnt~6_combout\);

-- Location: FF_X110_Y41_N25
\dTeclaU|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~6_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(15));

-- Location: LCCOMB_X110_Y41_N10
\dTeclaU|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~32_combout\ = (\dTeclaU|s_debounceCnt\(16) & ((GND) # (!\dTeclaU|Add0~31\))) # (!\dTeclaU|s_debounceCnt\(16) & (\dTeclaU|Add0~31\ $ (GND)))
-- \dTeclaU|Add0~33\ = CARRY((\dTeclaU|s_debounceCnt\(16)) # (!\dTeclaU|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(16),
	datad => VCC,
	cin => \dTeclaU|Add0~31\,
	combout => \dTeclaU|Add0~32_combout\,
	cout => \dTeclaU|Add0~33\);

-- Location: LCCOMB_X111_Y41_N4
\dTeclaU|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~7_combout\ = (\dTeclaU|Add0~32_combout\ & \dTeclaU|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|Add0~32_combout\,
	datad => \dTeclaU|s_debounceCnt[21]~5_combout\,
	combout => \dTeclaU|s_debounceCnt~7_combout\);

-- Location: FF_X111_Y41_N5
\dTeclaU|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~7_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(16));

-- Location: LCCOMB_X110_Y41_N12
\dTeclaU|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~34_combout\ = (\dTeclaU|s_debounceCnt\(17) & (\dTeclaU|Add0~33\ & VCC)) # (!\dTeclaU|s_debounceCnt\(17) & (!\dTeclaU|Add0~33\))
-- \dTeclaU|Add0~35\ = CARRY((!\dTeclaU|s_debounceCnt\(17) & !\dTeclaU|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(17),
	datad => VCC,
	cin => \dTeclaU|Add0~33\,
	combout => \dTeclaU|Add0~34_combout\,
	cout => \dTeclaU|Add0~35\);

-- Location: LCCOMB_X111_Y41_N26
\dTeclaU|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~8_combout\ = (\dTeclaU|Add0~34_combout\ & \dTeclaU|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|Add0~34_combout\,
	datad => \dTeclaU|s_debounceCnt[21]~5_combout\,
	combout => \dTeclaU|s_debounceCnt~8_combout\);

-- Location: FF_X111_Y41_N27
\dTeclaU|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~8_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(17));

-- Location: LCCOMB_X110_Y41_N14
\dTeclaU|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~36_combout\ = (\dTeclaU|s_debounceCnt\(18) & ((GND) # (!\dTeclaU|Add0~35\))) # (!\dTeclaU|s_debounceCnt\(18) & (\dTeclaU|Add0~35\ $ (GND)))
-- \dTeclaU|Add0~37\ = CARRY((\dTeclaU|s_debounceCnt\(18)) # (!\dTeclaU|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(18),
	datad => VCC,
	cin => \dTeclaU|Add0~35\,
	combout => \dTeclaU|Add0~36_combout\,
	cout => \dTeclaU|Add0~37\);

-- Location: LCCOMB_X109_Y41_N14
\dTeclaU|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt[18]~19_combout\ = (\dTeclaU|s_debounceCnt[21]~4_combout\ & (\dTeclaU|s_debounceCnt[21]~2_combout\ & ((\dTeclaU|Add0~36_combout\) # (!\dTeclaU|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_previousIn~q\,
	datab => \dTeclaU|s_debounceCnt[21]~4_combout\,
	datac => \dTeclaU|s_debounceCnt[21]~2_combout\,
	datad => \dTeclaU|Add0~36_combout\,
	combout => \dTeclaU|s_debounceCnt[18]~19_combout\);

-- Location: FF_X109_Y41_N15
\dTeclaU|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(18));

-- Location: LCCOMB_X110_Y41_N16
\dTeclaU|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~38_combout\ = (\dTeclaU|s_debounceCnt\(19) & (\dTeclaU|Add0~37\ & VCC)) # (!\dTeclaU|s_debounceCnt\(19) & (!\dTeclaU|Add0~37\))
-- \dTeclaU|Add0~39\ = CARRY((!\dTeclaU|s_debounceCnt\(19) & !\dTeclaU|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(19),
	datad => VCC,
	cin => \dTeclaU|Add0~37\,
	combout => \dTeclaU|Add0~38_combout\,
	cout => \dTeclaU|Add0~39\);

-- Location: LCCOMB_X110_Y41_N30
\dTeclaU|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt[19]~20_combout\ = (\dTeclaU|s_debounceCnt[21]~4_combout\ & (\dTeclaU|s_debounceCnt[21]~2_combout\ & ((\dTeclaU|Add0~38_combout\) # (!\dTeclaU|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_previousIn~q\,
	datab => \dTeclaU|Add0~38_combout\,
	datac => \dTeclaU|s_debounceCnt[21]~4_combout\,
	datad => \dTeclaU|s_debounceCnt[21]~2_combout\,
	combout => \dTeclaU|s_debounceCnt[19]~20_combout\);

-- Location: FF_X110_Y41_N31
\dTeclaU|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(19));

-- Location: LCCOMB_X110_Y41_N18
\dTeclaU|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~40_combout\ = (\dTeclaU|s_debounceCnt\(20) & ((GND) # (!\dTeclaU|Add0~39\))) # (!\dTeclaU|s_debounceCnt\(20) & (\dTeclaU|Add0~39\ $ (GND)))
-- \dTeclaU|Add0~41\ = CARRY((\dTeclaU|s_debounceCnt\(20)) # (!\dTeclaU|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(20),
	datad => VCC,
	cin => \dTeclaU|Add0~39\,
	combout => \dTeclaU|Add0~40_combout\,
	cout => \dTeclaU|Add0~41\);

-- Location: LCCOMB_X111_Y41_N28
\dTeclaU|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt[20]~9_combout\ = (\dTeclaU|s_debounceCnt[21]~4_combout\ & (\dTeclaU|s_debounceCnt[21]~5_combout\ & \dTeclaU|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt[21]~4_combout\,
	datab => \dTeclaU|s_debounceCnt[21]~5_combout\,
	datad => \dTeclaU|Add0~40_combout\,
	combout => \dTeclaU|s_debounceCnt[20]~9_combout\);

-- Location: FF_X111_Y41_N29
\dTeclaU|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(20));

-- Location: LCCOMB_X111_Y41_N24
\dTeclaU|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|LessThan0~3_combout\ = (\dTeclaU|s_debounceCnt\(17)) # ((\dTeclaU|s_debounceCnt\(16)) # (\dTeclaU|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(17),
	datac => \dTeclaU|s_debounceCnt\(16),
	datad => \dTeclaU|s_debounceCnt\(15),
	combout => \dTeclaU|LessThan0~3_combout\);

-- Location: LCCOMB_X110_Y42_N12
\dTeclaU|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~2_combout\ = (\dTeclaU|s_debounceCnt\(1) & (\dTeclaU|Add0~1\ & VCC)) # (!\dTeclaU|s_debounceCnt\(1) & (!\dTeclaU|Add0~1\))
-- \dTeclaU|Add0~3\ = CARRY((!\dTeclaU|s_debounceCnt\(1) & !\dTeclaU|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(1),
	datad => VCC,
	cin => \dTeclaU|Add0~1\,
	combout => \dTeclaU|Add0~2_combout\,
	cout => \dTeclaU|Add0~3\);

-- Location: LCCOMB_X112_Y41_N12
\dTeclaU|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~21_combout\ = (\dTeclaU|Add0~2_combout\ & \dTeclaU|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaU|Add0~2_combout\,
	datad => \dTeclaU|s_debounceCnt[21]~5_combout\,
	combout => \dTeclaU|s_debounceCnt~21_combout\);

-- Location: FF_X112_Y41_N13
\dTeclaU|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~21_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(1));

-- Location: LCCOMB_X110_Y42_N14
\dTeclaU|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~4_combout\ = (\dTeclaU|s_debounceCnt\(2) & ((GND) # (!\dTeclaU|Add0~3\))) # (!\dTeclaU|s_debounceCnt\(2) & (\dTeclaU|Add0~3\ $ (GND)))
-- \dTeclaU|Add0~5\ = CARRY((\dTeclaU|s_debounceCnt\(2)) # (!\dTeclaU|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(2),
	datad => VCC,
	cin => \dTeclaU|Add0~3\,
	combout => \dTeclaU|Add0~4_combout\,
	cout => \dTeclaU|Add0~5\);

-- Location: LCCOMB_X112_Y41_N22
\dTeclaU|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~22_combout\ = (\dTeclaU|Add0~4_combout\ & \dTeclaU|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaU|Add0~4_combout\,
	datad => \dTeclaU|s_debounceCnt[21]~5_combout\,
	combout => \dTeclaU|s_debounceCnt~22_combout\);

-- Location: FF_X112_Y41_N23
\dTeclaU|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~22_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(2));

-- Location: LCCOMB_X110_Y42_N16
\dTeclaU|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~6_combout\ = (\dTeclaU|s_debounceCnt\(3) & (\dTeclaU|Add0~5\ & VCC)) # (!\dTeclaU|s_debounceCnt\(3) & (!\dTeclaU|Add0~5\))
-- \dTeclaU|Add0~7\ = CARRY((!\dTeclaU|s_debounceCnt\(3) & !\dTeclaU|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(3),
	datad => VCC,
	cin => \dTeclaU|Add0~5\,
	combout => \dTeclaU|Add0~6_combout\,
	cout => \dTeclaU|Add0~7\);

-- Location: LCCOMB_X112_Y41_N0
\dTeclaU|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~23_combout\ = (\dTeclaU|Add0~6_combout\ & \dTeclaU|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaU|Add0~6_combout\,
	datad => \dTeclaU|s_debounceCnt[21]~5_combout\,
	combout => \dTeclaU|s_debounceCnt~23_combout\);

-- Location: FF_X112_Y41_N1
\dTeclaU|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~23_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(3));

-- Location: LCCOMB_X110_Y42_N18
\dTeclaU|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~8_combout\ = (\dTeclaU|s_debounceCnt\(4) & ((GND) # (!\dTeclaU|Add0~7\))) # (!\dTeclaU|s_debounceCnt\(4) & (\dTeclaU|Add0~7\ $ (GND)))
-- \dTeclaU|Add0~9\ = CARRY((\dTeclaU|s_debounceCnt\(4)) # (!\dTeclaU|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(4),
	datad => VCC,
	cin => \dTeclaU|Add0~7\,
	combout => \dTeclaU|Add0~8_combout\,
	cout => \dTeclaU|Add0~9\);

-- Location: LCCOMB_X112_Y41_N18
\dTeclaU|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~24_combout\ = (\dTeclaU|Add0~8_combout\ & \dTeclaU|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaU|Add0~8_combout\,
	datad => \dTeclaU|s_debounceCnt[21]~5_combout\,
	combout => \dTeclaU|s_debounceCnt~24_combout\);

-- Location: FF_X112_Y41_N19
\dTeclaU|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~24_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(4));

-- Location: LCCOMB_X110_Y42_N20
\dTeclaU|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~10_combout\ = (\dTeclaU|s_debounceCnt\(5) & (\dTeclaU|Add0~9\ & VCC)) # (!\dTeclaU|s_debounceCnt\(5) & (!\dTeclaU|Add0~9\))
-- \dTeclaU|Add0~11\ = CARRY((!\dTeclaU|s_debounceCnt\(5) & !\dTeclaU|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(5),
	datad => VCC,
	cin => \dTeclaU|Add0~9\,
	combout => \dTeclaU|Add0~10_combout\,
	cout => \dTeclaU|Add0~11\);

-- Location: LCCOMB_X112_Y41_N30
\dTeclaU|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~25_combout\ = (\dTeclaU|Add0~10_combout\ & \dTeclaU|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaU|Add0~10_combout\,
	datad => \dTeclaU|s_debounceCnt[21]~5_combout\,
	combout => \dTeclaU|s_debounceCnt~25_combout\);

-- Location: FF_X112_Y41_N31
\dTeclaU|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~25_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(5));

-- Location: LCCOMB_X110_Y42_N22
\dTeclaU|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~12_combout\ = (\dTeclaU|s_debounceCnt\(6) & ((GND) # (!\dTeclaU|Add0~11\))) # (!\dTeclaU|s_debounceCnt\(6) & (\dTeclaU|Add0~11\ $ (GND)))
-- \dTeclaU|Add0~13\ = CARRY((\dTeclaU|s_debounceCnt\(6)) # (!\dTeclaU|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(6),
	datad => VCC,
	cin => \dTeclaU|Add0~11\,
	combout => \dTeclaU|Add0~12_combout\,
	cout => \dTeclaU|Add0~13\);

-- Location: LCCOMB_X109_Y41_N30
\dTeclaU|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~3_combout\ = (\dTeclaU|s_debounceCnt[21]~2_combout\ & ((\dTeclaU|Add0~12_combout\) # (!\dTeclaU|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|Add0~12_combout\,
	datac => \dTeclaU|s_debounceCnt[21]~2_combout\,
	datad => \dTeclaU|s_previousIn~q\,
	combout => \dTeclaU|s_debounceCnt~3_combout\);

-- Location: FF_X109_Y41_N31
\dTeclaU|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~3_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(6));

-- Location: LCCOMB_X110_Y42_N24
\dTeclaU|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~14_combout\ = (\dTeclaU|s_debounceCnt\(7) & (\dTeclaU|Add0~13\ & VCC)) # (!\dTeclaU|s_debounceCnt\(7) & (!\dTeclaU|Add0~13\))
-- \dTeclaU|Add0~15\ = CARRY((!\dTeclaU|s_debounceCnt\(7) & !\dTeclaU|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(7),
	datad => VCC,
	cin => \dTeclaU|Add0~13\,
	combout => \dTeclaU|Add0~14_combout\,
	cout => \dTeclaU|Add0~15\);

-- Location: LCCOMB_X111_Y41_N0
\dTeclaU|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~13_combout\ = (\dTeclaU|Add0~14_combout\ & \dTeclaU|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|Add0~14_combout\,
	datad => \dTeclaU|s_debounceCnt[21]~5_combout\,
	combout => \dTeclaU|s_debounceCnt~13_combout\);

-- Location: FF_X111_Y41_N1
\dTeclaU|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~13_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(7));

-- Location: LCCOMB_X112_Y41_N28
\dTeclaU|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_pulsedOut~7_combout\ = (!\dTeclaU|s_debounceCnt\(1) & (!\dTeclaU|s_debounceCnt\(3) & (!\dTeclaU|s_debounceCnt\(2) & !\dTeclaU|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(1),
	datab => \dTeclaU|s_debounceCnt\(3),
	datac => \dTeclaU|s_debounceCnt\(2),
	datad => \dTeclaU|s_debounceCnt\(4),
	combout => \dTeclaU|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X112_Y41_N24
\dTeclaU|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_pulsedOut~8_combout\ = (!\dTeclaU|s_debounceCnt\(5) & \dTeclaU|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaU|s_debounceCnt\(5),
	datad => \dTeclaU|s_pulsedOut~7_combout\,
	combout => \dTeclaU|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X111_Y41_N10
\dTeclaU|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|LessThan0~0_combout\ = (\dTeclaU|s_debounceCnt\(7)) # ((\dTeclaU|s_debounceCnt\(6) & ((\dTeclaU|s_debounceCnt\(0)) # (!\dTeclaU|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(0),
	datab => \dTeclaU|s_debounceCnt\(7),
	datac => \dTeclaU|s_debounceCnt\(6),
	datad => \dTeclaU|s_pulsedOut~8_combout\,
	combout => \dTeclaU|LessThan0~0_combout\);

-- Location: LCCOMB_X111_Y41_N20
\dTeclaU|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|LessThan0~1_combout\ = (\dTeclaU|s_debounceCnt\(10)) # ((\dTeclaU|s_debounceCnt\(8) & (\dTeclaU|s_debounceCnt\(9) & \dTeclaU|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(10),
	datab => \dTeclaU|s_debounceCnt\(8),
	datac => \dTeclaU|s_debounceCnt\(9),
	datad => \dTeclaU|LessThan0~0_combout\,
	combout => \dTeclaU|LessThan0~1_combout\);

-- Location: LCCOMB_X111_Y41_N18
\dTeclaU|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|LessThan0~2_combout\ = (\dTeclaU|s_debounceCnt\(12)) # ((\dTeclaU|s_debounceCnt\(13)) # ((\dTeclaU|s_debounceCnt\(11) & \dTeclaU|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(11),
	datab => \dTeclaU|s_debounceCnt\(12),
	datac => \dTeclaU|s_debounceCnt\(13),
	datad => \dTeclaU|LessThan0~1_combout\,
	combout => \dTeclaU|LessThan0~2_combout\);

-- Location: LCCOMB_X111_Y41_N6
\dTeclaU|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|LessThan0~4_combout\ = (\dTeclaU|s_debounceCnt\(18) & ((\dTeclaU|LessThan0~3_combout\) # ((\dTeclaU|s_debounceCnt\(14) & \dTeclaU|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(18),
	datab => \dTeclaU|LessThan0~3_combout\,
	datac => \dTeclaU|s_debounceCnt\(14),
	datad => \dTeclaU|LessThan0~2_combout\,
	combout => \dTeclaU|LessThan0~4_combout\);

-- Location: LCCOMB_X111_Y41_N16
\dTeclaU|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|LessThan0~5_combout\ = (\dTeclaU|s_debounceCnt\(20)) # ((\dTeclaU|s_debounceCnt\(21)) # ((\dTeclaU|s_debounceCnt\(19) & \dTeclaU|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(19),
	datab => \dTeclaU|s_debounceCnt\(20),
	datac => \dTeclaU|s_debounceCnt\(21),
	datad => \dTeclaU|LessThan0~4_combout\,
	combout => \dTeclaU|LessThan0~5_combout\);

-- Location: LCCOMB_X111_Y41_N2
\dTeclaU|s_debounceCnt[21]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt[21]~5_combout\ = (\dTeclaU|s_dirtyIn~q\ & (\dTeclaU|s_previousIn~q\ & ((!\dTeclaU|LessThan0~5_combout\) # (!\dTeclaU|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_dirtyIn~q\,
	datab => \dTeclaU|s_debounceCnt\(22),
	datac => \dTeclaU|s_previousIn~q\,
	datad => \dTeclaU|LessThan0~5_combout\,
	combout => \dTeclaU|s_debounceCnt[21]~5_combout\);

-- Location: LCCOMB_X111_Y41_N12
\dTeclaU|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~26_combout\ = (\dTeclaU|Add0~0_combout\ & \dTeclaU|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaU|Add0~0_combout\,
	datad => \dTeclaU|s_debounceCnt[21]~5_combout\,
	combout => \dTeclaU|s_debounceCnt~26_combout\);

-- Location: FF_X111_Y41_N13
\dTeclaU|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~26_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(0));

-- Location: LCCOMB_X109_Y41_N18
\dTeclaU|s_debounceCnt[21]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt[21]~29_combout\ = (\dTeclaU|s_debounceCnt\(0)) # ((\dTeclaU|s_debounceCnt\(5)) # ((!\dTeclaU|s_pulsedOut~6_combout\) # (!\dTeclaU|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(0),
	datab => \dTeclaU|s_debounceCnt\(5),
	datac => \dTeclaU|s_pulsedOut~7_combout\,
	datad => \dTeclaU|s_pulsedOut~6_combout\,
	combout => \dTeclaU|s_debounceCnt[21]~29_combout\);

-- Location: LCCOMB_X109_Y41_N0
\dTeclaU|s_debounceCnt[21]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt[21]~4_combout\ = ((\dTeclaU|s_debounceCnt\(22)) # ((\dTeclaU|s_debounceCnt[21]~29_combout\) # (!\dTeclaU|s_previousIn~q\))) # (!\dTeclaU|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_dirtyIn~q\,
	datab => \dTeclaU|s_debounceCnt\(22),
	datac => \dTeclaU|s_previousIn~q\,
	datad => \dTeclaU|s_debounceCnt[21]~29_combout\,
	combout => \dTeclaU|s_debounceCnt[21]~4_combout\);

-- Location: LCCOMB_X110_Y41_N20
\dTeclaU|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~42_combout\ = (\dTeclaU|s_debounceCnt\(21) & (\dTeclaU|Add0~41\ & VCC)) # (!\dTeclaU|s_debounceCnt\(21) & (!\dTeclaU|Add0~41\))
-- \dTeclaU|Add0~43\ = CARRY((!\dTeclaU|s_debounceCnt\(21) & !\dTeclaU|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(21),
	datad => VCC,
	cin => \dTeclaU|Add0~41\,
	combout => \dTeclaU|Add0~42_combout\,
	cout => \dTeclaU|Add0~43\);

-- Location: LCCOMB_X111_Y41_N14
\dTeclaU|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt[21]~10_combout\ = (\dTeclaU|s_debounceCnt[21]~4_combout\ & (\dTeclaU|s_debounceCnt[21]~5_combout\ & \dTeclaU|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt[21]~4_combout\,
	datab => \dTeclaU|s_debounceCnt[21]~5_combout\,
	datad => \dTeclaU|Add0~42_combout\,
	combout => \dTeclaU|s_debounceCnt[21]~10_combout\);

-- Location: FF_X111_Y41_N15
\dTeclaU|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(21));

-- Location: LCCOMB_X110_Y41_N22
\dTeclaU|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~44_combout\ = \dTeclaU|s_debounceCnt\(22) $ (\dTeclaU|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(22),
	cin => \dTeclaU|Add0~43\,
	combout => \dTeclaU|Add0~44_combout\);

-- Location: LCCOMB_X109_Y41_N24
\dTeclaU|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt[22]~27_combout\ = (\dTeclaU|s_debounceCnt\(22) & (((!\dTeclaU|LessThan0~5_combout\)))) # (!\dTeclaU|s_debounceCnt\(22) & (((\dTeclaU|s_debounceCnt[21]~29_combout\)) # (!\dTeclaU|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_previousIn~q\,
	datab => \dTeclaU|s_debounceCnt[21]~29_combout\,
	datac => \dTeclaU|s_debounceCnt\(22),
	datad => \dTeclaU|LessThan0~5_combout\,
	combout => \dTeclaU|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X109_Y41_N2
\dTeclaU|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt[22]~28_combout\ = (\dTeclaU|s_dirtyIn~q\ & (\dTeclaU|s_debounceCnt[22]~27_combout\ & ((\dTeclaU|Add0~44_combout\) # (!\dTeclaU|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_previousIn~q\,
	datab => \dTeclaU|Add0~44_combout\,
	datac => \dTeclaU|s_dirtyIn~q\,
	datad => \dTeclaU|s_debounceCnt[22]~27_combout\,
	combout => \dTeclaU|s_debounceCnt[22]~28_combout\);

-- Location: FF_X109_Y41_N3
\dTeclaU|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(22));

-- Location: LCCOMB_X109_Y41_N22
\dTeclaU|s_debounceCnt[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt[21]~2_combout\ = (\dTeclaU|s_dirtyIn~q\ & ((!\dTeclaU|LessThan0~5_combout\) # (!\dTeclaU|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(22),
	datac => \dTeclaU|s_dirtyIn~q\,
	datad => \dTeclaU|LessThan0~5_combout\,
	combout => \dTeclaU|s_debounceCnt[21]~2_combout\);

-- Location: LCCOMB_X110_Y42_N26
\dTeclaU|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~16_combout\ = (\dTeclaU|s_debounceCnt\(8) & ((GND) # (!\dTeclaU|Add0~15\))) # (!\dTeclaU|s_debounceCnt\(8) & (\dTeclaU|Add0~15\ $ (GND)))
-- \dTeclaU|Add0~17\ = CARRY((\dTeclaU|s_debounceCnt\(8)) # (!\dTeclaU|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(8),
	datad => VCC,
	cin => \dTeclaU|Add0~15\,
	combout => \dTeclaU|Add0~16_combout\,
	cout => \dTeclaU|Add0~17\);

-- Location: LCCOMB_X109_Y41_N8
\dTeclaU|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~14_combout\ = (\dTeclaU|s_debounceCnt[21]~2_combout\ & ((\dTeclaU|Add0~16_combout\) # (!\dTeclaU|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_previousIn~q\,
	datac => \dTeclaU|s_debounceCnt[21]~2_combout\,
	datad => \dTeclaU|Add0~16_combout\,
	combout => \dTeclaU|s_debounceCnt~14_combout\);

-- Location: FF_X109_Y41_N9
\dTeclaU|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~14_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(8));

-- Location: LCCOMB_X110_Y42_N28
\dTeclaU|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~18_combout\ = (\dTeclaU|s_debounceCnt\(9) & (\dTeclaU|Add0~17\ & VCC)) # (!\dTeclaU|s_debounceCnt\(9) & (!\dTeclaU|Add0~17\))
-- \dTeclaU|Add0~19\ = CARRY((!\dTeclaU|s_debounceCnt\(9) & !\dTeclaU|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(9),
	datad => VCC,
	cin => \dTeclaU|Add0~17\,
	combout => \dTeclaU|Add0~18_combout\,
	cout => \dTeclaU|Add0~19\);

-- Location: LCCOMB_X109_Y41_N26
\dTeclaU|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~15_combout\ = (\dTeclaU|s_debounceCnt[21]~2_combout\ & ((\dTeclaU|Add0~18_combout\) # (!\dTeclaU|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_previousIn~q\,
	datab => \dTeclaU|Add0~18_combout\,
	datac => \dTeclaU|s_debounceCnt[21]~2_combout\,
	combout => \dTeclaU|s_debounceCnt~15_combout\);

-- Location: FF_X109_Y41_N27
\dTeclaU|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~15_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(9));

-- Location: LCCOMB_X110_Y42_N30
\dTeclaU|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|Add0~20_combout\ = (\dTeclaU|s_debounceCnt\(10) & ((GND) # (!\dTeclaU|Add0~19\))) # (!\dTeclaU|s_debounceCnt\(10) & (\dTeclaU|Add0~19\ $ (GND)))
-- \dTeclaU|Add0~21\ = CARRY((\dTeclaU|s_debounceCnt\(10)) # (!\dTeclaU|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaU|s_debounceCnt\(10),
	datad => VCC,
	cin => \dTeclaU|Add0~19\,
	combout => \dTeclaU|Add0~20_combout\,
	cout => \dTeclaU|Add0~21\);

-- Location: LCCOMB_X111_Y41_N30
\dTeclaU|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~16_combout\ = (\dTeclaU|Add0~20_combout\ & \dTeclaU|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaU|Add0~20_combout\,
	datad => \dTeclaU|s_debounceCnt[21]~5_combout\,
	combout => \dTeclaU|s_debounceCnt~16_combout\);

-- Location: FF_X111_Y41_N31
\dTeclaU|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~16_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(10));

-- Location: LCCOMB_X109_Y41_N6
\dTeclaU|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_debounceCnt~17_combout\ = (\dTeclaU|s_debounceCnt[21]~2_combout\ & ((\dTeclaU|Add0~22_combout\) # (!\dTeclaU|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_previousIn~q\,
	datab => \dTeclaU|Add0~22_combout\,
	datac => \dTeclaU|s_debounceCnt[21]~2_combout\,
	combout => \dTeclaU|s_debounceCnt~17_combout\);

-- Location: FF_X109_Y41_N7
\dTeclaU|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_debounceCnt~17_combout\,
	ena => \dTeclaU|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_debounceCnt\(11));

-- Location: LCCOMB_X109_Y41_N12
\dTeclaU|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_pulsedOut~5_combout\ = (!\dTeclaU|s_debounceCnt\(11) & (!\dTeclaU|s_debounceCnt\(18) & (!\dTeclaU|s_debounceCnt\(19) & !\dTeclaU|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(11),
	datab => \dTeclaU|s_debounceCnt\(18),
	datac => \dTeclaU|s_debounceCnt\(19),
	datad => \dTeclaU|s_debounceCnt\(14),
	combout => \dTeclaU|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X110_Y41_N26
\dTeclaU|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_pulsedOut~2_combout\ = (!\dTeclaU|s_debounceCnt\(16) & (!\dTeclaU|s_debounceCnt\(15) & (!\dTeclaU|s_debounceCnt\(6) & !\dTeclaU|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(16),
	datab => \dTeclaU|s_debounceCnt\(15),
	datac => \dTeclaU|s_debounceCnt\(6),
	datad => \dTeclaU|s_debounceCnt\(17),
	combout => \dTeclaU|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X109_Y41_N4
\dTeclaU|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_pulsedOut~4_combout\ = (!\dTeclaU|s_debounceCnt\(9) & (!\dTeclaU|s_debounceCnt\(8) & (!\dTeclaU|s_debounceCnt\(7) & !\dTeclaU|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(9),
	datab => \dTeclaU|s_debounceCnt\(8),
	datac => \dTeclaU|s_debounceCnt\(7),
	datad => \dTeclaU|s_debounceCnt\(10),
	combout => \dTeclaU|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X110_Y41_N28
\dTeclaU|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_pulsedOut~3_combout\ = (!\dTeclaU|s_debounceCnt\(20) & (!\dTeclaU|s_debounceCnt\(12) & (!\dTeclaU|s_debounceCnt\(21) & !\dTeclaU|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(20),
	datab => \dTeclaU|s_debounceCnt\(12),
	datac => \dTeclaU|s_debounceCnt\(21),
	datad => \dTeclaU|s_debounceCnt\(13),
	combout => \dTeclaU|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X109_Y41_N10
\dTeclaU|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_pulsedOut~6_combout\ = (\dTeclaU|s_pulsedOut~5_combout\ & (\dTeclaU|s_pulsedOut~2_combout\ & (\dTeclaU|s_pulsedOut~4_combout\ & \dTeclaU|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_pulsedOut~5_combout\,
	datab => \dTeclaU|s_pulsedOut~2_combout\,
	datac => \dTeclaU|s_pulsedOut~4_combout\,
	datad => \dTeclaU|s_pulsedOut~3_combout\,
	combout => \dTeclaU|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X109_Y41_N28
\dTeclaU|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_pulsedOut~9_combout\ = (\dTeclaU|s_debounceCnt\(0) & (!\dTeclaU|s_debounceCnt\(22) & (\dTeclaU|s_dirtyIn~q\ & \dTeclaU|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_debounceCnt\(0),
	datab => \dTeclaU|s_debounceCnt\(22),
	datac => \dTeclaU|s_dirtyIn~q\,
	datad => \dTeclaU|s_previousIn~q\,
	combout => \dTeclaU|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X109_Y41_N20
\dTeclaU|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaU|s_pulsedOut~10_combout\ = (\dTeclaU|s_pulsedOut~6_combout\ & (\dTeclaU|s_pulsedOut~9_combout\ & (\dTeclaU|s_pulsedOut~7_combout\ & !\dTeclaU|s_debounceCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaU|s_pulsedOut~6_combout\,
	datab => \dTeclaU|s_pulsedOut~9_combout\,
	datac => \dTeclaU|s_pulsedOut~7_combout\,
	datad => \dTeclaU|s_debounceCnt\(5),
	combout => \dTeclaU|s_pulsedOut~10_combout\);

-- Location: FF_X109_Y41_N21
\dTeclaU|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaU|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaU|s_pulsedOut~q\);

-- Location: LCCOMB_X97_Y36_N6
\relogio|FSMrel|ud~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|FSMrel|ud~0_combout\ = (\dTeclaU|s_pulsedOut~q\) # (!\relogio|FSMrel|pS.NORMAL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|FSMrel|pS.NORMAL~q\,
	datac => \dTeclaU|s_pulsedOut~q\,
	combout => \relogio|FSMrel|ud~0_combout\);

-- Location: LCCOMB_X105_Y36_N10
\relogio|relBas|Minutos|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|Add0~0_combout\ = \relogio|relBas|Minutos|s_cont\(0) $ (VCC)
-- \relogio|relBas|Minutos|Add0~1\ = CARRY(\relogio|relBas|Minutos|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Minutos|s_cont\(0),
	datad => VCC,
	combout => \relogio|relBas|Minutos|Add0~0_combout\,
	cout => \relogio|relBas|Minutos|Add0~1\);

-- Location: LCCOMB_X106_Y36_N10
\relogio|relBas|Minutos|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|Add1~0_combout\ = \relogio|relBas|Minutos|s_cont\(0) $ (VCC)
-- \relogio|relBas|Minutos|Add1~1\ = CARRY(\relogio|relBas|Minutos|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Minutos|s_cont\(0),
	datad => VCC,
	combout => \relogio|relBas|Minutos|Add1~0_combout\,
	cout => \relogio|relBas|Minutos|Add1~1\);

-- Location: LCCOMB_X105_Y36_N4
\relogio|relBas|Minutos|s_cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|s_cont~0_combout\ = (\relogio|FSMrel|ud~0_combout\ & (\relogio|relBas|Minutos|LessThan0~0_combout\ & ((\relogio|relBas|Minutos|Add1~0_combout\)))) # (!\relogio|FSMrel|ud~0_combout\ & (((\relogio|relBas|Minutos|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|LessThan0~0_combout\,
	datab => \relogio|relBas|Minutos|Add0~0_combout\,
	datac => \relogio|relBas|Minutos|Add1~0_combout\,
	datad => \relogio|FSMrel|ud~0_combout\,
	combout => \relogio|relBas|Minutos|s_cont~0_combout\);

-- Location: LCCOMB_X98_Y33_N2
\pulsos|acel11|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~0_combout\ = \pulsos|acel11|s_divCounter\(0) $ (VCC)
-- \pulsos|acel11|Add0~1\ = CARRY(\pulsos|acel11|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(0),
	datad => VCC,
	combout => \pulsos|acel11|Add0~0_combout\,
	cout => \pulsos|acel11|Add0~1\);

-- Location: LCCOMB_X98_Y33_N0
\pulsos|acel11|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|s_divCounter~3_combout\ = (\pulsos|acel11|Add0~0_combout\ & !\pulsos|acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|Add0~0_combout\,
	datac => \pulsos|acel11|Equal0~9_combout\,
	combout => \pulsos|acel11|s_divCounter~3_combout\);

-- Location: FF_X98_Y33_N1
\pulsos|acel11|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(0));

-- Location: LCCOMB_X98_Y33_N4
\pulsos|acel11|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~2_combout\ = (\pulsos|acel11|s_divCounter\(1) & (!\pulsos|acel11|Add0~1\)) # (!\pulsos|acel11|s_divCounter\(1) & ((\pulsos|acel11|Add0~1\) # (GND)))
-- \pulsos|acel11|Add0~3\ = CARRY((!\pulsos|acel11|Add0~1\) # (!\pulsos|acel11|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(1),
	datad => VCC,
	cin => \pulsos|acel11|Add0~1\,
	combout => \pulsos|acel11|Add0~2_combout\,
	cout => \pulsos|acel11|Add0~3\);

-- Location: FF_X98_Y33_N5
\pulsos|acel11|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(1));

-- Location: LCCOMB_X98_Y33_N6
\pulsos|acel11|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~4_combout\ = (\pulsos|acel11|s_divCounter\(2) & (\pulsos|acel11|Add0~3\ $ (GND))) # (!\pulsos|acel11|s_divCounter\(2) & (!\pulsos|acel11|Add0~3\ & VCC))
-- \pulsos|acel11|Add0~5\ = CARRY((\pulsos|acel11|s_divCounter\(2) & !\pulsos|acel11|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(2),
	datad => VCC,
	cin => \pulsos|acel11|Add0~3\,
	combout => \pulsos|acel11|Add0~4_combout\,
	cout => \pulsos|acel11|Add0~5\);

-- Location: LCCOMB_X99_Y33_N2
\pulsos|acel11|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|s_divCounter~2_combout\ = (\pulsos|acel11|Add0~4_combout\ & !\pulsos|acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|acel11|Add0~4_combout\,
	datad => \pulsos|acel11|Equal0~9_combout\,
	combout => \pulsos|acel11|s_divCounter~2_combout\);

-- Location: FF_X99_Y33_N3
\pulsos|acel11|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(2));

-- Location: LCCOMB_X98_Y33_N8
\pulsos|acel11|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~6_combout\ = (\pulsos|acel11|s_divCounter\(3) & (!\pulsos|acel11|Add0~5\)) # (!\pulsos|acel11|s_divCounter\(3) & ((\pulsos|acel11|Add0~5\) # (GND)))
-- \pulsos|acel11|Add0~7\ = CARRY((!\pulsos|acel11|Add0~5\) # (!\pulsos|acel11|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(3),
	datad => VCC,
	cin => \pulsos|acel11|Add0~5\,
	combout => \pulsos|acel11|Add0~6_combout\,
	cout => \pulsos|acel11|Add0~7\);

-- Location: FF_X98_Y33_N9
\pulsos|acel11|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(3));

-- Location: LCCOMB_X98_Y33_N10
\pulsos|acel11|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~8_combout\ = (\pulsos|acel11|s_divCounter\(4) & (\pulsos|acel11|Add0~7\ $ (GND))) # (!\pulsos|acel11|s_divCounter\(4) & (!\pulsos|acel11|Add0~7\ & VCC))
-- \pulsos|acel11|Add0~9\ = CARRY((\pulsos|acel11|s_divCounter\(4) & !\pulsos|acel11|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(4),
	datad => VCC,
	cin => \pulsos|acel11|Add0~7\,
	combout => \pulsos|acel11|Add0~8_combout\,
	cout => \pulsos|acel11|Add0~9\);

-- Location: LCCOMB_X99_Y33_N0
\pulsos|acel11|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|s_divCounter~1_combout\ = (\pulsos|acel11|Add0~8_combout\ & !\pulsos|acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|Add0~8_combout\,
	datad => \pulsos|acel11|Equal0~9_combout\,
	combout => \pulsos|acel11|s_divCounter~1_combout\);

-- Location: FF_X99_Y33_N1
\pulsos|acel11|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(4));

-- Location: LCCOMB_X98_Y33_N12
\pulsos|acel11|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~10_combout\ = (\pulsos|acel11|s_divCounter\(5) & (!\pulsos|acel11|Add0~9\)) # (!\pulsos|acel11|s_divCounter\(5) & ((\pulsos|acel11|Add0~9\) # (GND)))
-- \pulsos|acel11|Add0~11\ = CARRY((!\pulsos|acel11|Add0~9\) # (!\pulsos|acel11|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(5),
	datad => VCC,
	cin => \pulsos|acel11|Add0~9\,
	combout => \pulsos|acel11|Add0~10_combout\,
	cout => \pulsos|acel11|Add0~11\);

-- Location: LCCOMB_X99_Y33_N14
\pulsos|acel11|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|s_divCounter~0_combout\ = (\pulsos|acel11|Add0~10_combout\ & !\pulsos|acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|Add0~10_combout\,
	datad => \pulsos|acel11|Equal0~9_combout\,
	combout => \pulsos|acel11|s_divCounter~0_combout\);

-- Location: FF_X99_Y33_N15
\pulsos|acel11|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(5));

-- Location: LCCOMB_X98_Y33_N14
\pulsos|acel11|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~12_combout\ = (\pulsos|acel11|s_divCounter\(6) & (\pulsos|acel11|Add0~11\ $ (GND))) # (!\pulsos|acel11|s_divCounter\(6) & (!\pulsos|acel11|Add0~11\ & VCC))
-- \pulsos|acel11|Add0~13\ = CARRY((\pulsos|acel11|s_divCounter\(6) & !\pulsos|acel11|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(6),
	datad => VCC,
	cin => \pulsos|acel11|Add0~11\,
	combout => \pulsos|acel11|Add0~12_combout\,
	cout => \pulsos|acel11|Add0~13\);

-- Location: FF_X98_Y33_N15
\pulsos|acel11|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(6));

-- Location: LCCOMB_X98_Y33_N16
\pulsos|acel11|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~14_combout\ = (\pulsos|acel11|s_divCounter\(7) & (!\pulsos|acel11|Add0~13\)) # (!\pulsos|acel11|s_divCounter\(7) & ((\pulsos|acel11|Add0~13\) # (GND)))
-- \pulsos|acel11|Add0~15\ = CARRY((!\pulsos|acel11|Add0~13\) # (!\pulsos|acel11|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(7),
	datad => VCC,
	cin => \pulsos|acel11|Add0~13\,
	combout => \pulsos|acel11|Add0~14_combout\,
	cout => \pulsos|acel11|Add0~15\);

-- Location: FF_X98_Y33_N17
\pulsos|acel11|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(7));

-- Location: LCCOMB_X98_Y33_N18
\pulsos|acel11|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~16_combout\ = (\pulsos|acel11|s_divCounter\(8) & (\pulsos|acel11|Add0~15\ $ (GND))) # (!\pulsos|acel11|s_divCounter\(8) & (!\pulsos|acel11|Add0~15\ & VCC))
-- \pulsos|acel11|Add0~17\ = CARRY((\pulsos|acel11|s_divCounter\(8) & !\pulsos|acel11|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(8),
	datad => VCC,
	cin => \pulsos|acel11|Add0~15\,
	combout => \pulsos|acel11|Add0~16_combout\,
	cout => \pulsos|acel11|Add0~17\);

-- Location: LCCOMB_X99_Y33_N26
\pulsos|acel11|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|s_divCounter~4_combout\ = (\pulsos|acel11|Add0~16_combout\ & !\pulsos|acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|Add0~16_combout\,
	datad => \pulsos|acel11|Equal0~9_combout\,
	combout => \pulsos|acel11|s_divCounter~4_combout\);

-- Location: FF_X99_Y33_N27
\pulsos|acel11|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(8));

-- Location: LCCOMB_X98_Y33_N20
\pulsos|acel11|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~18_combout\ = (\pulsos|acel11|s_divCounter\(9) & (!\pulsos|acel11|Add0~17\)) # (!\pulsos|acel11|s_divCounter\(9) & ((\pulsos|acel11|Add0~17\) # (GND)))
-- \pulsos|acel11|Add0~19\ = CARRY((!\pulsos|acel11|Add0~17\) # (!\pulsos|acel11|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(9),
	datad => VCC,
	cin => \pulsos|acel11|Add0~17\,
	combout => \pulsos|acel11|Add0~18_combout\,
	cout => \pulsos|acel11|Add0~19\);

-- Location: LCCOMB_X99_Y33_N24
\pulsos|acel11|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|s_divCounter~5_combout\ = (\pulsos|acel11|Add0~18_combout\ & !\pulsos|acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|Add0~18_combout\,
	datad => \pulsos|acel11|Equal0~9_combout\,
	combout => \pulsos|acel11|s_divCounter~5_combout\);

-- Location: FF_X99_Y33_N25
\pulsos|acel11|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(9));

-- Location: LCCOMB_X98_Y33_N22
\pulsos|acel11|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~20_combout\ = (\pulsos|acel11|s_divCounter\(10) & (\pulsos|acel11|Add0~19\ $ (GND))) # (!\pulsos|acel11|s_divCounter\(10) & (!\pulsos|acel11|Add0~19\ & VCC))
-- \pulsos|acel11|Add0~21\ = CARRY((\pulsos|acel11|s_divCounter\(10) & !\pulsos|acel11|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(10),
	datad => VCC,
	cin => \pulsos|acel11|Add0~19\,
	combout => \pulsos|acel11|Add0~20_combout\,
	cout => \pulsos|acel11|Add0~21\);

-- Location: LCCOMB_X99_Y33_N18
\pulsos|acel11|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|s_divCounter~6_combout\ = (\pulsos|acel11|Add0~20_combout\ & !\pulsos|acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|Add0~20_combout\,
	datad => \pulsos|acel11|Equal0~9_combout\,
	combout => \pulsos|acel11|s_divCounter~6_combout\);

-- Location: FF_X99_Y33_N19
\pulsos|acel11|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(10));

-- Location: LCCOMB_X98_Y33_N24
\pulsos|acel11|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~22_combout\ = (\pulsos|acel11|s_divCounter\(11) & (!\pulsos|acel11|Add0~21\)) # (!\pulsos|acel11|s_divCounter\(11) & ((\pulsos|acel11|Add0~21\) # (GND)))
-- \pulsos|acel11|Add0~23\ = CARRY((!\pulsos|acel11|Add0~21\) # (!\pulsos|acel11|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(11),
	datad => VCC,
	cin => \pulsos|acel11|Add0~21\,
	combout => \pulsos|acel11|Add0~22_combout\,
	cout => \pulsos|acel11|Add0~23\);

-- Location: FF_X98_Y33_N25
\pulsos|acel11|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(11));

-- Location: LCCOMB_X98_Y33_N26
\pulsos|acel11|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~24_combout\ = (\pulsos|acel11|s_divCounter\(12) & (\pulsos|acel11|Add0~23\ $ (GND))) # (!\pulsos|acel11|s_divCounter\(12) & (!\pulsos|acel11|Add0~23\ & VCC))
-- \pulsos|acel11|Add0~25\ = CARRY((\pulsos|acel11|s_divCounter\(12) & !\pulsos|acel11|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(12),
	datad => VCC,
	cin => \pulsos|acel11|Add0~23\,
	combout => \pulsos|acel11|Add0~24_combout\,
	cout => \pulsos|acel11|Add0~25\);

-- Location: LCCOMB_X99_Y33_N6
\pulsos|acel11|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|s_divCounter~7_combout\ = (\pulsos|acel11|Add0~24_combout\ & !\pulsos|acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|acel11|Add0~24_combout\,
	datad => \pulsos|acel11|Equal0~9_combout\,
	combout => \pulsos|acel11|s_divCounter~7_combout\);

-- Location: FF_X99_Y33_N7
\pulsos|acel11|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(12));

-- Location: LCCOMB_X98_Y33_N28
\pulsos|acel11|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~26_combout\ = (\pulsos|acel11|s_divCounter\(13) & (!\pulsos|acel11|Add0~25\)) # (!\pulsos|acel11|s_divCounter\(13) & ((\pulsos|acel11|Add0~25\) # (GND)))
-- \pulsos|acel11|Add0~27\ = CARRY((!\pulsos|acel11|Add0~25\) # (!\pulsos|acel11|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(13),
	datad => VCC,
	cin => \pulsos|acel11|Add0~25\,
	combout => \pulsos|acel11|Add0~26_combout\,
	cout => \pulsos|acel11|Add0~27\);

-- Location: LCCOMB_X99_Y33_N4
\pulsos|acel11|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|s_divCounter~8_combout\ = (\pulsos|acel11|Add0~26_combout\ & !\pulsos|acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|Add0~26_combout\,
	datad => \pulsos|acel11|Equal0~9_combout\,
	combout => \pulsos|acel11|s_divCounter~8_combout\);

-- Location: FF_X99_Y33_N5
\pulsos|acel11|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(13));

-- Location: LCCOMB_X98_Y33_N30
\pulsos|acel11|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~28_combout\ = (\pulsos|acel11|s_divCounter\(14) & (\pulsos|acel11|Add0~27\ $ (GND))) # (!\pulsos|acel11|s_divCounter\(14) & (!\pulsos|acel11|Add0~27\ & VCC))
-- \pulsos|acel11|Add0~29\ = CARRY((\pulsos|acel11|s_divCounter\(14) & !\pulsos|acel11|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(14),
	datad => VCC,
	cin => \pulsos|acel11|Add0~27\,
	combout => \pulsos|acel11|Add0~28_combout\,
	cout => \pulsos|acel11|Add0~29\);

-- Location: FF_X98_Y33_N31
\pulsos|acel11|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(14));

-- Location: LCCOMB_X98_Y32_N0
\pulsos|acel11|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~30_combout\ = (\pulsos|acel11|s_divCounter\(15) & (!\pulsos|acel11|Add0~29\)) # (!\pulsos|acel11|s_divCounter\(15) & ((\pulsos|acel11|Add0~29\) # (GND)))
-- \pulsos|acel11|Add0~31\ = CARRY((!\pulsos|acel11|Add0~29\) # (!\pulsos|acel11|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(15),
	datad => VCC,
	cin => \pulsos|acel11|Add0~29\,
	combout => \pulsos|acel11|Add0~30_combout\,
	cout => \pulsos|acel11|Add0~31\);

-- Location: LCCOMB_X99_Y33_N30
\pulsos|acel11|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|s_divCounter~9_combout\ = (\pulsos|acel11|Add0~30_combout\ & !\pulsos|acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|acel11|Add0~30_combout\,
	datad => \pulsos|acel11|Equal0~9_combout\,
	combout => \pulsos|acel11|s_divCounter~9_combout\);

-- Location: FF_X99_Y33_N31
\pulsos|acel11|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(15));

-- Location: LCCOMB_X98_Y32_N2
\pulsos|acel11|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~32_combout\ = (\pulsos|acel11|s_divCounter\(16) & (\pulsos|acel11|Add0~31\ $ (GND))) # (!\pulsos|acel11|s_divCounter\(16) & (!\pulsos|acel11|Add0~31\ & VCC))
-- \pulsos|acel11|Add0~33\ = CARRY((\pulsos|acel11|s_divCounter\(16) & !\pulsos|acel11|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(16),
	datad => VCC,
	cin => \pulsos|acel11|Add0~31\,
	combout => \pulsos|acel11|Add0~32_combout\,
	cout => \pulsos|acel11|Add0~33\);

-- Location: FF_X98_Y32_N3
\pulsos|acel11|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(16));

-- Location: LCCOMB_X98_Y32_N4
\pulsos|acel11|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~34_combout\ = (\pulsos|acel11|s_divCounter\(17) & (!\pulsos|acel11|Add0~33\)) # (!\pulsos|acel11|s_divCounter\(17) & ((\pulsos|acel11|Add0~33\) # (GND)))
-- \pulsos|acel11|Add0~35\ = CARRY((!\pulsos|acel11|Add0~33\) # (!\pulsos|acel11|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(17),
	datad => VCC,
	cin => \pulsos|acel11|Add0~33\,
	combout => \pulsos|acel11|Add0~34_combout\,
	cout => \pulsos|acel11|Add0~35\);

-- Location: FF_X98_Y32_N5
\pulsos|acel11|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(17));

-- Location: LCCOMB_X98_Y32_N6
\pulsos|acel11|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~36_combout\ = (\pulsos|acel11|s_divCounter\(18) & (\pulsos|acel11|Add0~35\ $ (GND))) # (!\pulsos|acel11|s_divCounter\(18) & (!\pulsos|acel11|Add0~35\ & VCC))
-- \pulsos|acel11|Add0~37\ = CARRY((\pulsos|acel11|s_divCounter\(18) & !\pulsos|acel11|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(18),
	datad => VCC,
	cin => \pulsos|acel11|Add0~35\,
	combout => \pulsos|acel11|Add0~36_combout\,
	cout => \pulsos|acel11|Add0~37\);

-- Location: LCCOMB_X99_Y33_N12
\pulsos|acel11|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|s_divCounter~10_combout\ = (!\pulsos|acel11|Equal0~9_combout\ & \pulsos|acel11|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|Equal0~9_combout\,
	datad => \pulsos|acel11|Add0~36_combout\,
	combout => \pulsos|acel11|s_divCounter~10_combout\);

-- Location: FF_X99_Y33_N13
\pulsos|acel11|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(18));

-- Location: LCCOMB_X98_Y32_N8
\pulsos|acel11|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~38_combout\ = (\pulsos|acel11|s_divCounter\(19) & (!\pulsos|acel11|Add0~37\)) # (!\pulsos|acel11|s_divCounter\(19) & ((\pulsos|acel11|Add0~37\) # (GND)))
-- \pulsos|acel11|Add0~39\ = CARRY((!\pulsos|acel11|Add0~37\) # (!\pulsos|acel11|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(19),
	datad => VCC,
	cin => \pulsos|acel11|Add0~37\,
	combout => \pulsos|acel11|Add0~38_combout\,
	cout => \pulsos|acel11|Add0~39\);

-- Location: LCCOMB_X99_Y32_N4
\pulsos|acel11|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|s_divCounter~11_combout\ = (!\pulsos|acel11|Equal0~9_combout\ & \pulsos|acel11|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|acel11|Equal0~9_combout\,
	datad => \pulsos|acel11|Add0~38_combout\,
	combout => \pulsos|acel11|s_divCounter~11_combout\);

-- Location: FF_X99_Y32_N5
\pulsos|acel11|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(19));

-- Location: LCCOMB_X98_Y32_N10
\pulsos|acel11|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~40_combout\ = (\pulsos|acel11|s_divCounter\(20) & (\pulsos|acel11|Add0~39\ $ (GND))) # (!\pulsos|acel11|s_divCounter\(20) & (!\pulsos|acel11|Add0~39\ & VCC))
-- \pulsos|acel11|Add0~41\ = CARRY((\pulsos|acel11|s_divCounter\(20) & !\pulsos|acel11|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(20),
	datad => VCC,
	cin => \pulsos|acel11|Add0~39\,
	combout => \pulsos|acel11|Add0~40_combout\,
	cout => \pulsos|acel11|Add0~41\);

-- Location: FF_X98_Y32_N11
\pulsos|acel11|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(20));

-- Location: LCCOMB_X98_Y32_N12
\pulsos|acel11|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~42_combout\ = (\pulsos|acel11|s_divCounter\(21) & (!\pulsos|acel11|Add0~41\)) # (!\pulsos|acel11|s_divCounter\(21) & ((\pulsos|acel11|Add0~41\) # (GND)))
-- \pulsos|acel11|Add0~43\ = CARRY((!\pulsos|acel11|Add0~41\) # (!\pulsos|acel11|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(21),
	datad => VCC,
	cin => \pulsos|acel11|Add0~41\,
	combout => \pulsos|acel11|Add0~42_combout\,
	cout => \pulsos|acel11|Add0~43\);

-- Location: FF_X98_Y32_N13
\pulsos|acel11|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(21));

-- Location: LCCOMB_X98_Y32_N14
\pulsos|acel11|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~44_combout\ = (\pulsos|acel11|s_divCounter\(22) & (\pulsos|acel11|Add0~43\ $ (GND))) # (!\pulsos|acel11|s_divCounter\(22) & (!\pulsos|acel11|Add0~43\ & VCC))
-- \pulsos|acel11|Add0~45\ = CARRY((\pulsos|acel11|s_divCounter\(22) & !\pulsos|acel11|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(22),
	datad => VCC,
	cin => \pulsos|acel11|Add0~43\,
	combout => \pulsos|acel11|Add0~44_combout\,
	cout => \pulsos|acel11|Add0~45\);

-- Location: FF_X98_Y32_N15
\pulsos|acel11|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(22));

-- Location: LCCOMB_X98_Y32_N16
\pulsos|acel11|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~46_combout\ = (\pulsos|acel11|s_divCounter\(23) & (!\pulsos|acel11|Add0~45\)) # (!\pulsos|acel11|s_divCounter\(23) & ((\pulsos|acel11|Add0~45\) # (GND)))
-- \pulsos|acel11|Add0~47\ = CARRY((!\pulsos|acel11|Add0~45\) # (!\pulsos|acel11|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(23),
	datad => VCC,
	cin => \pulsos|acel11|Add0~45\,
	combout => \pulsos|acel11|Add0~46_combout\,
	cout => \pulsos|acel11|Add0~47\);

-- Location: FF_X98_Y32_N17
\pulsos|acel11|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(23));

-- Location: LCCOMB_X99_Y32_N10
\pulsos|acel11|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Equal0~6_combout\ = (!\pulsos|acel11|s_divCounter\(22) & (!\pulsos|acel11|s_divCounter\(21) & (!\pulsos|acel11|s_divCounter\(23) & !\pulsos|acel11|s_divCounter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(22),
	datab => \pulsos|acel11|s_divCounter\(21),
	datac => \pulsos|acel11|s_divCounter\(23),
	datad => \pulsos|acel11|s_divCounter\(20),
	combout => \pulsos|acel11|Equal0~6_combout\);

-- Location: LCCOMB_X98_Y32_N18
\pulsos|acel11|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~48_combout\ = (\pulsos|acel11|s_divCounter\(24) & (\pulsos|acel11|Add0~47\ $ (GND))) # (!\pulsos|acel11|s_divCounter\(24) & (!\pulsos|acel11|Add0~47\ & VCC))
-- \pulsos|acel11|Add0~49\ = CARRY((\pulsos|acel11|s_divCounter\(24) & !\pulsos|acel11|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(24),
	datad => VCC,
	cin => \pulsos|acel11|Add0~47\,
	combout => \pulsos|acel11|Add0~48_combout\,
	cout => \pulsos|acel11|Add0~49\);

-- Location: FF_X98_Y32_N19
\pulsos|acel11|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(24));

-- Location: LCCOMB_X98_Y32_N20
\pulsos|acel11|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~50_combout\ = (\pulsos|acel11|s_divCounter\(25) & (!\pulsos|acel11|Add0~49\)) # (!\pulsos|acel11|s_divCounter\(25) & ((\pulsos|acel11|Add0~49\) # (GND)))
-- \pulsos|acel11|Add0~51\ = CARRY((!\pulsos|acel11|Add0~49\) # (!\pulsos|acel11|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(25),
	datad => VCC,
	cin => \pulsos|acel11|Add0~49\,
	combout => \pulsos|acel11|Add0~50_combout\,
	cout => \pulsos|acel11|Add0~51\);

-- Location: FF_X98_Y32_N21
\pulsos|acel11|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(25));

-- Location: LCCOMB_X98_Y32_N22
\pulsos|acel11|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~52_combout\ = (\pulsos|acel11|s_divCounter\(26) & (\pulsos|acel11|Add0~51\ $ (GND))) # (!\pulsos|acel11|s_divCounter\(26) & (!\pulsos|acel11|Add0~51\ & VCC))
-- \pulsos|acel11|Add0~53\ = CARRY((\pulsos|acel11|s_divCounter\(26) & !\pulsos|acel11|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(26),
	datad => VCC,
	cin => \pulsos|acel11|Add0~51\,
	combout => \pulsos|acel11|Add0~52_combout\,
	cout => \pulsos|acel11|Add0~53\);

-- Location: FF_X98_Y32_N23
\pulsos|acel11|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(26));

-- Location: LCCOMB_X98_Y32_N24
\pulsos|acel11|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~54_combout\ = (\pulsos|acel11|s_divCounter\(27) & (!\pulsos|acel11|Add0~53\)) # (!\pulsos|acel11|s_divCounter\(27) & ((\pulsos|acel11|Add0~53\) # (GND)))
-- \pulsos|acel11|Add0~55\ = CARRY((!\pulsos|acel11|Add0~53\) # (!\pulsos|acel11|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(27),
	datad => VCC,
	cin => \pulsos|acel11|Add0~53\,
	combout => \pulsos|acel11|Add0~54_combout\,
	cout => \pulsos|acel11|Add0~55\);

-- Location: FF_X98_Y32_N25
\pulsos|acel11|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(27));

-- Location: LCCOMB_X98_Y32_N26
\pulsos|acel11|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~56_combout\ = (\pulsos|acel11|s_divCounter\(28) & (\pulsos|acel11|Add0~55\ $ (GND))) # (!\pulsos|acel11|s_divCounter\(28) & (!\pulsos|acel11|Add0~55\ & VCC))
-- \pulsos|acel11|Add0~57\ = CARRY((\pulsos|acel11|s_divCounter\(28) & !\pulsos|acel11|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(28),
	datad => VCC,
	cin => \pulsos|acel11|Add0~55\,
	combout => \pulsos|acel11|Add0~56_combout\,
	cout => \pulsos|acel11|Add0~57\);

-- Location: FF_X98_Y32_N27
\pulsos|acel11|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(28));

-- Location: LCCOMB_X98_Y32_N28
\pulsos|acel11|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~58_combout\ = (\pulsos|acel11|s_divCounter\(29) & (!\pulsos|acel11|Add0~57\)) # (!\pulsos|acel11|s_divCounter\(29) & ((\pulsos|acel11|Add0~57\) # (GND)))
-- \pulsos|acel11|Add0~59\ = CARRY((!\pulsos|acel11|Add0~57\) # (!\pulsos|acel11|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel11|s_divCounter\(29),
	datad => VCC,
	cin => \pulsos|acel11|Add0~57\,
	combout => \pulsos|acel11|Add0~58_combout\,
	cout => \pulsos|acel11|Add0~59\);

-- Location: FF_X98_Y32_N29
\pulsos|acel11|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(29));

-- Location: LCCOMB_X98_Y32_N30
\pulsos|acel11|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Add0~60_combout\ = \pulsos|acel11|s_divCounter\(30) $ (!\pulsos|acel11|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(30),
	cin => \pulsos|acel11|Add0~59\,
	combout => \pulsos|acel11|Add0~60_combout\);

-- Location: FF_X98_Y32_N31
\pulsos|acel11|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|s_divCounter\(30));

-- Location: LCCOMB_X97_Y32_N8
\pulsos|acel11|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Equal0~7_combout\ = (!\pulsos|acel11|s_divCounter\(27) & (!\pulsos|acel11|s_divCounter\(24) & (!\pulsos|acel11|s_divCounter\(25) & !\pulsos|acel11|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(27),
	datab => \pulsos|acel11|s_divCounter\(24),
	datac => \pulsos|acel11|s_divCounter\(25),
	datad => \pulsos|acel11|s_divCounter\(26),
	combout => \pulsos|acel11|Equal0~7_combout\);

-- Location: LCCOMB_X97_Y32_N2
\pulsos|acel11|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Equal0~8_combout\ = (!\pulsos|acel11|s_divCounter\(30) & (!\pulsos|acel11|s_divCounter\(29) & (\pulsos|acel11|Equal0~7_combout\ & !\pulsos|acel11|s_divCounter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(30),
	datab => \pulsos|acel11|s_divCounter\(29),
	datac => \pulsos|acel11|Equal0~7_combout\,
	datad => \pulsos|acel11|s_divCounter\(28),
	combout => \pulsos|acel11|Equal0~8_combout\);

-- Location: LCCOMB_X99_Y33_N22
\pulsos|acel11|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Equal0~5_combout\ = (!\pulsos|acel11|s_divCounter\(16) & (\pulsos|acel11|s_divCounter\(19) & (!\pulsos|acel11|s_divCounter\(17) & \pulsos|acel11|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(16),
	datab => \pulsos|acel11|s_divCounter\(19),
	datac => \pulsos|acel11|s_divCounter\(17),
	datad => \pulsos|acel11|s_divCounter\(18),
	combout => \pulsos|acel11|Equal0~5_combout\);

-- Location: LCCOMB_X97_Y33_N24
\pulsos|acel11|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Equal0~1_combout\ = (!\pulsos|acel11|s_divCounter\(1) & (!\pulsos|acel11|s_divCounter\(6) & (!\pulsos|acel11|s_divCounter\(0) & !\pulsos|acel11|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(1),
	datab => \pulsos|acel11|s_divCounter\(6),
	datac => \pulsos|acel11|s_divCounter\(0),
	datad => \pulsos|acel11|s_divCounter\(7),
	combout => \pulsos|acel11|Equal0~1_combout\);

-- Location: LCCOMB_X99_Y33_N16
\pulsos|acel11|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Equal0~2_combout\ = (\pulsos|acel11|s_divCounter\(8) & (\pulsos|acel11|s_divCounter\(10) & (!\pulsos|acel11|s_divCounter\(11) & \pulsos|acel11|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(8),
	datab => \pulsos|acel11|s_divCounter\(10),
	datac => \pulsos|acel11|s_divCounter\(11),
	datad => \pulsos|acel11|s_divCounter\(9),
	combout => \pulsos|acel11|Equal0~2_combout\);

-- Location: LCCOMB_X99_Y33_N8
\pulsos|acel11|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Equal0~3_combout\ = (\pulsos|acel11|s_divCounter\(15) & (!\pulsos|acel11|s_divCounter\(14) & (\pulsos|acel11|s_divCounter\(13) & \pulsos|acel11|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(15),
	datab => \pulsos|acel11|s_divCounter\(14),
	datac => \pulsos|acel11|s_divCounter\(13),
	datad => \pulsos|acel11|s_divCounter\(12),
	combout => \pulsos|acel11|Equal0~3_combout\);

-- Location: LCCOMB_X99_Y33_N28
\pulsos|acel11|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Equal0~0_combout\ = (!\pulsos|acel11|s_divCounter\(3) & (\pulsos|acel11|s_divCounter\(4) & (\pulsos|acel11|s_divCounter\(5) & \pulsos|acel11|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|s_divCounter\(3),
	datab => \pulsos|acel11|s_divCounter\(4),
	datac => \pulsos|acel11|s_divCounter\(5),
	datad => \pulsos|acel11|s_divCounter\(2),
	combout => \pulsos|acel11|Equal0~0_combout\);

-- Location: LCCOMB_X99_Y33_N10
\pulsos|acel11|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Equal0~4_combout\ = (\pulsos|acel11|Equal0~1_combout\ & (\pulsos|acel11|Equal0~2_combout\ & (\pulsos|acel11|Equal0~3_combout\ & \pulsos|acel11|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|Equal0~1_combout\,
	datab => \pulsos|acel11|Equal0~2_combout\,
	datac => \pulsos|acel11|Equal0~3_combout\,
	datad => \pulsos|acel11|Equal0~0_combout\,
	combout => \pulsos|acel11|Equal0~4_combout\);

-- Location: LCCOMB_X99_Y33_N20
\pulsos|acel11|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel11|Equal0~9_combout\ = (\pulsos|acel11|Equal0~6_combout\ & (\pulsos|acel11|Equal0~8_combout\ & (\pulsos|acel11|Equal0~5_combout\ & \pulsos|acel11|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|Equal0~6_combout\,
	datab => \pulsos|acel11|Equal0~8_combout\,
	datac => \pulsos|acel11|Equal0~5_combout\,
	datad => \pulsos|acel11|Equal0~4_combout\,
	combout => \pulsos|acel11|Equal0~9_combout\);

-- Location: FF_X99_Y33_N21
\pulsos|acel11|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel11|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel11|clkOut~q\);

-- Location: LCCOMB_X100_Y38_N2
\pulsos|saida2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~0_combout\ = \pulsos|saida2|s_divCounter\(0) $ (VCC)
-- \pulsos|saida2|Add0~1\ = CARRY(\pulsos|saida2|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(0),
	datad => VCC,
	combout => \pulsos|saida2|Add0~0_combout\,
	cout => \pulsos|saida2|Add0~1\);

-- Location: FF_X100_Y38_N3
\pulsos|saida2|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(0));

-- Location: LCCOMB_X100_Y38_N4
\pulsos|saida2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~2_combout\ = (\pulsos|saida2|s_divCounter\(1) & (!\pulsos|saida2|Add0~1\)) # (!\pulsos|saida2|s_divCounter\(1) & ((\pulsos|saida2|Add0~1\) # (GND)))
-- \pulsos|saida2|Add0~3\ = CARRY((!\pulsos|saida2|Add0~1\) # (!\pulsos|saida2|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(1),
	datad => VCC,
	cin => \pulsos|saida2|Add0~1\,
	combout => \pulsos|saida2|Add0~2_combout\,
	cout => \pulsos|saida2|Add0~3\);

-- Location: FF_X100_Y38_N5
\pulsos|saida2|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(1));

-- Location: LCCOMB_X105_Y38_N2
\pulsos|acel10|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~1_cout\ = CARRY((\pulsos|saida2|s_divCounter\(0) & \pulsos|saida2|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(0),
	datab => \pulsos|saida2|s_divCounter\(1),
	datad => VCC,
	cout => \pulsos|acel10|Add0~1_cout\);

-- Location: LCCOMB_X105_Y38_N4
\pulsos|acel10|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~2_combout\ = (\pulsos|acel10|s_divCounter\(2) & (!\pulsos|acel10|Add0~1_cout\)) # (!\pulsos|acel10|s_divCounter\(2) & ((\pulsos|acel10|Add0~1_cout\) # (GND)))
-- \pulsos|acel10|Add0~3\ = CARRY((!\pulsos|acel10|Add0~1_cout\) # (!\pulsos|acel10|s_divCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(2),
	datad => VCC,
	cin => \pulsos|acel10|Add0~1_cout\,
	combout => \pulsos|acel10|Add0~2_combout\,
	cout => \pulsos|acel10|Add0~3\);

-- Location: FF_X105_Y38_N5
\pulsos|acel10|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(2));

-- Location: LCCOMB_X105_Y38_N6
\pulsos|acel10|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~4_combout\ = (\pulsos|acel10|s_divCounter\(3) & (\pulsos|acel10|Add0~3\ $ (GND))) # (!\pulsos|acel10|s_divCounter\(3) & (!\pulsos|acel10|Add0~3\ & VCC))
-- \pulsos|acel10|Add0~5\ = CARRY((\pulsos|acel10|s_divCounter\(3) & !\pulsos|acel10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(3),
	datad => VCC,
	cin => \pulsos|acel10|Add0~3\,
	combout => \pulsos|acel10|Add0~4_combout\,
	cout => \pulsos|acel10|Add0~5\);

-- Location: FF_X105_Y38_N7
\pulsos|acel10|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(3));

-- Location: LCCOMB_X105_Y38_N8
\pulsos|acel10|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~6_combout\ = (\pulsos|acel10|s_divCounter\(4) & (!\pulsos|acel10|Add0~5\)) # (!\pulsos|acel10|s_divCounter\(4) & ((\pulsos|acel10|Add0~5\) # (GND)))
-- \pulsos|acel10|Add0~7\ = CARRY((!\pulsos|acel10|Add0~5\) # (!\pulsos|acel10|s_divCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(4),
	datad => VCC,
	cin => \pulsos|acel10|Add0~5\,
	combout => \pulsos|acel10|Add0~6_combout\,
	cout => \pulsos|acel10|Add0~7\);

-- Location: FF_X105_Y38_N9
\pulsos|acel10|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(4));

-- Location: LCCOMB_X105_Y38_N10
\pulsos|acel10|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~8_combout\ = (\pulsos|acel10|s_divCounter\(5) & (\pulsos|acel10|Add0~7\ $ (GND))) # (!\pulsos|acel10|s_divCounter\(5) & (!\pulsos|acel10|Add0~7\ & VCC))
-- \pulsos|acel10|Add0~9\ = CARRY((\pulsos|acel10|s_divCounter\(5) & !\pulsos|acel10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(5),
	datad => VCC,
	cin => \pulsos|acel10|Add0~7\,
	combout => \pulsos|acel10|Add0~8_combout\,
	cout => \pulsos|acel10|Add0~9\);

-- Location: FF_X105_Y38_N11
\pulsos|acel10|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(5));

-- Location: LCCOMB_X105_Y38_N12
\pulsos|acel10|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~10_combout\ = (\pulsos|acel10|s_divCounter\(6) & (!\pulsos|acel10|Add0~9\)) # (!\pulsos|acel10|s_divCounter\(6) & ((\pulsos|acel10|Add0~9\) # (GND)))
-- \pulsos|acel10|Add0~11\ = CARRY((!\pulsos|acel10|Add0~9\) # (!\pulsos|acel10|s_divCounter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(6),
	datad => VCC,
	cin => \pulsos|acel10|Add0~9\,
	combout => \pulsos|acel10|Add0~10_combout\,
	cout => \pulsos|acel10|Add0~11\);

-- Location: LCCOMB_X105_Y38_N0
\pulsos|acel10|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|s_divCounter~0_combout\ = (!\pulsos|acel10|Equal0~9_combout\ & \pulsos|acel10|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|acel10|Equal0~9_combout\,
	datad => \pulsos|acel10|Add0~10_combout\,
	combout => \pulsos|acel10|s_divCounter~0_combout\);

-- Location: FF_X105_Y38_N1
\pulsos|acel10|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(6));

-- Location: LCCOMB_X105_Y38_N14
\pulsos|acel10|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~12_combout\ = (\pulsos|acel10|s_divCounter\(7) & (\pulsos|acel10|Add0~11\ $ (GND))) # (!\pulsos|acel10|s_divCounter\(7) & (!\pulsos|acel10|Add0~11\ & VCC))
-- \pulsos|acel10|Add0~13\ = CARRY((\pulsos|acel10|s_divCounter\(7) & !\pulsos|acel10|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(7),
	datad => VCC,
	cin => \pulsos|acel10|Add0~11\,
	combout => \pulsos|acel10|Add0~12_combout\,
	cout => \pulsos|acel10|Add0~13\);

-- Location: FF_X105_Y38_N15
\pulsos|acel10|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(7));

-- Location: LCCOMB_X105_Y38_N16
\pulsos|acel10|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~14_combout\ = (\pulsos|acel10|s_divCounter\(8) & (!\pulsos|acel10|Add0~13\)) # (!\pulsos|acel10|s_divCounter\(8) & ((\pulsos|acel10|Add0~13\) # (GND)))
-- \pulsos|acel10|Add0~15\ = CARRY((!\pulsos|acel10|Add0~13\) # (!\pulsos|acel10|s_divCounter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(8),
	datad => VCC,
	cin => \pulsos|acel10|Add0~13\,
	combout => \pulsos|acel10|Add0~14_combout\,
	cout => \pulsos|acel10|Add0~15\);

-- Location: LCCOMB_X106_Y38_N4
\pulsos|acel10|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|s_divCounter~1_combout\ = (\pulsos|acel10|Add0~14_combout\ & !\pulsos|acel10|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|acel10|Add0~14_combout\,
	datad => \pulsos|acel10|Equal0~9_combout\,
	combout => \pulsos|acel10|s_divCounter~1_combout\);

-- Location: FF_X106_Y38_N5
\pulsos|acel10|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(8));

-- Location: LCCOMB_X105_Y38_N18
\pulsos|acel10|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~16_combout\ = (\pulsos|acel10|s_divCounter\(9) & (\pulsos|acel10|Add0~15\ $ (GND))) # (!\pulsos|acel10|s_divCounter\(9) & (!\pulsos|acel10|Add0~15\ & VCC))
-- \pulsos|acel10|Add0~17\ = CARRY((\pulsos|acel10|s_divCounter\(9) & !\pulsos|acel10|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(9),
	datad => VCC,
	cin => \pulsos|acel10|Add0~15\,
	combout => \pulsos|acel10|Add0~16_combout\,
	cout => \pulsos|acel10|Add0~17\);

-- Location: LCCOMB_X106_Y38_N2
\pulsos|acel10|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|s_divCounter~2_combout\ = (!\pulsos|acel10|Equal0~9_combout\ & \pulsos|acel10|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|Equal0~9_combout\,
	datad => \pulsos|acel10|Add0~16_combout\,
	combout => \pulsos|acel10|s_divCounter~2_combout\);

-- Location: FF_X106_Y38_N3
\pulsos|acel10|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(9));

-- Location: LCCOMB_X105_Y38_N20
\pulsos|acel10|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~18_combout\ = (\pulsos|acel10|s_divCounter\(10) & (!\pulsos|acel10|Add0~17\)) # (!\pulsos|acel10|s_divCounter\(10) & ((\pulsos|acel10|Add0~17\) # (GND)))
-- \pulsos|acel10|Add0~19\ = CARRY((!\pulsos|acel10|Add0~17\) # (!\pulsos|acel10|s_divCounter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(10),
	datad => VCC,
	cin => \pulsos|acel10|Add0~17\,
	combout => \pulsos|acel10|Add0~18_combout\,
	cout => \pulsos|acel10|Add0~19\);

-- Location: FF_X105_Y38_N21
\pulsos|acel10|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(10));

-- Location: LCCOMB_X105_Y38_N22
\pulsos|acel10|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~20_combout\ = (\pulsos|acel10|s_divCounter\(11) & (\pulsos|acel10|Add0~19\ $ (GND))) # (!\pulsos|acel10|s_divCounter\(11) & (!\pulsos|acel10|Add0~19\ & VCC))
-- \pulsos|acel10|Add0~21\ = CARRY((\pulsos|acel10|s_divCounter\(11) & !\pulsos|acel10|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(11),
	datad => VCC,
	cin => \pulsos|acel10|Add0~19\,
	combout => \pulsos|acel10|Add0~20_combout\,
	cout => \pulsos|acel10|Add0~21\);

-- Location: LCCOMB_X106_Y38_N24
\pulsos|acel10|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|s_divCounter~3_combout\ = (!\pulsos|acel10|Equal0~9_combout\ & \pulsos|acel10|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|Equal0~9_combout\,
	datad => \pulsos|acel10|Add0~20_combout\,
	combout => \pulsos|acel10|s_divCounter~3_combout\);

-- Location: FF_X106_Y38_N25
\pulsos|acel10|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(11));

-- Location: LCCOMB_X105_Y38_N24
\pulsos|acel10|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~22_combout\ = (\pulsos|acel10|s_divCounter\(12) & (!\pulsos|acel10|Add0~21\)) # (!\pulsos|acel10|s_divCounter\(12) & ((\pulsos|acel10|Add0~21\) # (GND)))
-- \pulsos|acel10|Add0~23\ = CARRY((!\pulsos|acel10|Add0~21\) # (!\pulsos|acel10|s_divCounter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(12),
	datad => VCC,
	cin => \pulsos|acel10|Add0~21\,
	combout => \pulsos|acel10|Add0~22_combout\,
	cout => \pulsos|acel10|Add0~23\);

-- Location: FF_X105_Y38_N25
\pulsos|acel10|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(12));

-- Location: LCCOMB_X105_Y38_N26
\pulsos|acel10|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~24_combout\ = (\pulsos|acel10|s_divCounter\(13) & (\pulsos|acel10|Add0~23\ $ (GND))) # (!\pulsos|acel10|s_divCounter\(13) & (!\pulsos|acel10|Add0~23\ & VCC))
-- \pulsos|acel10|Add0~25\ = CARRY((\pulsos|acel10|s_divCounter\(13) & !\pulsos|acel10|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(13),
	datad => VCC,
	cin => \pulsos|acel10|Add0~23\,
	combout => \pulsos|acel10|Add0~24_combout\,
	cout => \pulsos|acel10|Add0~25\);

-- Location: FF_X105_Y38_N27
\pulsos|acel10|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(13));

-- Location: LCCOMB_X105_Y38_N28
\pulsos|acel10|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~26_combout\ = (\pulsos|acel10|s_divCounter\(14) & (!\pulsos|acel10|Add0~25\)) # (!\pulsos|acel10|s_divCounter\(14) & ((\pulsos|acel10|Add0~25\) # (GND)))
-- \pulsos|acel10|Add0~27\ = CARRY((!\pulsos|acel10|Add0~25\) # (!\pulsos|acel10|s_divCounter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(14),
	datad => VCC,
	cin => \pulsos|acel10|Add0~25\,
	combout => \pulsos|acel10|Add0~26_combout\,
	cout => \pulsos|acel10|Add0~27\);

-- Location: LCCOMB_X106_Y38_N8
\pulsos|acel10|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|s_divCounter~4_combout\ = (!\pulsos|acel10|Equal0~9_combout\ & \pulsos|acel10|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|Equal0~9_combout\,
	datad => \pulsos|acel10|Add0~26_combout\,
	combout => \pulsos|acel10|s_divCounter~4_combout\);

-- Location: FF_X106_Y38_N9
\pulsos|acel10|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(14));

-- Location: LCCOMB_X105_Y38_N30
\pulsos|acel10|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~28_combout\ = (\pulsos|acel10|s_divCounter\(15) & (\pulsos|acel10|Add0~27\ $ (GND))) # (!\pulsos|acel10|s_divCounter\(15) & (!\pulsos|acel10|Add0~27\ & VCC))
-- \pulsos|acel10|Add0~29\ = CARRY((\pulsos|acel10|s_divCounter\(15) & !\pulsos|acel10|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(15),
	datad => VCC,
	cin => \pulsos|acel10|Add0~27\,
	combout => \pulsos|acel10|Add0~28_combout\,
	cout => \pulsos|acel10|Add0~29\);

-- Location: FF_X105_Y38_N31
\pulsos|acel10|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(15));

-- Location: LCCOMB_X105_Y37_N0
\pulsos|acel10|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~30_combout\ = (\pulsos|acel10|s_divCounter\(16) & (!\pulsos|acel10|Add0~29\)) # (!\pulsos|acel10|s_divCounter\(16) & ((\pulsos|acel10|Add0~29\) # (GND)))
-- \pulsos|acel10|Add0~31\ = CARRY((!\pulsos|acel10|Add0~29\) # (!\pulsos|acel10|s_divCounter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(16),
	datad => VCC,
	cin => \pulsos|acel10|Add0~29\,
	combout => \pulsos|acel10|Add0~30_combout\,
	cout => \pulsos|acel10|Add0~31\);

-- Location: FF_X105_Y37_N1
\pulsos|acel10|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(16));

-- Location: LCCOMB_X105_Y37_N2
\pulsos|acel10|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~32_combout\ = (\pulsos|acel10|s_divCounter\(17) & (\pulsos|acel10|Add0~31\ $ (GND))) # (!\pulsos|acel10|s_divCounter\(17) & (!\pulsos|acel10|Add0~31\ & VCC))
-- \pulsos|acel10|Add0~33\ = CARRY((\pulsos|acel10|s_divCounter\(17) & !\pulsos|acel10|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(17),
	datad => VCC,
	cin => \pulsos|acel10|Add0~31\,
	combout => \pulsos|acel10|Add0~32_combout\,
	cout => \pulsos|acel10|Add0~33\);

-- Location: FF_X105_Y37_N3
\pulsos|acel10|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(17));

-- Location: LCCOMB_X105_Y37_N4
\pulsos|acel10|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~34_combout\ = (\pulsos|acel10|s_divCounter\(18) & (!\pulsos|acel10|Add0~33\)) # (!\pulsos|acel10|s_divCounter\(18) & ((\pulsos|acel10|Add0~33\) # (GND)))
-- \pulsos|acel10|Add0~35\ = CARRY((!\pulsos|acel10|Add0~33\) # (!\pulsos|acel10|s_divCounter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(18),
	datad => VCC,
	cin => \pulsos|acel10|Add0~33\,
	combout => \pulsos|acel10|Add0~34_combout\,
	cout => \pulsos|acel10|Add0~35\);

-- Location: LCCOMB_X106_Y38_N30
\pulsos|acel10|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|s_divCounter~5_combout\ = (!\pulsos|acel10|Equal0~9_combout\ & \pulsos|acel10|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|Equal0~9_combout\,
	datad => \pulsos|acel10|Add0~34_combout\,
	combout => \pulsos|acel10|s_divCounter~5_combout\);

-- Location: FF_X106_Y38_N31
\pulsos|acel10|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(18));

-- Location: LCCOMB_X105_Y37_N6
\pulsos|acel10|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~36_combout\ = (\pulsos|acel10|s_divCounter\(19) & (\pulsos|acel10|Add0~35\ $ (GND))) # (!\pulsos|acel10|s_divCounter\(19) & (!\pulsos|acel10|Add0~35\ & VCC))
-- \pulsos|acel10|Add0~37\ = CARRY((\pulsos|acel10|s_divCounter\(19) & !\pulsos|acel10|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(19),
	datad => VCC,
	cin => \pulsos|acel10|Add0~35\,
	combout => \pulsos|acel10|Add0~36_combout\,
	cout => \pulsos|acel10|Add0~37\);

-- Location: LCCOMB_X106_Y38_N16
\pulsos|acel10|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|s_divCounter~6_combout\ = (!\pulsos|acel10|Equal0~9_combout\ & \pulsos|acel10|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|Equal0~9_combout\,
	datad => \pulsos|acel10|Add0~36_combout\,
	combout => \pulsos|acel10|s_divCounter~6_combout\);

-- Location: FF_X106_Y38_N17
\pulsos|acel10|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(19));

-- Location: LCCOMB_X105_Y37_N8
\pulsos|acel10|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~38_combout\ = (\pulsos|acel10|s_divCounter\(20) & (!\pulsos|acel10|Add0~37\)) # (!\pulsos|acel10|s_divCounter\(20) & ((\pulsos|acel10|Add0~37\) # (GND)))
-- \pulsos|acel10|Add0~39\ = CARRY((!\pulsos|acel10|Add0~37\) # (!\pulsos|acel10|s_divCounter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(20),
	datad => VCC,
	cin => \pulsos|acel10|Add0~37\,
	combout => \pulsos|acel10|Add0~38_combout\,
	cout => \pulsos|acel10|Add0~39\);

-- Location: FF_X105_Y37_N9
\pulsos|acel10|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(20));

-- Location: LCCOMB_X105_Y37_N10
\pulsos|acel10|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~40_combout\ = (\pulsos|acel10|s_divCounter\(21) & (\pulsos|acel10|Add0~39\ $ (GND))) # (!\pulsos|acel10|s_divCounter\(21) & (!\pulsos|acel10|Add0~39\ & VCC))
-- \pulsos|acel10|Add0~41\ = CARRY((\pulsos|acel10|s_divCounter\(21) & !\pulsos|acel10|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(21),
	datad => VCC,
	cin => \pulsos|acel10|Add0~39\,
	combout => \pulsos|acel10|Add0~40_combout\,
	cout => \pulsos|acel10|Add0~41\);

-- Location: FF_X105_Y37_N11
\pulsos|acel10|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(21));

-- Location: LCCOMB_X105_Y37_N12
\pulsos|acel10|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~42_combout\ = (\pulsos|acel10|s_divCounter\(22) & (!\pulsos|acel10|Add0~41\)) # (!\pulsos|acel10|s_divCounter\(22) & ((\pulsos|acel10|Add0~41\) # (GND)))
-- \pulsos|acel10|Add0~43\ = CARRY((!\pulsos|acel10|Add0~41\) # (!\pulsos|acel10|s_divCounter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(22),
	datad => VCC,
	cin => \pulsos|acel10|Add0~41\,
	combout => \pulsos|acel10|Add0~42_combout\,
	cout => \pulsos|acel10|Add0~43\);

-- Location: LCCOMB_X106_Y38_N28
\pulsos|acel10|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|s_divCounter~7_combout\ = (!\pulsos|acel10|Equal0~9_combout\ & \pulsos|acel10|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|Equal0~9_combout\,
	datad => \pulsos|acel10|Add0~42_combout\,
	combout => \pulsos|acel10|s_divCounter~7_combout\);

-- Location: FF_X106_Y38_N29
\pulsos|acel10|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(22));

-- Location: LCCOMB_X105_Y37_N14
\pulsos|acel10|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~44_combout\ = (\pulsos|acel10|s_divCounter\(23) & (\pulsos|acel10|Add0~43\ $ (GND))) # (!\pulsos|acel10|s_divCounter\(23) & (!\pulsos|acel10|Add0~43\ & VCC))
-- \pulsos|acel10|Add0~45\ = CARRY((\pulsos|acel10|s_divCounter\(23) & !\pulsos|acel10|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(23),
	datad => VCC,
	cin => \pulsos|acel10|Add0~43\,
	combout => \pulsos|acel10|Add0~44_combout\,
	cout => \pulsos|acel10|Add0~45\);

-- Location: FF_X105_Y37_N15
\pulsos|acel10|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(23));

-- Location: LCCOMB_X106_Y38_N10
\pulsos|acel10|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Equal0~6_combout\ = (!\pulsos|acel10|s_divCounter\(23) & (\pulsos|acel10|s_divCounter\(22) & (!\pulsos|acel10|s_divCounter\(20) & !\pulsos|acel10|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(23),
	datab => \pulsos|acel10|s_divCounter\(22),
	datac => \pulsos|acel10|s_divCounter\(20),
	datad => \pulsos|acel10|s_divCounter\(21),
	combout => \pulsos|acel10|Equal0~6_combout\);

-- Location: LCCOMB_X105_Y37_N16
\pulsos|acel10|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~46_combout\ = (\pulsos|acel10|s_divCounter\(24) & (!\pulsos|acel10|Add0~45\)) # (!\pulsos|acel10|s_divCounter\(24) & ((\pulsos|acel10|Add0~45\) # (GND)))
-- \pulsos|acel10|Add0~47\ = CARRY((!\pulsos|acel10|Add0~45\) # (!\pulsos|acel10|s_divCounter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(24),
	datad => VCC,
	cin => \pulsos|acel10|Add0~45\,
	combout => \pulsos|acel10|Add0~46_combout\,
	cout => \pulsos|acel10|Add0~47\);

-- Location: FF_X105_Y37_N17
\pulsos|acel10|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(24));

-- Location: LCCOMB_X105_Y37_N18
\pulsos|acel10|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~48_combout\ = (\pulsos|acel10|s_divCounter\(25) & (\pulsos|acel10|Add0~47\ $ (GND))) # (!\pulsos|acel10|s_divCounter\(25) & (!\pulsos|acel10|Add0~47\ & VCC))
-- \pulsos|acel10|Add0~49\ = CARRY((\pulsos|acel10|s_divCounter\(25) & !\pulsos|acel10|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(25),
	datad => VCC,
	cin => \pulsos|acel10|Add0~47\,
	combout => \pulsos|acel10|Add0~48_combout\,
	cout => \pulsos|acel10|Add0~49\);

-- Location: FF_X105_Y37_N19
\pulsos|acel10|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(25));

-- Location: LCCOMB_X105_Y37_N20
\pulsos|acel10|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~50_combout\ = (\pulsos|acel10|s_divCounter\(26) & (!\pulsos|acel10|Add0~49\)) # (!\pulsos|acel10|s_divCounter\(26) & ((\pulsos|acel10|Add0~49\) # (GND)))
-- \pulsos|acel10|Add0~51\ = CARRY((!\pulsos|acel10|Add0~49\) # (!\pulsos|acel10|s_divCounter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(26),
	datad => VCC,
	cin => \pulsos|acel10|Add0~49\,
	combout => \pulsos|acel10|Add0~50_combout\,
	cout => \pulsos|acel10|Add0~51\);

-- Location: FF_X105_Y37_N21
\pulsos|acel10|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(26));

-- Location: LCCOMB_X105_Y37_N22
\pulsos|acel10|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~52_combout\ = (\pulsos|acel10|s_divCounter\(27) & (\pulsos|acel10|Add0~51\ $ (GND))) # (!\pulsos|acel10|s_divCounter\(27) & (!\pulsos|acel10|Add0~51\ & VCC))
-- \pulsos|acel10|Add0~53\ = CARRY((\pulsos|acel10|s_divCounter\(27) & !\pulsos|acel10|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(27),
	datad => VCC,
	cin => \pulsos|acel10|Add0~51\,
	combout => \pulsos|acel10|Add0~52_combout\,
	cout => \pulsos|acel10|Add0~53\);

-- Location: FF_X105_Y37_N23
\pulsos|acel10|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(27));

-- Location: LCCOMB_X105_Y37_N24
\pulsos|acel10|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~54_combout\ = (\pulsos|acel10|s_divCounter\(28) & (!\pulsos|acel10|Add0~53\)) # (!\pulsos|acel10|s_divCounter\(28) & ((\pulsos|acel10|Add0~53\) # (GND)))
-- \pulsos|acel10|Add0~55\ = CARRY((!\pulsos|acel10|Add0~53\) # (!\pulsos|acel10|s_divCounter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|acel10|s_divCounter\(28),
	datad => VCC,
	cin => \pulsos|acel10|Add0~53\,
	combout => \pulsos|acel10|Add0~54_combout\,
	cout => \pulsos|acel10|Add0~55\);

-- Location: FF_X105_Y37_N25
\pulsos|acel10|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(28));

-- Location: LCCOMB_X105_Y37_N26
\pulsos|acel10|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~56_combout\ = (\pulsos|acel10|s_divCounter\(29) & (\pulsos|acel10|Add0~55\ $ (GND))) # (!\pulsos|acel10|s_divCounter\(29) & (!\pulsos|acel10|Add0~55\ & VCC))
-- \pulsos|acel10|Add0~57\ = CARRY((\pulsos|acel10|s_divCounter\(29) & !\pulsos|acel10|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(29),
	datad => VCC,
	cin => \pulsos|acel10|Add0~55\,
	combout => \pulsos|acel10|Add0~56_combout\,
	cout => \pulsos|acel10|Add0~57\);

-- Location: FF_X105_Y37_N27
\pulsos|acel10|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(29));

-- Location: LCCOMB_X105_Y37_N28
\pulsos|acel10|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Add0~58_combout\ = \pulsos|acel10|Add0~57\ $ (\pulsos|acel10|s_divCounter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulsos|acel10|s_divCounter\(30),
	cin => \pulsos|acel10|Add0~57\,
	combout => \pulsos|acel10|Add0~58_combout\);

-- Location: FF_X105_Y37_N29
\pulsos|acel10|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|s_divCounter\(30));

-- Location: LCCOMB_X105_Y37_N30
\pulsos|acel10|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Equal0~7_combout\ = (!\pulsos|acel10|s_divCounter\(26) & (!\pulsos|acel10|s_divCounter\(25) & (!\pulsos|acel10|s_divCounter\(27) & !\pulsos|acel10|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(26),
	datab => \pulsos|acel10|s_divCounter\(25),
	datac => \pulsos|acel10|s_divCounter\(27),
	datad => \pulsos|acel10|s_divCounter\(24),
	combout => \pulsos|acel10|Equal0~7_combout\);

-- Location: LCCOMB_X106_Y37_N0
\pulsos|acel10|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Equal0~8_combout\ = (!\pulsos|acel10|s_divCounter\(29) & (!\pulsos|acel10|s_divCounter\(30) & (\pulsos|acel10|Equal0~7_combout\ & !\pulsos|acel10|s_divCounter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(29),
	datab => \pulsos|acel10|s_divCounter\(30),
	datac => \pulsos|acel10|Equal0~7_combout\,
	datad => \pulsos|acel10|s_divCounter\(28),
	combout => \pulsos|acel10|Equal0~8_combout\);

-- Location: LCCOMB_X106_Y38_N26
\pulsos|acel10|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Equal0~5_combout\ = (\pulsos|acel10|s_divCounter\(18) & (!\pulsos|acel10|s_divCounter\(16) & (!\pulsos|acel10|s_divCounter\(17) & \pulsos|acel10|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(18),
	datab => \pulsos|acel10|s_divCounter\(16),
	datac => \pulsos|acel10|s_divCounter\(17),
	datad => \pulsos|acel10|s_divCounter\(19),
	combout => \pulsos|acel10|Equal0~5_combout\);

-- Location: LCCOMB_X106_Y38_N6
\pulsos|acel10|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Equal0~3_combout\ = (!\pulsos|acel10|s_divCounter\(15) & (\pulsos|acel10|s_divCounter\(14) & (!\pulsos|acel10|s_divCounter\(13) & !\pulsos|acel10|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(15),
	datab => \pulsos|acel10|s_divCounter\(14),
	datac => \pulsos|acel10|s_divCounter\(13),
	datad => \pulsos|acel10|s_divCounter\(12),
	combout => \pulsos|acel10|Equal0~3_combout\);

-- Location: LCCOMB_X106_Y38_N18
\pulsos|acel10|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Equal0~1_combout\ = (!\pulsos|acel10|s_divCounter\(7) & (\pulsos|acel10|s_divCounter\(3) & (\pulsos|acel10|s_divCounter\(2) & \pulsos|acel10|s_divCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(7),
	datab => \pulsos|acel10|s_divCounter\(3),
	datac => \pulsos|acel10|s_divCounter\(2),
	datad => \pulsos|acel10|s_divCounter\(4),
	combout => \pulsos|acel10|Equal0~1_combout\);

-- Location: LCCOMB_X106_Y38_N22
\pulsos|acel10|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Equal0~2_combout\ = (!\pulsos|acel10|s_divCounter\(10) & (\pulsos|acel10|s_divCounter\(11) & (\pulsos|acel10|s_divCounter\(8) & \pulsos|acel10|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(10),
	datab => \pulsos|acel10|s_divCounter\(11),
	datac => \pulsos|acel10|s_divCounter\(8),
	datad => \pulsos|acel10|s_divCounter\(9),
	combout => \pulsos|acel10|Equal0~2_combout\);

-- Location: LCCOMB_X106_Y38_N0
\pulsos|acel10|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Equal0~0_combout\ = (\pulsos|acel10|s_divCounter\(5) & (\pulsos|saida2|s_divCounter\(0) & (!\pulsos|acel10|s_divCounter\(6) & \pulsos|saida2|s_divCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|s_divCounter\(5),
	datab => \pulsos|saida2|s_divCounter\(0),
	datac => \pulsos|acel10|s_divCounter\(6),
	datad => \pulsos|saida2|s_divCounter\(1),
	combout => \pulsos|acel10|Equal0~0_combout\);

-- Location: LCCOMB_X106_Y38_N12
\pulsos|acel10|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Equal0~4_combout\ = (\pulsos|acel10|Equal0~3_combout\ & (\pulsos|acel10|Equal0~1_combout\ & (\pulsos|acel10|Equal0~2_combout\ & \pulsos|acel10|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|Equal0~3_combout\,
	datab => \pulsos|acel10|Equal0~1_combout\,
	datac => \pulsos|acel10|Equal0~2_combout\,
	datad => \pulsos|acel10|Equal0~0_combout\,
	combout => \pulsos|acel10|Equal0~4_combout\);

-- Location: LCCOMB_X106_Y38_N20
\pulsos|acel10|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|Equal0~9_combout\ = (\pulsos|acel10|Equal0~6_combout\ & (\pulsos|acel10|Equal0~8_combout\ & (\pulsos|acel10|Equal0~5_combout\ & \pulsos|acel10|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel10|Equal0~6_combout\,
	datab => \pulsos|acel10|Equal0~8_combout\,
	datac => \pulsos|acel10|Equal0~5_combout\,
	datad => \pulsos|acel10|Equal0~4_combout\,
	combout => \pulsos|acel10|Equal0~9_combout\);

-- Location: LCCOMB_X101_Y38_N24
\pulsos|acel10|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel10|clkOut~feeder_combout\ = \pulsos|acel10|Equal0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pulsos|acel10|Equal0~9_combout\,
	combout => \pulsos|acel10|clkOut~feeder_combout\);

-- Location: FF_X101_Y38_N25
\pulsos|acel10|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel10|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel10|clkOut~q\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X100_Y38_N6
\pulsos|saida2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~4_combout\ = (\pulsos|saida2|s_divCounter\(2) & (\pulsos|saida2|Add0~3\ $ (GND))) # (!\pulsos|saida2|s_divCounter\(2) & (!\pulsos|saida2|Add0~3\ & VCC))
-- \pulsos|saida2|Add0~5\ = CARRY((\pulsos|saida2|s_divCounter\(2) & !\pulsos|saida2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(2),
	datad => VCC,
	cin => \pulsos|saida2|Add0~3\,
	combout => \pulsos|saida2|Add0~4_combout\,
	cout => \pulsos|saida2|Add0~5\);

-- Location: FF_X100_Y38_N7
\pulsos|saida2|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(2));

-- Location: LCCOMB_X100_Y38_N8
\pulsos|saida2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~6_combout\ = (\pulsos|saida2|s_divCounter\(3) & (!\pulsos|saida2|Add0~5\)) # (!\pulsos|saida2|s_divCounter\(3) & ((\pulsos|saida2|Add0~5\) # (GND)))
-- \pulsos|saida2|Add0~7\ = CARRY((!\pulsos|saida2|Add0~5\) # (!\pulsos|saida2|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(3),
	datad => VCC,
	cin => \pulsos|saida2|Add0~5\,
	combout => \pulsos|saida2|Add0~6_combout\,
	cout => \pulsos|saida2|Add0~7\);

-- Location: FF_X100_Y38_N9
\pulsos|saida2|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(3));

-- Location: LCCOMB_X100_Y38_N10
\pulsos|saida2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~8_combout\ = (\pulsos|saida2|s_divCounter\(4) & (\pulsos|saida2|Add0~7\ $ (GND))) # (!\pulsos|saida2|s_divCounter\(4) & (!\pulsos|saida2|Add0~7\ & VCC))
-- \pulsos|saida2|Add0~9\ = CARRY((\pulsos|saida2|s_divCounter\(4) & !\pulsos|saida2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(4),
	datad => VCC,
	cin => \pulsos|saida2|Add0~7\,
	combout => \pulsos|saida2|Add0~8_combout\,
	cout => \pulsos|saida2|Add0~9\);

-- Location: FF_X100_Y38_N11
\pulsos|saida2|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(4));

-- Location: LCCOMB_X100_Y38_N12
\pulsos|saida2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~10_combout\ = (\pulsos|saida2|s_divCounter\(5) & (!\pulsos|saida2|Add0~9\)) # (!\pulsos|saida2|s_divCounter\(5) & ((\pulsos|saida2|Add0~9\) # (GND)))
-- \pulsos|saida2|Add0~11\ = CARRY((!\pulsos|saida2|Add0~9\) # (!\pulsos|saida2|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(5),
	datad => VCC,
	cin => \pulsos|saida2|Add0~9\,
	combout => \pulsos|saida2|Add0~10_combout\,
	cout => \pulsos|saida2|Add0~11\);

-- Location: FF_X100_Y38_N13
\pulsos|saida2|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(5));

-- Location: LCCOMB_X100_Y38_N14
\pulsos|saida2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~12_combout\ = (\pulsos|saida2|s_divCounter\(6) & (\pulsos|saida2|Add0~11\ $ (GND))) # (!\pulsos|saida2|s_divCounter\(6) & (!\pulsos|saida2|Add0~11\ & VCC))
-- \pulsos|saida2|Add0~13\ = CARRY((\pulsos|saida2|s_divCounter\(6) & !\pulsos|saida2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(6),
	datad => VCC,
	cin => \pulsos|saida2|Add0~11\,
	combout => \pulsos|saida2|Add0~12_combout\,
	cout => \pulsos|saida2|Add0~13\);

-- Location: FF_X100_Y38_N15
\pulsos|saida2|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(6));

-- Location: LCCOMB_X100_Y38_N16
\pulsos|saida2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~14_combout\ = (\pulsos|saida2|s_divCounter\(7) & (!\pulsos|saida2|Add0~13\)) # (!\pulsos|saida2|s_divCounter\(7) & ((\pulsos|saida2|Add0~13\) # (GND)))
-- \pulsos|saida2|Add0~15\ = CARRY((!\pulsos|saida2|Add0~13\) # (!\pulsos|saida2|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(7),
	datad => VCC,
	cin => \pulsos|saida2|Add0~13\,
	combout => \pulsos|saida2|Add0~14_combout\,
	cout => \pulsos|saida2|Add0~15\);

-- Location: LCCOMB_X100_Y36_N6
\pulsos|saida2|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|s_divCounter~7_combout\ = (!\pulsos|saida2|Equal0~9_combout\ & \pulsos|saida2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|Equal0~9_combout\,
	datac => \pulsos|saida2|Add0~14_combout\,
	combout => \pulsos|saida2|s_divCounter~7_combout\);

-- Location: FF_X100_Y36_N7
\pulsos|saida2|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(7));

-- Location: LCCOMB_X100_Y38_N18
\pulsos|saida2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~16_combout\ = (\pulsos|saida2|s_divCounter\(8) & (\pulsos|saida2|Add0~15\ $ (GND))) # (!\pulsos|saida2|s_divCounter\(8) & (!\pulsos|saida2|Add0~15\ & VCC))
-- \pulsos|saida2|Add0~17\ = CARRY((\pulsos|saida2|s_divCounter\(8) & !\pulsos|saida2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(8),
	datad => VCC,
	cin => \pulsos|saida2|Add0~15\,
	combout => \pulsos|saida2|Add0~16_combout\,
	cout => \pulsos|saida2|Add0~17\);

-- Location: FF_X100_Y38_N19
\pulsos|saida2|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(8));

-- Location: LCCOMB_X100_Y38_N20
\pulsos|saida2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~18_combout\ = (\pulsos|saida2|s_divCounter\(9) & (!\pulsos|saida2|Add0~17\)) # (!\pulsos|saida2|s_divCounter\(9) & ((\pulsos|saida2|Add0~17\) # (GND)))
-- \pulsos|saida2|Add0~19\ = CARRY((!\pulsos|saida2|Add0~17\) # (!\pulsos|saida2|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(9),
	datad => VCC,
	cin => \pulsos|saida2|Add0~17\,
	combout => \pulsos|saida2|Add0~18_combout\,
	cout => \pulsos|saida2|Add0~19\);

-- Location: FF_X100_Y38_N21
\pulsos|saida2|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(9));

-- Location: LCCOMB_X100_Y38_N22
\pulsos|saida2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~20_combout\ = (\pulsos|saida2|s_divCounter\(10) & (\pulsos|saida2|Add0~19\ $ (GND))) # (!\pulsos|saida2|s_divCounter\(10) & (!\pulsos|saida2|Add0~19\ & VCC))
-- \pulsos|saida2|Add0~21\ = CARRY((\pulsos|saida2|s_divCounter\(10) & !\pulsos|saida2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(10),
	datad => VCC,
	cin => \pulsos|saida2|Add0~19\,
	combout => \pulsos|saida2|Add0~20_combout\,
	cout => \pulsos|saida2|Add0~21\);

-- Location: FF_X100_Y38_N23
\pulsos|saida2|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(10));

-- Location: LCCOMB_X100_Y38_N24
\pulsos|saida2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~22_combout\ = (\pulsos|saida2|s_divCounter\(11) & (!\pulsos|saida2|Add0~21\)) # (!\pulsos|saida2|s_divCounter\(11) & ((\pulsos|saida2|Add0~21\) # (GND)))
-- \pulsos|saida2|Add0~23\ = CARRY((!\pulsos|saida2|Add0~21\) # (!\pulsos|saida2|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(11),
	datad => VCC,
	cin => \pulsos|saida2|Add0~21\,
	combout => \pulsos|saida2|Add0~22_combout\,
	cout => \pulsos|saida2|Add0~23\);

-- Location: FF_X100_Y38_N25
\pulsos|saida2|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(11));

-- Location: LCCOMB_X100_Y38_N26
\pulsos|saida2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~24_combout\ = (\pulsos|saida2|s_divCounter\(12) & (\pulsos|saida2|Add0~23\ $ (GND))) # (!\pulsos|saida2|s_divCounter\(12) & (!\pulsos|saida2|Add0~23\ & VCC))
-- \pulsos|saida2|Add0~25\ = CARRY((\pulsos|saida2|s_divCounter\(12) & !\pulsos|saida2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(12),
	datad => VCC,
	cin => \pulsos|saida2|Add0~23\,
	combout => \pulsos|saida2|Add0~24_combout\,
	cout => \pulsos|saida2|Add0~25\);

-- Location: LCCOMB_X101_Y37_N6
\pulsos|saida2|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|s_divCounter~6_combout\ = (\pulsos|saida2|Add0~24_combout\ & !\pulsos|saida2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|saida2|Add0~24_combout\,
	datad => \pulsos|saida2|Equal0~9_combout\,
	combout => \pulsos|saida2|s_divCounter~6_combout\);

-- Location: FF_X101_Y37_N7
\pulsos|saida2|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(12));

-- Location: LCCOMB_X100_Y38_N28
\pulsos|saida2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~26_combout\ = (\pulsos|saida2|s_divCounter\(13) & (!\pulsos|saida2|Add0~25\)) # (!\pulsos|saida2|s_divCounter\(13) & ((\pulsos|saida2|Add0~25\) # (GND)))
-- \pulsos|saida2|Add0~27\ = CARRY((!\pulsos|saida2|Add0~25\) # (!\pulsos|saida2|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(13),
	datad => VCC,
	cin => \pulsos|saida2|Add0~25\,
	combout => \pulsos|saida2|Add0~26_combout\,
	cout => \pulsos|saida2|Add0~27\);

-- Location: LCCOMB_X101_Y37_N0
\pulsos|saida2|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|s_divCounter~5_combout\ = (\pulsos|saida2|Add0~26_combout\ & !\pulsos|saida2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|saida2|Add0~26_combout\,
	datad => \pulsos|saida2|Equal0~9_combout\,
	combout => \pulsos|saida2|s_divCounter~5_combout\);

-- Location: FF_X101_Y37_N1
\pulsos|saida2|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(13));

-- Location: LCCOMB_X100_Y38_N30
\pulsos|saida2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~28_combout\ = (\pulsos|saida2|s_divCounter\(14) & (\pulsos|saida2|Add0~27\ $ (GND))) # (!\pulsos|saida2|s_divCounter\(14) & (!\pulsos|saida2|Add0~27\ & VCC))
-- \pulsos|saida2|Add0~29\ = CARRY((\pulsos|saida2|s_divCounter\(14) & !\pulsos|saida2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(14),
	datad => VCC,
	cin => \pulsos|saida2|Add0~27\,
	combout => \pulsos|saida2|Add0~28_combout\,
	cout => \pulsos|saida2|Add0~29\);

-- Location: LCCOMB_X101_Y37_N20
\pulsos|saida2|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|s_divCounter~4_combout\ = (\pulsos|saida2|Add0~28_combout\ & !\pulsos|saida2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|Add0~28_combout\,
	datad => \pulsos|saida2|Equal0~9_combout\,
	combout => \pulsos|saida2|s_divCounter~4_combout\);

-- Location: FF_X101_Y37_N21
\pulsos|saida2|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(14));

-- Location: LCCOMB_X100_Y37_N0
\pulsos|saida2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~30_combout\ = (\pulsos|saida2|s_divCounter\(15) & (!\pulsos|saida2|Add0~29\)) # (!\pulsos|saida2|s_divCounter\(15) & ((\pulsos|saida2|Add0~29\) # (GND)))
-- \pulsos|saida2|Add0~31\ = CARRY((!\pulsos|saida2|Add0~29\) # (!\pulsos|saida2|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(15),
	datad => VCC,
	cin => \pulsos|saida2|Add0~29\,
	combout => \pulsos|saida2|Add0~30_combout\,
	cout => \pulsos|saida2|Add0~31\);

-- Location: LCCOMB_X100_Y36_N12
\pulsos|saida2|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|s_divCounter~11_combout\ = (!\pulsos|saida2|Equal0~9_combout\ & \pulsos|saida2|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|saida2|Equal0~9_combout\,
	datad => \pulsos|saida2|Add0~30_combout\,
	combout => \pulsos|saida2|s_divCounter~11_combout\);

-- Location: FF_X100_Y36_N13
\pulsos|saida2|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(15));

-- Location: LCCOMB_X100_Y37_N2
\pulsos|saida2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~32_combout\ = (\pulsos|saida2|s_divCounter\(16) & (\pulsos|saida2|Add0~31\ $ (GND))) # (!\pulsos|saida2|s_divCounter\(16) & (!\pulsos|saida2|Add0~31\ & VCC))
-- \pulsos|saida2|Add0~33\ = CARRY((\pulsos|saida2|s_divCounter\(16) & !\pulsos|saida2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(16),
	datad => VCC,
	cin => \pulsos|saida2|Add0~31\,
	combout => \pulsos|saida2|Add0~32_combout\,
	cout => \pulsos|saida2|Add0~33\);

-- Location: FF_X100_Y37_N3
\pulsos|saida2|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(16));

-- Location: LCCOMB_X100_Y37_N4
\pulsos|saida2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~34_combout\ = (\pulsos|saida2|s_divCounter\(17) & (!\pulsos|saida2|Add0~33\)) # (!\pulsos|saida2|s_divCounter\(17) & ((\pulsos|saida2|Add0~33\) # (GND)))
-- \pulsos|saida2|Add0~35\ = CARRY((!\pulsos|saida2|Add0~33\) # (!\pulsos|saida2|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(17),
	datad => VCC,
	cin => \pulsos|saida2|Add0~33\,
	combout => \pulsos|saida2|Add0~34_combout\,
	cout => \pulsos|saida2|Add0~35\);

-- Location: LCCOMB_X100_Y36_N14
\pulsos|saida2|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|s_divCounter~10_combout\ = (!\pulsos|saida2|Equal0~9_combout\ & \pulsos|saida2|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|Equal0~9_combout\,
	datac => \pulsos|saida2|Add0~34_combout\,
	combout => \pulsos|saida2|s_divCounter~10_combout\);

-- Location: FF_X100_Y36_N15
\pulsos|saida2|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(17));

-- Location: LCCOMB_X100_Y37_N6
\pulsos|saida2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~36_combout\ = (\pulsos|saida2|s_divCounter\(18) & (\pulsos|saida2|Add0~35\ $ (GND))) # (!\pulsos|saida2|s_divCounter\(18) & (!\pulsos|saida2|Add0~35\ & VCC))
-- \pulsos|saida2|Add0~37\ = CARRY((\pulsos|saida2|s_divCounter\(18) & !\pulsos|saida2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(18),
	datad => VCC,
	cin => \pulsos|saida2|Add0~35\,
	combout => \pulsos|saida2|Add0~36_combout\,
	cout => \pulsos|saida2|Add0~37\);

-- Location: FF_X100_Y37_N7
\pulsos|saida2|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(18));

-- Location: LCCOMB_X100_Y37_N8
\pulsos|saida2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~38_combout\ = (\pulsos|saida2|s_divCounter\(19) & (!\pulsos|saida2|Add0~37\)) # (!\pulsos|saida2|s_divCounter\(19) & ((\pulsos|saida2|Add0~37\) # (GND)))
-- \pulsos|saida2|Add0~39\ = CARRY((!\pulsos|saida2|Add0~37\) # (!\pulsos|saida2|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(19),
	datad => VCC,
	cin => \pulsos|saida2|Add0~37\,
	combout => \pulsos|saida2|Add0~38_combout\,
	cout => \pulsos|saida2|Add0~39\);

-- Location: LCCOMB_X101_Y37_N14
\pulsos|saida2|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|s_divCounter~3_combout\ = (\pulsos|saida2|Add0~38_combout\ & !\pulsos|saida2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|Add0~38_combout\,
	datad => \pulsos|saida2|Equal0~9_combout\,
	combout => \pulsos|saida2|s_divCounter~3_combout\);

-- Location: FF_X101_Y37_N15
\pulsos|saida2|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(19));

-- Location: LCCOMB_X100_Y37_N10
\pulsos|saida2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~40_combout\ = (\pulsos|saida2|s_divCounter\(20) & (\pulsos|saida2|Add0~39\ $ (GND))) # (!\pulsos|saida2|s_divCounter\(20) & (!\pulsos|saida2|Add0~39\ & VCC))
-- \pulsos|saida2|Add0~41\ = CARRY((\pulsos|saida2|s_divCounter\(20) & !\pulsos|saida2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(20),
	datad => VCC,
	cin => \pulsos|saida2|Add0~39\,
	combout => \pulsos|saida2|Add0~40_combout\,
	cout => \pulsos|saida2|Add0~41\);

-- Location: LCCOMB_X101_Y37_N4
\pulsos|saida2|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|s_divCounter~2_combout\ = (\pulsos|saida2|Add0~40_combout\ & !\pulsos|saida2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|Add0~40_combout\,
	datad => \pulsos|saida2|Equal0~9_combout\,
	combout => \pulsos|saida2|s_divCounter~2_combout\);

-- Location: FF_X101_Y37_N5
\pulsos|saida2|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(20));

-- Location: LCCOMB_X100_Y37_N12
\pulsos|saida2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~42_combout\ = (\pulsos|saida2|s_divCounter\(21) & (!\pulsos|saida2|Add0~41\)) # (!\pulsos|saida2|s_divCounter\(21) & ((\pulsos|saida2|Add0~41\) # (GND)))
-- \pulsos|saida2|Add0~43\ = CARRY((!\pulsos|saida2|Add0~41\) # (!\pulsos|saida2|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(21),
	datad => VCC,
	cin => \pulsos|saida2|Add0~41\,
	combout => \pulsos|saida2|Add0~42_combout\,
	cout => \pulsos|saida2|Add0~43\);

-- Location: LCCOMB_X101_Y37_N26
\pulsos|saida2|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|s_divCounter~1_combout\ = (\pulsos|saida2|Add0~42_combout\ & !\pulsos|saida2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|Add0~42_combout\,
	datad => \pulsos|saida2|Equal0~9_combout\,
	combout => \pulsos|saida2|s_divCounter~1_combout\);

-- Location: FF_X101_Y37_N27
\pulsos|saida2|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(21));

-- Location: LCCOMB_X100_Y37_N14
\pulsos|saida2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~44_combout\ = (\pulsos|saida2|s_divCounter\(22) & (\pulsos|saida2|Add0~43\ $ (GND))) # (!\pulsos|saida2|s_divCounter\(22) & (!\pulsos|saida2|Add0~43\ & VCC))
-- \pulsos|saida2|Add0~45\ = CARRY((\pulsos|saida2|s_divCounter\(22) & !\pulsos|saida2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(22),
	datad => VCC,
	cin => \pulsos|saida2|Add0~43\,
	combout => \pulsos|saida2|Add0~44_combout\,
	cout => \pulsos|saida2|Add0~45\);

-- Location: LCCOMB_X101_Y37_N30
\pulsos|saida2|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|s_divCounter~0_combout\ = (\pulsos|saida2|Add0~44_combout\ & !\pulsos|saida2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|Add0~44_combout\,
	datad => \pulsos|saida2|Equal0~9_combout\,
	combout => \pulsos|saida2|s_divCounter~0_combout\);

-- Location: FF_X101_Y37_N31
\pulsos|saida2|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(22));

-- Location: LCCOMB_X100_Y37_N16
\pulsos|saida2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~46_combout\ = (\pulsos|saida2|s_divCounter\(23) & (!\pulsos|saida2|Add0~45\)) # (!\pulsos|saida2|s_divCounter\(23) & ((\pulsos|saida2|Add0~45\) # (GND)))
-- \pulsos|saida2|Add0~47\ = CARRY((!\pulsos|saida2|Add0~45\) # (!\pulsos|saida2|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(23),
	datad => VCC,
	cin => \pulsos|saida2|Add0~45\,
	combout => \pulsos|saida2|Add0~46_combout\,
	cout => \pulsos|saida2|Add0~47\);

-- Location: LCCOMB_X100_Y36_N2
\pulsos|saida2|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|s_divCounter~9_combout\ = (!\pulsos|saida2|Equal0~9_combout\ & \pulsos|saida2|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|saida2|Equal0~9_combout\,
	datad => \pulsos|saida2|Add0~46_combout\,
	combout => \pulsos|saida2|s_divCounter~9_combout\);

-- Location: FF_X100_Y36_N3
\pulsos|saida2|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(23));

-- Location: LCCOMB_X100_Y37_N18
\pulsos|saida2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~48_combout\ = (\pulsos|saida2|s_divCounter\(24) & (\pulsos|saida2|Add0~47\ $ (GND))) # (!\pulsos|saida2|s_divCounter\(24) & (!\pulsos|saida2|Add0~47\ & VCC))
-- \pulsos|saida2|Add0~49\ = CARRY((\pulsos|saida2|s_divCounter\(24) & !\pulsos|saida2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(24),
	datad => VCC,
	cin => \pulsos|saida2|Add0~47\,
	combout => \pulsos|saida2|Add0~48_combout\,
	cout => \pulsos|saida2|Add0~49\);

-- Location: FF_X100_Y37_N19
\pulsos|saida2|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(24));

-- Location: LCCOMB_X100_Y37_N20
\pulsos|saida2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~50_combout\ = (\pulsos|saida2|s_divCounter\(25) & (!\pulsos|saida2|Add0~49\)) # (!\pulsos|saida2|s_divCounter\(25) & ((\pulsos|saida2|Add0~49\) # (GND)))
-- \pulsos|saida2|Add0~51\ = CARRY((!\pulsos|saida2|Add0~49\) # (!\pulsos|saida2|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(25),
	datad => VCC,
	cin => \pulsos|saida2|Add0~49\,
	combout => \pulsos|saida2|Add0~50_combout\,
	cout => \pulsos|saida2|Add0~51\);

-- Location: LCCOMB_X100_Y36_N28
\pulsos|saida2|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|s_divCounter~8_combout\ = (!\pulsos|saida2|Equal0~9_combout\ & \pulsos|saida2|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|saida2|Equal0~9_combout\,
	datad => \pulsos|saida2|Add0~50_combout\,
	combout => \pulsos|saida2|s_divCounter~8_combout\);

-- Location: FF_X100_Y36_N29
\pulsos|saida2|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(25));

-- Location: LCCOMB_X100_Y36_N26
\pulsos|saida2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Equal0~7_combout\ = (!\pulsos|saida2|s_divCounter\(24) & (\pulsos|saida2|s_divCounter\(25) & (!\pulsos|saida2|s_divCounter\(18) & \pulsos|saida2|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(24),
	datab => \pulsos|saida2|s_divCounter\(25),
	datac => \pulsos|saida2|s_divCounter\(18),
	datad => \pulsos|saida2|s_divCounter\(23),
	combout => \pulsos|saida2|Equal0~7_combout\);

-- Location: LCCOMB_X100_Y36_N8
\pulsos|saida2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Equal0~8_combout\ = (\pulsos|saida2|s_divCounter\(15) & (\pulsos|saida2|s_divCounter\(17) & (!\pulsos|saida2|s_divCounter\(11) & !\pulsos|saida2|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(15),
	datab => \pulsos|saida2|s_divCounter\(17),
	datac => \pulsos|saida2|s_divCounter\(11),
	datad => \pulsos|saida2|s_divCounter\(16),
	combout => \pulsos|saida2|Equal0~8_combout\);

-- Location: LCCOMB_X101_Y37_N22
\pulsos|saida2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Equal0~2_combout\ = (\pulsos|saida2|s_divCounter\(21) & (\pulsos|saida2|s_divCounter\(19) & (\pulsos|saida2|s_divCounter\(20) & \pulsos|saida2|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(21),
	datab => \pulsos|saida2|s_divCounter\(19),
	datac => \pulsos|saida2|s_divCounter\(20),
	datad => \pulsos|saida2|s_divCounter\(14),
	combout => \pulsos|saida2|Equal0~2_combout\);

-- Location: LCCOMB_X100_Y37_N22
\pulsos|saida2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~52_combout\ = (\pulsos|saida2|s_divCounter\(26) & (\pulsos|saida2|Add0~51\ $ (GND))) # (!\pulsos|saida2|s_divCounter\(26) & (!\pulsos|saida2|Add0~51\ & VCC))
-- \pulsos|saida2|Add0~53\ = CARRY((\pulsos|saida2|s_divCounter\(26) & !\pulsos|saida2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(26),
	datad => VCC,
	cin => \pulsos|saida2|Add0~51\,
	combout => \pulsos|saida2|Add0~52_combout\,
	cout => \pulsos|saida2|Add0~53\);

-- Location: FF_X100_Y37_N23
\pulsos|saida2|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(26));

-- Location: LCCOMB_X100_Y37_N24
\pulsos|saida2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~54_combout\ = (\pulsos|saida2|s_divCounter\(27) & (!\pulsos|saida2|Add0~53\)) # (!\pulsos|saida2|s_divCounter\(27) & ((\pulsos|saida2|Add0~53\) # (GND)))
-- \pulsos|saida2|Add0~55\ = CARRY((!\pulsos|saida2|Add0~53\) # (!\pulsos|saida2|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(27),
	datad => VCC,
	cin => \pulsos|saida2|Add0~53\,
	combout => \pulsos|saida2|Add0~54_combout\,
	cout => \pulsos|saida2|Add0~55\);

-- Location: FF_X100_Y37_N25
\pulsos|saida2|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(27));

-- Location: LCCOMB_X100_Y37_N26
\pulsos|saida2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~56_combout\ = (\pulsos|saida2|s_divCounter\(28) & (\pulsos|saida2|Add0~55\ $ (GND))) # (!\pulsos|saida2|s_divCounter\(28) & (!\pulsos|saida2|Add0~55\ & VCC))
-- \pulsos|saida2|Add0~57\ = CARRY((\pulsos|saida2|s_divCounter\(28) & !\pulsos|saida2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(28),
	datad => VCC,
	cin => \pulsos|saida2|Add0~55\,
	combout => \pulsos|saida2|Add0~56_combout\,
	cout => \pulsos|saida2|Add0~57\);

-- Location: FF_X100_Y37_N27
\pulsos|saida2|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(28));

-- Location: LCCOMB_X101_Y37_N24
\pulsos|saida2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Equal0~1_combout\ = (!\pulsos|saida2|s_divCounter\(28) & (!\pulsos|saida2|s_divCounter\(27) & (\pulsos|saida2|s_divCounter\(22) & !\pulsos|saida2|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(28),
	datab => \pulsos|saida2|s_divCounter\(27),
	datac => \pulsos|saida2|s_divCounter\(22),
	datad => \pulsos|saida2|s_divCounter\(26),
	combout => \pulsos|saida2|Equal0~1_combout\);

-- Location: LCCOMB_X101_Y37_N8
\pulsos|saida2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Equal0~3_combout\ = (\pulsos|saida2|s_divCounter\(12) & (!\pulsos|saida2|s_divCounter\(10) & (!\pulsos|saida2|s_divCounter\(9) & \pulsos|saida2|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(12),
	datab => \pulsos|saida2|s_divCounter\(10),
	datac => \pulsos|saida2|s_divCounter\(9),
	datad => \pulsos|saida2|s_divCounter\(13),
	combout => \pulsos|saida2|Equal0~3_combout\);

-- Location: LCCOMB_X100_Y37_N28
\pulsos|saida2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~58_combout\ = (\pulsos|saida2|s_divCounter\(29) & (!\pulsos|saida2|Add0~57\)) # (!\pulsos|saida2|s_divCounter\(29) & ((\pulsos|saida2|Add0~57\) # (GND)))
-- \pulsos|saida2|Add0~59\ = CARRY((!\pulsos|saida2|Add0~57\) # (!\pulsos|saida2|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|s_divCounter\(29),
	datad => VCC,
	cin => \pulsos|saida2|Add0~57\,
	combout => \pulsos|saida2|Add0~58_combout\,
	cout => \pulsos|saida2|Add0~59\);

-- Location: FF_X100_Y37_N29
\pulsos|saida2|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(29));

-- Location: LCCOMB_X100_Y37_N30
\pulsos|saida2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Add0~60_combout\ = \pulsos|saida2|s_divCounter\(30) $ (!\pulsos|saida2|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(30),
	cin => \pulsos|saida2|Add0~59\,
	combout => \pulsos|saida2|Add0~60_combout\);

-- Location: FF_X100_Y37_N31
\pulsos|saida2|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|s_divCounter\(30));

-- Location: LCCOMB_X101_Y37_N28
\pulsos|saida2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Equal0~0_combout\ = (!\pulsos|saida2|s_divCounter\(29) & (\pulsos|saida2|s_divCounter\(1) & (!\pulsos|saida2|s_divCounter\(30) & \pulsos|saida2|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(29),
	datab => \pulsos|saida2|s_divCounter\(1),
	datac => \pulsos|saida2|s_divCounter\(30),
	datad => \pulsos|saida2|s_divCounter\(0),
	combout => \pulsos|saida2|Equal0~0_combout\);

-- Location: LCCOMB_X101_Y37_N10
\pulsos|saida2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Equal0~4_combout\ = (\pulsos|saida2|Equal0~2_combout\ & (\pulsos|saida2|Equal0~1_combout\ & (\pulsos|saida2|Equal0~3_combout\ & \pulsos|saida2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|Equal0~2_combout\,
	datab => \pulsos|saida2|Equal0~1_combout\,
	datac => \pulsos|saida2|Equal0~3_combout\,
	datad => \pulsos|saida2|Equal0~0_combout\,
	combout => \pulsos|saida2|Equal0~4_combout\);

-- Location: LCCOMB_X100_Y38_N0
\pulsos|saida2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Equal0~5_combout\ = (\pulsos|saida2|s_divCounter\(4) & (!\pulsos|saida2|s_divCounter\(8) & (!\pulsos|saida2|s_divCounter\(7) & \pulsos|saida2|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(4),
	datab => \pulsos|saida2|s_divCounter\(8),
	datac => \pulsos|saida2|s_divCounter\(7),
	datad => \pulsos|saida2|s_divCounter\(5),
	combout => \pulsos|saida2|Equal0~5_combout\);

-- Location: LCCOMB_X101_Y37_N12
\pulsos|saida2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Equal0~6_combout\ = (\pulsos|saida2|Equal0~4_combout\ & (\pulsos|saida2|s_divCounter\(2) & (\pulsos|saida2|s_divCounter\(3) & \pulsos|saida2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|Equal0~4_combout\,
	datab => \pulsos|saida2|s_divCounter\(2),
	datac => \pulsos|saida2|s_divCounter\(3),
	datad => \pulsos|saida2|Equal0~5_combout\,
	combout => \pulsos|saida2|Equal0~6_combout\);

-- Location: LCCOMB_X100_Y36_N22
\pulsos|saida2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|Equal0~9_combout\ = (\pulsos|saida2|Equal0~7_combout\ & (\pulsos|saida2|s_divCounter\(6) & (\pulsos|saida2|Equal0~8_combout\ & \pulsos|saida2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|Equal0~7_combout\,
	datab => \pulsos|saida2|s_divCounter\(6),
	datac => \pulsos|saida2|Equal0~8_combout\,
	datad => \pulsos|saida2|Equal0~6_combout\,
	combout => \pulsos|saida2|Equal0~9_combout\);

-- Location: LCCOMB_X100_Y36_N10
\pulsos|acel01|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|acel01|clkOut~feeder_combout\ = \pulsos|saida2|Equal0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|saida2|Equal0~9_combout\,
	combout => \pulsos|acel01|clkOut~feeder_combout\);

-- Location: FF_X100_Y36_N11
\pulsos|acel01|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|acel01|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|acel01|clkOut~q\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X99_Y39_N2
\pulsos|Normal2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~0_combout\ = \pulsos|Normal2|s_divCounter\(0) $ (VCC)
-- \pulsos|Normal2|Add0~1\ = CARRY(\pulsos|Normal2|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(0),
	datad => VCC,
	combout => \pulsos|Normal2|Add0~0_combout\,
	cout => \pulsos|Normal2|Add0~1\);

-- Location: LCCOMB_X101_Y36_N2
\pulsos|Normal1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~0_combout\ = (\pulsos|Normal1|s_divCounter\(1) & (\pulsos|saida2|s_divCounter\(0) $ (VCC))) # (!\pulsos|Normal1|s_divCounter\(1) & (\pulsos|saida2|s_divCounter\(0) & VCC))
-- \pulsos|Normal1|Add0~1\ = CARRY((\pulsos|Normal1|s_divCounter\(1) & \pulsos|saida2|s_divCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(1),
	datab => \pulsos|saida2|s_divCounter\(0),
	datad => VCC,
	combout => \pulsos|Normal1|Add0~0_combout\,
	cout => \pulsos|Normal1|Add0~1\);

-- Location: LCCOMB_X101_Y36_N0
\pulsos|Normal1|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|s_divCounter~0_combout\ = (\pulsos|Normal1|Add0~0_combout\ & ((!\pulsos|Normal1|Equal0~9_combout\) # (!\pulsos|saida2|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|Add0~0_combout\,
	datac => \pulsos|saida2|s_divCounter\(0),
	datad => \pulsos|Normal1|Equal0~9_combout\,
	combout => \pulsos|Normal1|s_divCounter~0_combout\);

-- Location: FF_X101_Y36_N1
\pulsos|Normal1|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(1));

-- Location: LCCOMB_X101_Y36_N4
\pulsos|Normal1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~2_combout\ = (\pulsos|Normal1|s_divCounter\(2) & (!\pulsos|Normal1|Add0~1\)) # (!\pulsos|Normal1|s_divCounter\(2) & ((\pulsos|Normal1|Add0~1\) # (GND)))
-- \pulsos|Normal1|Add0~3\ = CARRY((!\pulsos|Normal1|Add0~1\) # (!\pulsos|Normal1|s_divCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(2),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~1\,
	combout => \pulsos|Normal1|Add0~2_combout\,
	cout => \pulsos|Normal1|Add0~3\);

-- Location: FF_X101_Y36_N5
\pulsos|Normal1|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(2));

-- Location: LCCOMB_X101_Y36_N6
\pulsos|Normal1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~4_combout\ = (\pulsos|Normal1|s_divCounter\(3) & (\pulsos|Normal1|Add0~3\ $ (GND))) # (!\pulsos|Normal1|s_divCounter\(3) & (!\pulsos|Normal1|Add0~3\ & VCC))
-- \pulsos|Normal1|Add0~5\ = CARRY((\pulsos|Normal1|s_divCounter\(3) & !\pulsos|Normal1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(3),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~3\,
	combout => \pulsos|Normal1|Add0~4_combout\,
	cout => \pulsos|Normal1|Add0~5\);

-- Location: FF_X101_Y36_N7
\pulsos|Normal1|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(3));

-- Location: LCCOMB_X101_Y36_N8
\pulsos|Normal1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~6_combout\ = (\pulsos|Normal1|s_divCounter\(4) & (!\pulsos|Normal1|Add0~5\)) # (!\pulsos|Normal1|s_divCounter\(4) & ((\pulsos|Normal1|Add0~5\) # (GND)))
-- \pulsos|Normal1|Add0~7\ = CARRY((!\pulsos|Normal1|Add0~5\) # (!\pulsos|Normal1|s_divCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(4),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~5\,
	combout => \pulsos|Normal1|Add0~6_combout\,
	cout => \pulsos|Normal1|Add0~7\);

-- Location: FF_X101_Y36_N9
\pulsos|Normal1|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(4));

-- Location: LCCOMB_X101_Y36_N10
\pulsos|Normal1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~8_combout\ = (\pulsos|Normal1|s_divCounter\(5) & (\pulsos|Normal1|Add0~7\ $ (GND))) # (!\pulsos|Normal1|s_divCounter\(5) & (!\pulsos|Normal1|Add0~7\ & VCC))
-- \pulsos|Normal1|Add0~9\ = CARRY((\pulsos|Normal1|s_divCounter\(5) & !\pulsos|Normal1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(5),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~7\,
	combout => \pulsos|Normal1|Add0~8_combout\,
	cout => \pulsos|Normal1|Add0~9\);

-- Location: FF_X101_Y36_N11
\pulsos|Normal1|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(5));

-- Location: LCCOMB_X101_Y36_N12
\pulsos|Normal1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~10_combout\ = (\pulsos|Normal1|s_divCounter\(6) & (!\pulsos|Normal1|Add0~9\)) # (!\pulsos|Normal1|s_divCounter\(6) & ((\pulsos|Normal1|Add0~9\) # (GND)))
-- \pulsos|Normal1|Add0~11\ = CARRY((!\pulsos|Normal1|Add0~9\) # (!\pulsos|Normal1|s_divCounter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(6),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~9\,
	combout => \pulsos|Normal1|Add0~10_combout\,
	cout => \pulsos|Normal1|Add0~11\);

-- Location: FF_X101_Y36_N13
\pulsos|Normal1|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(6));

-- Location: LCCOMB_X101_Y36_N14
\pulsos|Normal1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~12_combout\ = (\pulsos|Normal1|s_divCounter\(7) & (\pulsos|Normal1|Add0~11\ $ (GND))) # (!\pulsos|Normal1|s_divCounter\(7) & (!\pulsos|Normal1|Add0~11\ & VCC))
-- \pulsos|Normal1|Add0~13\ = CARRY((\pulsos|Normal1|s_divCounter\(7) & !\pulsos|Normal1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(7),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~11\,
	combout => \pulsos|Normal1|Add0~12_combout\,
	cout => \pulsos|Normal1|Add0~13\);

-- Location: FF_X101_Y36_N15
\pulsos|Normal1|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(7));

-- Location: LCCOMB_X101_Y36_N16
\pulsos|Normal1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~14_combout\ = (\pulsos|Normal1|s_divCounter\(8) & (!\pulsos|Normal1|Add0~13\)) # (!\pulsos|Normal1|s_divCounter\(8) & ((\pulsos|Normal1|Add0~13\) # (GND)))
-- \pulsos|Normal1|Add0~15\ = CARRY((!\pulsos|Normal1|Add0~13\) # (!\pulsos|Normal1|s_divCounter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(8),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~13\,
	combout => \pulsos|Normal1|Add0~14_combout\,
	cout => \pulsos|Normal1|Add0~15\);

-- Location: FF_X101_Y36_N17
\pulsos|Normal1|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(8));

-- Location: LCCOMB_X101_Y36_N18
\pulsos|Normal1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~16_combout\ = (\pulsos|Normal1|s_divCounter\(9) & (\pulsos|Normal1|Add0~15\ $ (GND))) # (!\pulsos|Normal1|s_divCounter\(9) & (!\pulsos|Normal1|Add0~15\ & VCC))
-- \pulsos|Normal1|Add0~17\ = CARRY((\pulsos|Normal1|s_divCounter\(9) & !\pulsos|Normal1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(9),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~15\,
	combout => \pulsos|Normal1|Add0~16_combout\,
	cout => \pulsos|Normal1|Add0~17\);

-- Location: FF_X101_Y36_N19
\pulsos|Normal1|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(9));

-- Location: LCCOMB_X101_Y36_N20
\pulsos|Normal1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~18_combout\ = (\pulsos|Normal1|s_divCounter\(10) & (!\pulsos|Normal1|Add0~17\)) # (!\pulsos|Normal1|s_divCounter\(10) & ((\pulsos|Normal1|Add0~17\) # (GND)))
-- \pulsos|Normal1|Add0~19\ = CARRY((!\pulsos|Normal1|Add0~17\) # (!\pulsos|Normal1|s_divCounter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(10),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~17\,
	combout => \pulsos|Normal1|Add0~18_combout\,
	cout => \pulsos|Normal1|Add0~19\);

-- Location: FF_X101_Y36_N21
\pulsos|Normal1|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(10));

-- Location: LCCOMB_X101_Y36_N22
\pulsos|Normal1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~20_combout\ = (\pulsos|Normal1|s_divCounter\(11) & (\pulsos|Normal1|Add0~19\ $ (GND))) # (!\pulsos|Normal1|s_divCounter\(11) & (!\pulsos|Normal1|Add0~19\ & VCC))
-- \pulsos|Normal1|Add0~21\ = CARRY((\pulsos|Normal1|s_divCounter\(11) & !\pulsos|Normal1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(11),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~19\,
	combout => \pulsos|Normal1|Add0~20_combout\,
	cout => \pulsos|Normal1|Add0~21\);

-- Location: FF_X101_Y36_N23
\pulsos|Normal1|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(11));

-- Location: LCCOMB_X101_Y36_N24
\pulsos|Normal1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~22_combout\ = (\pulsos|Normal1|s_divCounter\(12) & (!\pulsos|Normal1|Add0~21\)) # (!\pulsos|Normal1|s_divCounter\(12) & ((\pulsos|Normal1|Add0~21\) # (GND)))
-- \pulsos|Normal1|Add0~23\ = CARRY((!\pulsos|Normal1|Add0~21\) # (!\pulsos|Normal1|s_divCounter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(12),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~21\,
	combout => \pulsos|Normal1|Add0~22_combout\,
	cout => \pulsos|Normal1|Add0~23\);

-- Location: FF_X101_Y36_N25
\pulsos|Normal1|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(12));

-- Location: LCCOMB_X101_Y36_N26
\pulsos|Normal1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~24_combout\ = (\pulsos|Normal1|s_divCounter\(13) & (\pulsos|Normal1|Add0~23\ $ (GND))) # (!\pulsos|Normal1|s_divCounter\(13) & (!\pulsos|Normal1|Add0~23\ & VCC))
-- \pulsos|Normal1|Add0~25\ = CARRY((\pulsos|Normal1|s_divCounter\(13) & !\pulsos|Normal1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(13),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~23\,
	combout => \pulsos|Normal1|Add0~24_combout\,
	cout => \pulsos|Normal1|Add0~25\);

-- Location: FF_X101_Y36_N27
\pulsos|Normal1|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(13));

-- Location: LCCOMB_X101_Y36_N28
\pulsos|Normal1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~26_combout\ = (\pulsos|Normal1|s_divCounter\(14) & (!\pulsos|Normal1|Add0~25\)) # (!\pulsos|Normal1|s_divCounter\(14) & ((\pulsos|Normal1|Add0~25\) # (GND)))
-- \pulsos|Normal1|Add0~27\ = CARRY((!\pulsos|Normal1|Add0~25\) # (!\pulsos|Normal1|s_divCounter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(14),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~25\,
	combout => \pulsos|Normal1|Add0~26_combout\,
	cout => \pulsos|Normal1|Add0~27\);

-- Location: FF_X101_Y36_N29
\pulsos|Normal1|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(14));

-- Location: LCCOMB_X101_Y36_N30
\pulsos|Normal1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~28_combout\ = (\pulsos|Normal1|s_divCounter\(15) & (\pulsos|Normal1|Add0~27\ $ (GND))) # (!\pulsos|Normal1|s_divCounter\(15) & (!\pulsos|Normal1|Add0~27\ & VCC))
-- \pulsos|Normal1|Add0~29\ = CARRY((\pulsos|Normal1|s_divCounter\(15) & !\pulsos|Normal1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(15),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~27\,
	combout => \pulsos|Normal1|Add0~28_combout\,
	cout => \pulsos|Normal1|Add0~29\);

-- Location: FF_X101_Y36_N31
\pulsos|Normal1|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(15));

-- Location: LCCOMB_X101_Y35_N0
\pulsos|Normal1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~30_combout\ = (\pulsos|Normal1|s_divCounter\(16) & (!\pulsos|Normal1|Add0~29\)) # (!\pulsos|Normal1|s_divCounter\(16) & ((\pulsos|Normal1|Add0~29\) # (GND)))
-- \pulsos|Normal1|Add0~31\ = CARRY((!\pulsos|Normal1|Add0~29\) # (!\pulsos|Normal1|s_divCounter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(16),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~29\,
	combout => \pulsos|Normal1|Add0~30_combout\,
	cout => \pulsos|Normal1|Add0~31\);

-- Location: FF_X101_Y35_N1
\pulsos|Normal1|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(16));

-- Location: LCCOMB_X101_Y35_N2
\pulsos|Normal1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~32_combout\ = (\pulsos|Normal1|s_divCounter\(17) & (\pulsos|Normal1|Add0~31\ $ (GND))) # (!\pulsos|Normal1|s_divCounter\(17) & (!\pulsos|Normal1|Add0~31\ & VCC))
-- \pulsos|Normal1|Add0~33\ = CARRY((\pulsos|Normal1|s_divCounter\(17) & !\pulsos|Normal1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(17),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~31\,
	combout => \pulsos|Normal1|Add0~32_combout\,
	cout => \pulsos|Normal1|Add0~33\);

-- Location: FF_X101_Y35_N3
\pulsos|Normal1|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(17));

-- Location: LCCOMB_X101_Y35_N4
\pulsos|Normal1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~34_combout\ = (\pulsos|Normal1|s_divCounter\(18) & (!\pulsos|Normal1|Add0~33\)) # (!\pulsos|Normal1|s_divCounter\(18) & ((\pulsos|Normal1|Add0~33\) # (GND)))
-- \pulsos|Normal1|Add0~35\ = CARRY((!\pulsos|Normal1|Add0~33\) # (!\pulsos|Normal1|s_divCounter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(18),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~33\,
	combout => \pulsos|Normal1|Add0~34_combout\,
	cout => \pulsos|Normal1|Add0~35\);

-- Location: FF_X101_Y35_N5
\pulsos|Normal1|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(18));

-- Location: LCCOMB_X101_Y35_N6
\pulsos|Normal1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~36_combout\ = (\pulsos|Normal1|s_divCounter\(19) & (\pulsos|Normal1|Add0~35\ $ (GND))) # (!\pulsos|Normal1|s_divCounter\(19) & (!\pulsos|Normal1|Add0~35\ & VCC))
-- \pulsos|Normal1|Add0~37\ = CARRY((\pulsos|Normal1|s_divCounter\(19) & !\pulsos|Normal1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(19),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~35\,
	combout => \pulsos|Normal1|Add0~36_combout\,
	cout => \pulsos|Normal1|Add0~37\);

-- Location: FF_X101_Y35_N7
\pulsos|Normal1|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(19));

-- Location: LCCOMB_X101_Y35_N8
\pulsos|Normal1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~38_combout\ = (\pulsos|Normal1|s_divCounter\(20) & (!\pulsos|Normal1|Add0~37\)) # (!\pulsos|Normal1|s_divCounter\(20) & ((\pulsos|Normal1|Add0~37\) # (GND)))
-- \pulsos|Normal1|Add0~39\ = CARRY((!\pulsos|Normal1|Add0~37\) # (!\pulsos|Normal1|s_divCounter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(20),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~37\,
	combout => \pulsos|Normal1|Add0~38_combout\,
	cout => \pulsos|Normal1|Add0~39\);

-- Location: FF_X101_Y35_N9
\pulsos|Normal1|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(20));

-- Location: LCCOMB_X101_Y35_N10
\pulsos|Normal1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~40_combout\ = (\pulsos|Normal1|s_divCounter\(21) & (\pulsos|Normal1|Add0~39\ $ (GND))) # (!\pulsos|Normal1|s_divCounter\(21) & (!\pulsos|Normal1|Add0~39\ & VCC))
-- \pulsos|Normal1|Add0~41\ = CARRY((\pulsos|Normal1|s_divCounter\(21) & !\pulsos|Normal1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(21),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~39\,
	combout => \pulsos|Normal1|Add0~40_combout\,
	cout => \pulsos|Normal1|Add0~41\);

-- Location: FF_X101_Y35_N11
\pulsos|Normal1|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(21));

-- Location: LCCOMB_X101_Y35_N12
\pulsos|Normal1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~42_combout\ = (\pulsos|Normal1|s_divCounter\(22) & (!\pulsos|Normal1|Add0~41\)) # (!\pulsos|Normal1|s_divCounter\(22) & ((\pulsos|Normal1|Add0~41\) # (GND)))
-- \pulsos|Normal1|Add0~43\ = CARRY((!\pulsos|Normal1|Add0~41\) # (!\pulsos|Normal1|s_divCounter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(22),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~41\,
	combout => \pulsos|Normal1|Add0~42_combout\,
	cout => \pulsos|Normal1|Add0~43\);

-- Location: FF_X101_Y35_N13
\pulsos|Normal1|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(22));

-- Location: LCCOMB_X101_Y35_N14
\pulsos|Normal1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~44_combout\ = (\pulsos|Normal1|s_divCounter\(23) & (\pulsos|Normal1|Add0~43\ $ (GND))) # (!\pulsos|Normal1|s_divCounter\(23) & (!\pulsos|Normal1|Add0~43\ & VCC))
-- \pulsos|Normal1|Add0~45\ = CARRY((\pulsos|Normal1|s_divCounter\(23) & !\pulsos|Normal1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(23),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~43\,
	combout => \pulsos|Normal1|Add0~44_combout\,
	cout => \pulsos|Normal1|Add0~45\);

-- Location: FF_X101_Y35_N15
\pulsos|Normal1|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(23));

-- Location: LCCOMB_X101_Y35_N16
\pulsos|Normal1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~46_combout\ = (\pulsos|Normal1|s_divCounter\(24) & (!\pulsos|Normal1|Add0~45\)) # (!\pulsos|Normal1|s_divCounter\(24) & ((\pulsos|Normal1|Add0~45\) # (GND)))
-- \pulsos|Normal1|Add0~47\ = CARRY((!\pulsos|Normal1|Add0~45\) # (!\pulsos|Normal1|s_divCounter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(24),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~45\,
	combout => \pulsos|Normal1|Add0~46_combout\,
	cout => \pulsos|Normal1|Add0~47\);

-- Location: FF_X101_Y35_N17
\pulsos|Normal1|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(24));

-- Location: LCCOMB_X102_Y35_N14
\pulsos|Normal1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Equal0~6_combout\ = (!\pulsos|Normal1|s_divCounter\(21) & (!\pulsos|Normal1|s_divCounter\(23) & (!\pulsos|Normal1|s_divCounter\(24) & !\pulsos|Normal1|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(21),
	datab => \pulsos|Normal1|s_divCounter\(23),
	datac => \pulsos|Normal1|s_divCounter\(24),
	datad => \pulsos|Normal1|s_divCounter\(22),
	combout => \pulsos|Normal1|Equal0~6_combout\);

-- Location: LCCOMB_X101_Y35_N18
\pulsos|Normal1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~48_combout\ = (\pulsos|Normal1|s_divCounter\(25) & (\pulsos|Normal1|Add0~47\ $ (GND))) # (!\pulsos|Normal1|s_divCounter\(25) & (!\pulsos|Normal1|Add0~47\ & VCC))
-- \pulsos|Normal1|Add0~49\ = CARRY((\pulsos|Normal1|s_divCounter\(25) & !\pulsos|Normal1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(25),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~47\,
	combout => \pulsos|Normal1|Add0~48_combout\,
	cout => \pulsos|Normal1|Add0~49\);

-- Location: FF_X101_Y35_N19
\pulsos|Normal1|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(25));

-- Location: LCCOMB_X101_Y35_N20
\pulsos|Normal1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~50_combout\ = (\pulsos|Normal1|s_divCounter\(26) & (!\pulsos|Normal1|Add0~49\)) # (!\pulsos|Normal1|s_divCounter\(26) & ((\pulsos|Normal1|Add0~49\) # (GND)))
-- \pulsos|Normal1|Add0~51\ = CARRY((!\pulsos|Normal1|Add0~49\) # (!\pulsos|Normal1|s_divCounter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(26),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~49\,
	combout => \pulsos|Normal1|Add0~50_combout\,
	cout => \pulsos|Normal1|Add0~51\);

-- Location: FF_X101_Y35_N21
\pulsos|Normal1|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(26));

-- Location: LCCOMB_X101_Y35_N22
\pulsos|Normal1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~52_combout\ = (\pulsos|Normal1|s_divCounter\(27) & (\pulsos|Normal1|Add0~51\ $ (GND))) # (!\pulsos|Normal1|s_divCounter\(27) & (!\pulsos|Normal1|Add0~51\ & VCC))
-- \pulsos|Normal1|Add0~53\ = CARRY((\pulsos|Normal1|s_divCounter\(27) & !\pulsos|Normal1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(27),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~51\,
	combout => \pulsos|Normal1|Add0~52_combout\,
	cout => \pulsos|Normal1|Add0~53\);

-- Location: FF_X101_Y35_N23
\pulsos|Normal1|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(27));

-- Location: LCCOMB_X101_Y35_N24
\pulsos|Normal1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~54_combout\ = (\pulsos|Normal1|s_divCounter\(28) & (!\pulsos|Normal1|Add0~53\)) # (!\pulsos|Normal1|s_divCounter\(28) & ((\pulsos|Normal1|Add0~53\) # (GND)))
-- \pulsos|Normal1|Add0~55\ = CARRY((!\pulsos|Normal1|Add0~53\) # (!\pulsos|Normal1|s_divCounter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(28),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~53\,
	combout => \pulsos|Normal1|Add0~54_combout\,
	cout => \pulsos|Normal1|Add0~55\);

-- Location: FF_X101_Y35_N25
\pulsos|Normal1|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(28));

-- Location: LCCOMB_X101_Y35_N26
\pulsos|Normal1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~56_combout\ = (\pulsos|Normal1|s_divCounter\(29) & (\pulsos|Normal1|Add0~55\ $ (GND))) # (!\pulsos|Normal1|s_divCounter\(29) & (!\pulsos|Normal1|Add0~55\ & VCC))
-- \pulsos|Normal1|Add0~57\ = CARRY((\pulsos|Normal1|s_divCounter\(29) & !\pulsos|Normal1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(29),
	datad => VCC,
	cin => \pulsos|Normal1|Add0~55\,
	combout => \pulsos|Normal1|Add0~56_combout\,
	cout => \pulsos|Normal1|Add0~57\);

-- Location: FF_X101_Y35_N27
\pulsos|Normal1|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(29));

-- Location: LCCOMB_X101_Y35_N28
\pulsos|Normal1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Add0~58_combout\ = \pulsos|Normal1|Add0~57\ $ (\pulsos|Normal1|s_divCounter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulsos|Normal1|s_divCounter\(30),
	cin => \pulsos|Normal1|Add0~57\,
	combout => \pulsos|Normal1|Add0~58_combout\);

-- Location: FF_X101_Y35_N29
\pulsos|Normal1|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|s_divCounter\(30));

-- Location: LCCOMB_X101_Y35_N30
\pulsos|Normal1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Equal0~7_combout\ = (!\pulsos|Normal1|s_divCounter\(28) & (!\pulsos|Normal1|s_divCounter\(26) & (!\pulsos|Normal1|s_divCounter\(27) & !\pulsos|Normal1|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(28),
	datab => \pulsos|Normal1|s_divCounter\(26),
	datac => \pulsos|Normal1|s_divCounter\(27),
	datad => \pulsos|Normal1|s_divCounter\(25),
	combout => \pulsos|Normal1|Equal0~7_combout\);

-- Location: LCCOMB_X102_Y35_N0
\pulsos|Normal1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Equal0~8_combout\ = (!\pulsos|Normal1|s_divCounter\(30) & (!\pulsos|Normal1|s_divCounter\(29) & \pulsos|Normal1|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal1|s_divCounter\(30),
	datac => \pulsos|Normal1|s_divCounter\(29),
	datad => \pulsos|Normal1|Equal0~7_combout\,
	combout => \pulsos|Normal1|Equal0~8_combout\);

-- Location: LCCOMB_X102_Y35_N4
\pulsos|Normal1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Equal0~5_combout\ = (!\pulsos|Normal1|s_divCounter\(20) & (!\pulsos|Normal1|s_divCounter\(19) & (!\pulsos|Normal1|s_divCounter\(18) & !\pulsos|Normal1|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(20),
	datab => \pulsos|Normal1|s_divCounter\(19),
	datac => \pulsos|Normal1|s_divCounter\(18),
	datad => \pulsos|Normal1|s_divCounter\(17),
	combout => \pulsos|Normal1|Equal0~5_combout\);

-- Location: LCCOMB_X102_Y36_N12
\pulsos|Normal1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Equal0~2_combout\ = (!\pulsos|Normal1|s_divCounter\(12) & (!\pulsos|Normal1|s_divCounter\(10) & (!\pulsos|Normal1|s_divCounter\(11) & !\pulsos|Normal1|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(12),
	datab => \pulsos|Normal1|s_divCounter\(10),
	datac => \pulsos|Normal1|s_divCounter\(11),
	datad => \pulsos|Normal1|s_divCounter\(9),
	combout => \pulsos|Normal1|Equal0~2_combout\);

-- Location: LCCOMB_X102_Y36_N4
\pulsos|Normal1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Equal0~0_combout\ = (!\pulsos|Normal1|s_divCounter\(1) & (!\pulsos|Normal1|s_divCounter\(3) & (!\pulsos|Normal1|s_divCounter\(2) & !\pulsos|Normal1|s_divCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(1),
	datab => \pulsos|Normal1|s_divCounter\(3),
	datac => \pulsos|Normal1|s_divCounter\(2),
	datad => \pulsos|Normal1|s_divCounter\(4),
	combout => \pulsos|Normal1|Equal0~0_combout\);

-- Location: LCCOMB_X102_Y36_N30
\pulsos|Normal1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Equal0~1_combout\ = (!\pulsos|Normal1|s_divCounter\(6) & (!\pulsos|Normal1|s_divCounter\(7) & (!\pulsos|Normal1|s_divCounter\(8) & !\pulsos|Normal1|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(6),
	datab => \pulsos|Normal1|s_divCounter\(7),
	datac => \pulsos|Normal1|s_divCounter\(8),
	datad => \pulsos|Normal1|s_divCounter\(5),
	combout => \pulsos|Normal1|Equal0~1_combout\);

-- Location: LCCOMB_X102_Y36_N6
\pulsos|Normal1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Equal0~3_combout\ = (!\pulsos|Normal1|s_divCounter\(16) & (!\pulsos|Normal1|s_divCounter\(15) & (!\pulsos|Normal1|s_divCounter\(13) & !\pulsos|Normal1|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|s_divCounter\(16),
	datab => \pulsos|Normal1|s_divCounter\(15),
	datac => \pulsos|Normal1|s_divCounter\(13),
	datad => \pulsos|Normal1|s_divCounter\(14),
	combout => \pulsos|Normal1|Equal0~3_combout\);

-- Location: LCCOMB_X102_Y36_N28
\pulsos|Normal1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Equal0~4_combout\ = (\pulsos|Normal1|Equal0~2_combout\ & (\pulsos|Normal1|Equal0~0_combout\ & (\pulsos|Normal1|Equal0~1_combout\ & \pulsos|Normal1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|Equal0~2_combout\,
	datab => \pulsos|Normal1|Equal0~0_combout\,
	datac => \pulsos|Normal1|Equal0~1_combout\,
	datad => \pulsos|Normal1|Equal0~3_combout\,
	combout => \pulsos|Normal1|Equal0~4_combout\);

-- Location: LCCOMB_X102_Y36_N18
\pulsos|Normal1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|Equal0~9_combout\ = (\pulsos|Normal1|Equal0~6_combout\ & (\pulsos|Normal1|Equal0~8_combout\ & (\pulsos|Normal1|Equal0~5_combout\ & \pulsos|Normal1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|Equal0~6_combout\,
	datab => \pulsos|Normal1|Equal0~8_combout\,
	datac => \pulsos|Normal1|Equal0~5_combout\,
	datad => \pulsos|Normal1|Equal0~4_combout\,
	combout => \pulsos|Normal1|Equal0~9_combout\);

-- Location: LCCOMB_X102_Y36_N0
\pulsos|Normal1|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal1|clkOut~0_combout\ = (\pulsos|Normal1|Equal0~9_combout\ & ((!\pulsos|saida2|s_divCounter\(0)))) # (!\pulsos|Normal1|Equal0~9_combout\ & (\pulsos|Normal1|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal1|clkOut~q\,
	datab => \pulsos|saida2|s_divCounter\(0),
	datad => \pulsos|Normal1|Equal0~9_combout\,
	combout => \pulsos|Normal1|clkOut~0_combout\);

-- Location: FF_X101_Y36_N3
\pulsos|Normal1|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulsos|Normal1|clkOut~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal1|clkOut~q\);

-- Location: FF_X99_Y39_N3
\pulsos|Normal2|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~0_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(0));

-- Location: LCCOMB_X99_Y39_N4
\pulsos|Normal2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~2_combout\ = (\pulsos|Normal2|s_divCounter\(1) & (!\pulsos|Normal2|Add0~1\)) # (!\pulsos|Normal2|s_divCounter\(1) & ((\pulsos|Normal2|Add0~1\) # (GND)))
-- \pulsos|Normal2|Add0~3\ = CARRY((!\pulsos|Normal2|Add0~1\) # (!\pulsos|Normal2|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(1),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~1\,
	combout => \pulsos|Normal2|Add0~2_combout\,
	cout => \pulsos|Normal2|Add0~3\);

-- Location: FF_X99_Y39_N5
\pulsos|Normal2|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~2_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(1));

-- Location: LCCOMB_X99_Y39_N6
\pulsos|Normal2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~4_combout\ = (\pulsos|Normal2|s_divCounter\(2) & (\pulsos|Normal2|Add0~3\ $ (GND))) # (!\pulsos|Normal2|s_divCounter\(2) & (!\pulsos|Normal2|Add0~3\ & VCC))
-- \pulsos|Normal2|Add0~5\ = CARRY((\pulsos|Normal2|s_divCounter\(2) & !\pulsos|Normal2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(2),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~3\,
	combout => \pulsos|Normal2|Add0~4_combout\,
	cout => \pulsos|Normal2|Add0~5\);

-- Location: FF_X99_Y39_N7
\pulsos|Normal2|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~4_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(2));

-- Location: LCCOMB_X99_Y39_N8
\pulsos|Normal2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~6_combout\ = (\pulsos|Normal2|s_divCounter\(3) & (!\pulsos|Normal2|Add0~5\)) # (!\pulsos|Normal2|s_divCounter\(3) & ((\pulsos|Normal2|Add0~5\) # (GND)))
-- \pulsos|Normal2|Add0~7\ = CARRY((!\pulsos|Normal2|Add0~5\) # (!\pulsos|Normal2|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(3),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~5\,
	combout => \pulsos|Normal2|Add0~6_combout\,
	cout => \pulsos|Normal2|Add0~7\);

-- Location: FF_X99_Y39_N9
\pulsos|Normal2|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~6_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(3));

-- Location: LCCOMB_X99_Y39_N10
\pulsos|Normal2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~8_combout\ = (\pulsos|Normal2|s_divCounter\(4) & (\pulsos|Normal2|Add0~7\ $ (GND))) # (!\pulsos|Normal2|s_divCounter\(4) & (!\pulsos|Normal2|Add0~7\ & VCC))
-- \pulsos|Normal2|Add0~9\ = CARRY((\pulsos|Normal2|s_divCounter\(4) & !\pulsos|Normal2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(4),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~7\,
	combout => \pulsos|Normal2|Add0~8_combout\,
	cout => \pulsos|Normal2|Add0~9\);

-- Location: FF_X99_Y39_N11
\pulsos|Normal2|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~8_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(4));

-- Location: LCCOMB_X99_Y39_N12
\pulsos|Normal2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~10_combout\ = (\pulsos|Normal2|s_divCounter\(5) & (!\pulsos|Normal2|Add0~9\)) # (!\pulsos|Normal2|s_divCounter\(5) & ((\pulsos|Normal2|Add0~9\) # (GND)))
-- \pulsos|Normal2|Add0~11\ = CARRY((!\pulsos|Normal2|Add0~9\) # (!\pulsos|Normal2|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(5),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~9\,
	combout => \pulsos|Normal2|Add0~10_combout\,
	cout => \pulsos|Normal2|Add0~11\);

-- Location: FF_X99_Y39_N13
\pulsos|Normal2|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~10_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(5));

-- Location: LCCOMB_X99_Y39_N14
\pulsos|Normal2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~12_combout\ = (\pulsos|Normal2|s_divCounter\(6) & (\pulsos|Normal2|Add0~11\ $ (GND))) # (!\pulsos|Normal2|s_divCounter\(6) & (!\pulsos|Normal2|Add0~11\ & VCC))
-- \pulsos|Normal2|Add0~13\ = CARRY((\pulsos|Normal2|s_divCounter\(6) & !\pulsos|Normal2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(6),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~11\,
	combout => \pulsos|Normal2|Add0~12_combout\,
	cout => \pulsos|Normal2|Add0~13\);

-- Location: FF_X99_Y39_N15
\pulsos|Normal2|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~12_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(6));

-- Location: LCCOMB_X99_Y39_N16
\pulsos|Normal2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~14_combout\ = (\pulsos|Normal2|s_divCounter\(7) & (!\pulsos|Normal2|Add0~13\)) # (!\pulsos|Normal2|s_divCounter\(7) & ((\pulsos|Normal2|Add0~13\) # (GND)))
-- \pulsos|Normal2|Add0~15\ = CARRY((!\pulsos|Normal2|Add0~13\) # (!\pulsos|Normal2|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(7),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~13\,
	combout => \pulsos|Normal2|Add0~14_combout\,
	cout => \pulsos|Normal2|Add0~15\);

-- Location: FF_X99_Y39_N17
\pulsos|Normal2|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~14_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(7));

-- Location: LCCOMB_X99_Y39_N18
\pulsos|Normal2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~16_combout\ = (\pulsos|Normal2|s_divCounter\(8) & (\pulsos|Normal2|Add0~15\ $ (GND))) # (!\pulsos|Normal2|s_divCounter\(8) & (!\pulsos|Normal2|Add0~15\ & VCC))
-- \pulsos|Normal2|Add0~17\ = CARRY((\pulsos|Normal2|s_divCounter\(8) & !\pulsos|Normal2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(8),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~15\,
	combout => \pulsos|Normal2|Add0~16_combout\,
	cout => \pulsos|Normal2|Add0~17\);

-- Location: LCCOMB_X100_Y39_N24
\pulsos|Normal2|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|s_divCounter~1_combout\ = (!\pulsos|Normal2|Equal0~9_combout\ & \pulsos|Normal2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|Normal2|Equal0~9_combout\,
	datad => \pulsos|Normal2|Add0~16_combout\,
	combout => \pulsos|Normal2|s_divCounter~1_combout\);

-- Location: FF_X100_Y39_N25
\pulsos|Normal2|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|s_divCounter~1_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(8));

-- Location: LCCOMB_X99_Y39_N20
\pulsos|Normal2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~18_combout\ = (\pulsos|Normal2|s_divCounter\(9) & (!\pulsos|Normal2|Add0~17\)) # (!\pulsos|Normal2|s_divCounter\(9) & ((\pulsos|Normal2|Add0~17\) # (GND)))
-- \pulsos|Normal2|Add0~19\ = CARRY((!\pulsos|Normal2|Add0~17\) # (!\pulsos|Normal2|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(9),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~17\,
	combout => \pulsos|Normal2|Add0~18_combout\,
	cout => \pulsos|Normal2|Add0~19\);

-- Location: LCCOMB_X99_Y39_N0
\pulsos|Normal2|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|s_divCounter~0_combout\ = (!\pulsos|Normal2|Equal0~9_combout\ & \pulsos|Normal2|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|Normal2|Equal0~9_combout\,
	datad => \pulsos|Normal2|Add0~18_combout\,
	combout => \pulsos|Normal2|s_divCounter~0_combout\);

-- Location: FF_X99_Y39_N1
\pulsos|Normal2|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|s_divCounter~0_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(9));

-- Location: LCCOMB_X99_Y39_N22
\pulsos|Normal2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~20_combout\ = (\pulsos|Normal2|s_divCounter\(10) & (\pulsos|Normal2|Add0~19\ $ (GND))) # (!\pulsos|Normal2|s_divCounter\(10) & (!\pulsos|Normal2|Add0~19\ & VCC))
-- \pulsos|Normal2|Add0~21\ = CARRY((\pulsos|Normal2|s_divCounter\(10) & !\pulsos|Normal2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(10),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~19\,
	combout => \pulsos|Normal2|Add0~20_combout\,
	cout => \pulsos|Normal2|Add0~21\);

-- Location: LCCOMB_X100_Y39_N2
\pulsos|Normal2|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|s_divCounter~2_combout\ = (!\pulsos|Normal2|Equal0~9_combout\ & \pulsos|Normal2|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|Normal2|Equal0~9_combout\,
	datad => \pulsos|Normal2|Add0~20_combout\,
	combout => \pulsos|Normal2|s_divCounter~2_combout\);

-- Location: FF_X100_Y39_N3
\pulsos|Normal2|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|s_divCounter~2_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(10));

-- Location: LCCOMB_X99_Y39_N24
\pulsos|Normal2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~22_combout\ = (\pulsos|Normal2|s_divCounter\(11) & (!\pulsos|Normal2|Add0~21\)) # (!\pulsos|Normal2|s_divCounter\(11) & ((\pulsos|Normal2|Add0~21\) # (GND)))
-- \pulsos|Normal2|Add0~23\ = CARRY((!\pulsos|Normal2|Add0~21\) # (!\pulsos|Normal2|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(11),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~21\,
	combout => \pulsos|Normal2|Add0~22_combout\,
	cout => \pulsos|Normal2|Add0~23\);

-- Location: LCCOMB_X100_Y39_N4
\pulsos|Normal2|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|s_divCounter~3_combout\ = (!\pulsos|Normal2|Equal0~9_combout\ & \pulsos|Normal2|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|Normal2|Equal0~9_combout\,
	datad => \pulsos|Normal2|Add0~22_combout\,
	combout => \pulsos|Normal2|s_divCounter~3_combout\);

-- Location: FF_X100_Y39_N5
\pulsos|Normal2|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|s_divCounter~3_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(11));

-- Location: LCCOMB_X99_Y39_N26
\pulsos|Normal2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~24_combout\ = (\pulsos|Normal2|s_divCounter\(12) & (\pulsos|Normal2|Add0~23\ $ (GND))) # (!\pulsos|Normal2|s_divCounter\(12) & (!\pulsos|Normal2|Add0~23\ & VCC))
-- \pulsos|Normal2|Add0~25\ = CARRY((\pulsos|Normal2|s_divCounter\(12) & !\pulsos|Normal2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(12),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~23\,
	combout => \pulsos|Normal2|Add0~24_combout\,
	cout => \pulsos|Normal2|Add0~25\);

-- Location: FF_X99_Y39_N27
\pulsos|Normal2|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~24_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(12));

-- Location: LCCOMB_X99_Y39_N28
\pulsos|Normal2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~26_combout\ = (\pulsos|Normal2|s_divCounter\(13) & (!\pulsos|Normal2|Add0~25\)) # (!\pulsos|Normal2|s_divCounter\(13) & ((\pulsos|Normal2|Add0~25\) # (GND)))
-- \pulsos|Normal2|Add0~27\ = CARRY((!\pulsos|Normal2|Add0~25\) # (!\pulsos|Normal2|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(13),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~25\,
	combout => \pulsos|Normal2|Add0~26_combout\,
	cout => \pulsos|Normal2|Add0~27\);

-- Location: LCCOMB_X100_Y39_N0
\pulsos|Normal2|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|s_divCounter~4_combout\ = (!\pulsos|Normal2|Equal0~9_combout\ & \pulsos|Normal2|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|Normal2|Equal0~9_combout\,
	datad => \pulsos|Normal2|Add0~26_combout\,
	combout => \pulsos|Normal2|s_divCounter~4_combout\);

-- Location: FF_X100_Y39_N1
\pulsos|Normal2|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|s_divCounter~4_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(13));

-- Location: LCCOMB_X99_Y39_N30
\pulsos|Normal2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~28_combout\ = (\pulsos|Normal2|s_divCounter\(14) & (\pulsos|Normal2|Add0~27\ $ (GND))) # (!\pulsos|Normal2|s_divCounter\(14) & (!\pulsos|Normal2|Add0~27\ & VCC))
-- \pulsos|Normal2|Add0~29\ = CARRY((\pulsos|Normal2|s_divCounter\(14) & !\pulsos|Normal2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(14),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~27\,
	combout => \pulsos|Normal2|Add0~28_combout\,
	cout => \pulsos|Normal2|Add0~29\);

-- Location: FF_X99_Y39_N31
\pulsos|Normal2|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~28_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(14));

-- Location: LCCOMB_X99_Y38_N0
\pulsos|Normal2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~30_combout\ = (\pulsos|Normal2|s_divCounter\(15) & (!\pulsos|Normal2|Add0~29\)) # (!\pulsos|Normal2|s_divCounter\(15) & ((\pulsos|Normal2|Add0~29\) # (GND)))
-- \pulsos|Normal2|Add0~31\ = CARRY((!\pulsos|Normal2|Add0~29\) # (!\pulsos|Normal2|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(15),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~29\,
	combout => \pulsos|Normal2|Add0~30_combout\,
	cout => \pulsos|Normal2|Add0~31\);

-- Location: FF_X99_Y38_N1
\pulsos|Normal2|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~30_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(15));

-- Location: LCCOMB_X99_Y38_N2
\pulsos|Normal2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~32_combout\ = (\pulsos|Normal2|s_divCounter\(16) & (\pulsos|Normal2|Add0~31\ $ (GND))) # (!\pulsos|Normal2|s_divCounter\(16) & (!\pulsos|Normal2|Add0~31\ & VCC))
-- \pulsos|Normal2|Add0~33\ = CARRY((\pulsos|Normal2|s_divCounter\(16) & !\pulsos|Normal2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(16),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~31\,
	combout => \pulsos|Normal2|Add0~32_combout\,
	cout => \pulsos|Normal2|Add0~33\);

-- Location: FF_X99_Y38_N3
\pulsos|Normal2|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~32_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(16));

-- Location: LCCOMB_X99_Y38_N4
\pulsos|Normal2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~34_combout\ = (\pulsos|Normal2|s_divCounter\(17) & (!\pulsos|Normal2|Add0~33\)) # (!\pulsos|Normal2|s_divCounter\(17) & ((\pulsos|Normal2|Add0~33\) # (GND)))
-- \pulsos|Normal2|Add0~35\ = CARRY((!\pulsos|Normal2|Add0~33\) # (!\pulsos|Normal2|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(17),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~33\,
	combout => \pulsos|Normal2|Add0~34_combout\,
	cout => \pulsos|Normal2|Add0~35\);

-- Location: FF_X99_Y38_N5
\pulsos|Normal2|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~34_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(17));

-- Location: LCCOMB_X99_Y38_N6
\pulsos|Normal2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~36_combout\ = (\pulsos|Normal2|s_divCounter\(18) & (\pulsos|Normal2|Add0~35\ $ (GND))) # (!\pulsos|Normal2|s_divCounter\(18) & (!\pulsos|Normal2|Add0~35\ & VCC))
-- \pulsos|Normal2|Add0~37\ = CARRY((\pulsos|Normal2|s_divCounter\(18) & !\pulsos|Normal2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(18),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~35\,
	combout => \pulsos|Normal2|Add0~36_combout\,
	cout => \pulsos|Normal2|Add0~37\);

-- Location: FF_X99_Y38_N7
\pulsos|Normal2|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~36_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(18));

-- Location: LCCOMB_X99_Y38_N8
\pulsos|Normal2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~38_combout\ = (\pulsos|Normal2|s_divCounter\(19) & (!\pulsos|Normal2|Add0~37\)) # (!\pulsos|Normal2|s_divCounter\(19) & ((\pulsos|Normal2|Add0~37\) # (GND)))
-- \pulsos|Normal2|Add0~39\ = CARRY((!\pulsos|Normal2|Add0~37\) # (!\pulsos|Normal2|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(19),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~37\,
	combout => \pulsos|Normal2|Add0~38_combout\,
	cout => \pulsos|Normal2|Add0~39\);

-- Location: LCCOMB_X100_Y39_N26
\pulsos|Normal2|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|s_divCounter~5_combout\ = (!\pulsos|Normal2|Equal0~9_combout\ & \pulsos|Normal2|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|Normal2|Equal0~9_combout\,
	datad => \pulsos|Normal2|Add0~38_combout\,
	combout => \pulsos|Normal2|s_divCounter~5_combout\);

-- Location: FF_X100_Y39_N27
\pulsos|Normal2|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|s_divCounter~5_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(19));

-- Location: LCCOMB_X99_Y38_N10
\pulsos|Normal2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~40_combout\ = (\pulsos|Normal2|s_divCounter\(20) & (\pulsos|Normal2|Add0~39\ $ (GND))) # (!\pulsos|Normal2|s_divCounter\(20) & (!\pulsos|Normal2|Add0~39\ & VCC))
-- \pulsos|Normal2|Add0~41\ = CARRY((\pulsos|Normal2|s_divCounter\(20) & !\pulsos|Normal2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(20),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~39\,
	combout => \pulsos|Normal2|Add0~40_combout\,
	cout => \pulsos|Normal2|Add0~41\);

-- Location: FF_X99_Y38_N11
\pulsos|Normal2|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~40_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(20));

-- Location: LCCOMB_X99_Y38_N12
\pulsos|Normal2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~42_combout\ = (\pulsos|Normal2|s_divCounter\(21) & (!\pulsos|Normal2|Add0~41\)) # (!\pulsos|Normal2|s_divCounter\(21) & ((\pulsos|Normal2|Add0~41\) # (GND)))
-- \pulsos|Normal2|Add0~43\ = CARRY((!\pulsos|Normal2|Add0~41\) # (!\pulsos|Normal2|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(21),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~41\,
	combout => \pulsos|Normal2|Add0~42_combout\,
	cout => \pulsos|Normal2|Add0~43\);

-- Location: LCCOMB_X98_Y38_N16
\pulsos|Normal2|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|s_divCounter~6_combout\ = (\pulsos|Normal2|Add0~42_combout\ & !\pulsos|Normal2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|Normal2|Add0~42_combout\,
	datad => \pulsos|Normal2|Equal0~9_combout\,
	combout => \pulsos|Normal2|s_divCounter~6_combout\);

-- Location: FF_X98_Y38_N17
\pulsos|Normal2|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|s_divCounter~6_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(21));

-- Location: LCCOMB_X99_Y38_N14
\pulsos|Normal2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~44_combout\ = (\pulsos|Normal2|s_divCounter\(22) & (\pulsos|Normal2|Add0~43\ $ (GND))) # (!\pulsos|Normal2|s_divCounter\(22) & (!\pulsos|Normal2|Add0~43\ & VCC))
-- \pulsos|Normal2|Add0~45\ = CARRY((\pulsos|Normal2|s_divCounter\(22) & !\pulsos|Normal2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(22),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~43\,
	combout => \pulsos|Normal2|Add0~44_combout\,
	cout => \pulsos|Normal2|Add0~45\);

-- Location: LCCOMB_X98_Y38_N14
\pulsos|Normal2|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|s_divCounter~7_combout\ = (\pulsos|Normal2|Add0~44_combout\ & !\pulsos|Normal2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|Normal2|Add0~44_combout\,
	datad => \pulsos|Normal2|Equal0~9_combout\,
	combout => \pulsos|Normal2|s_divCounter~7_combout\);

-- Location: FF_X98_Y38_N15
\pulsos|Normal2|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|s_divCounter~7_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(22));

-- Location: LCCOMB_X99_Y38_N16
\pulsos|Normal2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~46_combout\ = (\pulsos|Normal2|s_divCounter\(23) & (!\pulsos|Normal2|Add0~45\)) # (!\pulsos|Normal2|s_divCounter\(23) & ((\pulsos|Normal2|Add0~45\) # (GND)))
-- \pulsos|Normal2|Add0~47\ = CARRY((!\pulsos|Normal2|Add0~45\) # (!\pulsos|Normal2|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(23),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~45\,
	combout => \pulsos|Normal2|Add0~46_combout\,
	cout => \pulsos|Normal2|Add0~47\);

-- Location: FF_X99_Y38_N17
\pulsos|Normal2|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~46_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(23));

-- Location: LCCOMB_X99_Y38_N18
\pulsos|Normal2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~48_combout\ = (\pulsos|Normal2|s_divCounter\(24) & (\pulsos|Normal2|Add0~47\ $ (GND))) # (!\pulsos|Normal2|s_divCounter\(24) & (!\pulsos|Normal2|Add0~47\ & VCC))
-- \pulsos|Normal2|Add0~49\ = CARRY((\pulsos|Normal2|s_divCounter\(24) & !\pulsos|Normal2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(24),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~47\,
	combout => \pulsos|Normal2|Add0~48_combout\,
	cout => \pulsos|Normal2|Add0~49\);

-- Location: LCCOMB_X100_Y39_N20
\pulsos|Normal2|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|s_divCounter~8_combout\ = (!\pulsos|Normal2|Equal0~9_combout\ & \pulsos|Normal2|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|Equal0~9_combout\,
	datac => \pulsos|Normal2|Add0~48_combout\,
	combout => \pulsos|Normal2|s_divCounter~8_combout\);

-- Location: FF_X100_Y39_N21
\pulsos|Normal2|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|s_divCounter~8_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(24));

-- Location: LCCOMB_X99_Y38_N20
\pulsos|Normal2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~50_combout\ = (\pulsos|Normal2|s_divCounter\(25) & (!\pulsos|Normal2|Add0~49\)) # (!\pulsos|Normal2|s_divCounter\(25) & ((\pulsos|Normal2|Add0~49\) # (GND)))
-- \pulsos|Normal2|Add0~51\ = CARRY((!\pulsos|Normal2|Add0~49\) # (!\pulsos|Normal2|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(25),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~49\,
	combout => \pulsos|Normal2|Add0~50_combout\,
	cout => \pulsos|Normal2|Add0~51\);

-- Location: FF_X99_Y38_N21
\pulsos|Normal2|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~50_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(25));

-- Location: LCCOMB_X99_Y38_N22
\pulsos|Normal2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~52_combout\ = (\pulsos|Normal2|s_divCounter\(26) & (\pulsos|Normal2|Add0~51\ $ (GND))) # (!\pulsos|Normal2|s_divCounter\(26) & (!\pulsos|Normal2|Add0~51\ & VCC))
-- \pulsos|Normal2|Add0~53\ = CARRY((\pulsos|Normal2|s_divCounter\(26) & !\pulsos|Normal2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(26),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~51\,
	combout => \pulsos|Normal2|Add0~52_combout\,
	cout => \pulsos|Normal2|Add0~53\);

-- Location: FF_X99_Y38_N23
\pulsos|Normal2|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~52_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(26));

-- Location: LCCOMB_X99_Y38_N24
\pulsos|Normal2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~54_combout\ = (\pulsos|Normal2|s_divCounter\(27) & (!\pulsos|Normal2|Add0~53\)) # (!\pulsos|Normal2|s_divCounter\(27) & ((\pulsos|Normal2|Add0~53\) # (GND)))
-- \pulsos|Normal2|Add0~55\ = CARRY((!\pulsos|Normal2|Add0~53\) # (!\pulsos|Normal2|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(27),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~53\,
	combout => \pulsos|Normal2|Add0~54_combout\,
	cout => \pulsos|Normal2|Add0~55\);

-- Location: LCCOMB_X100_Y39_N6
\pulsos|Normal2|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|s_divCounter~9_combout\ = (!\pulsos|Normal2|Equal0~9_combout\ & \pulsos|Normal2|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|Normal2|Equal0~9_combout\,
	datad => \pulsos|Normal2|Add0~54_combout\,
	combout => \pulsos|Normal2|s_divCounter~9_combout\);

-- Location: FF_X100_Y39_N7
\pulsos|Normal2|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|s_divCounter~9_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(27));

-- Location: LCCOMB_X99_Y38_N26
\pulsos|Normal2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~56_combout\ = (\pulsos|Normal2|s_divCounter\(28) & (\pulsos|Normal2|Add0~55\ $ (GND))) # (!\pulsos|Normal2|s_divCounter\(28) & (!\pulsos|Normal2|Add0~55\ & VCC))
-- \pulsos|Normal2|Add0~57\ = CARRY((\pulsos|Normal2|s_divCounter\(28) & !\pulsos|Normal2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(28),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~55\,
	combout => \pulsos|Normal2|Add0~56_combout\,
	cout => \pulsos|Normal2|Add0~57\);

-- Location: LCCOMB_X100_Y39_N22
\pulsos|Normal2|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|s_divCounter~10_combout\ = (!\pulsos|Normal2|Equal0~9_combout\ & \pulsos|Normal2|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|Normal2|Equal0~9_combout\,
	datad => \pulsos|Normal2|Add0~56_combout\,
	combout => \pulsos|Normal2|s_divCounter~10_combout\);

-- Location: FF_X100_Y39_N23
\pulsos|Normal2|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|s_divCounter~10_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(28));

-- Location: LCCOMB_X99_Y38_N28
\pulsos|Normal2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~58_combout\ = (\pulsos|Normal2|s_divCounter\(29) & (!\pulsos|Normal2|Add0~57\)) # (!\pulsos|Normal2|s_divCounter\(29) & ((\pulsos|Normal2|Add0~57\) # (GND)))
-- \pulsos|Normal2|Add0~59\ = CARRY((!\pulsos|Normal2|Add0~57\) # (!\pulsos|Normal2|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|Normal2|s_divCounter\(29),
	datad => VCC,
	cin => \pulsos|Normal2|Add0~57\,
	combout => \pulsos|Normal2|Add0~58_combout\,
	cout => \pulsos|Normal2|Add0~59\);

-- Location: FF_X99_Y38_N29
\pulsos|Normal2|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|Add0~58_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(29));

-- Location: LCCOMB_X99_Y38_N30
\pulsos|Normal2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Add0~60_combout\ = \pulsos|Normal2|Add0~59\ $ (!\pulsos|Normal2|s_divCounter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulsos|Normal2|s_divCounter\(30),
	cin => \pulsos|Normal2|Add0~59\,
	combout => \pulsos|Normal2|Add0~60_combout\);

-- Location: LCCOMB_X98_Y38_N10
\pulsos|Normal2|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|s_divCounter~11_combout\ = (\pulsos|Normal2|Add0~60_combout\ & !\pulsos|Normal2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|Normal2|Add0~60_combout\,
	datad => \pulsos|Normal2|Equal0~9_combout\,
	combout => \pulsos|Normal2|s_divCounter~11_combout\);

-- Location: FF_X98_Y38_N11
\pulsos|Normal2|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|Normal2|s_divCounter~11_combout\,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|s_divCounter\(30));

-- Location: LCCOMB_X100_Y39_N28
\pulsos|Normal2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Equal0~7_combout\ = (!\pulsos|Normal2|s_divCounter\(26) & (\pulsos|Normal2|s_divCounter\(24) & (!\pulsos|Normal2|s_divCounter\(25) & \pulsos|Normal2|s_divCounter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(26),
	datab => \pulsos|Normal2|s_divCounter\(24),
	datac => \pulsos|Normal2|s_divCounter\(25),
	datad => \pulsos|Normal2|s_divCounter\(27),
	combout => \pulsos|Normal2|Equal0~7_combout\);

-- Location: LCCOMB_X100_Y39_N12
\pulsos|Normal2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Equal0~8_combout\ = (\pulsos|Normal2|s_divCounter\(28) & (\pulsos|Normal2|s_divCounter\(30) & (!\pulsos|Normal2|s_divCounter\(29) & \pulsos|Normal2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(28),
	datab => \pulsos|Normal2|s_divCounter\(30),
	datac => \pulsos|Normal2|s_divCounter\(29),
	datad => \pulsos|Normal2|Equal0~7_combout\,
	combout => \pulsos|Normal2|Equal0~8_combout\);

-- Location: LCCOMB_X100_Y39_N10
\pulsos|Normal2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Equal0~0_combout\ = (\pulsos|Normal2|s_divCounter\(7) & (!\pulsos|Normal2|s_divCounter\(8) & (\pulsos|Normal2|s_divCounter\(9) & \pulsos|Normal2|s_divCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(7),
	datab => \pulsos|Normal2|s_divCounter\(8),
	datac => \pulsos|Normal2|s_divCounter\(9),
	datad => \pulsos|Normal2|s_divCounter\(6),
	combout => \pulsos|Normal2|Equal0~0_combout\);

-- Location: LCCOMB_X100_Y39_N16
\pulsos|Normal2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Equal0~1_combout\ = (\pulsos|Normal2|s_divCounter\(3) & (\pulsos|Normal2|s_divCounter\(5) & (\pulsos|Normal2|s_divCounter\(2) & \pulsos|Normal2|s_divCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(3),
	datab => \pulsos|Normal2|s_divCounter\(5),
	datac => \pulsos|Normal2|s_divCounter\(2),
	datad => \pulsos|Normal2|s_divCounter\(4),
	combout => \pulsos|Normal2|Equal0~1_combout\);

-- Location: LCCOMB_X100_Y39_N30
\pulsos|Normal2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Equal0~3_combout\ = (!\pulsos|Normal2|s_divCounter\(14) & (!\pulsos|Normal2|s_divCounter\(15) & (!\pulsos|Normal2|s_divCounter\(12) & \pulsos|Normal2|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(14),
	datab => \pulsos|Normal2|s_divCounter\(15),
	datac => \pulsos|Normal2|s_divCounter\(12),
	datad => \pulsos|Normal2|s_divCounter\(13),
	combout => \pulsos|Normal2|Equal0~3_combout\);

-- Location: LCCOMB_X100_Y39_N18
\pulsos|Normal2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Equal0~2_combout\ = (\pulsos|Normal2|s_divCounter\(0) & (\pulsos|Normal2|s_divCounter\(1) & (\pulsos|Normal2|s_divCounter\(11) & \pulsos|Normal2|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(0),
	datab => \pulsos|Normal2|s_divCounter\(1),
	datac => \pulsos|Normal2|s_divCounter\(11),
	datad => \pulsos|Normal2|s_divCounter\(10),
	combout => \pulsos|Normal2|Equal0~2_combout\);

-- Location: LCCOMB_X100_Y39_N8
\pulsos|Normal2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Equal0~4_combout\ = (\pulsos|Normal2|Equal0~0_combout\ & (\pulsos|Normal2|Equal0~1_combout\ & (\pulsos|Normal2|Equal0~3_combout\ & \pulsos|Normal2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|Equal0~0_combout\,
	datab => \pulsos|Normal2|Equal0~1_combout\,
	datac => \pulsos|Normal2|Equal0~3_combout\,
	datad => \pulsos|Normal2|Equal0~2_combout\,
	combout => \pulsos|Normal2|Equal0~4_combout\);

-- Location: LCCOMB_X101_Y38_N6
\pulsos|Normal2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Equal0~5_combout\ = (!\pulsos|Normal2|s_divCounter\(17) & (!\pulsos|Normal2|s_divCounter\(16) & (!\pulsos|Normal2|s_divCounter\(18) & \pulsos|Normal2|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(17),
	datab => \pulsos|Normal2|s_divCounter\(16),
	datac => \pulsos|Normal2|s_divCounter\(18),
	datad => \pulsos|Normal2|s_divCounter\(19),
	combout => \pulsos|Normal2|Equal0~5_combout\);

-- Location: LCCOMB_X98_Y38_N0
\pulsos|Normal2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Equal0~6_combout\ = (!\pulsos|Normal2|s_divCounter\(23) & (\pulsos|Normal2|s_divCounter\(22) & (!\pulsos|Normal2|s_divCounter\(20) & \pulsos|Normal2|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|s_divCounter\(23),
	datab => \pulsos|Normal2|s_divCounter\(22),
	datac => \pulsos|Normal2|s_divCounter\(20),
	datad => \pulsos|Normal2|s_divCounter\(21),
	combout => \pulsos|Normal2|Equal0~6_combout\);

-- Location: LCCOMB_X100_Y39_N14
\pulsos|Normal2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|Normal2|Equal0~9_combout\ = (\pulsos|Normal2|Equal0~8_combout\ & (\pulsos|Normal2|Equal0~4_combout\ & (\pulsos|Normal2|Equal0~5_combout\ & \pulsos|Normal2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|Normal2|Equal0~8_combout\,
	datab => \pulsos|Normal2|Equal0~4_combout\,
	datac => \pulsos|Normal2|Equal0~5_combout\,
	datad => \pulsos|Normal2|Equal0~6_combout\,
	combout => \pulsos|Normal2|Equal0~9_combout\);

-- Location: FF_X100_Y36_N21
\pulsos|Normal2|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulsos|Normal2|Equal0~9_combout\,
	sload => VCC,
	ena => \pulsos|Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|Normal2|clkOut~q\);

-- Location: LCCOMB_X100_Y36_N20
\pulsos|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|comb~0_combout\ = (\pulsos|Normal2|clkOut~q\ & \pulsos|Normal1|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsos|Normal2|clkOut~q\,
	datad => \pulsos|Normal1|clkOut~q\,
	combout => \pulsos|comb~0_combout\);

-- Location: LCCOMB_X100_Y36_N18
\pulsos|saida1|yout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida1|yout~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\pulsos|acel01|clkOut~q\)) # (!\SW[0]~input_o\ & ((\pulsos|comb~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel01|clkOut~q\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \pulsos|comb~0_combout\,
	combout => \pulsos|saida1|yout~0_combout\);

-- Location: LCCOMB_X100_Y36_N24
\pulsos|saida1|yout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida1|yout~1_combout\ = (\SW[1]~input_o\ & ((\pulsos|saida1|yout~0_combout\ & (\pulsos|acel11|clkOut~q\)) # (!\pulsos|saida1|yout~0_combout\ & ((\pulsos|acel10|clkOut~q\))))) # (!\SW[1]~input_o\ & (((\pulsos|saida1|yout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|acel11|clkOut~q\,
	datab => \pulsos|acel10|clkOut~q\,
	datac => \SW[1]~input_o\,
	datad => \pulsos|saida1|yout~0_combout\,
	combout => \pulsos|saida1|yout~1_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X68_Y32_N18
\dTeclaD|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \dTeclaD|s_dirtyIn~0_combout\);

-- Location: FF_X68_Y32_N19
\dTeclaD|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_dirtyIn~q\);

-- Location: LCCOMB_X68_Y32_N4
\dTeclaD|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_previousIn~feeder_combout\ = \dTeclaD|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dTeclaD|s_dirtyIn~q\,
	combout => \dTeclaD|s_previousIn~feeder_combout\);

-- Location: FF_X68_Y32_N5
\dTeclaD|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_previousIn~q\);

-- Location: LCCOMB_X68_Y32_N8
\dTeclaD|s_debounceCnt[14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt[14]~4_combout\ = (\dTeclaD|s_debounceCnt\(22)) # (((\dTeclaD|s_debounceCnt[14]~29_combout\) # (!\dTeclaD|s_previousIn~q\)) # (!\dTeclaD|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(22),
	datab => \dTeclaD|s_dirtyIn~q\,
	datac => \dTeclaD|s_previousIn~q\,
	datad => \dTeclaD|s_debounceCnt[14]~29_combout\,
	combout => \dTeclaD|s_debounceCnt[14]~4_combout\);

-- Location: LCCOMB_X66_Y33_N10
\dTeclaD|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~0_combout\ = \dTeclaD|s_debounceCnt\(0) $ (VCC)
-- \dTeclaD|Add0~1\ = CARRY(\dTeclaD|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_debounceCnt\(0),
	datad => VCC,
	combout => \dTeclaD|Add0~0_combout\,
	cout => \dTeclaD|Add0~1\);

-- Location: LCCOMB_X67_Y32_N6
\dTeclaD|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~26_combout\ = (\dTeclaD|Add0~0_combout\ & \dTeclaD|s_debounceCnt[14]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|Add0~0_combout\,
	datad => \dTeclaD|s_debounceCnt[14]~5_combout\,
	combout => \dTeclaD|s_debounceCnt~26_combout\);

-- Location: FF_X67_Y32_N7
\dTeclaD|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~26_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(0));

-- Location: LCCOMB_X66_Y33_N12
\dTeclaD|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~2_combout\ = (\dTeclaD|s_debounceCnt\(1) & (\dTeclaD|Add0~1\ & VCC)) # (!\dTeclaD|s_debounceCnt\(1) & (!\dTeclaD|Add0~1\))
-- \dTeclaD|Add0~3\ = CARRY((!\dTeclaD|s_debounceCnt\(1) & !\dTeclaD|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(1),
	datad => VCC,
	cin => \dTeclaD|Add0~1\,
	combout => \dTeclaD|Add0~2_combout\,
	cout => \dTeclaD|Add0~3\);

-- Location: LCCOMB_X68_Y32_N14
\dTeclaD|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~21_combout\ = (\dTeclaD|s_debounceCnt[14]~5_combout\ & \dTeclaD|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|s_debounceCnt[14]~5_combout\,
	datad => \dTeclaD|Add0~2_combout\,
	combout => \dTeclaD|s_debounceCnt~21_combout\);

-- Location: FF_X68_Y32_N15
\dTeclaD|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~21_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(1));

-- Location: LCCOMB_X66_Y33_N14
\dTeclaD|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~4_combout\ = (\dTeclaD|s_debounceCnt\(2) & ((GND) # (!\dTeclaD|Add0~3\))) # (!\dTeclaD|s_debounceCnt\(2) & (\dTeclaD|Add0~3\ $ (GND)))
-- \dTeclaD|Add0~5\ = CARRY((\dTeclaD|s_debounceCnt\(2)) # (!\dTeclaD|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_debounceCnt\(2),
	datad => VCC,
	cin => \dTeclaD|Add0~3\,
	combout => \dTeclaD|Add0~4_combout\,
	cout => \dTeclaD|Add0~5\);

-- Location: LCCOMB_X68_Y32_N16
\dTeclaD|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~22_combout\ = (\dTeclaD|s_debounceCnt[14]~5_combout\ & \dTeclaD|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|s_debounceCnt[14]~5_combout\,
	datad => \dTeclaD|Add0~4_combout\,
	combout => \dTeclaD|s_debounceCnt~22_combout\);

-- Location: FF_X68_Y32_N17
\dTeclaD|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~22_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(2));

-- Location: LCCOMB_X66_Y33_N16
\dTeclaD|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~6_combout\ = (\dTeclaD|s_debounceCnt\(3) & (\dTeclaD|Add0~5\ & VCC)) # (!\dTeclaD|s_debounceCnt\(3) & (!\dTeclaD|Add0~5\))
-- \dTeclaD|Add0~7\ = CARRY((!\dTeclaD|s_debounceCnt\(3) & !\dTeclaD|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_debounceCnt\(3),
	datad => VCC,
	cin => \dTeclaD|Add0~5\,
	combout => \dTeclaD|Add0~6_combout\,
	cout => \dTeclaD|Add0~7\);

-- Location: LCCOMB_X66_Y33_N18
\dTeclaD|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~8_combout\ = (\dTeclaD|s_debounceCnt\(4) & ((GND) # (!\dTeclaD|Add0~7\))) # (!\dTeclaD|s_debounceCnt\(4) & (\dTeclaD|Add0~7\ $ (GND)))
-- \dTeclaD|Add0~9\ = CARRY((\dTeclaD|s_debounceCnt\(4)) # (!\dTeclaD|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_debounceCnt\(4),
	datad => VCC,
	cin => \dTeclaD|Add0~7\,
	combout => \dTeclaD|Add0~8_combout\,
	cout => \dTeclaD|Add0~9\);

-- Location: LCCOMB_X68_Y32_N20
\dTeclaD|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~24_combout\ = (\dTeclaD|s_debounceCnt[14]~5_combout\ & \dTeclaD|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|s_debounceCnt[14]~5_combout\,
	datad => \dTeclaD|Add0~8_combout\,
	combout => \dTeclaD|s_debounceCnt~24_combout\);

-- Location: FF_X68_Y32_N21
\dTeclaD|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~24_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(4));

-- Location: LCCOMB_X66_Y33_N20
\dTeclaD|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~10_combout\ = (\dTeclaD|s_debounceCnt\(5) & (\dTeclaD|Add0~9\ & VCC)) # (!\dTeclaD|s_debounceCnt\(5) & (!\dTeclaD|Add0~9\))
-- \dTeclaD|Add0~11\ = CARRY((!\dTeclaD|s_debounceCnt\(5) & !\dTeclaD|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(5),
	datad => VCC,
	cin => \dTeclaD|Add0~9\,
	combout => \dTeclaD|Add0~10_combout\,
	cout => \dTeclaD|Add0~11\);

-- Location: LCCOMB_X68_Y32_N0
\dTeclaD|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~25_combout\ = (\dTeclaD|s_debounceCnt[14]~5_combout\ & \dTeclaD|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|s_debounceCnt[14]~5_combout\,
	datad => \dTeclaD|Add0~10_combout\,
	combout => \dTeclaD|s_debounceCnt~25_combout\);

-- Location: FF_X68_Y32_N1
\dTeclaD|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~25_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(5));

-- Location: LCCOMB_X66_Y33_N22
\dTeclaD|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~12_combout\ = (\dTeclaD|s_debounceCnt\(6) & ((GND) # (!\dTeclaD|Add0~11\))) # (!\dTeclaD|s_debounceCnt\(6) & (\dTeclaD|Add0~11\ $ (GND)))
-- \dTeclaD|Add0~13\ = CARRY((\dTeclaD|s_debounceCnt\(6)) # (!\dTeclaD|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_debounceCnt\(6),
	datad => VCC,
	cin => \dTeclaD|Add0~11\,
	combout => \dTeclaD|Add0~12_combout\,
	cout => \dTeclaD|Add0~13\);

-- Location: LCCOMB_X67_Y32_N16
\dTeclaD|s_debounceCnt[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt[14]~2_combout\ = (\dTeclaD|s_dirtyIn~q\ & ((!\dTeclaD|LessThan0~6_combout\) # (!\dTeclaD|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_dirtyIn~q\,
	datac => \dTeclaD|s_debounceCnt\(22),
	datad => \dTeclaD|LessThan0~6_combout\,
	combout => \dTeclaD|s_debounceCnt[14]~2_combout\);

-- Location: LCCOMB_X67_Y32_N24
\dTeclaD|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~3_combout\ = (\dTeclaD|s_debounceCnt[14]~2_combout\ & ((\dTeclaD|Add0~12_combout\) # (!\dTeclaD|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_previousIn~q\,
	datac => \dTeclaD|Add0~12_combout\,
	datad => \dTeclaD|s_debounceCnt[14]~2_combout\,
	combout => \dTeclaD|s_debounceCnt~3_combout\);

-- Location: FF_X67_Y32_N25
\dTeclaD|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~3_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(6));

-- Location: LCCOMB_X66_Y33_N24
\dTeclaD|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~14_combout\ = (\dTeclaD|s_debounceCnt\(7) & (\dTeclaD|Add0~13\ & VCC)) # (!\dTeclaD|s_debounceCnt\(7) & (!\dTeclaD|Add0~13\))
-- \dTeclaD|Add0~15\ = CARRY((!\dTeclaD|s_debounceCnt\(7) & !\dTeclaD|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_debounceCnt\(7),
	datad => VCC,
	cin => \dTeclaD|Add0~13\,
	combout => \dTeclaD|Add0~14_combout\,
	cout => \dTeclaD|Add0~15\);

-- Location: LCCOMB_X67_Y32_N0
\dTeclaD|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~13_combout\ = (\dTeclaD|s_debounceCnt[14]~5_combout\ & \dTeclaD|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|s_debounceCnt[14]~5_combout\,
	datad => \dTeclaD|Add0~14_combout\,
	combout => \dTeclaD|s_debounceCnt~13_combout\);

-- Location: FF_X67_Y32_N1
\dTeclaD|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~13_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(7));

-- Location: LCCOMB_X66_Y33_N26
\dTeclaD|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~16_combout\ = (\dTeclaD|s_debounceCnt\(8) & ((GND) # (!\dTeclaD|Add0~15\))) # (!\dTeclaD|s_debounceCnt\(8) & (\dTeclaD|Add0~15\ $ (GND)))
-- \dTeclaD|Add0~17\ = CARRY((\dTeclaD|s_debounceCnt\(8)) # (!\dTeclaD|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(8),
	datad => VCC,
	cin => \dTeclaD|Add0~15\,
	combout => \dTeclaD|Add0~16_combout\,
	cout => \dTeclaD|Add0~17\);

-- Location: LCCOMB_X65_Y32_N12
\dTeclaD|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~14_combout\ = (\dTeclaD|s_debounceCnt[14]~2_combout\ & ((\dTeclaD|Add0~16_combout\) # (!\dTeclaD|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_previousIn~q\,
	datac => \dTeclaD|Add0~16_combout\,
	datad => \dTeclaD|s_debounceCnt[14]~2_combout\,
	combout => \dTeclaD|s_debounceCnt~14_combout\);

-- Location: FF_X65_Y32_N13
\dTeclaD|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~14_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(8));

-- Location: LCCOMB_X66_Y33_N28
\dTeclaD|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~18_combout\ = (\dTeclaD|s_debounceCnt\(9) & (\dTeclaD|Add0~17\ & VCC)) # (!\dTeclaD|s_debounceCnt\(9) & (!\dTeclaD|Add0~17\))
-- \dTeclaD|Add0~19\ = CARRY((!\dTeclaD|s_debounceCnt\(9) & !\dTeclaD|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_debounceCnt\(9),
	datad => VCC,
	cin => \dTeclaD|Add0~17\,
	combout => \dTeclaD|Add0~18_combout\,
	cout => \dTeclaD|Add0~19\);

-- Location: LCCOMB_X67_Y32_N22
\dTeclaD|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~15_combout\ = (\dTeclaD|s_debounceCnt[14]~2_combout\ & ((\dTeclaD|Add0~18_combout\) # (!\dTeclaD|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_previousIn~q\,
	datac => \dTeclaD|Add0~18_combout\,
	datad => \dTeclaD|s_debounceCnt[14]~2_combout\,
	combout => \dTeclaD|s_debounceCnt~15_combout\);

-- Location: FF_X67_Y32_N23
\dTeclaD|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~15_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(9));

-- Location: LCCOMB_X66_Y33_N30
\dTeclaD|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~20_combout\ = (\dTeclaD|s_debounceCnt\(10) & ((GND) # (!\dTeclaD|Add0~19\))) # (!\dTeclaD|s_debounceCnt\(10) & (\dTeclaD|Add0~19\ $ (GND)))
-- \dTeclaD|Add0~21\ = CARRY((\dTeclaD|s_debounceCnt\(10)) # (!\dTeclaD|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(10),
	datad => VCC,
	cin => \dTeclaD|Add0~19\,
	combout => \dTeclaD|Add0~20_combout\,
	cout => \dTeclaD|Add0~21\);

-- Location: LCCOMB_X67_Y32_N12
\dTeclaD|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~16_combout\ = (\dTeclaD|s_debounceCnt[14]~5_combout\ & \dTeclaD|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|s_debounceCnt[14]~5_combout\,
	datad => \dTeclaD|Add0~20_combout\,
	combout => \dTeclaD|s_debounceCnt~16_combout\);

-- Location: FF_X67_Y32_N13
\dTeclaD|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~16_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(10));

-- Location: LCCOMB_X66_Y32_N0
\dTeclaD|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~22_combout\ = (\dTeclaD|s_debounceCnt\(11) & (\dTeclaD|Add0~21\ & VCC)) # (!\dTeclaD|s_debounceCnt\(11) & (!\dTeclaD|Add0~21\))
-- \dTeclaD|Add0~23\ = CARRY((!\dTeclaD|s_debounceCnt\(11) & !\dTeclaD|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_debounceCnt\(11),
	datad => VCC,
	cin => \dTeclaD|Add0~21\,
	combout => \dTeclaD|Add0~22_combout\,
	cout => \dTeclaD|Add0~23\);

-- Location: LCCOMB_X65_Y32_N28
\dTeclaD|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~17_combout\ = (\dTeclaD|s_debounceCnt[14]~2_combout\ & ((\dTeclaD|Add0~22_combout\) # (!\dTeclaD|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_previousIn~q\,
	datac => \dTeclaD|Add0~22_combout\,
	datad => \dTeclaD|s_debounceCnt[14]~2_combout\,
	combout => \dTeclaD|s_debounceCnt~17_combout\);

-- Location: FF_X65_Y32_N29
\dTeclaD|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~17_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(11));

-- Location: LCCOMB_X66_Y32_N2
\dTeclaD|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~24_combout\ = (\dTeclaD|s_debounceCnt\(12) & ((GND) # (!\dTeclaD|Add0~23\))) # (!\dTeclaD|s_debounceCnt\(12) & (\dTeclaD|Add0~23\ $ (GND)))
-- \dTeclaD|Add0~25\ = CARRY((\dTeclaD|s_debounceCnt\(12)) # (!\dTeclaD|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(12),
	datad => VCC,
	cin => \dTeclaD|Add0~23\,
	combout => \dTeclaD|Add0~24_combout\,
	cout => \dTeclaD|Add0~25\);

-- Location: LCCOMB_X67_Y32_N4
\dTeclaD|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~11_combout\ = (\dTeclaD|s_debounceCnt[14]~5_combout\ & \dTeclaD|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|s_debounceCnt[14]~5_combout\,
	datad => \dTeclaD|Add0~24_combout\,
	combout => \dTeclaD|s_debounceCnt~11_combout\);

-- Location: FF_X67_Y32_N5
\dTeclaD|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~11_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(12));

-- Location: LCCOMB_X66_Y32_N4
\dTeclaD|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~26_combout\ = (\dTeclaD|s_debounceCnt\(13) & (\dTeclaD|Add0~25\ & VCC)) # (!\dTeclaD|s_debounceCnt\(13) & (!\dTeclaD|Add0~25\))
-- \dTeclaD|Add0~27\ = CARRY((!\dTeclaD|s_debounceCnt\(13) & !\dTeclaD|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(13),
	datad => VCC,
	cin => \dTeclaD|Add0~25\,
	combout => \dTeclaD|Add0~26_combout\,
	cout => \dTeclaD|Add0~27\);

-- Location: LCCOMB_X67_Y32_N30
\dTeclaD|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~12_combout\ = (\dTeclaD|Add0~26_combout\ & \dTeclaD|s_debounceCnt[14]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|Add0~26_combout\,
	datad => \dTeclaD|s_debounceCnt[14]~5_combout\,
	combout => \dTeclaD|s_debounceCnt~12_combout\);

-- Location: FF_X67_Y32_N31
\dTeclaD|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~12_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(13));

-- Location: LCCOMB_X66_Y32_N6
\dTeclaD|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~28_combout\ = (\dTeclaD|s_debounceCnt\(14) & ((GND) # (!\dTeclaD|Add0~27\))) # (!\dTeclaD|s_debounceCnt\(14) & (\dTeclaD|Add0~27\ $ (GND)))
-- \dTeclaD|Add0~29\ = CARRY((\dTeclaD|s_debounceCnt\(14)) # (!\dTeclaD|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_debounceCnt\(14),
	datad => VCC,
	cin => \dTeclaD|Add0~27\,
	combout => \dTeclaD|Add0~28_combout\,
	cout => \dTeclaD|Add0~29\);

-- Location: LCCOMB_X65_Y32_N22
\dTeclaD|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~18_combout\ = (\dTeclaD|s_debounceCnt[14]~2_combout\ & ((\dTeclaD|Add0~28_combout\) # (!\dTeclaD|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_previousIn~q\,
	datac => \dTeclaD|Add0~28_combout\,
	datad => \dTeclaD|s_debounceCnt[14]~2_combout\,
	combout => \dTeclaD|s_debounceCnt~18_combout\);

-- Location: FF_X65_Y32_N23
\dTeclaD|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~18_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(14));

-- Location: LCCOMB_X66_Y32_N8
\dTeclaD|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~30_combout\ = (\dTeclaD|s_debounceCnt\(15) & (\dTeclaD|Add0~29\ & VCC)) # (!\dTeclaD|s_debounceCnt\(15) & (!\dTeclaD|Add0~29\))
-- \dTeclaD|Add0~31\ = CARRY((!\dTeclaD|s_debounceCnt\(15) & !\dTeclaD|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(15),
	datad => VCC,
	cin => \dTeclaD|Add0~29\,
	combout => \dTeclaD|Add0~30_combout\,
	cout => \dTeclaD|Add0~31\);

-- Location: LCCOMB_X65_Y32_N16
\dTeclaD|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~6_combout\ = (\dTeclaD|Add0~30_combout\ & \dTeclaD|s_debounceCnt[14]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|Add0~30_combout\,
	datad => \dTeclaD|s_debounceCnt[14]~5_combout\,
	combout => \dTeclaD|s_debounceCnt~6_combout\);

-- Location: FF_X65_Y32_N17
\dTeclaD|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~6_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(15));

-- Location: LCCOMB_X66_Y32_N10
\dTeclaD|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~32_combout\ = (\dTeclaD|s_debounceCnt\(16) & ((GND) # (!\dTeclaD|Add0~31\))) # (!\dTeclaD|s_debounceCnt\(16) & (\dTeclaD|Add0~31\ $ (GND)))
-- \dTeclaD|Add0~33\ = CARRY((\dTeclaD|s_debounceCnt\(16)) # (!\dTeclaD|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_debounceCnt\(16),
	datad => VCC,
	cin => \dTeclaD|Add0~31\,
	combout => \dTeclaD|Add0~32_combout\,
	cout => \dTeclaD|Add0~33\);

-- Location: LCCOMB_X65_Y32_N6
\dTeclaD|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~7_combout\ = (\dTeclaD|Add0~32_combout\ & \dTeclaD|s_debounceCnt[14]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|Add0~32_combout\,
	datad => \dTeclaD|s_debounceCnt[14]~5_combout\,
	combout => \dTeclaD|s_debounceCnt~7_combout\);

-- Location: FF_X65_Y32_N7
\dTeclaD|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~7_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(16));

-- Location: LCCOMB_X66_Y32_N12
\dTeclaD|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~34_combout\ = (\dTeclaD|s_debounceCnt\(17) & (\dTeclaD|Add0~33\ & VCC)) # (!\dTeclaD|s_debounceCnt\(17) & (!\dTeclaD|Add0~33\))
-- \dTeclaD|Add0~35\ = CARRY((!\dTeclaD|s_debounceCnt\(17) & !\dTeclaD|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_debounceCnt\(17),
	datad => VCC,
	cin => \dTeclaD|Add0~33\,
	combout => \dTeclaD|Add0~34_combout\,
	cout => \dTeclaD|Add0~35\);

-- Location: LCCOMB_X65_Y32_N24
\dTeclaD|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~8_combout\ = (\dTeclaD|Add0~34_combout\ & \dTeclaD|s_debounceCnt[14]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|Add0~34_combout\,
	datad => \dTeclaD|s_debounceCnt[14]~5_combout\,
	combout => \dTeclaD|s_debounceCnt~8_combout\);

-- Location: FF_X65_Y32_N25
\dTeclaD|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~8_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(17));

-- Location: LCCOMB_X66_Y32_N14
\dTeclaD|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~36_combout\ = (\dTeclaD|s_debounceCnt\(18) & ((GND) # (!\dTeclaD|Add0~35\))) # (!\dTeclaD|s_debounceCnt\(18) & (\dTeclaD|Add0~35\ $ (GND)))
-- \dTeclaD|Add0~37\ = CARRY((\dTeclaD|s_debounceCnt\(18)) # (!\dTeclaD|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(18),
	datad => VCC,
	cin => \dTeclaD|Add0~35\,
	combout => \dTeclaD|Add0~36_combout\,
	cout => \dTeclaD|Add0~37\);

-- Location: LCCOMB_X65_Y32_N0
\dTeclaD|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt[18]~19_combout\ = (\dTeclaD|s_debounceCnt[14]~4_combout\ & (\dTeclaD|s_debounceCnt[14]~2_combout\ & ((\dTeclaD|Add0~36_combout\) # (!\dTeclaD|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_previousIn~q\,
	datab => \dTeclaD|s_debounceCnt[14]~4_combout\,
	datac => \dTeclaD|Add0~36_combout\,
	datad => \dTeclaD|s_debounceCnt[14]~2_combout\,
	combout => \dTeclaD|s_debounceCnt[18]~19_combout\);

-- Location: FF_X65_Y32_N1
\dTeclaD|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(18));

-- Location: LCCOMB_X66_Y32_N16
\dTeclaD|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~38_combout\ = (\dTeclaD|s_debounceCnt\(19) & (\dTeclaD|Add0~37\ & VCC)) # (!\dTeclaD|s_debounceCnt\(19) & (!\dTeclaD|Add0~37\))
-- \dTeclaD|Add0~39\ = CARRY((!\dTeclaD|s_debounceCnt\(19) & !\dTeclaD|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(19),
	datad => VCC,
	cin => \dTeclaD|Add0~37\,
	combout => \dTeclaD|Add0~38_combout\,
	cout => \dTeclaD|Add0~39\);

-- Location: LCCOMB_X65_Y32_N10
\dTeclaD|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt[19]~20_combout\ = (\dTeclaD|s_debounceCnt[14]~4_combout\ & (\dTeclaD|s_debounceCnt[14]~2_combout\ & ((\dTeclaD|Add0~38_combout\) # (!\dTeclaD|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_previousIn~q\,
	datab => \dTeclaD|s_debounceCnt[14]~4_combout\,
	datac => \dTeclaD|Add0~38_combout\,
	datad => \dTeclaD|s_debounceCnt[14]~2_combout\,
	combout => \dTeclaD|s_debounceCnt[19]~20_combout\);

-- Location: FF_X65_Y32_N11
\dTeclaD|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(19));

-- Location: LCCOMB_X66_Y32_N18
\dTeclaD|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~40_combout\ = (\dTeclaD|s_debounceCnt\(20) & ((GND) # (!\dTeclaD|Add0~39\))) # (!\dTeclaD|s_debounceCnt\(20) & (\dTeclaD|Add0~39\ $ (GND)))
-- \dTeclaD|Add0~41\ = CARRY((\dTeclaD|s_debounceCnt\(20)) # (!\dTeclaD|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_debounceCnt\(20),
	datad => VCC,
	cin => \dTeclaD|Add0~39\,
	combout => \dTeclaD|Add0~40_combout\,
	cout => \dTeclaD|Add0~41\);

-- Location: LCCOMB_X66_Y32_N28
\dTeclaD|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt[20]~9_combout\ = (\dTeclaD|Add0~40_combout\ & (\dTeclaD|s_debounceCnt[14]~4_combout\ & \dTeclaD|s_debounceCnt[14]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|Add0~40_combout\,
	datac => \dTeclaD|s_debounceCnt[14]~4_combout\,
	datad => \dTeclaD|s_debounceCnt[14]~5_combout\,
	combout => \dTeclaD|s_debounceCnt[20]~9_combout\);

-- Location: FF_X66_Y32_N29
\dTeclaD|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(20));

-- Location: LCCOMB_X66_Y32_N20
\dTeclaD|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~42_combout\ = (\dTeclaD|s_debounceCnt\(21) & (\dTeclaD|Add0~41\ & VCC)) # (!\dTeclaD|s_debounceCnt\(21) & (!\dTeclaD|Add0~41\))
-- \dTeclaD|Add0~43\ = CARRY((!\dTeclaD|s_debounceCnt\(21) & !\dTeclaD|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_debounceCnt\(21),
	datad => VCC,
	cin => \dTeclaD|Add0~41\,
	combout => \dTeclaD|Add0~42_combout\,
	cout => \dTeclaD|Add0~43\);

-- Location: LCCOMB_X67_Y32_N14
\dTeclaD|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt[21]~10_combout\ = (\dTeclaD|s_debounceCnt[14]~5_combout\ & (\dTeclaD|s_debounceCnt[14]~4_combout\ & \dTeclaD|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt[14]~5_combout\,
	datac => \dTeclaD|s_debounceCnt[14]~4_combout\,
	datad => \dTeclaD|Add0~42_combout\,
	combout => \dTeclaD|s_debounceCnt[21]~10_combout\);

-- Location: FF_X67_Y32_N15
\dTeclaD|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(21));

-- Location: LCCOMB_X66_Y32_N24
\dTeclaD|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|LessThan0~5_combout\ = (!\dTeclaD|s_debounceCnt\(21) & !\dTeclaD|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|s_debounceCnt\(21),
	datad => \dTeclaD|s_debounceCnt\(20),
	combout => \dTeclaD|LessThan0~5_combout\);

-- Location: LCCOMB_X67_Y32_N8
\dTeclaD|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|LessThan0~2_combout\ = (!\dTeclaD|s_debounceCnt\(12) & !\dTeclaD|s_debounceCnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|s_debounceCnt\(12),
	datad => \dTeclaD|s_debounceCnt\(13),
	combout => \dTeclaD|LessThan0~2_combout\);

-- Location: LCCOMB_X68_Y32_N22
\dTeclaD|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_pulsedOut~8_combout\ = (!\dTeclaD|s_debounceCnt\(5) & \dTeclaD|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dTeclaD|s_debounceCnt\(5),
	datad => \dTeclaD|s_pulsedOut~7_combout\,
	combout => \dTeclaD|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X67_Y32_N20
\dTeclaD|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|LessThan0~0_combout\ = (\dTeclaD|s_debounceCnt\(7)) # ((\dTeclaD|s_debounceCnt\(6) & ((\dTeclaD|s_debounceCnt\(0)) # (!\dTeclaD|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(0),
	datab => \dTeclaD|s_debounceCnt\(6),
	datac => \dTeclaD|s_debounceCnt\(7),
	datad => \dTeclaD|s_pulsedOut~8_combout\,
	combout => \dTeclaD|LessThan0~0_combout\);

-- Location: LCCOMB_X67_Y32_N18
\dTeclaD|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|LessThan0~1_combout\ = (\dTeclaD|s_debounceCnt\(10)) # ((\dTeclaD|s_debounceCnt\(9) & (\dTeclaD|s_debounceCnt\(8) & \dTeclaD|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(9),
	datab => \dTeclaD|s_debounceCnt\(10),
	datac => \dTeclaD|s_debounceCnt\(8),
	datad => \dTeclaD|LessThan0~0_combout\,
	combout => \dTeclaD|LessThan0~1_combout\);

-- Location: LCCOMB_X67_Y32_N2
\dTeclaD|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|LessThan0~3_combout\ = (\dTeclaD|s_debounceCnt\(14) & (((\dTeclaD|s_debounceCnt\(11) & \dTeclaD|LessThan0~1_combout\)) # (!\dTeclaD|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(11),
	datab => \dTeclaD|s_debounceCnt\(14),
	datac => \dTeclaD|LessThan0~2_combout\,
	datad => \dTeclaD|LessThan0~1_combout\,
	combout => \dTeclaD|LessThan0~3_combout\);

-- Location: LCCOMB_X67_Y32_N28
\dTeclaD|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|LessThan0~4_combout\ = (\dTeclaD|s_debounceCnt\(17)) # ((\dTeclaD|s_debounceCnt\(15)) # ((\dTeclaD|s_debounceCnt\(16)) # (\dTeclaD|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(17),
	datab => \dTeclaD|s_debounceCnt\(15),
	datac => \dTeclaD|s_debounceCnt\(16),
	datad => \dTeclaD|LessThan0~3_combout\,
	combout => \dTeclaD|LessThan0~4_combout\);

-- Location: LCCOMB_X67_Y32_N10
\dTeclaD|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|LessThan0~6_combout\ = ((\dTeclaD|s_debounceCnt\(18) & (\dTeclaD|s_debounceCnt\(19) & \dTeclaD|LessThan0~4_combout\))) # (!\dTeclaD|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(18),
	datab => \dTeclaD|LessThan0~5_combout\,
	datac => \dTeclaD|s_debounceCnt\(19),
	datad => \dTeclaD|LessThan0~4_combout\,
	combout => \dTeclaD|LessThan0~6_combout\);

-- Location: LCCOMB_X67_Y32_N26
\dTeclaD|s_debounceCnt[14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt[14]~5_combout\ = (\dTeclaD|s_previousIn~q\ & (\dTeclaD|s_dirtyIn~q\ & ((!\dTeclaD|LessThan0~6_combout\) # (!\dTeclaD|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_previousIn~q\,
	datab => \dTeclaD|s_dirtyIn~q\,
	datac => \dTeclaD|s_debounceCnt\(22),
	datad => \dTeclaD|LessThan0~6_combout\,
	combout => \dTeclaD|s_debounceCnt[14]~5_combout\);

-- Location: LCCOMB_X68_Y32_N30
\dTeclaD|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt~23_combout\ = (\dTeclaD|s_debounceCnt[14]~5_combout\ & \dTeclaD|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dTeclaD|s_debounceCnt[14]~5_combout\,
	datad => \dTeclaD|Add0~6_combout\,
	combout => \dTeclaD|s_debounceCnt~23_combout\);

-- Location: FF_X68_Y32_N31
\dTeclaD|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt~23_combout\,
	ena => \dTeclaD|s_debounceCnt[14]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(3));

-- Location: LCCOMB_X68_Y32_N10
\dTeclaD|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_pulsedOut~7_combout\ = (!\dTeclaD|s_debounceCnt\(3) & (!\dTeclaD|s_debounceCnt\(2) & (!\dTeclaD|s_debounceCnt\(1) & !\dTeclaD|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(3),
	datab => \dTeclaD|s_debounceCnt\(2),
	datac => \dTeclaD|s_debounceCnt\(1),
	datad => \dTeclaD|s_debounceCnt\(4),
	combout => \dTeclaD|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X66_Y32_N30
\dTeclaD|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_pulsedOut~3_combout\ = (!\dTeclaD|s_debounceCnt\(13) & (!\dTeclaD|s_debounceCnt\(20) & (!\dTeclaD|s_debounceCnt\(21) & !\dTeclaD|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(13),
	datab => \dTeclaD|s_debounceCnt\(20),
	datac => \dTeclaD|s_debounceCnt\(21),
	datad => \dTeclaD|s_debounceCnt\(12),
	combout => \dTeclaD|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X65_Y32_N4
\dTeclaD|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_pulsedOut~5_combout\ = (!\dTeclaD|s_debounceCnt\(19) & (!\dTeclaD|s_debounceCnt\(11) & (!\dTeclaD|s_debounceCnt\(14) & !\dTeclaD|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(19),
	datab => \dTeclaD|s_debounceCnt\(11),
	datac => \dTeclaD|s_debounceCnt\(14),
	datad => \dTeclaD|s_debounceCnt\(18),
	combout => \dTeclaD|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X65_Y32_N14
\dTeclaD|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_pulsedOut~4_combout\ = (!\dTeclaD|s_debounceCnt\(8) & (!\dTeclaD|s_debounceCnt\(7) & (!\dTeclaD|s_debounceCnt\(10) & !\dTeclaD|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(8),
	datab => \dTeclaD|s_debounceCnt\(7),
	datac => \dTeclaD|s_debounceCnt\(10),
	datad => \dTeclaD|s_debounceCnt\(9),
	combout => \dTeclaD|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X65_Y32_N18
\dTeclaD|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_pulsedOut~2_combout\ = (!\dTeclaD|s_debounceCnt\(16) & (!\dTeclaD|s_debounceCnt\(17) & (!\dTeclaD|s_debounceCnt\(6) & !\dTeclaD|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(16),
	datab => \dTeclaD|s_debounceCnt\(17),
	datac => \dTeclaD|s_debounceCnt\(6),
	datad => \dTeclaD|s_debounceCnt\(15),
	combout => \dTeclaD|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X65_Y32_N30
\dTeclaD|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_pulsedOut~6_combout\ = (\dTeclaD|s_pulsedOut~3_combout\ & (\dTeclaD|s_pulsedOut~5_combout\ & (\dTeclaD|s_pulsedOut~4_combout\ & \dTeclaD|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_pulsedOut~3_combout\,
	datab => \dTeclaD|s_pulsedOut~5_combout\,
	datac => \dTeclaD|s_pulsedOut~4_combout\,
	datad => \dTeclaD|s_pulsedOut~2_combout\,
	combout => \dTeclaD|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X68_Y32_N24
\dTeclaD|s_debounceCnt[14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt[14]~29_combout\ = ((\dTeclaD|s_debounceCnt\(5)) # ((\dTeclaD|s_debounceCnt\(0)) # (!\dTeclaD|s_pulsedOut~6_combout\))) # (!\dTeclaD|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_pulsedOut~7_combout\,
	datab => \dTeclaD|s_debounceCnt\(5),
	datac => \dTeclaD|s_debounceCnt\(0),
	datad => \dTeclaD|s_pulsedOut~6_combout\,
	combout => \dTeclaD|s_debounceCnt[14]~29_combout\);

-- Location: LCCOMB_X68_Y32_N26
\dTeclaD|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt[22]~27_combout\ = (\dTeclaD|s_debounceCnt\(22) & (((!\dTeclaD|LessThan0~6_combout\)))) # (!\dTeclaD|s_debounceCnt\(22) & ((\dTeclaD|s_debounceCnt[14]~29_combout\) # ((!\dTeclaD|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(22),
	datab => \dTeclaD|s_debounceCnt[14]~29_combout\,
	datac => \dTeclaD|s_previousIn~q\,
	datad => \dTeclaD|LessThan0~6_combout\,
	combout => \dTeclaD|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X66_Y32_N22
\dTeclaD|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|Add0~44_combout\ = \dTeclaD|Add0~43\ $ (\dTeclaD|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dTeclaD|s_debounceCnt\(22),
	cin => \dTeclaD|Add0~43\,
	combout => \dTeclaD|Add0~44_combout\);

-- Location: LCCOMB_X68_Y32_N12
\dTeclaD|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_debounceCnt[22]~28_combout\ = (\dTeclaD|s_dirtyIn~q\ & (\dTeclaD|s_debounceCnt[22]~27_combout\ & ((\dTeclaD|Add0~44_combout\) # (!\dTeclaD|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_previousIn~q\,
	datab => \dTeclaD|s_dirtyIn~q\,
	datac => \dTeclaD|s_debounceCnt[22]~27_combout\,
	datad => \dTeclaD|Add0~44_combout\,
	combout => \dTeclaD|s_debounceCnt[22]~28_combout\);

-- Location: FF_X68_Y32_N13
\dTeclaD|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_debounceCnt\(22));

-- Location: LCCOMB_X68_Y32_N6
\dTeclaD|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_pulsedOut~9_combout\ = (!\dTeclaD|s_debounceCnt\(22) & (\dTeclaD|s_debounceCnt\(0) & (\dTeclaD|s_previousIn~q\ & \dTeclaD|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_debounceCnt\(22),
	datab => \dTeclaD|s_debounceCnt\(0),
	datac => \dTeclaD|s_previousIn~q\,
	datad => \dTeclaD|s_dirtyIn~q\,
	combout => \dTeclaD|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X68_Y32_N28
\dTeclaD|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dTeclaD|s_pulsedOut~10_combout\ = (\dTeclaD|s_pulsedOut~9_combout\ & (!\dTeclaD|s_debounceCnt\(5) & (\dTeclaD|s_pulsedOut~7_combout\ & \dTeclaD|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dTeclaD|s_pulsedOut~9_combout\,
	datab => \dTeclaD|s_debounceCnt\(5),
	datac => \dTeclaD|s_pulsedOut~7_combout\,
	datad => \dTeclaD|s_pulsedOut~6_combout\,
	combout => \dTeclaD|s_pulsedOut~10_combout\);

-- Location: FF_X68_Y32_N29
\dTeclaD|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dTeclaD|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dTeclaD|s_pulsedOut~q\);

-- Location: LCCOMB_X97_Y36_N12
\relogio|relBas|muxMin|yout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|muxMin|yout~0_combout\ = (\relogio|FSMrel|pS.NORMAL~q\ & (\relogio|FSMrel|pS.MINUTOS~q\ & ((\dTeclaU|s_pulsedOut~q\) # (\dTeclaD|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|pS.NORMAL~q\,
	datab => \relogio|FSMrel|pS.MINUTOS~q\,
	datac => \dTeclaU|s_pulsedOut~q\,
	datad => \dTeclaD|s_pulsedOut~q\,
	combout => \relogio|relBas|muxMin|yout~0_combout\);

-- Location: LCCOMB_X97_Y36_N30
\relogio|relBas|muxMin|yout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|muxMin|yout~1_combout\ = (\relogio|relBas|muxMin|yout~0_combout\) # ((!\relogio|FSMrel|pS.NORMAL~q\ & \pulsos|saida1|yout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|FSMrel|pS.NORMAL~q\,
	datac => \pulsos|saida1|yout~1_combout\,
	datad => \relogio|relBas|muxMin|yout~0_combout\,
	combout => \relogio|relBas|muxMin|yout~1_combout\);

-- Location: FF_X105_Y36_N5
\relogio|relBas|Minutos|s_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|relBas|Minutos|s_cont~0_combout\,
	ena => \relogio|relBas|muxMin|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|relBas|Minutos|s_cont\(0));

-- Location: LCCOMB_X105_Y36_N12
\relogio|relBas|Minutos|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|Add0~2_combout\ = (\relogio|relBas|Minutos|s_cont\(1) & (\relogio|relBas|Minutos|Add0~1\ & VCC)) # (!\relogio|relBas|Minutos|s_cont\(1) & (!\relogio|relBas|Minutos|Add0~1\))
-- \relogio|relBas|Minutos|Add0~3\ = CARRY((!\relogio|relBas|Minutos|s_cont\(1) & !\relogio|relBas|Minutos|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(1),
	datad => VCC,
	cin => \relogio|relBas|Minutos|Add0~1\,
	combout => \relogio|relBas|Minutos|Add0~2_combout\,
	cout => \relogio|relBas|Minutos|Add0~3\);

-- Location: LCCOMB_X106_Y36_N12
\relogio|relBas|Minutos|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|Add1~2_combout\ = (\relogio|relBas|Minutos|s_cont\(1) & (!\relogio|relBas|Minutos|Add1~1\)) # (!\relogio|relBas|Minutos|s_cont\(1) & ((\relogio|relBas|Minutos|Add1~1\) # (GND)))
-- \relogio|relBas|Minutos|Add1~3\ = CARRY((!\relogio|relBas|Minutos|Add1~1\) # (!\relogio|relBas|Minutos|s_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Minutos|s_cont\(1),
	datad => VCC,
	cin => \relogio|relBas|Minutos|Add1~1\,
	combout => \relogio|relBas|Minutos|Add1~2_combout\,
	cout => \relogio|relBas|Minutos|Add1~3\);

-- Location: LCCOMB_X105_Y36_N22
\relogio|relBas|Minutos|s_cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|s_cont~5_combout\ = (\relogio|FSMrel|ud~0_combout\ & (((\relogio|relBas|Minutos|Add1~2_combout\ & \relogio|relBas|Minutos|LessThan0~0_combout\)))) # (!\relogio|FSMrel|ud~0_combout\ & (\relogio|relBas|Minutos|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|Add0~2_combout\,
	datab => \relogio|relBas|Minutos|Add1~2_combout\,
	datac => \relogio|relBas|Minutos|LessThan0~0_combout\,
	datad => \relogio|FSMrel|ud~0_combout\,
	combout => \relogio|relBas|Minutos|s_cont~5_combout\);

-- Location: FF_X105_Y36_N23
\relogio|relBas|Minutos|s_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|relBas|Minutos|s_cont~5_combout\,
	ena => \relogio|relBas|muxMin|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|relBas|Minutos|s_cont\(1));

-- Location: LCCOMB_X105_Y36_N16
\relogio|relBas|Minutos|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|Add0~6_combout\ = (\relogio|relBas|Minutos|s_cont\(3) & (\relogio|relBas|Minutos|Add0~5\ & VCC)) # (!\relogio|relBas|Minutos|s_cont\(3) & (!\relogio|relBas|Minutos|Add0~5\))
-- \relogio|relBas|Minutos|Add0~7\ = CARRY((!\relogio|relBas|Minutos|s_cont\(3) & !\relogio|relBas|Minutos|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Minutos|s_cont\(3),
	datad => VCC,
	cin => \relogio|relBas|Minutos|Add0~5\,
	combout => \relogio|relBas|Minutos|Add0~6_combout\,
	cout => \relogio|relBas|Minutos|Add0~7\);

-- Location: LCCOMB_X105_Y36_N18
\relogio|relBas|Minutos|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|Add0~8_combout\ = (\relogio|relBas|Minutos|s_cont\(4) & ((GND) # (!\relogio|relBas|Minutos|Add0~7\))) # (!\relogio|relBas|Minutos|s_cont\(4) & (\relogio|relBas|Minutos|Add0~7\ $ (GND)))
-- \relogio|relBas|Minutos|Add0~9\ = CARRY((\relogio|relBas|Minutos|s_cont\(4)) # (!\relogio|relBas|Minutos|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(4),
	datad => VCC,
	cin => \relogio|relBas|Minutos|Add0~7\,
	combout => \relogio|relBas|Minutos|Add0~8_combout\,
	cout => \relogio|relBas|Minutos|Add0~9\);

-- Location: LCCOMB_X106_Y36_N14
\relogio|relBas|Minutos|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|Add1~4_combout\ = (\relogio|relBas|Minutos|s_cont\(2) & (\relogio|relBas|Minutos|Add1~3\ $ (GND))) # (!\relogio|relBas|Minutos|s_cont\(2) & (!\relogio|relBas|Minutos|Add1~3\ & VCC))
-- \relogio|relBas|Minutos|Add1~5\ = CARRY((\relogio|relBas|Minutos|s_cont\(2) & !\relogio|relBas|Minutos|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(2),
	datad => VCC,
	cin => \relogio|relBas|Minutos|Add1~3\,
	combout => \relogio|relBas|Minutos|Add1~4_combout\,
	cout => \relogio|relBas|Minutos|Add1~5\);

-- Location: LCCOMB_X106_Y36_N16
\relogio|relBas|Minutos|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|Add1~6_combout\ = (\relogio|relBas|Minutos|s_cont\(3) & (!\relogio|relBas|Minutos|Add1~5\)) # (!\relogio|relBas|Minutos|s_cont\(3) & ((\relogio|relBas|Minutos|Add1~5\) # (GND)))
-- \relogio|relBas|Minutos|Add1~7\ = CARRY((!\relogio|relBas|Minutos|Add1~5\) # (!\relogio|relBas|Minutos|s_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(3),
	datad => VCC,
	cin => \relogio|relBas|Minutos|Add1~5\,
	combout => \relogio|relBas|Minutos|Add1~6_combout\,
	cout => \relogio|relBas|Minutos|Add1~7\);

-- Location: LCCOMB_X106_Y36_N18
\relogio|relBas|Minutos|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|Add1~8_combout\ = (\relogio|relBas|Minutos|s_cont\(4) & (\relogio|relBas|Minutos|Add1~7\ $ (GND))) # (!\relogio|relBas|Minutos|s_cont\(4) & (!\relogio|relBas|Minutos|Add1~7\ & VCC))
-- \relogio|relBas|Minutos|Add1~9\ = CARRY((\relogio|relBas|Minutos|s_cont\(4) & !\relogio|relBas|Minutos|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Minutos|s_cont\(4),
	datad => VCC,
	cin => \relogio|relBas|Minutos|Add1~7\,
	combout => \relogio|relBas|Minutos|Add1~8_combout\,
	cout => \relogio|relBas|Minutos|Add1~9\);

-- Location: LCCOMB_X105_Y36_N6
\relogio|relBas|Minutos|s_cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|s_cont~3_combout\ = (\relogio|FSMrel|ud~0_combout\ & (((\relogio|relBas|Minutos|LessThan0~0_combout\ & \relogio|relBas|Minutos|Add1~8_combout\)))) # (!\relogio|FSMrel|ud~0_combout\ & (\relogio|relBas|Minutos|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|ud~0_combout\,
	datab => \relogio|relBas|Minutos|Add0~8_combout\,
	datac => \relogio|relBas|Minutos|LessThan0~0_combout\,
	datad => \relogio|relBas|Minutos|Add1~8_combout\,
	combout => \relogio|relBas|Minutos|s_cont~3_combout\);

-- Location: FF_X105_Y36_N7
\relogio|relBas|Minutos|s_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|relBas|Minutos|s_cont~3_combout\,
	ena => \relogio|relBas|muxMin|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|relBas|Minutos|s_cont\(4));

-- Location: LCCOMB_X105_Y36_N20
\relogio|relBas|Minutos|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|Add0~10_combout\ = \relogio|relBas|Minutos|s_cont\(5) $ (!\relogio|relBas|Minutos|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Minutos|s_cont\(5),
	cin => \relogio|relBas|Minutos|Add0~9\,
	combout => \relogio|relBas|Minutos|Add0~10_combout\);

-- Location: LCCOMB_X106_Y36_N20
\relogio|relBas|Minutos|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|Add1~10_combout\ = \relogio|relBas|Minutos|Add1~9\ $ (\relogio|relBas|Minutos|s_cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \relogio|relBas|Minutos|s_cont\(5),
	cin => \relogio|relBas|Minutos|Add1~9\,
	combout => \relogio|relBas|Minutos|Add1~10_combout\);

-- Location: LCCOMB_X105_Y36_N8
\relogio|relBas|Minutos|s_cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|s_cont~2_combout\ = (\relogio|FSMrel|ud~0_combout\ & (\relogio|relBas|Minutos|LessThan0~0_combout\ & ((\relogio|relBas|Minutos|Add1~10_combout\)))) # (!\relogio|FSMrel|ud~0_combout\ & (((\relogio|relBas|Minutos|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|LessThan0~0_combout\,
	datab => \relogio|relBas|Minutos|Add0~10_combout\,
	datac => \relogio|relBas|Minutos|Add1~10_combout\,
	datad => \relogio|FSMrel|ud~0_combout\,
	combout => \relogio|relBas|Minutos|s_cont~2_combout\);

-- Location: FF_X105_Y36_N9
\relogio|relBas|Minutos|s_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|relBas|Minutos|s_cont~2_combout\,
	ena => \relogio|relBas|muxMin|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|relBas|Minutos|s_cont\(5));

-- Location: LCCOMB_X105_Y36_N28
\relogio|relBas|Minutos|contFim~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|contFim~0_combout\ = (\relogio|relBas|Minutos|s_cont\(4) & (\relogio|relBas|Minutos|s_cont\(5) & \relogio|relBas|Minutos|s_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(4),
	datac => \relogio|relBas|Minutos|s_cont\(5),
	datad => \relogio|relBas|Minutos|s_cont\(3),
	combout => \relogio|relBas|Minutos|contFim~0_combout\);

-- Location: LCCOMB_X105_Y36_N26
\relogio|relBas|Minutos|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|LessThan0~0_combout\ = ((!\relogio|relBas|Minutos|s_cont\(2) & ((!\relogio|relBas|Minutos|s_cont\(0)) # (!\relogio|relBas|Minutos|s_cont\(1))))) # (!\relogio|relBas|Minutos|contFim~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(1),
	datab => \relogio|relBas|Minutos|s_cont\(2),
	datac => \relogio|relBas|Minutos|s_cont\(0),
	datad => \relogio|relBas|Minutos|contFim~0_combout\,
	combout => \relogio|relBas|Minutos|LessThan0~0_combout\);

-- Location: LCCOMB_X105_Y36_N14
\relogio|relBas|Minutos|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|Add0~4_combout\ = (\relogio|relBas|Minutos|s_cont\(2) & ((GND) # (!\relogio|relBas|Minutos|Add0~3\))) # (!\relogio|relBas|Minutos|s_cont\(2) & (\relogio|relBas|Minutos|Add0~3\ $ (GND)))
-- \relogio|relBas|Minutos|Add0~5\ = CARRY((\relogio|relBas|Minutos|s_cont\(2)) # (!\relogio|relBas|Minutos|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Minutos|s_cont\(2),
	datad => VCC,
	cin => \relogio|relBas|Minutos|Add0~3\,
	combout => \relogio|relBas|Minutos|Add0~4_combout\,
	cout => \relogio|relBas|Minutos|Add0~5\);

-- Location: LCCOMB_X105_Y36_N2
\relogio|relBas|Minutos|s_cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|s_cont~1_combout\ = (\relogio|FSMrel|ud~0_combout\ & (\relogio|relBas|Minutos|LessThan0~0_combout\ & ((\relogio|relBas|Minutos|Add1~4_combout\)))) # (!\relogio|FSMrel|ud~0_combout\ & (((\relogio|relBas|Minutos|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|LessThan0~0_combout\,
	datab => \relogio|relBas|Minutos|Add0~4_combout\,
	datac => \relogio|relBas|Minutos|Add1~4_combout\,
	datad => \relogio|FSMrel|ud~0_combout\,
	combout => \relogio|relBas|Minutos|s_cont~1_combout\);

-- Location: FF_X105_Y36_N3
\relogio|relBas|Minutos|s_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|relBas|Minutos|s_cont~1_combout\,
	ena => \relogio|relBas|muxMin|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|relBas|Minutos|s_cont\(2));

-- Location: LCCOMB_X105_Y36_N0
\relogio|relBas|Minutos|s_cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|s_cont~4_combout\ = (\relogio|FSMrel|ud~0_combout\ & (((\relogio|relBas|Minutos|LessThan0~0_combout\ & \relogio|relBas|Minutos|Add1~6_combout\)))) # (!\relogio|FSMrel|ud~0_combout\ & (\relogio|relBas|Minutos|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|ud~0_combout\,
	datab => \relogio|relBas|Minutos|Add0~6_combout\,
	datac => \relogio|relBas|Minutos|LessThan0~0_combout\,
	datad => \relogio|relBas|Minutos|Add1~6_combout\,
	combout => \relogio|relBas|Minutos|s_cont~4_combout\);

-- Location: FF_X105_Y36_N1
\relogio|relBas|Minutos|s_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|relBas|Minutos|s_cont~4_combout\,
	ena => \relogio|relBas|muxMin|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|relBas|Minutos|s_cont\(3));

-- Location: LCCOMB_X106_Y33_N4
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\ = \relogio|relBas|Minutos|s_cont\(3) $ (VCC)
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~1\ = CARRY(\relogio|relBas|Minutos|s_cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(3),
	datad => VCC,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~1\);

-- Location: LCCOMB_X106_Y33_N6
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\ = (\relogio|relBas|Minutos|s_cont\(4) & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~1\ & VCC)) # (!\relogio|relBas|Minutos|s_cont\(4) & 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~1\))
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~3\ = CARRY((!\relogio|relBas|Minutos|s_cont\(4) & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Minutos|s_cont\(4),
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~1\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~3\);

-- Location: LCCOMB_X106_Y33_N8
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\ = (\relogio|relBas|Minutos|s_cont\(5) & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~3\ $ (GND))) # (!\relogio|relBas|Minutos|s_cont\(5) & 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~3\ & VCC))
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~5\ = CARRY((\relogio|relBas|Minutos|s_cont\(5) & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(5),
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~3\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~5\);

-- Location: LCCOMB_X106_Y33_N10
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\ = !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~5\
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~7\ = CARRY(!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~5\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~7\);

-- Location: LCCOMB_X106_Y33_N12
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\ = \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~7\ $ (GND)
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~9\ = CARRY(!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~7\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~9\);

-- Location: LCCOMB_X106_Y33_N14
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\ = !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~9\
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~11\ = CARRY(!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~9\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~11\);

-- Location: LCCOMB_X106_Y33_N16
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\ = \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~11\ $ (GND)
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~13\ = CARRY(!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~11\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~13\);

-- Location: LCCOMB_X106_Y33_N18
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ = !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~13\
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~15\ = CARRY(!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~13\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~15\);

-- Location: LCCOMB_X106_Y33_N20
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ = \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~15\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\);

-- Location: LCCOMB_X106_Y33_N28
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\);

-- Location: LCCOMB_X106_Y33_N2
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\);

-- Location: LCCOMB_X107_Y33_N20
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ = (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\);

-- Location: LCCOMB_X106_Y33_N30
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\);

-- Location: LCCOMB_X107_Y33_N26
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\ = (\relogio|relBas|Minutos|s_cont\(5) & \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|relBas|Minutos|s_cont\(5),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\);

-- Location: LCCOMB_X107_Y33_N24
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\ = (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\);

-- Location: LCCOMB_X107_Y33_N0
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\);

-- Location: LCCOMB_X107_Y33_N30
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\ = (\relogio|relBas|Minutos|s_cont\(4) & \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|relBas|Minutos|s_cont\(4),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\);

-- Location: LCCOMB_X107_Y33_N16
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\);

-- Location: LCCOMB_X107_Y33_N22
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\ = (\relogio|relBas|Minutos|s_cont\(3) & \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(3),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\);

-- Location: LCCOMB_X107_Y33_N8
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\ = (\relogio|relBas|Minutos|s_cont\(2) & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|relBas|Minutos|s_cont\(2),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\);

-- Location: LCCOMB_X107_Y33_N6
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\ = (\relogio|relBas|Minutos|s_cont\(2) & \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|relBas|Minutos|s_cont\(2),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\);

-- Location: LCCOMB_X108_Y33_N8
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\ = (((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\) # 
-- (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\)))
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~1\ = CARRY((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\) # (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\,
	datad => VCC,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~1\);

-- Location: LCCOMB_X108_Y33_N10
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~1\ & (((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\) # 
-- (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\)))) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~1\ & (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\ & 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\)))
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~3\ = CARRY((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\ & (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\ 
-- & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~1\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~3\);

-- Location: LCCOMB_X108_Y33_N12
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~3\ & (((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\) # 
-- (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\)))) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~3\ & 
-- ((((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\) # (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\)))))
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~5\ = CARRY((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~3\ & ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\) # 
-- (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~3\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~5\);

-- Location: LCCOMB_X108_Y33_N14
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~5\ & (((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\) # 
-- (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\)))) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~5\ & (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\ & 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\)))
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~7\ = CARRY((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\ & (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\ 
-- & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~5\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~7\);

-- Location: LCCOMB_X108_Y33_N16
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\ & ((GND) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~7\))) # 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\ & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~7\ $ (GND)))
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~9\ = CARRY((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~7\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~9\);

-- Location: LCCOMB_X108_Y33_N18
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~9\ & VCC)) # 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ & (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~9\))
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~11\ = CARRY((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~9\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~11\);

-- Location: LCCOMB_X108_Y33_N20
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\ & ((GND) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~11\))) # 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\ & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~11\ $ (GND)))
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~13\ = CARRY((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~11\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~13\);

-- Location: LCCOMB_X108_Y33_N22
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~13\ & VCC)) # 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ & (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~13\))
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~15\ = CARRY((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~13\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~15\);

-- Location: LCCOMB_X108_Y33_N24
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~15\ & ((((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ & 
-- !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\))))) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~15\ & (((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ & 
-- !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)) # (GND)))
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~17\ = CARRY(((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)) # 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~15\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~17\);

-- Location: LCCOMB_X108_Y33_N26
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\ = !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~17\
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~19\ = CARRY(!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~17\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~19\);

-- Location: LCCOMB_X108_Y33_N28
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ = \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~19\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\);

-- Location: LCCOMB_X107_Y33_N2
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & 
-- (\relogio|relBas|Minutos|s_cont\(3))) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(3),
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\);

-- Location: LCCOMB_X108_Y34_N28
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\);

-- Location: LCCOMB_X107_Y33_N14
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\ = (\relogio|relBas|Minutos|s_cont\(2) & \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|relBas|Minutos|s_cont\(2),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\);

-- Location: LCCOMB_X108_Y33_N4
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\);

-- Location: LCCOMB_X107_Y34_N16
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\ = (\relogio|relBas|Minutos|s_cont\(1) & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(1),
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\);

-- Location: LCCOMB_X108_Y34_N0
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\ = (\relogio|relBas|Minutos|s_cont\(1) & \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|relBas|Minutos|s_cont\(1),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\);

-- Location: LCCOMB_X108_Y34_N4
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\ = (((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\) # 
-- (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\)))
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~1\ = CARRY((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\) # 
-- (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\,
	datad => VCC,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~1\);

-- Location: LCCOMB_X108_Y34_N6
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~1\ & (((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\) # 
-- (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\)))) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~1\ & (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\ 
-- & (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\)))
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~3\ = CARRY((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\ & 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~1\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~3\);

-- Location: LCCOMB_X108_Y34_N8
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~3\ & (((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\) # 
-- (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\)))) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~3\ & 
-- ((((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\) # (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\)))))
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~5\ = CARRY((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~3\ & ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\) # 
-- (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~3\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~5\);

-- Location: LCCOMB_X107_Y33_N4
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\);

-- Location: LCCOMB_X106_Y33_N0
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & 
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\);

-- Location: LCCOMB_X106_Y33_N26
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\ & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & 
-- !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\);

-- Location: LCCOMB_X108_Y33_N2
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\);

-- Location: LCCOMB_X106_Y33_N24
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & 
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\);

-- Location: LCCOMB_X108_Y33_N0
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\);

-- Location: LCCOMB_X108_Y33_N30
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\);

-- Location: LCCOMB_X107_Y33_N28
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\ & (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & 
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\);

-- Location: LCCOMB_X106_Y33_N22
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\ & (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & 
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\);

-- Location: LCCOMB_X107_Y33_N18
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\);

-- Location: LCCOMB_X107_Y33_N10
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & 
-- ((\relogio|relBas|Minutos|s_cont\(5)))) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(5),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\);

-- Location: LCCOMB_X108_Y33_N6
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\);

-- Location: LCCOMB_X108_Y34_N30
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\);

-- Location: LCCOMB_X107_Y33_N12
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & 
-- (\relogio|relBas|Minutos|s_cont\(4))) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(4),
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\);

-- Location: LCCOMB_X108_Y34_N10
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\ = CARRY((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\ & 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~5\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\);

-- Location: LCCOMB_X108_Y34_N12
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\ = CARRY((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\) # 
-- ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\);

-- Location: LCCOMB_X108_Y34_N14
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\ = CARRY((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\ & 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\);

-- Location: LCCOMB_X108_Y34_N16
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\ = CARRY((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\) # 
-- ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\);

-- Location: LCCOMB_X108_Y34_N18
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\ = CARRY((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\ & 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\);

-- Location: LCCOMB_X108_Y34_N20
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\ = CARRY((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\) # 
-- ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\) # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\);

-- Location: LCCOMB_X108_Y34_N22
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\ = CARRY((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\ & 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\ & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\);

-- Location: LCCOMB_X108_Y34_N24
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\ = CARRY(((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\)) # 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\,
	cout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\);

-- Location: LCCOMB_X108_Y34_N26
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ = !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\);

-- Location: LCCOMB_X107_Y34_N2
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & 
-- ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\) # ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\)))) # 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & (((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\,
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\);

-- Location: LCCOMB_X107_Y34_N4
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & ((\relogio|relBas|Minutos|s_cont\(1)))) # 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(1),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\);

-- Location: LCCOMB_X108_Y34_N2
\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ = (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & 
-- (((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\) # (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\)))) # 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\,
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\,
	combout => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\);

-- Location: LCCOMB_X107_Y37_N4
\relogio|convRel|convHx|outPort0[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[0]~10_combout\ = (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ & 
-- (\relogio|relBas|Minutos|s_cont\(0) $ (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(0),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	combout => \relogio|convRel|convHx|outPort0[0]~10_combout\);

-- Location: LCCOMB_X100_Y36_N30
\pulsos|saida2|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|clkOut~1_combout\ = (!\pulsos|saida2|s_divCounter\(15) & (!\pulsos|saida2|s_divCounter\(17) & (\pulsos|saida2|s_divCounter\(11) & \pulsos|saida2|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(15),
	datab => \pulsos|saida2|s_divCounter\(17),
	datac => \pulsos|saida2|s_divCounter\(11),
	datad => \pulsos|saida2|s_divCounter\(16),
	combout => \pulsos|saida2|clkOut~1_combout\);

-- Location: LCCOMB_X100_Y36_N4
\pulsos|saida2|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|clkOut~0_combout\ = (\pulsos|saida2|s_divCounter\(18) & (!\pulsos|saida2|s_divCounter\(23) & (\pulsos|saida2|s_divCounter\(24) & !\pulsos|saida2|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|s_divCounter\(18),
	datab => \pulsos|saida2|s_divCounter\(23),
	datac => \pulsos|saida2|s_divCounter\(24),
	datad => \pulsos|saida2|s_divCounter\(25),
	combout => \pulsos|saida2|clkOut~0_combout\);

-- Location: LCCOMB_X100_Y36_N0
\pulsos|saida2|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|clkOut~2_combout\ = (\pulsos|saida2|clkOut~1_combout\ & (!\pulsos|saida2|s_divCounter\(6) & (\pulsos|saida2|clkOut~0_combout\ & \pulsos|saida2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|clkOut~1_combout\,
	datab => \pulsos|saida2|s_divCounter\(6),
	datac => \pulsos|saida2|clkOut~0_combout\,
	datad => \pulsos|saida2|Equal0~6_combout\,
	combout => \pulsos|saida2|clkOut~2_combout\);

-- Location: LCCOMB_X100_Y36_N16
\pulsos|saida2|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|saida2|clkOut~3_combout\ = (!\pulsos|saida2|Equal0~9_combout\ & ((\pulsos|saida2|clkOut~q\) # (\pulsos|saida2|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|Equal0~9_combout\,
	datac => \pulsos|saida2|clkOut~q\,
	datad => \pulsos|saida2|clkOut~2_combout\,
	combout => \pulsos|saida2|clkOut~3_combout\);

-- Location: FF_X100_Y36_N17
\pulsos|saida2|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsos|saida2|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsos|saida2|clkOut~q\);

-- Location: LCCOMB_X107_Y37_N12
\relogio|convRel|convHx|outPort0[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[0]~23_combout\ = (\relogio|convRel|convHx|outPort0[0]~10_combout\) # ((\relogio|FSMrel|pS.MINUTOS~q\ & !\pulsos|saida2|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|pS.MINUTOS~q\,
	datab => \relogio|convRel|convHx|outPort0[0]~10_combout\,
	datad => \pulsos|saida2|clkOut~q\,
	combout => \relogio|convRel|convHx|outPort0[0]~23_combout\);

-- Location: LCCOMB_X107_Y37_N22
\relogio|convRel|convHx|outPort0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0~11_combout\ = (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ & 
-- (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ $ (\relogio|relBas|Minutos|s_cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(0),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	combout => \relogio|convRel|convHx|outPort0~11_combout\);

-- Location: LCCOMB_X107_Y37_N6
\relogio|convRel|convHx|outPort0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0~24_combout\ = (\relogio|convRel|convHx|outPort0~11_combout\) # ((!\pulsos|saida2|clkOut~q\ & \relogio|FSMrel|pS.MINUTOS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|clkOut~q\,
	datac => \relogio|convRel|convHx|outPort0~11_combout\,
	datad => \relogio|FSMrel|pS.MINUTOS~q\,
	combout => \relogio|convRel|convHx|outPort0~24_combout\);

-- Location: LCCOMB_X107_Y37_N20
\relogio|convRel|convHx|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|Equal7~0_combout\ = (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ & 
-- (!\relogio|relBas|Minutos|s_cont\(0) & !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(0),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	combout => \relogio|convRel|convHx|Equal7~0_combout\);

-- Location: LCCOMB_X107_Y37_N24
\relogio|convRel|convHx|outPort0[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[2]~25_combout\ = (\relogio|convRel|convHx|Equal7~0_combout\) # ((\relogio|FSMrel|pS.MINUTOS~q\ & !\pulsos|saida2|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|pS.MINUTOS~q\,
	datab => \relogio|convRel|convHx|Equal7~0_combout\,
	datad => \pulsos|saida2|clkOut~q\,
	combout => \relogio|convRel|convHx|outPort0[2]~25_combout\);

-- Location: LCCOMB_X107_Y34_N18
\relogio|convRel|pulsos|yout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|pulsos|yout~0_combout\ = (\pulsos|saida2|clkOut~q\) # (!\relogio|FSMrel|pS.MINUTOS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsos|saida2|clkOut~q\,
	datac => \relogio|FSMrel|pS.MINUTOS~q\,
	combout => \relogio|convRel|pulsos|yout~0_combout\);

-- Location: LCCOMB_X107_Y37_N16
\relogio|convRel|convHx|outPort0[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[5]~13_combout\ = (\relogio|convRel|pulsos|yout~0_combout\ & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ $ 
-- (((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ & !\relogio|relBas|Minutos|s_cont\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|pulsos|yout~0_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(0),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	combout => \relogio|convRel|convHx|outPort0[5]~13_combout\);

-- Location: LCCOMB_X107_Y37_N18
\relogio|convRel|convHx|outPort0[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[5]~27_combout\ = (\relogio|convRel|convHx|outPort0[5]~13_combout\) # ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & ((\pulsos|saida2|clkOut~q\) # 
-- (!\relogio|FSMrel|pS.MINUTOS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|saida2|clkOut~q\,
	datab => \relogio|convRel|convHx|outPort0[5]~13_combout\,
	datac => \relogio|FSMrel|pS.MINUTOS~q\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	combout => \relogio|convRel|convHx|outPort0[5]~27_combout\);

-- Location: LCCOMB_X107_Y34_N12
\relogio|convRel|convHx|outPort0[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[3]~26_combout\ = ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\) # ((\relogio|FSMrel|pS.MINUTOS~q\ & !\pulsos|saida2|clkOut~q\))) # 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|pS.MINUTOS~q\,
	datab => \pulsos|saida2|clkOut~q\,
	datac => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	combout => \relogio|convRel|convHx|outPort0[3]~26_combout\);

-- Location: LCCOMB_X107_Y37_N26
\relogio|convRel|convHx|outPort0[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[5]~12_combout\ = (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ & 
-- (\relogio|relBas|Minutos|s_cont\(0) & \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(0),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	combout => \relogio|convRel|convHx|outPort0[5]~12_combout\);

-- Location: LCCOMB_X106_Y37_N24
\relogio|convRel|convHx|outPort0[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[3]~14_combout\ = (\relogio|convRel|convHx|outPort0[5]~12_combout\) # ((!\relogio|convRel|convHx|outPort0[5]~27_combout\ & \relogio|convRel|convHx|outPort0[3]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|convHx|outPort0[5]~27_combout\,
	datac => \relogio|convRel|convHx|outPort0[3]~26_combout\,
	datad => \relogio|convRel|convHx|outPort0[5]~12_combout\,
	combout => \relogio|convRel|convHx|outPort0[3]~14_combout\);

-- Location: LCCOMB_X107_Y37_N28
\relogio|convRel|convHx|outPort0[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[4]~16_combout\ = ((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & ((\relogio|relBas|Minutos|s_cont\(0)) # 
-- (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\)))) # (!\relogio|convRel|pulsos|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|pulsos|yout~0_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(0),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	combout => \relogio|convRel|convHx|outPort0[4]~16_combout\);

-- Location: LCCOMB_X107_Y34_N10
\relogio|convRel|convHx|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|Equal0~2_combout\ = (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ & ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & (!\relogio|relBas|Minutos|s_cont\(1))) 
-- # (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & ((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(1),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\,
	combout => \relogio|convRel|convHx|Equal0~2_combout\);

-- Location: LCCOMB_X107_Y37_N14
\relogio|convRel|convHx|outPort0[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[6]~17_combout\ = (\relogio|convRel|pulsos|yout~0_combout\ & ((\relogio|convRel|convHx|Equal0~2_combout\ & (!\relogio|relBas|Minutos|s_cont\(0) & 
-- !\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\)) # (!\relogio|convRel|convHx|Equal0~2_combout\ & ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|pulsos|yout~0_combout\,
	datab => \relogio|convRel|convHx|Equal0~2_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(0),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	combout => \relogio|convRel|convHx|outPort0[6]~17_combout\);

-- Location: LCCOMB_X107_Y37_N2
\relogio|convRel|convHx|outPort0[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[6]~15_combout\ = (\relogio|convRel|pulsos|yout~0_combout\ & (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ $ (((\relogio|convRel|convHx|Equal0~2_combout\ & 
-- !\relogio|relBas|Minutos|s_cont\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|pulsos|yout~0_combout\,
	datab => \relogio|convRel|convHx|Equal0~2_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(0),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	combout => \relogio|convRel|convHx|outPort0[6]~15_combout\);

-- Location: LCCOMB_X107_Y37_N0
\relogio|convRel|convHx|outPort0[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[4]~18_combout\ = (!\relogio|convRel|convHx|outPort0[6]~17_combout\ & ((\relogio|convRel|convHx|outPort0[4]~16_combout\) # (\relogio|convRel|convHx|outPort0[6]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|convHx|outPort0[4]~16_combout\,
	datac => \relogio|convRel|convHx|outPort0[6]~17_combout\,
	datad => \relogio|convRel|convHx|outPort0[6]~15_combout\,
	combout => \relogio|convRel|convHx|outPort0[4]~18_combout\);

-- Location: LCCOMB_X107_Y37_N10
\relogio|convRel|convHx|outPort0[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[5]~19_combout\ = ((!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ & ((\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\) # 
-- (\relogio|relBas|Minutos|s_cont\(0))))) # (!\relogio|convRel|pulsos|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|pulsos|yout~0_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(0),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	combout => \relogio|convRel|convHx|outPort0[5]~19_combout\);

-- Location: LCCOMB_X106_Y37_N2
\relogio|convRel|convHx|outPort0[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[5]~20_combout\ = (\relogio|convRel|convHx|outPort0[5]~27_combout\ & ((\relogio|convRel|convHx|outPort0[5]~12_combout\))) # (!\relogio|convRel|convHx|outPort0[5]~27_combout\ & 
-- (\relogio|convRel|convHx|outPort0[5]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|convHx|outPort0[5]~27_combout\,
	datac => \relogio|convRel|convHx|outPort0[5]~19_combout\,
	datad => \relogio|convRel|convHx|outPort0[5]~12_combout\,
	combout => \relogio|convRel|convHx|outPort0[5]~20_combout\);

-- Location: LCCOMB_X107_Y37_N8
\relogio|convRel|convHx|outPort0[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[6]~21_combout\ = (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (\relogio|relBas|Minutos|s_cont\(0) & 
-- (\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ $ (!\relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datab => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(0),
	datad => \relogio|convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	combout => \relogio|convRel|convHx|outPort0[6]~21_combout\);

-- Location: LCCOMB_X107_Y37_N30
\relogio|convRel|convHx|outPort0[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort0[6]~22_combout\ = (\relogio|convRel|convHx|outPort0[6]~17_combout\) # ((!\relogio|convRel|convHx|outPort0[6]~15_combout\ & ((\relogio|convRel|convHx|outPort0[6]~21_combout\) # (!\relogio|convRel|pulsos|yout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|pulsos|yout~0_combout\,
	datab => \relogio|convRel|convHx|outPort0[6]~21_combout\,
	datac => \relogio|convRel|convHx|outPort0[6]~17_combout\,
	datad => \relogio|convRel|convHx|outPort0[6]~15_combout\,
	combout => \relogio|convRel|convHx|outPort0[6]~22_combout\);

-- Location: LCCOMB_X105_Y34_N10
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ = \relogio|relBas|Minutos|s_cont\(3) $ (VCC)
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ = CARRY(\relogio|relBas|Minutos|s_cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(3),
	datad => VCC,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\);

-- Location: LCCOMB_X105_Y34_N12
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ = (\relogio|relBas|Minutos|s_cont\(4) & (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & VCC)) # 
-- (!\relogio|relBas|Minutos|s_cont\(4) & (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\))
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ = CARRY((!\relogio|relBas|Minutos|s_cont\(4) & !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(4),
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\);

-- Location: LCCOMB_X105_Y34_N14
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\relogio|relBas|Minutos|s_cont\(5) & (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ $ (GND))) # 
-- (!\relogio|relBas|Minutos|s_cont\(5) & (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & VCC))
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((\relogio|relBas|Minutos|s_cont\(5) & !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Minutos|s_cont\(5),
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

-- Location: LCCOMB_X105_Y34_N16
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ = !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ = CARRY(!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\);

-- Location: LCCOMB_X105_Y34_N18
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ = CARRY(!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\);

-- Location: LCCOMB_X105_Y34_N20
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ = !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\);

-- Location: LCCOMB_X105_Y34_N28
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ & 
-- !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\);

-- Location: LCCOMB_X105_Y34_N26
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \relogio|relBas|Minutos|s_cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \relogio|relBas|Minutos|s_cont\(5),
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\);

-- Location: LCCOMB_X105_Y34_N4
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ & 
-- !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\);

-- Location: LCCOMB_X105_Y34_N2
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \relogio|relBas|Minutos|s_cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \relogio|relBas|Minutos|s_cont\(4),
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\);

-- Location: LCCOMB_X105_Y34_N8
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & 
-- !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\);

-- Location: LCCOMB_X105_Y34_N0
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ & 
-- !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\);

-- Location: LCCOMB_X105_Y34_N22
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\ = (\relogio|relBas|Minutos|s_cont\(3) & \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|relBas|Minutos|s_cont\(3),
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\);

-- Location: LCCOMB_X107_Y34_N20
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \relogio|relBas|Minutos|s_cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(2),
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\);

-- Location: LCCOMB_X107_Y34_N26
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\ = (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \relogio|relBas|Minutos|s_cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(2),
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\);

-- Location: LCCOMB_X106_Y34_N14
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = (((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\) # 
-- (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\)))
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\) # 
-- (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\,
	datad => VCC,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X106_Y34_N16
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & 
-- (((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\) # (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\)))) # 
-- (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\ & 
-- (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\)))
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\ & 
-- (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\ & !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X106_Y34_N18
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & 
-- (((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\) # (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\)))) # 
-- (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\) # 
-- (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\)))))
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & 
-- ((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\) # (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X106_Y34_N20
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & 
-- (((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\) # (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\)))) # 
-- (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\ & 
-- (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\)))
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ = CARRY((!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\ & 
-- (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\ & !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\);

-- Location: LCCOMB_X106_Y34_N22
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ = CARRY((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\) # 
-- (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\);

-- Location: LCCOMB_X106_Y34_N24
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ = !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\);

-- Location: LCCOMB_X105_Y34_N6
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- ((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\relogio|relBas|Minutos|s_cont\(5))) # (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- ((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \relogio|relBas|Minutos|s_cont\(5),
	datac => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\);

-- Location: LCCOMB_X106_Y34_N0
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ & 
-- !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\);

-- Location: LCCOMB_X106_Y34_N26
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ & 
-- !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\);

-- Location: LCCOMB_X105_Y34_N24
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- ((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\relogio|relBas|Minutos|s_cont\(4))) # (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- ((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(4),
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datac => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\);

-- Location: LCCOMB_X105_Y34_N30
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- ((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\relogio|relBas|Minutos|s_cont\(3)))) # (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \relogio|relBas|Minutos|s_cont\(3),
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\);

-- Location: LCCOMB_X106_Y34_N28
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ & 
-- !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\);

-- Location: LCCOMB_X106_Y34_N30
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\ = (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ & 
-- !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\);

-- Location: LCCOMB_X107_Y34_N28
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\ = (\relogio|relBas|Minutos|s_cont\(2) & \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|relBas|Minutos|s_cont\(2),
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\);

-- Location: LCCOMB_X107_Y34_N6
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\ = (\relogio|relBas|Minutos|s_cont\(1) & \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|relBas|Minutos|s_cont\(1),
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\);

-- Location: LCCOMB_X107_Y34_N0
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\ = (\relogio|relBas|Minutos|s_cont\(1) & !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|relBas|Minutos|s_cont\(1),
	datad => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\);

-- Location: LCCOMB_X106_Y34_N2
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ = CARRY((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\) # 
-- (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\,
	datad => VCC,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\);

-- Location: LCCOMB_X106_Y34_N4
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\ & 
-- (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\ & !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X106_Y34_N6
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ = CARRY((!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ & 
-- ((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\) # (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\);

-- Location: LCCOMB_X106_Y34_N8
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY((!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\ & 
-- (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\ & !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X106_Y34_N10
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ = CARRY((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\) # 
-- ((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\) # (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\,
	cout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\);

-- Location: LCCOMB_X106_Y34_N12
\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ = !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\,
	combout => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\);

-- Location: LCCOMB_X107_Y34_N22
\relogio|convRel|convHx|outPort1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort1[0]~0_combout\ = ((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ $ 
-- (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)))) # (!\relogio|convRel|pulsos|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datac => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \relogio|convRel|pulsos|yout~0_combout\,
	combout => \relogio|convRel|convHx|outPort1[0]~0_combout\);

-- Location: LCCOMB_X107_Y34_N8
\relogio|convRel|convHx|outPort1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort1~1_combout\ = ((!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ $ 
-- (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)))) # (!\relogio|convRel|pulsos|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datac => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \relogio|convRel|pulsos|yout~0_combout\,
	combout => \relogio|convRel|convHx|outPort1~1_combout\);

-- Location: LCCOMB_X107_Y34_N30
\relogio|convRel|convHx|outPort1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort1[2]~2_combout\ = ((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\))) # (!\relogio|convRel|pulsos|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datac => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \relogio|convRel|pulsos|yout~0_combout\,
	combout => \relogio|convRel|convHx|outPort1[2]~2_combout\);

-- Location: LCCOMB_X107_Y34_N24
\relogio|convRel|convHx|outPort1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort1[3]~3_combout\ = ((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- !\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)) # (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & 
-- (\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ $ (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)))) # (!\relogio|convRel|pulsos|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datac => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \relogio|convRel|pulsos|yout~0_combout\,
	combout => \relogio|convRel|convHx|outPort1[3]~3_combout\);

-- Location: LCCOMB_X106_Y36_N4
\relogio|convRel|convHx|outPort1[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort1[4]~4_combout\ = (\relogio|relBas|Minutos|s_cont\(2) & ((\relogio|relBas|Minutos|s_cont\(3) & ((\relogio|relBas|Minutos|s_cont\(5)) # (!\relogio|relBas|Minutos|s_cont\(1)))) # (!\relogio|relBas|Minutos|s_cont\(3) & 
-- ((!\relogio|relBas|Minutos|s_cont\(5)))))) # (!\relogio|relBas|Minutos|s_cont\(2) & (((\relogio|relBas|Minutos|s_cont\(3) & !\relogio|relBas|Minutos|s_cont\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(2),
	datab => \relogio|relBas|Minutos|s_cont\(1),
	datac => \relogio|relBas|Minutos|s_cont\(3),
	datad => \relogio|relBas|Minutos|s_cont\(5),
	combout => \relogio|convRel|convHx|outPort1[4]~4_combout\);

-- Location: LCCOMB_X106_Y36_N22
\relogio|convRel|convHx|outPort1[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort1[6]~5_combout\ = (!\relogio|relBas|Minutos|s_cont\(4) & (((!\relogio|relBas|Minutos|s_cont\(2) & !\relogio|relBas|Minutos|s_cont\(1))) # (!\relogio|relBas|Minutos|s_cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(2),
	datab => \relogio|relBas|Minutos|s_cont\(4),
	datac => \relogio|relBas|Minutos|s_cont\(3),
	datad => \relogio|relBas|Minutos|s_cont\(1),
	combout => \relogio|convRel|convHx|outPort1[6]~5_combout\);

-- Location: LCCOMB_X106_Y36_N24
\relogio|convRel|convHx|outPort1[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort1[4]~6_combout\ = (!\relogio|relBas|Minutos|s_cont\(5) & \relogio|convRel|convHx|outPort1[6]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(5),
	datac => \relogio|convRel|convHx|outPort1[6]~5_combout\,
	combout => \relogio|convRel|convHx|outPort1[4]~6_combout\);

-- Location: LCCOMB_X106_Y36_N6
\relogio|convRel|convHx|outPort1[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort1[4]~7_combout\ = ((!\relogio|convRel|convHx|outPort1[4]~6_combout\ & ((!\relogio|convRel|convHx|outPort1[4]~4_combout\) # (!\relogio|relBas|Minutos|s_cont\(4))))) # (!\relogio|convRel|pulsos|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|pulsos|yout~0_combout\,
	datab => \relogio|relBas|Minutos|s_cont\(4),
	datac => \relogio|convRel|convHx|outPort1[4]~4_combout\,
	datad => \relogio|convRel|convHx|outPort1[4]~6_combout\,
	combout => \relogio|convRel|convHx|outPort1[4]~7_combout\);

-- Location: LCCOMB_X107_Y34_N14
\relogio|convRel|convHx|outPort1[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort1[5]~8_combout\ = ((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)) # (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & 
-- ((\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\) # (!\relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)))) # (!\relogio|convRel|pulsos|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datac => \relogio|convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \relogio|convRel|pulsos|yout~0_combout\,
	combout => \relogio|convRel|convHx|outPort1[5]~8_combout\);

-- Location: LCCOMB_X106_Y36_N28
\relogio|convRel|convHx|outPort1[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort1[6]~9_combout\ = (!\relogio|relBas|Minutos|s_cont\(5) & (((!\relogio|relBas|Minutos|s_cont\(3) & !\relogio|relBas|Minutos|s_cont\(2))) # (!\relogio|relBas|Minutos|s_cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(5),
	datab => \relogio|relBas|Minutos|s_cont\(4),
	datac => \relogio|relBas|Minutos|s_cont\(3),
	datad => \relogio|relBas|Minutos|s_cont\(2),
	combout => \relogio|convRel|convHx|outPort1[6]~9_combout\);

-- Location: LCCOMB_X106_Y36_N2
\relogio|convRel|convHx|outPort1[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort1[6]~10_combout\ = (\relogio|convRel|convHx|outPort1[6]~9_combout\) # (((!\relogio|relBas|Minutos|s_cont\(5) & \relogio|convRel|convHx|outPort1[6]~5_combout\)) # (!\relogio|convRel|pulsos|yout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(5),
	datab => \relogio|convRel|convHx|outPort1[6]~9_combout\,
	datac => \relogio|convRel|convHx|outPort1[6]~5_combout\,
	datad => \relogio|convRel|pulsos|yout~0_combout\,
	combout => \relogio|convRel|convHx|outPort1[6]~10_combout\);

-- Location: LCCOMB_X98_Y36_N0
\relogio|relBas|Horas|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|Add0~0_combout\ = \relogio|relBas|Horas|s_cont\(0) $ (VCC)
-- \relogio|relBas|Horas|Add0~1\ = CARRY(\relogio|relBas|Horas|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Horas|s_cont\(0),
	datad => VCC,
	combout => \relogio|relBas|Horas|Add0~0_combout\,
	cout => \relogio|relBas|Horas|Add0~1\);

-- Location: LCCOMB_X98_Y36_N2
\relogio|relBas|Horas|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|Add0~2_combout\ = (\relogio|relBas|Horas|s_cont\(1) & (\relogio|relBas|Horas|Add0~1\ & VCC)) # (!\relogio|relBas|Horas|s_cont\(1) & (!\relogio|relBas|Horas|Add0~1\))
-- \relogio|relBas|Horas|Add0~3\ = CARRY((!\relogio|relBas|Horas|s_cont\(1) & !\relogio|relBas|Horas|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(1),
	datad => VCC,
	cin => \relogio|relBas|Horas|Add0~1\,
	combout => \relogio|relBas|Horas|Add0~2_combout\,
	cout => \relogio|relBas|Horas|Add0~3\);

-- Location: LCCOMB_X98_Y36_N4
\relogio|relBas|Horas|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|Add0~4_combout\ = (\relogio|relBas|Horas|s_cont\(2) & ((GND) # (!\relogio|relBas|Horas|Add0~3\))) # (!\relogio|relBas|Horas|s_cont\(2) & (\relogio|relBas|Horas|Add0~3\ $ (GND)))
-- \relogio|relBas|Horas|Add0~5\ = CARRY((\relogio|relBas|Horas|s_cont\(2)) # (!\relogio|relBas|Horas|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Horas|s_cont\(2),
	datad => VCC,
	cin => \relogio|relBas|Horas|Add0~3\,
	combout => \relogio|relBas|Horas|Add0~4_combout\,
	cout => \relogio|relBas|Horas|Add0~5\);

-- Location: LCCOMB_X98_Y36_N22
\relogio|relBas|Horas|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|Add1~2_combout\ = (\relogio|relBas|Horas|s_cont\(1) & (!\relogio|relBas|Horas|Add1~1\)) # (!\relogio|relBas|Horas|s_cont\(1) & ((\relogio|relBas|Horas|Add1~1\) # (GND)))
-- \relogio|relBas|Horas|Add1~3\ = CARRY((!\relogio|relBas|Horas|Add1~1\) # (!\relogio|relBas|Horas|s_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(1),
	datad => VCC,
	cin => \relogio|relBas|Horas|Add1~1\,
	combout => \relogio|relBas|Horas|Add1~2_combout\,
	cout => \relogio|relBas|Horas|Add1~3\);

-- Location: LCCOMB_X98_Y36_N24
\relogio|relBas|Horas|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|Add1~4_combout\ = (\relogio|relBas|Horas|s_cont\(2) & (\relogio|relBas|Horas|Add1~3\ $ (GND))) # (!\relogio|relBas|Horas|s_cont\(2) & (!\relogio|relBas|Horas|Add1~3\ & VCC))
-- \relogio|relBas|Horas|Add1~5\ = CARRY((\relogio|relBas|Horas|s_cont\(2) & !\relogio|relBas|Horas|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Horas|s_cont\(2),
	datad => VCC,
	cin => \relogio|relBas|Horas|Add1~3\,
	combout => \relogio|relBas|Horas|Add1~4_combout\,
	cout => \relogio|relBas|Horas|Add1~5\);

-- Location: LCCOMB_X98_Y36_N16
\relogio|relBas|Horas|s_cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|s_cont~4_combout\ = (\relogio|relBas|Horas|s_cont~8_combout\ & ((\relogio|relBas|Horas|Add1~4_combout\) # ((\relogio|relBas|Horas|Add0~4_combout\ & !\relogio|FSMrel|ud~0_combout\)))) # (!\relogio|relBas|Horas|s_cont~8_combout\ & 
-- (\relogio|relBas|Horas|Add0~4_combout\ & (!\relogio|FSMrel|ud~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont~8_combout\,
	datab => \relogio|relBas|Horas|Add0~4_combout\,
	datac => \relogio|FSMrel|ud~0_combout\,
	datad => \relogio|relBas|Horas|Add1~4_combout\,
	combout => \relogio|relBas|Horas|s_cont~4_combout\);

-- Location: LCCOMB_X97_Y36_N20
\relogio|relBas|Minutos|contFim~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|contFim~1_combout\ = (\relogio|FSMrel|ud~0_combout\ & (!\relogio|relBas|Minutos|s_cont\(0) & (\relogio|relBas|Minutos|contFim~0_combout\ & \relogio|relBas|Minutos|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|ud~0_combout\,
	datab => \relogio|relBas|Minutos|s_cont\(0),
	datac => \relogio|relBas|Minutos|contFim~0_combout\,
	datad => \relogio|relBas|Minutos|LessThan0~0_combout\,
	combout => \relogio|relBas|Minutos|contFim~1_combout\);

-- Location: LCCOMB_X97_Y36_N2
\relogio|relBas|Minutos|contFim~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|contFim~2_combout\ = (\relogio|relBas|Minutos|s_cont\(1) & (!\relogio|relBas|Minutos|s_cont\(2) & (\relogio|relBas|muxMin|yout~1_combout\ & \relogio|relBas|Minutos|contFim~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Minutos|s_cont\(1),
	datab => \relogio|relBas|Minutos|s_cont\(2),
	datac => \relogio|relBas|muxMin|yout~1_combout\,
	datad => \relogio|relBas|Minutos|contFim~1_combout\,
	combout => \relogio|relBas|Minutos|contFim~2_combout\);

-- Location: LCCOMB_X97_Y36_N22
\relogio|relBas|Minutos|contFim~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Minutos|contFim~3_combout\ = (\relogio|relBas|Minutos|contFim~2_combout\) # ((\relogio|relBas|Minutos|contFim~q\ & ((!\relogio|FSMrel|ud~0_combout\) # (!\relogio|relBas|muxMin|yout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|muxMin|yout~1_combout\,
	datab => \relogio|relBas|Minutos|contFim~2_combout\,
	datac => \relogio|relBas|Minutos|contFim~q\,
	datad => \relogio|FSMrel|ud~0_combout\,
	combout => \relogio|relBas|Minutos|contFim~3_combout\);

-- Location: FF_X97_Y36_N23
\relogio|relBas|Minutos|contFim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|relBas|Minutos|contFim~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|relBas|Minutos|contFim~q\);

-- Location: LCCOMB_X97_Y36_N24
\relogio|relBas|muxHrs|yout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|muxHrs|yout~0_combout\ = (\relogio|FSMrel|pS.HORAS~q\ & (\relogio|FSMrel|pS.NORMAL~q\ & ((\dTeclaU|s_pulsedOut~q\) # (\dTeclaD|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|pS.HORAS~q\,
	datab => \relogio|FSMrel|pS.NORMAL~q\,
	datac => \dTeclaU|s_pulsedOut~q\,
	datad => \dTeclaD|s_pulsedOut~q\,
	combout => \relogio|relBas|muxHrs|yout~0_combout\);

-- Location: LCCOMB_X98_Y36_N18
\relogio|relBas|muxHrs|yout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|muxHrs|yout~1_combout\ = (\relogio|relBas|muxHrs|yout~0_combout\) # ((!\relogio|FSMrel|pS.NORMAL~q\ & (\relogio|relBas|Minutos|contFim~q\ & \pulsos|saida1|yout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|pS.NORMAL~q\,
	datab => \relogio|relBas|Minutos|contFim~q\,
	datac => \pulsos|saida1|yout~1_combout\,
	datad => \relogio|relBas|muxHrs|yout~0_combout\,
	combout => \relogio|relBas|muxHrs|yout~1_combout\);

-- Location: FF_X98_Y36_N17
\relogio|relBas|Horas|s_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|relBas|Horas|s_cont~4_combout\,
	ena => \relogio|relBas|muxHrs|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|relBas|Horas|s_cont\(2));

-- Location: LCCOMB_X98_Y36_N26
\relogio|relBas|Horas|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|Add1~6_combout\ = (\relogio|relBas|Horas|s_cont\(3) & (!\relogio|relBas|Horas|Add1~5\)) # (!\relogio|relBas|Horas|s_cont\(3) & ((\relogio|relBas|Horas|Add1~5\) # (GND)))
-- \relogio|relBas|Horas|Add1~7\ = CARRY((!\relogio|relBas|Horas|Add1~5\) # (!\relogio|relBas|Horas|s_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(3),
	datad => VCC,
	cin => \relogio|relBas|Horas|Add1~5\,
	combout => \relogio|relBas|Horas|Add1~6_combout\,
	cout => \relogio|relBas|Horas|Add1~7\);

-- Location: LCCOMB_X98_Y36_N6
\relogio|relBas|Horas|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|Add0~6_combout\ = (\relogio|relBas|Horas|s_cont\(3) & (\relogio|relBas|Horas|Add0~5\ & VCC)) # (!\relogio|relBas|Horas|s_cont\(3) & (!\relogio|relBas|Horas|Add0~5\))
-- \relogio|relBas|Horas|Add0~7\ = CARRY((!\relogio|relBas|Horas|s_cont\(3) & !\relogio|relBas|Horas|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(3),
	datad => VCC,
	cin => \relogio|relBas|Horas|Add0~5\,
	combout => \relogio|relBas|Horas|Add0~6_combout\,
	cout => \relogio|relBas|Horas|Add0~7\);

-- Location: LCCOMB_X98_Y36_N12
\relogio|relBas|Horas|s_cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|s_cont~6_combout\ = (\relogio|relBas|Horas|Add1~6_combout\ & ((\relogio|relBas|Horas|s_cont~8_combout\) # ((!\relogio|FSMrel|ud~0_combout\ & \relogio|relBas|Horas|Add0~6_combout\)))) # (!\relogio|relBas|Horas|Add1~6_combout\ & 
-- (!\relogio|FSMrel|ud~0_combout\ & ((\relogio|relBas|Horas|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|Add1~6_combout\,
	datab => \relogio|FSMrel|ud~0_combout\,
	datac => \relogio|relBas|Horas|s_cont~8_combout\,
	datad => \relogio|relBas|Horas|Add0~6_combout\,
	combout => \relogio|relBas|Horas|s_cont~6_combout\);

-- Location: FF_X98_Y36_N13
\relogio|relBas|Horas|s_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|relBas|Horas|s_cont~6_combout\,
	ena => \relogio|relBas|muxHrs|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|relBas|Horas|s_cont\(3));

-- Location: LCCOMB_X98_Y36_N8
\relogio|relBas|Horas|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|Add0~8_combout\ = \relogio|relBas|Horas|s_cont\(4) $ (\relogio|relBas|Horas|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(4),
	cin => \relogio|relBas|Horas|Add0~7\,
	combout => \relogio|relBas|Horas|Add0~8_combout\);

-- Location: LCCOMB_X98_Y36_N28
\relogio|relBas|Horas|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|Add1~8_combout\ = \relogio|relBas|Horas|s_cont\(4) $ (!\relogio|relBas|Horas|Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(4),
	cin => \relogio|relBas|Horas|Add1~7\,
	combout => \relogio|relBas|Horas|Add1~8_combout\);

-- Location: LCCOMB_X98_Y36_N30
\relogio|relBas|Horas|s_cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|s_cont~5_combout\ = (\relogio|relBas|Horas|s_cont~8_combout\ & ((\relogio|relBas|Horas|Add1~8_combout\) # ((\relogio|relBas|Horas|Add0~8_combout\ & !\relogio|FSMrel|ud~0_combout\)))) # (!\relogio|relBas|Horas|s_cont~8_combout\ & 
-- (\relogio|relBas|Horas|Add0~8_combout\ & (!\relogio|FSMrel|ud~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont~8_combout\,
	datab => \relogio|relBas|Horas|Add0~8_combout\,
	datac => \relogio|FSMrel|ud~0_combout\,
	datad => \relogio|relBas|Horas|Add1~8_combout\,
	combout => \relogio|relBas|Horas|s_cont~5_combout\);

-- Location: FF_X98_Y36_N31
\relogio|relBas|Horas|s_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|relBas|Horas|s_cont~5_combout\,
	ena => \relogio|relBas|muxHrs|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|relBas|Horas|s_cont\(4));

-- Location: LCCOMB_X99_Y36_N4
\relogio|relBas|Horas|s_cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|s_cont~2_combout\ = (!\relogio|relBas|Horas|s_cont\(3) & (((!\relogio|relBas|Horas|s_cont\(0)) # (!\relogio|relBas|Horas|s_cont\(2))) # (!\relogio|relBas|Horas|s_cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(1),
	datab => \relogio|relBas|Horas|s_cont\(3),
	datac => \relogio|relBas|Horas|s_cont\(2),
	datad => \relogio|relBas|Horas|s_cont\(0),
	combout => \relogio|relBas|Horas|s_cont~2_combout\);

-- Location: LCCOMB_X97_Y36_N16
\relogio|relBas|Horas|s_cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|s_cont~8_combout\ = (\relogio|relBas|Horas|s_cont\(4) & (\relogio|relBas|Horas|s_cont~2_combout\ & ((\dTeclaU|s_pulsedOut~q\) # (!\relogio|FSMrel|pS.NORMAL~q\)))) # (!\relogio|relBas|Horas|s_cont\(4) & (((\dTeclaU|s_pulsedOut~q\)) # 
-- (!\relogio|FSMrel|pS.NORMAL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(4),
	datab => \relogio|FSMrel|pS.NORMAL~q\,
	datac => \dTeclaU|s_pulsedOut~q\,
	datad => \relogio|relBas|Horas|s_cont~2_combout\,
	combout => \relogio|relBas|Horas|s_cont~8_combout\);

-- Location: LCCOMB_X98_Y36_N20
\relogio|relBas|Horas|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|Add1~0_combout\ = \relogio|relBas|Horas|s_cont\(0) $ (VCC)
-- \relogio|relBas|Horas|Add1~1\ = CARRY(\relogio|relBas|Horas|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Horas|s_cont\(0),
	datad => VCC,
	combout => \relogio|relBas|Horas|Add1~0_combout\,
	cout => \relogio|relBas|Horas|Add1~1\);

-- Location: LCCOMB_X98_Y36_N14
\relogio|relBas|Horas|s_cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|s_cont~3_combout\ = (\relogio|relBas|Horas|s_cont~8_combout\ & ((\relogio|relBas|Horas|Add1~0_combout\) # ((\relogio|relBas|Horas|Add0~0_combout\ & !\relogio|FSMrel|ud~0_combout\)))) # (!\relogio|relBas|Horas|s_cont~8_combout\ & 
-- (\relogio|relBas|Horas|Add0~0_combout\ & (!\relogio|FSMrel|ud~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont~8_combout\,
	datab => \relogio|relBas|Horas|Add0~0_combout\,
	datac => \relogio|FSMrel|ud~0_combout\,
	datad => \relogio|relBas|Horas|Add1~0_combout\,
	combout => \relogio|relBas|Horas|s_cont~3_combout\);

-- Location: FF_X98_Y36_N15
\relogio|relBas|Horas|s_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|relBas|Horas|s_cont~3_combout\,
	ena => \relogio|relBas|muxHrs|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|relBas|Horas|s_cont\(0));

-- Location: LCCOMB_X98_Y36_N10
\relogio|relBas|Horas|s_cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|relBas|Horas|s_cont~7_combout\ = (\relogio|relBas|Horas|Add1~2_combout\ & ((\relogio|relBas|Horas|s_cont~8_combout\) # ((!\relogio|FSMrel|ud~0_combout\ & \relogio|relBas|Horas|Add0~2_combout\)))) # (!\relogio|relBas|Horas|Add1~2_combout\ & 
-- (!\relogio|FSMrel|ud~0_combout\ & ((\relogio|relBas|Horas|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|Add1~2_combout\,
	datab => \relogio|FSMrel|ud~0_combout\,
	datac => \relogio|relBas|Horas|s_cont~8_combout\,
	datad => \relogio|relBas|Horas|Add0~2_combout\,
	combout => \relogio|relBas|Horas|s_cont~7_combout\);

-- Location: FF_X98_Y36_N11
\relogio|relBas|Horas|s_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \relogio|relBas|Horas|s_cont~7_combout\,
	ena => \relogio|relBas|muxHrs|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|relBas|Horas|s_cont\(1));

-- Location: LCCOMB_X100_Y26_N14
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\ = \relogio|relBas|Horas|s_cont\(2) $ (VCC)
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~1\ = CARRY(\relogio|relBas|Horas|s_cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Horas|s_cont\(2),
	datad => VCC,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~1\);

-- Location: LCCOMB_X100_Y26_N16
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\ = (\relogio|relBas|Horas|s_cont\(3) & (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~1\ & VCC)) # (!\relogio|relBas|Horas|s_cont\(3) & 
-- (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~1\))
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~3\ = CARRY((!\relogio|relBas|Horas|s_cont\(3) & !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|relBas|Horas|s_cont\(3),
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~1\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~3\);

-- Location: LCCOMB_X100_Y26_N18
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\ = (\relogio|relBas|Horas|s_cont\(4) & (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~3\ $ (GND))) # (!\relogio|relBas|Horas|s_cont\(4) & 
-- (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~3\ & VCC))
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~5\ = CARRY((\relogio|relBas|Horas|s_cont\(4) & !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(4),
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~3\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~5\);

-- Location: LCCOMB_X100_Y26_N20
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\ = !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~5\
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~7\ = CARRY(!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~5\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~7\);

-- Location: LCCOMB_X100_Y26_N22
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\ = \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~7\ $ (GND)
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~9\ = CARRY(!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~7\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~9\);

-- Location: LCCOMB_X100_Y26_N24
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\ = !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~9\
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~11\ = CARRY(!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~9\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~11\);

-- Location: LCCOMB_X100_Y26_N26
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\ = \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~11\ $ (GND)
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~13\ = CARRY(!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~11\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~13\);

-- Location: LCCOMB_X100_Y26_N28
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\ = !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~13\
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~15\ = CARRY(!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~13\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~15\);

-- Location: LCCOMB_X100_Y26_N30
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ = \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~15\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\);

-- Location: LCCOMB_X101_Y26_N26
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\ = (\relogio|relBas|Horas|s_cont\(1) & !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|relBas|Horas|s_cont\(1),
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\);

-- Location: LCCOMB_X101_Y26_N24
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\ = (\relogio|relBas|Horas|s_cont\(1) & \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|relBas|Horas|s_cont\(1),
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\);

-- Location: LCCOMB_X101_Y26_N2
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\ = (((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\) # 
-- (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\)))
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~1\ = CARRY((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\) # (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\,
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\,
	datad => VCC,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~1\);

-- Location: LCCOMB_X100_Y26_N10
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\ = (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\ & !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\,
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\);

-- Location: LCCOMB_X100_Y26_N12
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\ = (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\);

-- Location: LCCOMB_X100_Y26_N2
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\ = (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\ & !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\,
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\);

-- Location: LCCOMB_X100_Y26_N0
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\ = (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\);

-- Location: LCCOMB_X102_Y26_N2
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\ = (\relogio|relBas|Horas|s_cont\(4) & \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|relBas|Horas|s_cont\(4),
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\);

-- Location: LCCOMB_X100_Y26_N6
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\ = (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\);

-- Location: LCCOMB_X102_Y26_N28
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\ = (\relogio|relBas|Horas|s_cont\(3) & \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(3),
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\);

-- Location: LCCOMB_X100_Y26_N4
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\ = (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\);

-- Location: LCCOMB_X102_Y26_N4
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\ = (\relogio|relBas|Horas|s_cont\(2) & \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|relBas|Horas|s_cont\(2),
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\);

-- Location: LCCOMB_X100_Y26_N8
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\ = (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\ & !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\,
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\);

-- Location: LCCOMB_X101_Y26_N4
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\ = (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~1\ & (((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\) # 
-- (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\)))) # (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~1\ & (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\ & 
-- (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\)))
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~3\ = CARRY((!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\ & (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\ 
-- & !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\,
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~1\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~3\);

-- Location: LCCOMB_X101_Y26_N6
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\ = (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~3\ & (((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\) # 
-- (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\)))) # (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~3\ & 
-- ((((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\) # (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\)))))
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~5\ = CARRY((!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~3\ & ((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\) # 
-- (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\,
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~3\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~5\);

-- Location: LCCOMB_X101_Y26_N8
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\ = CARRY((!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\ & 
-- (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\ & !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\,
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~5\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\);

-- Location: LCCOMB_X101_Y26_N10
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\ = CARRY((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\) # (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\);

-- Location: LCCOMB_X101_Y26_N12
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\ = CARRY((!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\ & !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\);

-- Location: LCCOMB_X101_Y26_N14
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\ = CARRY((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\) # (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\);

-- Location: LCCOMB_X101_Y26_N16
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\ = CARRY((!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\ & !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\);

-- Location: LCCOMB_X101_Y26_N18
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\ = CARRY(((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\ & !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)) # 
-- (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\,
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\,
	cout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\);

-- Location: LCCOMB_X101_Y26_N20
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ = !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\);

-- Location: LCCOMB_X101_Y26_N0
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ = (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & ((\relogio|relBas|Horas|s_cont\(1)))) # 
-- (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\,
	datac => \relogio|relBas|Horas|s_cont\(1),
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\);

-- Location: LCCOMB_X101_Y26_N30
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ = (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & 
-- (((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\) # (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\)))) # 
-- (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\,
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\,
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\,
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\);

-- Location: LCCOMB_X101_Y26_N28
\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ = (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & 
-- ((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\) # ((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\)))) # 
-- (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & (((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\,
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\,
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\,
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\,
	combout => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\);

-- Location: LCCOMB_X106_Y25_N0
\relogio|convRel|convHx|outPort2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[0]~6_combout\ = (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ & (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & 
-- (\relogio|relBas|Horas|s_cont\(0) $ (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datac => \relogio|relBas|Horas|s_cont\(0),
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	combout => \relogio|convRel|convHx|outPort2[0]~6_combout\);

-- Location: LCCOMB_X106_Y25_N4
\relogio|convRel|convHx|outPort2[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[0]~21_combout\ = (\relogio|convRel|convHx|outPort2[0]~6_combout\) # ((\relogio|FSMrel|pS.HORAS~q\ & !\pulsos|saida2|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|pS.HORAS~q\,
	datac => \pulsos|saida2|clkOut~q\,
	datad => \relogio|convRel|convHx|outPort2[0]~6_combout\,
	combout => \relogio|convRel|convHx|outPort2[0]~21_combout\);

-- Location: LCCOMB_X107_Y25_N24
\relogio|convRel|convHx|outPort2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2~7_combout\ = (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ & 
-- (\relogio|relBas|Horas|s_cont\(0) $ (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(0),
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	combout => \relogio|convRel|convHx|outPort2~7_combout\);

-- Location: LCCOMB_X106_Y25_N26
\relogio|convRel|convHx|outPort2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2~22_combout\ = (\relogio|convRel|convHx|outPort2~7_combout\) # ((\relogio|FSMrel|pS.HORAS~q\ & !\pulsos|saida2|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|pS.HORAS~q\,
	datac => \pulsos|saida2|clkOut~q\,
	datad => \relogio|convRel|convHx|outPort2~7_combout\,
	combout => \relogio|convRel|convHx|outPort2~22_combout\);

-- Location: LCCOMB_X106_Y25_N12
\relogio|convRel|convHx|Equal25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|Equal25~0_combout\ = (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ & (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & 
-- (!\relogio|relBas|Horas|s_cont\(0) & !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datac => \relogio|relBas|Horas|s_cont\(0),
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	combout => \relogio|convRel|convHx|Equal25~0_combout\);

-- Location: LCCOMB_X106_Y25_N28
\relogio|convRel|convHx|outPort2[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[2]~23_combout\ = (\relogio|convRel|convHx|Equal25~0_combout\) # ((\relogio|FSMrel|pS.HORAS~q\ & !\pulsos|saida2|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|pS.HORAS~q\,
	datac => \pulsos|saida2|clkOut~q\,
	datad => \relogio|convRel|convHx|Equal25~0_combout\,
	combout => \relogio|convRel|convHx|outPort2[2]~23_combout\);

-- Location: LCCOMB_X107_Y25_N20
\relogio|convRel|convHx|outPort2[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[5]~11_combout\ = (\relogio|relBas|Horas|s_cont\(0) & (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & 
-- (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ & \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(0),
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	combout => \relogio|convRel|convHx|outPort2[5]~11_combout\);

-- Location: LCCOMB_X106_Y25_N10
\relogio|convRel|pulsos|yout[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|pulsos|yout[1]~1_combout\ = (\pulsos|saida2|clkOut~q\) # (!\relogio|FSMrel|pS.HORAS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|pS.HORAS~q\,
	datac => \pulsos|saida2|clkOut~q\,
	combout => \relogio|convRel|pulsos|yout[1]~1_combout\);

-- Location: LCCOMB_X106_Y25_N18
\relogio|convRel|convHx|outPort2[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[3]~8_combout\ = \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ $ (((!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ & 
-- !\relogio|relBas|Horas|s_cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datac => \relogio|relBas|Horas|s_cont\(0),
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	combout => \relogio|convRel|convHx|outPort2[3]~8_combout\);

-- Location: LCCOMB_X106_Y25_N24
\relogio|convRel|convHx|outPort2[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[3]~9_combout\ = (\relogio|FSMrel|pS.HORAS~q\ & (\pulsos|saida2|clkOut~q\ & ((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\) # (\relogio|convRel|convHx|outPort2[3]~8_combout\)))) # 
-- (!\relogio|FSMrel|pS.HORAS~q\ & (((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\) # (\relogio|convRel|convHx|outPort2[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|pS.HORAS~q\,
	datab => \pulsos|saida2|clkOut~q\,
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \relogio|convRel|convHx|outPort2[3]~8_combout\,
	combout => \relogio|convRel|convHx|outPort2[3]~9_combout\);

-- Location: LCCOMB_X107_Y25_N10
\relogio|convRel|convHx|outPort2[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[3]~10_combout\ = (!\relogio|convRel|convHx|outPort2[3]~9_combout\ & (((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\) # 
-- (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\)) # (!\relogio|convRel|pulsos|yout[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|pulsos|yout[1]~1_combout\,
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datad => \relogio|convRel|convHx|outPort2[3]~9_combout\,
	combout => \relogio|convRel|convHx|outPort2[3]~10_combout\);

-- Location: LCCOMB_X107_Y25_N30
\relogio|convRel|convHx|outPort2[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[3]~12_combout\ = (\relogio|convRel|convHx|outPort2[5]~11_combout\) # (\relogio|convRel|convHx|outPort2[3]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|convHx|outPort2[5]~11_combout\,
	datad => \relogio|convRel|convHx|outPort2[3]~10_combout\,
	combout => \relogio|convRel|convHx|outPort2[3]~12_combout\);

-- Location: LCCOMB_X101_Y26_N22
\relogio|convRel|convHx|Equal18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|Equal18~2_combout\ = (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ & ((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & 
-- ((!\relogio|relBas|Horas|s_cont\(1)))) # (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\,
	datac => \relogio|relBas|Horas|s_cont\(1),
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\,
	combout => \relogio|convRel|convHx|Equal18~2_combout\);

-- Location: LCCOMB_X107_Y25_N12
\relogio|convRel|convHx|outPort2[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[6]~15_combout\ = (\relogio|convRel|pulsos|yout[1]~1_combout\ & ((\relogio|convRel|convHx|Equal18~2_combout\ & (!\relogio|relBas|Horas|s_cont\(0) & 
-- !\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\)) # (!\relogio|convRel|convHx|Equal18~2_combout\ & ((\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(0),
	datab => \relogio|convRel|convHx|Equal18~2_combout\,
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \relogio|convRel|pulsos|yout[1]~1_combout\,
	combout => \relogio|convRel|convHx|outPort2[6]~15_combout\);

-- Location: LCCOMB_X107_Y25_N28
\relogio|convRel|convHx|outPort2[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[6]~13_combout\ = (\relogio|convRel|pulsos|yout[1]~1_combout\ & (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ $ (((!\relogio|relBas|Horas|s_cont\(0) & 
-- \relogio|convRel|convHx|Equal18~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(0),
	datab => \relogio|convRel|convHx|Equal18~2_combout\,
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \relogio|convRel|pulsos|yout[1]~1_combout\,
	combout => \relogio|convRel|convHx|outPort2[6]~13_combout\);

-- Location: LCCOMB_X107_Y25_N18
\relogio|convRel|convHx|outPort2[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[4]~14_combout\ = ((!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & ((\relogio|relBas|Horas|s_cont\(0)) # 
-- (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\)))) # (!\relogio|convRel|pulsos|yout[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(0),
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datad => \relogio|convRel|pulsos|yout[1]~1_combout\,
	combout => \relogio|convRel|convHx|outPort2[4]~14_combout\);

-- Location: LCCOMB_X107_Y25_N6
\relogio|convRel|convHx|outPort2[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[4]~16_combout\ = (!\relogio|convRel|convHx|outPort2[6]~15_combout\ & ((\relogio|convRel|convHx|outPort2[6]~13_combout\) # (\relogio|convRel|convHx|outPort2[4]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|convHx|outPort2[6]~15_combout\,
	datab => \relogio|convRel|convHx|outPort2[6]~13_combout\,
	datad => \relogio|convRel|convHx|outPort2[4]~14_combout\,
	combout => \relogio|convRel|convHx|outPort2[4]~16_combout\);

-- Location: LCCOMB_X107_Y25_N8
\relogio|convRel|convHx|outPort2[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[5]~17_combout\ = ((!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ & ((\relogio|relBas|Horas|s_cont\(0)) # 
-- (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\)))) # (!\relogio|convRel|pulsos|yout[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(0),
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datad => \relogio|convRel|pulsos|yout[1]~1_combout\,
	combout => \relogio|convRel|convHx|outPort2[5]~17_combout\);

-- Location: LCCOMB_X107_Y25_N14
\relogio|convRel|convHx|outPort2[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[5]~18_combout\ = (\relogio|convRel|convHx|outPort2[3]~9_combout\ & ((\relogio|convRel|convHx|outPort2[5]~11_combout\))) # (!\relogio|convRel|convHx|outPort2[3]~9_combout\ & 
-- (\relogio|convRel|convHx|outPort2[5]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|convHx|outPort2[3]~9_combout\,
	datac => \relogio|convRel|convHx|outPort2[5]~17_combout\,
	datad => \relogio|convRel|convHx|outPort2[5]~11_combout\,
	combout => \relogio|convRel|convHx|outPort2[5]~18_combout\);

-- Location: LCCOMB_X107_Y25_N4
\relogio|convRel|convHx|outPort2[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[6]~19_combout\ = (\relogio|relBas|Horas|s_cont\(0) & (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & 
-- (\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ $ (!\relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(0),
	datab => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datac => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datad => \relogio|convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	combout => \relogio|convRel|convHx|outPort2[6]~19_combout\);

-- Location: LCCOMB_X107_Y25_N26
\relogio|convRel|convHx|outPort2[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort2[6]~20_combout\ = (\relogio|convRel|convHx|outPort2[6]~15_combout\) # ((!\relogio|convRel|convHx|outPort2[6]~13_combout\ & ((\relogio|convRel|convHx|outPort2[6]~19_combout\) # 
-- (!\relogio|convRel|pulsos|yout[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|pulsos|yout[1]~1_combout\,
	datab => \relogio|convRel|convHx|outPort2[6]~13_combout\,
	datac => \relogio|convRel|convHx|outPort2[6]~19_combout\,
	datad => \relogio|convRel|convHx|outPort2[6]~15_combout\,
	combout => \relogio|convRel|convHx|outPort2[6]~20_combout\);

-- Location: LCCOMB_X105_Y25_N16
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = \relogio|relBas|Horas|s_cont\(2) $ (VCC)
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY(\relogio|relBas|Horas|s_cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(2),
	datad => VCC,
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X105_Y25_N18
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\relogio|relBas|Horas|s_cont\(3) & (\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & VCC)) # 
-- (!\relogio|relBas|Horas|s_cont\(3) & (!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\))
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\relogio|relBas|Horas|s_cont\(3) & !\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(3),
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X105_Y25_N20
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\relogio|relBas|Horas|s_cont\(4) & (\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ $ (GND))) # 
-- (!\relogio|relBas|Horas|s_cont\(4) & (!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & VCC))
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((\relogio|relBas|Horas|s_cont\(4) & !\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(4),
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X105_Y25_N22
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ = !\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ = CARRY(!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	cout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\);

-- Location: LCCOMB_X105_Y25_N24
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ = CARRY(!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\,
	cout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\);

-- Location: LCCOMB_X105_Y25_N26
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ = !\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\,
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\);

-- Location: LCCOMB_X106_Y25_N22
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\ = (!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\);

-- Location: LCCOMB_X106_Y25_N20
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\ = (!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\);

-- Location: LCCOMB_X105_Y25_N28
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\ = (\relogio|relBas|Horas|s_cont\(4) & \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(4),
	datac => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\);

-- Location: LCCOMB_X105_Y25_N12
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\ = (!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\);

-- Location: LCCOMB_X105_Y25_N14
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\ = (\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \relogio|relBas|Horas|s_cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \relogio|relBas|Horas|s_cont\(3),
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\);

-- Location: LCCOMB_X105_Y25_N30
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\ = (\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \relogio|relBas|Horas|s_cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \relogio|relBas|Horas|s_cont\(2),
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\);

-- Location: LCCOMB_X106_Y25_N14
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\ = (\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ & 
-- !\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	datac => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\);

-- Location: LCCOMB_X106_Y25_N2
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\ = (!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \relogio|relBas|Horas|s_cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \relogio|relBas|Horas|s_cont\(1),
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\);

-- Location: LCCOMB_X106_Y25_N8
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\ = (\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \relogio|relBas|Horas|s_cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \relogio|relBas|Horas|s_cont\(1),
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\);

-- Location: LCCOMB_X105_Y25_N0
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ = CARRY((\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\) # 
-- (\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\,
	datab => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\,
	datad => VCC,
	cout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\);

-- Location: LCCOMB_X105_Y25_N2
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\ & 
-- (!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\ & !\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\,
	datab => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X105_Y25_N4
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ = CARRY((!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ & 
-- ((\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\) # (\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\,
	datab => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\,
	cout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\);

-- Location: LCCOMB_X105_Y25_N6
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY((!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\ & 
-- (!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\ & !\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\,
	datab => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X105_Y25_N8
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ = CARRY((\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\) # 
-- (!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\,
	datad => VCC,
	cin => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\,
	cout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\);

-- Location: LCCOMB_X105_Y25_N10
\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ = !\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\,
	combout => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\);

-- Location: LCCOMB_X106_Y25_N30
\relogio|convRel|convHx|outPort3[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort3[0]~11_combout\ = (\relogio|FSMrel|pS.HORAS~q\ & (((\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- !\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\)) # (!\pulsos|saida2|clkOut~q\))) # (!\relogio|FSMrel|pS.HORAS~q\ & 
-- (((\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & !\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|pS.HORAS~q\,
	datab => \pulsos|saida2|clkOut~q\,
	datac => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	combout => \relogio|convRel|convHx|outPort3[0]~11_combout\);

-- Location: LCCOMB_X106_Y25_N16
\relogio|convRel|convHx|outPort3[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort3[2]~12_combout\ = (\relogio|FSMrel|pS.HORAS~q\ & (((!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\)) # (!\pulsos|saida2|clkOut~q\))) # (!\relogio|FSMrel|pS.HORAS~q\ & 
-- (((!\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|pS.HORAS~q\,
	datab => \pulsos|saida2|clkOut~q\,
	datac => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	combout => \relogio|convRel|convHx|outPort3[2]~12_combout\);

-- Location: LCCOMB_X102_Y26_N14
\relogio|convRel|convHx|outPort3[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort3[6]~8_combout\ = (\relogio|relBas|Horas|s_cont\(4) & (\relogio|convRel|pulsos|yout[1]~1_combout\ & ((\relogio|relBas|Horas|s_cont\(3)) # (\relogio|relBas|Horas|s_cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(3),
	datab => \relogio|relBas|Horas|s_cont\(2),
	datac => \relogio|relBas|Horas|s_cont\(4),
	datad => \relogio|convRel|pulsos|yout[1]~1_combout\,
	combout => \relogio|convRel|convHx|outPort3[6]~8_combout\);

-- Location: LCCOMB_X102_Y26_N12
\relogio|convRel|convHx|outPort3[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort3[4]~9_combout\ = (\relogio|relBas|Horas|s_cont\(3) & ((\relogio|relBas|Horas|s_cont\(2) & ((\relogio|relBas|Horas|s_cont\(1)) # (!\relogio|convRel|convHx|outPort3[6]~8_combout\))) # (!\relogio|relBas|Horas|s_cont\(2) & 
-- (!\relogio|convRel|convHx|outPort3[6]~8_combout\ & \relogio|relBas|Horas|s_cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|relBas|Horas|s_cont\(3),
	datab => \relogio|relBas|Horas|s_cont\(2),
	datac => \relogio|convRel|convHx|outPort3[6]~8_combout\,
	datad => \relogio|relBas|Horas|s_cont\(1),
	combout => \relogio|convRel|convHx|outPort3[4]~9_combout\);

-- Location: LCCOMB_X102_Y26_N26
\relogio|convRel|convHx|outPort3[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort3[4]~10_combout\ = (\relogio|convRel|convHx|outPort3[4]~9_combout\) # ((!\relogio|convRel|convHx|outPort3[6]~8_combout\ & ((\relogio|relBas|Horas|s_cont\(4)) # (!\relogio|convRel|pulsos|yout[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|convRel|pulsos|yout[1]~1_combout\,
	datab => \relogio|convRel|convHx|outPort3[6]~8_combout\,
	datac => \relogio|relBas|Horas|s_cont\(4),
	datad => \relogio|convRel|convHx|outPort3[4]~9_combout\,
	combout => \relogio|convRel|convHx|outPort3[4]~10_combout\);

-- Location: LCCOMB_X106_Y25_N6
\relogio|convRel|convHx|outPort3[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \relogio|convRel|convHx|outPort3[3]~13_combout\ = (\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & (\relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & 
-- ((\pulsos|saida2|clkOut~q\) # (!\relogio|FSMrel|pS.HORAS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|FSMrel|pS.HORAS~q\,
	datab => \pulsos|saida2|clkOut~q\,
	datac => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \relogio|convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	combout => \relogio|convRel|convHx|outPort3[3]~13_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;
END structure;


