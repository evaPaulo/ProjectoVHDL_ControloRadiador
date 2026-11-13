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

-- DATE "06/03/2023 18:59:03"

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

ENTITY 	AmbienteFinal IS
    PORT (
	clk : IN std_logic;
	pulso : IN std_logic;
	divF : IN std_logic;
	up : IN std_logic;
	dw : IN std_logic;
	tP : IN std_logic;
	horaROM : IN std_logic_vector(4 DOWNTO 0);
	radiador : BUFFER std_logic;
	tDzn : BUFFER std_logic_vector(6 DOWNTO 0);
	tUni : BUFFER std_logic_vector(6 DOWNTO 0);
	tDcm : BUFFER std_logic_vector(6 DOWNTO 0);
	modoLED : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END AmbienteFinal;

-- Design Ports Information
-- radiador	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tDzn[0]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tDzn[1]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tDzn[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tDzn[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tDzn[4]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tDzn[5]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tDzn[6]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tUni[0]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tUni[1]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tUni[2]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tUni[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tUni[4]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tUni[5]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tUni[6]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tDcm[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tDcm[1]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tDcm[2]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tDcm[3]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tDcm[4]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tDcm[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tDcm[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modoLED[0]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modoLED[1]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modoLED[2]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divF	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaROM[3]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaROM[0]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaROM[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaROM[2]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaROM[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dw	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tP	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AmbienteFinal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pulso : std_logic;
SIGNAL ww_divF : std_logic;
SIGNAL ww_up : std_logic;
SIGNAL ww_dw : std_logic;
SIGNAL ww_tP : std_logic;
SIGNAL ww_horaROM : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_radiador : std_logic;
SIGNAL ww_tDzn : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_tUni : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_tDcm : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_modoLED : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \radiador~output_o\ : std_logic;
SIGNAL \tDzn[0]~output_o\ : std_logic;
SIGNAL \tDzn[1]~output_o\ : std_logic;
SIGNAL \tDzn[2]~output_o\ : std_logic;
SIGNAL \tDzn[3]~output_o\ : std_logic;
SIGNAL \tDzn[4]~output_o\ : std_logic;
SIGNAL \tDzn[5]~output_o\ : std_logic;
SIGNAL \tDzn[6]~output_o\ : std_logic;
SIGNAL \tUni[0]~output_o\ : std_logic;
SIGNAL \tUni[1]~output_o\ : std_logic;
SIGNAL \tUni[2]~output_o\ : std_logic;
SIGNAL \tUni[3]~output_o\ : std_logic;
SIGNAL \tUni[4]~output_o\ : std_logic;
SIGNAL \tUni[5]~output_o\ : std_logic;
SIGNAL \tUni[6]~output_o\ : std_logic;
SIGNAL \tDcm[0]~output_o\ : std_logic;
SIGNAL \tDcm[1]~output_o\ : std_logic;
SIGNAL \tDcm[2]~output_o\ : std_logic;
SIGNAL \tDcm[3]~output_o\ : std_logic;
SIGNAL \tDcm[4]~output_o\ : std_logic;
SIGNAL \tDcm[5]~output_o\ : std_logic;
SIGNAL \tDcm[6]~output_o\ : std_logic;
SIGNAL \modoLED[0]~output_o\ : std_logic;
SIGNAL \modoLED[1]~output_o\ : std_logic;
SIGNAL \modoLED[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \horaROM[1]~input_o\ : std_logic;
SIGNAL \horaROM[0]~input_o\ : std_logic;
SIGNAL \horaROM[2]~input_o\ : std_logic;
SIGNAL \horaROM[4]~input_o\ : std_logic;
SIGNAL \ROM|Mux1~0_combout\ : std_logic;
SIGNAL \horaROM[3]~input_o\ : std_logic;
SIGNAL \ROM|Mux0~0_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[2]~0_combout\ : std_logic;
SIGNAL \tSelect|selecao|Equal0~0_combout\ : std_logic;
SIGNAL \up~input_o\ : std_logic;
SIGNAL \FSM|pS.GEL~0_combout\ : std_logic;
SIGNAL \tP~input_o\ : std_logic;
SIGNAL \FSM|pS.GEL~q\ : std_logic;
SIGNAL \FSM|pS.LUA~q\ : std_logic;
SIGNAL \FSM|pS.SOL~q\ : std_logic;
SIGNAL \FSM|pS.NORMAL~0_combout\ : std_logic;
SIGNAL \FSM|pS.NORMAL~q\ : std_logic;
SIGNAL \dw~input_o\ : std_logic;
SIGNAL \FSM|Selector5~0_combout\ : std_logic;
SIGNAL \FSM|ud~combout\ : std_logic;
SIGNAL \tRef|LUA|Add1~0_combout\ : std_logic;
SIGNAL \FSM|eL~0_combout\ : std_logic;
SIGNAL \tRef|LUA|Add1~1\ : std_logic;
SIGNAL \tRef|LUA|Add1~2_combout\ : std_logic;
SIGNAL \tRef|LUA|Add1~3\ : std_logic;
SIGNAL \tRef|LUA|Add1~4_combout\ : std_logic;
SIGNAL \tRef|LUA|Add1~5\ : std_logic;
SIGNAL \tRef|LUA|Add1~6_combout\ : std_logic;
SIGNAL \tRef|LUA|Add1~7\ : std_logic;
SIGNAL \tRef|LUA|Add1~8_combout\ : std_logic;
SIGNAL \tRef|LUA|s_cont[5]~1_combout\ : std_logic;
SIGNAL \tRef|LUA|Add1~9\ : std_logic;
SIGNAL \tRef|LUA|Add1~10_combout\ : std_logic;
SIGNAL \tRef|LUA|Add1~11\ : std_logic;
SIGNAL \tRef|LUA|Add1~12_combout\ : std_logic;
SIGNAL \tRef|LUA|s_cont[7]~0_combout\ : std_logic;
SIGNAL \tRef|LUA|Add1~13\ : std_logic;
SIGNAL \tRef|LUA|Add1~14_combout\ : std_logic;
SIGNAL \tRef|GEL|Add1~0_combout\ : std_logic;
SIGNAL \FSM|eG~0_combout\ : std_logic;
SIGNAL \tRef|GEL|Add1~1\ : std_logic;
SIGNAL \tRef|GEL|Add1~2_combout\ : std_logic;
SIGNAL \tRef|GEL|Add1~3\ : std_logic;
SIGNAL \tRef|GEL|Add1~4_combout\ : std_logic;
SIGNAL \tRef|GEL|s_cont[3]~1_combout\ : std_logic;
SIGNAL \tRef|GEL|Add1~5\ : std_logic;
SIGNAL \tRef|GEL|Add1~6_combout\ : std_logic;
SIGNAL \tRef|GEL|Add1~7\ : std_logic;
SIGNAL \tRef|GEL|Add1~8_combout\ : std_logic;
SIGNAL \tRef|GEL|s_cont[5]~0_combout\ : std_logic;
SIGNAL \tRef|GEL|Add1~9\ : std_logic;
SIGNAL \tRef|GEL|Add1~10_combout\ : std_logic;
SIGNAL \tRef|GEL|Add1~11\ : std_logic;
SIGNAL \tRef|GEL|Add1~12_combout\ : std_logic;
SIGNAL \tRef|GEL|Add1~13\ : std_logic;
SIGNAL \tRef|GEL|Add1~14_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[8]~1_combout\ : std_logic;
SIGNAL \tRef|SOL|Add1~0_combout\ : std_logic;
SIGNAL \FSM|eS~1_combout\ : std_logic;
SIGNAL \tRef|SOL|Add1~1\ : std_logic;
SIGNAL \tRef|SOL|Add1~2_combout\ : std_logic;
SIGNAL \tRef|SOL|Add1~3\ : std_logic;
SIGNAL \tRef|SOL|Add1~4_combout\ : std_logic;
SIGNAL \tRef|SOL|s_cont[3]~2_combout\ : std_logic;
SIGNAL \tRef|SOL|Add1~5\ : std_logic;
SIGNAL \tRef|SOL|Add1~6_combout\ : std_logic;
SIGNAL \tRef|SOL|Add1~7\ : std_logic;
SIGNAL \tRef|SOL|Add1~8_combout\ : std_logic;
SIGNAL \tRef|SOL|Add1~9\ : std_logic;
SIGNAL \tRef|SOL|Add1~10_combout\ : std_logic;
SIGNAL \tRef|SOL|s_cont[6]~1_combout\ : std_logic;
SIGNAL \tRef|SOL|Add1~11\ : std_logic;
SIGNAL \tRef|SOL|Add1~12_combout\ : std_logic;
SIGNAL \tRef|SOL|s_cont[7]~0_combout\ : std_logic;
SIGNAL \tRef|SOL|Add1~13\ : std_logic;
SIGNAL \tRef|SOL|Add1~14_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[8]~2_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[7]~3_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[7]~4_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[6]~5_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[6]~6_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[5]~7_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[5]~8_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[4]~9_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[4]~10_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[3]~11_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[3]~12_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[3]~13_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[2]~14_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[2]~15_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[2]~16_combout\ : std_logic;
SIGNAL \tSelect|control|Add0~1_cout\ : std_logic;
SIGNAL \tSelect|control|Add0~3\ : std_logic;
SIGNAL \tSelect|control|Add0~5\ : std_logic;
SIGNAL \tSelect|control|Add0~7\ : std_logic;
SIGNAL \tSelect|control|Add0~9\ : std_logic;
SIGNAL \tSelect|control|Add0~11\ : std_logic;
SIGNAL \tSelect|control|Add0~13\ : std_logic;
SIGNAL \tSelect|control|Add0~14_combout\ : std_logic;
SIGNAL \tSelect|control|Add0~15\ : std_logic;
SIGNAL \tSelect|control|Add0~16_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add0~0_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add1~0_combout\ : std_logic;
SIGNAL \tSelect|cont9|s_cont~11_combout\ : std_logic;
SIGNAL \pulso~input_o\ : std_logic;
SIGNAL \tSelect|cont9|Add1~1\ : std_logic;
SIGNAL \tSelect|cont9|Add1~2_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add0~1\ : std_logic;
SIGNAL \tSelect|cont9|Add0~2_combout\ : std_logic;
SIGNAL \tSelect|cont9|s_cont~10_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add1~3\ : std_logic;
SIGNAL \tSelect|cont9|Add1~4_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add0~3\ : std_logic;
SIGNAL \tSelect|cont9|Add0~4_combout\ : std_logic;
SIGNAL \tSelect|cont9|s_cont~9_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add0~5\ : std_logic;
SIGNAL \tSelect|cont9|Add0~6_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add1~5\ : std_logic;
SIGNAL \tSelect|cont9|Add1~6_combout\ : std_logic;
SIGNAL \tSelect|cont9|s_cont~8_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add1~7\ : std_logic;
SIGNAL \tSelect|cont9|Add1~8_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add0~7\ : std_logic;
SIGNAL \tSelect|cont9|Add0~8_combout\ : std_logic;
SIGNAL \tSelect|cont9|s_cont~7_combout\ : std_logic;
SIGNAL \tSelect|cont9|s_cont[3]~1_combout\ : std_logic;
SIGNAL \tSelect|cont9|s_cont[3]~0_combout\ : std_logic;
SIGNAL \tSelect|cont9|s_cont~2_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add0~9\ : std_logic;
SIGNAL \tSelect|cont9|Add0~10_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add1~9\ : std_logic;
SIGNAL \tSelect|cont9|Add1~10_combout\ : std_logic;
SIGNAL \tSelect|cont9|s_cont~6_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add0~11\ : std_logic;
SIGNAL \tSelect|cont9|Add0~12_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add1~11\ : std_logic;
SIGNAL \tSelect|cont9|Add1~12_combout\ : std_logic;
SIGNAL \tSelect|cont9|s_cont~5_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add1~13\ : std_logic;
SIGNAL \tSelect|cont9|Add1~14_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add0~13\ : std_logic;
SIGNAL \tSelect|cont9|Add0~14_combout\ : std_logic;
SIGNAL \tSelect|cont9|s_cont~4_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add1~15\ : std_logic;
SIGNAL \tSelect|cont9|Add1~16_combout\ : std_logic;
SIGNAL \tSelect|cont9|Add0~15\ : std_logic;
SIGNAL \tSelect|cont9|Add0~16_combout\ : std_logic;
SIGNAL \tSelect|cont9|s_cont~3_combout\ : std_logic;
SIGNAL \tSelect|control|Add0~12_combout\ : std_logic;
SIGNAL \tSelect|control|Add0~10_combout\ : std_logic;
SIGNAL \tSelect|control|Add0~8_combout\ : std_logic;
SIGNAL \tSelect|control|Add0~6_combout\ : std_logic;
SIGNAL \tSelect|control|Add0~4_combout\ : std_logic;
SIGNAL \tSelect|control|Add0~2_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[1]~17_combout\ : std_logic;
SIGNAL \tSelect|selecao|tRef[1]~18_combout\ : std_logic;
SIGNAL \tSelect|control|LessThan0~1_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan0~3_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan0~5_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan0~7_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan0~9_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan0~11_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan0~13_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan0~15_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan0~16_combout\ : std_logic;
SIGNAL \tSelect|control|Add1~1\ : std_logic;
SIGNAL \tSelect|control|Add1~3\ : std_logic;
SIGNAL \tSelect|control|Add1~5\ : std_logic;
SIGNAL \tSelect|control|Add1~7\ : std_logic;
SIGNAL \tSelect|control|Add1~9\ : std_logic;
SIGNAL \tSelect|control|Add1~11\ : std_logic;
SIGNAL \tSelect|control|Add1~12_combout\ : std_logic;
SIGNAL \tSelect|control|Add1~10_combout\ : std_logic;
SIGNAL \tSelect|control|Add1~8_combout\ : std_logic;
SIGNAL \tSelect|control|Add1~6_combout\ : std_logic;
SIGNAL \tSelect|control|Add1~4_combout\ : std_logic;
SIGNAL \tSelect|control|Add1~2_combout\ : std_logic;
SIGNAL \tSelect|control|Add1~0_combout\ : std_logic;
SIGNAL \tSelect|control|LessThan1~1_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan1~3_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan1~5_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan1~7_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan1~9_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan1~11_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan1~13_cout\ : std_logic;
SIGNAL \tSelect|control|LessThan1~14_combout\ : std_logic;
SIGNAL \tSelect|control|controlOut~0_combout\ : std_logic;
SIGNAL \tSelect|control|controlOut~1_combout\ : std_logic;
SIGNAL \tSelect|control|controlOut~q\ : std_logic;
SIGNAL \FSM|stOut~2_combout\ : std_logic;
SIGNAL \FSM|stOut~3_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[8]~0_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[8]~1_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[8]~2_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[7]~3_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[7]~4_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[6]~5_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[6]~6_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[5]~7_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[5]~8_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[4]~9_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[4]~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~1\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~3\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~5\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~9\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~11\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[8]~13_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[268]~48_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[3]~11_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[3]~12_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~59_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~60_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~9\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~11\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[8]~13_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ : std_logic;
SIGNAL \divF~input_o\ : std_logic;
SIGNAL \conv|enableConv|yout~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~71_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~61_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~62_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~72_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~73_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~63_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~64_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~74_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~75_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~65_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~76_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~66_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[2]~13_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[2]~14_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~69_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~68_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~16_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~70_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~67_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~1_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~3_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~5_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~7_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~9_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[7]~11_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[8]~13_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort2[0]~0_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort2~1_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort2[2]~2_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort2[3]~3_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort2[4]~4_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort2[5]~5_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort2[6]~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~67_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~68_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[160]~60_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~69_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~103_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~74_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~75_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~82_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~81_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~97_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~76_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~83_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~99_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~89_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~88_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~101_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~90_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~91_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~102_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~92_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~108_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~94_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~93_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[1]~15_combout\ : std_logic;
SIGNAL \conv|inRefConv|tRef[1]~16_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~96_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~95_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~1\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~3\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~5\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~7\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~9\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~11\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~13\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~15\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~17\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~19\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~21\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~23\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~20_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~18_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~16_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~14_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~12_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~8_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~26_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~63_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~62_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~1\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~3\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~5\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~7\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~9\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~11\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~13\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~15\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~17\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~19\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~21\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~23\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~25\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~26_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~27\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~64_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~24_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~65_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~84_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~22_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~66_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~85_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~20_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~67_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~86_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~18_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~68_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~87_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~16_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~69_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~88_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~14_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~70_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~89_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~12_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~71_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~90_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~72_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~8_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~73_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~91_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~74_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~92_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~93_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~75_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~30_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~3\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~5\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~7\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~9_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~11_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~13_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~15_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~17_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~19_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~21_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~23_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~25_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~27_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~29_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~31_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[0]~8_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[0]~22_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1~9_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1~23_combout\ : std_logic;
SIGNAL \conv|conv7seg|Equal16~0_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[2]~24_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[5]~10_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[3]~25_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[4]~11_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[5]~12_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[3]~13_combout\ : std_logic;
SIGNAL \conv|conv7seg|Equal9~0_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[6]~16_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[6]~14_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[4]~15_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[4]~17_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[5]~18_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[5]~19_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[6]~20_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort1[6]~21_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~1\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~3\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~5\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~7\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~9\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~11\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~13\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~15\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~12_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~8_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~126_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~127_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~1\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~3\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~5\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~7\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~9\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~11\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~13\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~15\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~17\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~19\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~16_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~14_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~196_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~12_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~197_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~198_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~8_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~199_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~230_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~231_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~232_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~139_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~140_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~1\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~3\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~5\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~7\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~9\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~11\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~13\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~15\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~17\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~19\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~21\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~23\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~20_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~200_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~18_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~201_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~16_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~14_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~202_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~203_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~12_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~204_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~8_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~205_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~206_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~207_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~233_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~155_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~154_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~1\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~3\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~5\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~7\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~9\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~11\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~13\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~15\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~17\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~19\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~21\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~23\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~25\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~27\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~24_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~208_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~22_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~20_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~209_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~18_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~210_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~211_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~16_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~212_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~14_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~12_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~213_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~214_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~8_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~215_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~216_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~217_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~234_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~171_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~172_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~1\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~3\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~5\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~7\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~9\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~11\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~13\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~15\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~17\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~19\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~21\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~23\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~25\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~27\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~29\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~31\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~188_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~189_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~190_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~191_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~3\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~30_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~28_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~174_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~173_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~218_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~26_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~175_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~219_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~24_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~176_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~220_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~22_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~177_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~20_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~178_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~221_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~18_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~179_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~222_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~223_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~16_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~180_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~224_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~14_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~181_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~12_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~182_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~225_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~10_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~183_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~226_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~8_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~184_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~227_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~185_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~228_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~229_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~186_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~235_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~187_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~5\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~7\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~9_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~11_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~13_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~15_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~17_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~19_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~21_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~23_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~25_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~27_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~29_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~31_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~33_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~35_cout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~2_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~6_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\ : std_logic;
SIGNAL \conv|inRefConv|Equal0~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~0_combout\ : std_logic;
SIGNAL \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[0]~8_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[0]~21_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0~9_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0~22_combout\ : std_logic;
SIGNAL \conv|conv7seg|Equal7~0_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[2]~23_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[3]~24_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[5]~11_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[5]~10_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[3]~12_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[4]~14_combout\ : std_logic;
SIGNAL \conv|conv7seg|Equal0~0_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[6]~13_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[6]~15_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[4]~16_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[5]~17_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[5]~18_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[6]~19_combout\ : std_logic;
SIGNAL \conv|conv7seg|outPort0[6]~20_combout\ : std_logic;
SIGNAL \LEDs|mux1|yout[1]~5_combout\ : std_logic;
SIGNAL \LEDs|mux1|yout[0]~4_combout\ : std_logic;
SIGNAL \LEDs|mux2|Equal1~0_combout\ : std_logic;
SIGNAL \LEDs|mux2|Equal0~0_combout\ : std_logic;
SIGNAL \LEDs|mux2|yout[2]~0_combout\ : std_logic;
SIGNAL \tRef|SOL|s_cont\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \tRef|LUA|s_cont\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \tSelect|cont9|s_cont\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \tRef|GEL|s_cont\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LEDs|mux2|ALT_INV_yout[2]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_pulso <= pulso;
ww_divF <= divF;
ww_up <= up;
ww_dw <= dw;
ww_tP <= tP;
ww_horaROM <= horaROM;
radiador <= ww_radiador;
tDzn <= ww_tDzn;
tUni <= ww_tUni;
tDcm <= ww_tDcm;
modoLED <= ww_modoLED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\LEDs|mux2|ALT_INV_yout[2]~0_combout\ <= NOT \LEDs|mux2|yout[2]~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X49_Y0_N9
\radiador~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tSelect|control|controlOut~q\,
	devoe => ww_devoe,
	o => \radiador~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\tDzn[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort2[0]~0_combout\,
	devoe => ww_devoe,
	o => \tDzn[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\tDzn[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort2~1_combout\,
	devoe => ww_devoe,
	o => \tDzn[1]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\tDzn[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort2[2]~2_combout\,
	devoe => ww_devoe,
	o => \tDzn[2]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\tDzn[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort2[3]~3_combout\,
	devoe => ww_devoe,
	o => \tDzn[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\tDzn[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort2[4]~4_combout\,
	devoe => ww_devoe,
	o => \tDzn[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\tDzn[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort2[5]~5_combout\,
	devoe => ww_devoe,
	o => \tDzn[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\tDzn[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort2[6]~6_combout\,
	devoe => ww_devoe,
	o => \tDzn[6]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\tUni[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort1[0]~22_combout\,
	devoe => ww_devoe,
	o => \tUni[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\tUni[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort1~23_combout\,
	devoe => ww_devoe,
	o => \tUni[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\tUni[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort1[2]~24_combout\,
	devoe => ww_devoe,
	o => \tUni[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\tUni[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort1[3]~13_combout\,
	devoe => ww_devoe,
	o => \tUni[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\tUni[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort1[4]~17_combout\,
	devoe => ww_devoe,
	o => \tUni[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\tUni[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort1[5]~19_combout\,
	devoe => ww_devoe,
	o => \tUni[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\tUni[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort1[6]~21_combout\,
	devoe => ww_devoe,
	o => \tUni[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\tDcm[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort0[0]~21_combout\,
	devoe => ww_devoe,
	o => \tDcm[0]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\tDcm[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort0~22_combout\,
	devoe => ww_devoe,
	o => \tDcm[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\tDcm[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort0[2]~23_combout\,
	devoe => ww_devoe,
	o => \tDcm[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\tDcm[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort0[3]~12_combout\,
	devoe => ww_devoe,
	o => \tDcm[3]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\tDcm[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort0[4]~16_combout\,
	devoe => ww_devoe,
	o => \tDcm[4]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\tDcm[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort0[5]~18_combout\,
	devoe => ww_devoe,
	o => \tDcm[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\tDcm[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|conv7seg|outPort0[6]~20_combout\,
	devoe => ww_devoe,
	o => \tDcm[6]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\modoLED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs|mux2|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \modoLED[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\modoLED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs|mux2|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \modoLED[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\modoLED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs|mux2|ALT_INV_yout[2]~0_combout\,
	devoe => ww_devoe,
	o => \modoLED[2]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X54_Y0_N15
\horaROM[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_horaROM(1),
	o => \horaROM[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\horaROM[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_horaROM(0),
	o => \horaROM[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\horaROM[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_horaROM(2),
	o => \horaROM[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\horaROM[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_horaROM(4),
	o => \horaROM[4]~input_o\);

-- Location: LCCOMB_X54_Y1_N16
\ROM|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux1~0_combout\ = (\horaROM[2]~input_o\ & (!\horaROM[4]~input_o\ & (\horaROM[1]~input_o\ $ (\horaROM[0]~input_o\)))) # (!\horaROM[2]~input_o\ & (\horaROM[1]~input_o\ & ((\horaROM[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaROM[1]~input_o\,
	datab => \horaROM[0]~input_o\,
	datac => \horaROM[2]~input_o\,
	datad => \horaROM[4]~input_o\,
	combout => \ROM|Mux1~0_combout\);

-- Location: IOIBUF_X49_Y0_N1
\horaROM[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_horaROM(3),
	o => \horaROM[3]~input_o\);

-- Location: LCCOMB_X54_Y1_N22
\ROM|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux0~0_combout\ = (\horaROM[2]~input_o\ & (!\horaROM[4]~input_o\ & ((\horaROM[1]~input_o\) # (\horaROM[0]~input_o\)))) # (!\horaROM[2]~input_o\ & (((\horaROM[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaROM[1]~input_o\,
	datab => \horaROM[0]~input_o\,
	datac => \horaROM[2]~input_o\,
	datad => \horaROM[4]~input_o\,
	combout => \ROM|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y1_N30
\tSelect|selecao|tRef[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[2]~0_combout\ = (!\horaROM[3]~input_o\ & (\ROM|Mux1~0_combout\ $ (!\ROM|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux1~0_combout\,
	datac => \horaROM[3]~input_o\,
	datad => \ROM|Mux0~0_combout\,
	combout => \tSelect|selecao|tRef[2]~0_combout\);

-- Location: LCCOMB_X50_Y1_N6
\tSelect|selecao|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|Equal0~0_combout\ = ((\horaROM[3]~input_o\) # (!\ROM|Mux0~0_combout\)) # (!\ROM|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux1~0_combout\,
	datac => \horaROM[3]~input_o\,
	datad => \ROM|Mux0~0_combout\,
	combout => \tSelect|selecao|Equal0~0_combout\);

-- Location: IOIBUF_X47_Y0_N8
\up~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up,
	o => \up~input_o\);

-- Location: LCCOMB_X46_Y2_N30
\FSM|pS.GEL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|pS.GEL~0_combout\ = !\FSM|pS.NORMAL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSM|pS.NORMAL~q\,
	combout => \FSM|pS.GEL~0_combout\);

-- Location: IOIBUF_X20_Y0_N22
\tP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tP,
	o => \tP~input_o\);

-- Location: FF_X46_Y1_N11
\FSM|pS.GEL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|pS.GEL~0_combout\,
	sload => VCC,
	ena => \tP~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|pS.GEL~q\);

-- Location: FF_X46_Y1_N21
\FSM|pS.LUA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|pS.GEL~q\,
	sload => VCC,
	ena => \tP~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|pS.LUA~q\);

-- Location: FF_X46_Y1_N29
\FSM|pS.SOL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|pS.LUA~q\,
	sload => VCC,
	ena => \tP~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|pS.SOL~q\);

-- Location: LCCOMB_X29_Y1_N28
\FSM|pS.NORMAL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|pS.NORMAL~0_combout\ = !\FSM|pS.SOL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|pS.SOL~q\,
	combout => \FSM|pS.NORMAL~0_combout\);

-- Location: FF_X29_Y1_N29
\FSM|pS.NORMAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FSM|pS.NORMAL~0_combout\,
	ena => \tP~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|pS.NORMAL~q\);

-- Location: IOIBUF_X47_Y0_N1
\dw~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dw,
	o => \dw~input_o\);

-- Location: LCCOMB_X46_Y1_N0
\FSM|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Selector5~0_combout\ = (\FSM|pS.NORMAL~q\ & ((\up~input_o\) # (\dw~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \up~input_o\,
	datac => \FSM|pS.NORMAL~q\,
	datad => \dw~input_o\,
	combout => \FSM|Selector5~0_combout\);

-- Location: LCCOMB_X46_Y1_N22
\FSM|ud\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|ud~combout\ = (\FSM|Selector5~0_combout\ & (\up~input_o\)) # (!\FSM|Selector5~0_combout\ & ((\FSM|ud~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \up~input_o\,
	datac => \FSM|ud~combout\,
	datad => \FSM|Selector5~0_combout\,
	combout => \FSM|ud~combout\);

-- Location: LCCOMB_X46_Y1_N2
\tRef|LUA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|LUA|Add1~0_combout\ = \tRef|LUA|s_cont\(1) $ (VCC)
-- \tRef|LUA|Add1~1\ = CARRY(\tRef|LUA|s_cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tRef|LUA|s_cont\(1),
	datad => VCC,
	combout => \tRef|LUA|Add1~0_combout\,
	cout => \tRef|LUA|Add1~1\);

-- Location: LCCOMB_X46_Y1_N20
\FSM|eL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|eL~0_combout\ = (\FSM|pS.LUA~q\ & ((\dw~input_o\) # (\up~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw~input_o\,
	datab => \up~input_o\,
	datac => \FSM|pS.LUA~q\,
	combout => \FSM|eL~0_combout\);

-- Location: FF_X46_Y1_N3
\tRef|LUA|s_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|LUA|Add1~0_combout\,
	ena => \FSM|eL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|LUA|s_cont\(1));

-- Location: LCCOMB_X46_Y1_N4
\tRef|LUA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|LUA|Add1~2_combout\ = (\tRef|LUA|s_cont\(2) & ((\FSM|ud~combout\ & (!\tRef|LUA|Add1~1\)) # (!\FSM|ud~combout\ & (\tRef|LUA|Add1~1\ & VCC)))) # (!\tRef|LUA|s_cont\(2) & ((\FSM|ud~combout\ & ((\tRef|LUA|Add1~1\) # (GND))) # (!\FSM|ud~combout\ & 
-- (!\tRef|LUA|Add1~1\))))
-- \tRef|LUA|Add1~3\ = CARRY((\tRef|LUA|s_cont\(2) & (\FSM|ud~combout\ & !\tRef|LUA|Add1~1\)) # (!\tRef|LUA|s_cont\(2) & ((\FSM|ud~combout\) # (!\tRef|LUA|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|LUA|s_cont\(2),
	datab => \FSM|ud~combout\,
	datad => VCC,
	cin => \tRef|LUA|Add1~1\,
	combout => \tRef|LUA|Add1~2_combout\,
	cout => \tRef|LUA|Add1~3\);

-- Location: FF_X46_Y1_N5
\tRef|LUA|s_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|LUA|Add1~2_combout\,
	ena => \FSM|eL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|LUA|s_cont\(2));

-- Location: LCCOMB_X46_Y1_N6
\tRef|LUA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|LUA|Add1~4_combout\ = ((\tRef|LUA|s_cont\(3) $ (\FSM|ud~combout\ $ (!\tRef|LUA|Add1~3\)))) # (GND)
-- \tRef|LUA|Add1~5\ = CARRY((\tRef|LUA|s_cont\(3) & ((\FSM|ud~combout\) # (!\tRef|LUA|Add1~3\))) # (!\tRef|LUA|s_cont\(3) & (\FSM|ud~combout\ & !\tRef|LUA|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|LUA|s_cont\(3),
	datab => \FSM|ud~combout\,
	datad => VCC,
	cin => \tRef|LUA|Add1~3\,
	combout => \tRef|LUA|Add1~4_combout\,
	cout => \tRef|LUA|Add1~5\);

-- Location: FF_X46_Y1_N7
\tRef|LUA|s_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|LUA|Add1~4_combout\,
	ena => \FSM|eL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|LUA|s_cont\(3));

-- Location: LCCOMB_X46_Y1_N8
\tRef|LUA|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|LUA|Add1~6_combout\ = (\tRef|LUA|s_cont\(4) & ((\FSM|ud~combout\ & (!\tRef|LUA|Add1~5\)) # (!\FSM|ud~combout\ & (\tRef|LUA|Add1~5\ & VCC)))) # (!\tRef|LUA|s_cont\(4) & ((\FSM|ud~combout\ & ((\tRef|LUA|Add1~5\) # (GND))) # (!\FSM|ud~combout\ & 
-- (!\tRef|LUA|Add1~5\))))
-- \tRef|LUA|Add1~7\ = CARRY((\tRef|LUA|s_cont\(4) & (\FSM|ud~combout\ & !\tRef|LUA|Add1~5\)) # (!\tRef|LUA|s_cont\(4) & ((\FSM|ud~combout\) # (!\tRef|LUA|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|LUA|s_cont\(4),
	datab => \FSM|ud~combout\,
	datad => VCC,
	cin => \tRef|LUA|Add1~5\,
	combout => \tRef|LUA|Add1~6_combout\,
	cout => \tRef|LUA|Add1~7\);

-- Location: FF_X46_Y1_N9
\tRef|LUA|s_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|LUA|Add1~6_combout\,
	ena => \FSM|eL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|LUA|s_cont\(4));

-- Location: LCCOMB_X46_Y1_N10
\tRef|LUA|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|LUA|Add1~8_combout\ = ((\tRef|LUA|s_cont\(5) $ (\FSM|ud~combout\ $ (!\tRef|LUA|Add1~7\)))) # (GND)
-- \tRef|LUA|Add1~9\ = CARRY((\tRef|LUA|s_cont\(5) & (!\FSM|ud~combout\ & !\tRef|LUA|Add1~7\)) # (!\tRef|LUA|s_cont\(5) & ((!\tRef|LUA|Add1~7\) # (!\FSM|ud~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|LUA|s_cont\(5),
	datab => \FSM|ud~combout\,
	datad => VCC,
	cin => \tRef|LUA|Add1~7\,
	combout => \tRef|LUA|Add1~8_combout\,
	cout => \tRef|LUA|Add1~9\);

-- Location: LCCOMB_X46_Y1_N26
\tRef|LUA|s_cont[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|LUA|s_cont[5]~1_combout\ = !\tRef|LUA|Add1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tRef|LUA|Add1~8_combout\,
	combout => \tRef|LUA|s_cont[5]~1_combout\);

-- Location: FF_X46_Y1_N27
\tRef|LUA|s_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|LUA|s_cont[5]~1_combout\,
	ena => \FSM|eL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|LUA|s_cont\(5));

-- Location: LCCOMB_X46_Y1_N12
\tRef|LUA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|LUA|Add1~10_combout\ = (\tRef|LUA|s_cont\(6) & ((\FSM|ud~combout\ & (!\tRef|LUA|Add1~9\)) # (!\FSM|ud~combout\ & (\tRef|LUA|Add1~9\ & VCC)))) # (!\tRef|LUA|s_cont\(6) & ((\FSM|ud~combout\ & ((\tRef|LUA|Add1~9\) # (GND))) # (!\FSM|ud~combout\ & 
-- (!\tRef|LUA|Add1~9\))))
-- \tRef|LUA|Add1~11\ = CARRY((\tRef|LUA|s_cont\(6) & (\FSM|ud~combout\ & !\tRef|LUA|Add1~9\)) # (!\tRef|LUA|s_cont\(6) & ((\FSM|ud~combout\) # (!\tRef|LUA|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|LUA|s_cont\(6),
	datab => \FSM|ud~combout\,
	datad => VCC,
	cin => \tRef|LUA|Add1~9\,
	combout => \tRef|LUA|Add1~10_combout\,
	cout => \tRef|LUA|Add1~11\);

-- Location: FF_X46_Y1_N13
\tRef|LUA|s_cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|LUA|Add1~10_combout\,
	ena => \FSM|eL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|LUA|s_cont\(6));

-- Location: LCCOMB_X46_Y1_N14
\tRef|LUA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|LUA|Add1~12_combout\ = ((\tRef|LUA|s_cont\(7) $ (\FSM|ud~combout\ $ (!\tRef|LUA|Add1~11\)))) # (GND)
-- \tRef|LUA|Add1~13\ = CARRY((\tRef|LUA|s_cont\(7) & (!\FSM|ud~combout\ & !\tRef|LUA|Add1~11\)) # (!\tRef|LUA|s_cont\(7) & ((!\tRef|LUA|Add1~11\) # (!\FSM|ud~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|LUA|s_cont\(7),
	datab => \FSM|ud~combout\,
	datad => VCC,
	cin => \tRef|LUA|Add1~11\,
	combout => \tRef|LUA|Add1~12_combout\,
	cout => \tRef|LUA|Add1~13\);

-- Location: LCCOMB_X46_Y1_N30
\tRef|LUA|s_cont[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|LUA|s_cont[7]~0_combout\ = !\tRef|LUA|Add1~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tRef|LUA|Add1~12_combout\,
	combout => \tRef|LUA|s_cont[7]~0_combout\);

-- Location: FF_X46_Y1_N31
\tRef|LUA|s_cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|LUA|s_cont[7]~0_combout\,
	ena => \FSM|eL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|LUA|s_cont\(7));

-- Location: LCCOMB_X46_Y1_N16
\tRef|LUA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|LUA|Add1~14_combout\ = \FSM|ud~combout\ $ (\tRef|LUA|Add1~13\ $ (!\tRef|LUA|s_cont\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ud~combout\,
	datad => \tRef|LUA|s_cont\(8),
	cin => \tRef|LUA|Add1~13\,
	combout => \tRef|LUA|Add1~14_combout\);

-- Location: FF_X46_Y1_N17
\tRef|LUA|s_cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|LUA|Add1~14_combout\,
	ena => \FSM|eL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|LUA|s_cont\(8));

-- Location: LCCOMB_X47_Y1_N8
\tRef|GEL|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|GEL|Add1~0_combout\ = \tRef|GEL|s_cont\(1) $ (VCC)
-- \tRef|GEL|Add1~1\ = CARRY(\tRef|GEL|s_cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tRef|GEL|s_cont\(1),
	datad => VCC,
	combout => \tRef|GEL|Add1~0_combout\,
	cout => \tRef|GEL|Add1~1\);

-- Location: LCCOMB_X47_Y1_N6
\FSM|eG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|eG~0_combout\ = (\FSM|pS.GEL~q\ & ((\dw~input_o\) # (\up~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|pS.GEL~q\,
	datac => \dw~input_o\,
	datad => \up~input_o\,
	combout => \FSM|eG~0_combout\);

-- Location: FF_X47_Y1_N9
\tRef|GEL|s_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|GEL|Add1~0_combout\,
	ena => \FSM|eG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|GEL|s_cont\(1));

-- Location: LCCOMB_X47_Y1_N10
\tRef|GEL|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|GEL|Add1~2_combout\ = (\tRef|GEL|s_cont\(2) & ((\FSM|ud~combout\ & (!\tRef|GEL|Add1~1\)) # (!\FSM|ud~combout\ & (\tRef|GEL|Add1~1\ & VCC)))) # (!\tRef|GEL|s_cont\(2) & ((\FSM|ud~combout\ & ((\tRef|GEL|Add1~1\) # (GND))) # (!\FSM|ud~combout\ & 
-- (!\tRef|GEL|Add1~1\))))
-- \tRef|GEL|Add1~3\ = CARRY((\tRef|GEL|s_cont\(2) & (\FSM|ud~combout\ & !\tRef|GEL|Add1~1\)) # (!\tRef|GEL|s_cont\(2) & ((\FSM|ud~combout\) # (!\tRef|GEL|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|GEL|s_cont\(2),
	datab => \FSM|ud~combout\,
	datad => VCC,
	cin => \tRef|GEL|Add1~1\,
	combout => \tRef|GEL|Add1~2_combout\,
	cout => \tRef|GEL|Add1~3\);

-- Location: FF_X47_Y1_N11
\tRef|GEL|s_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|GEL|Add1~2_combout\,
	ena => \FSM|eG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|GEL|s_cont\(2));

-- Location: LCCOMB_X47_Y1_N12
\tRef|GEL|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|GEL|Add1~4_combout\ = ((\FSM|ud~combout\ $ (\tRef|GEL|s_cont\(3) $ (\tRef|GEL|Add1~3\)))) # (GND)
-- \tRef|GEL|Add1~5\ = CARRY((\FSM|ud~combout\ & ((!\tRef|GEL|Add1~3\) # (!\tRef|GEL|s_cont\(3)))) # (!\FSM|ud~combout\ & (!\tRef|GEL|s_cont\(3) & !\tRef|GEL|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ud~combout\,
	datab => \tRef|GEL|s_cont\(3),
	datad => VCC,
	cin => \tRef|GEL|Add1~3\,
	combout => \tRef|GEL|Add1~4_combout\,
	cout => \tRef|GEL|Add1~5\);

-- Location: LCCOMB_X47_Y1_N2
\tRef|GEL|s_cont[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|GEL|s_cont[3]~1_combout\ = !\tRef|GEL|Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tRef|GEL|Add1~4_combout\,
	combout => \tRef|GEL|s_cont[3]~1_combout\);

-- Location: FF_X47_Y1_N3
\tRef|GEL|s_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|GEL|s_cont[3]~1_combout\,
	ena => \FSM|eG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|GEL|s_cont\(3));

-- Location: LCCOMB_X47_Y1_N14
\tRef|GEL|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|GEL|Add1~6_combout\ = (\FSM|ud~combout\ & ((\tRef|GEL|s_cont\(4) & (!\tRef|GEL|Add1~5\)) # (!\tRef|GEL|s_cont\(4) & ((\tRef|GEL|Add1~5\) # (GND))))) # (!\FSM|ud~combout\ & ((\tRef|GEL|s_cont\(4) & (\tRef|GEL|Add1~5\ & VCC)) # (!\tRef|GEL|s_cont\(4) 
-- & (!\tRef|GEL|Add1~5\))))
-- \tRef|GEL|Add1~7\ = CARRY((\FSM|ud~combout\ & ((!\tRef|GEL|Add1~5\) # (!\tRef|GEL|s_cont\(4)))) # (!\FSM|ud~combout\ & (!\tRef|GEL|s_cont\(4) & !\tRef|GEL|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ud~combout\,
	datab => \tRef|GEL|s_cont\(4),
	datad => VCC,
	cin => \tRef|GEL|Add1~5\,
	combout => \tRef|GEL|Add1~6_combout\,
	cout => \tRef|GEL|Add1~7\);

-- Location: FF_X47_Y1_N15
\tRef|GEL|s_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|GEL|Add1~6_combout\,
	ena => \FSM|eG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|GEL|s_cont\(4));

-- Location: LCCOMB_X47_Y1_N16
\tRef|GEL|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|GEL|Add1~8_combout\ = ((\FSM|ud~combout\ $ (\tRef|GEL|s_cont\(5) $ (!\tRef|GEL|Add1~7\)))) # (GND)
-- \tRef|GEL|Add1~9\ = CARRY((\FSM|ud~combout\ & (!\tRef|GEL|s_cont\(5) & !\tRef|GEL|Add1~7\)) # (!\FSM|ud~combout\ & ((!\tRef|GEL|Add1~7\) # (!\tRef|GEL|s_cont\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ud~combout\,
	datab => \tRef|GEL|s_cont\(5),
	datad => VCC,
	cin => \tRef|GEL|Add1~7\,
	combout => \tRef|GEL|Add1~8_combout\,
	cout => \tRef|GEL|Add1~9\);

-- Location: LCCOMB_X47_Y1_N4
\tRef|GEL|s_cont[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|GEL|s_cont[5]~0_combout\ = !\tRef|GEL|Add1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tRef|GEL|Add1~8_combout\,
	combout => \tRef|GEL|s_cont[5]~0_combout\);

-- Location: FF_X47_Y1_N5
\tRef|GEL|s_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|GEL|s_cont[5]~0_combout\,
	ena => \FSM|eG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|GEL|s_cont\(5));

-- Location: LCCOMB_X47_Y1_N18
\tRef|GEL|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|GEL|Add1~10_combout\ = (\FSM|ud~combout\ & ((\tRef|GEL|s_cont\(6) & (!\tRef|GEL|Add1~9\)) # (!\tRef|GEL|s_cont\(6) & ((\tRef|GEL|Add1~9\) # (GND))))) # (!\FSM|ud~combout\ & ((\tRef|GEL|s_cont\(6) & (\tRef|GEL|Add1~9\ & VCC)) # (!\tRef|GEL|s_cont\(6) 
-- & (!\tRef|GEL|Add1~9\))))
-- \tRef|GEL|Add1~11\ = CARRY((\FSM|ud~combout\ & ((!\tRef|GEL|Add1~9\) # (!\tRef|GEL|s_cont\(6)))) # (!\FSM|ud~combout\ & (!\tRef|GEL|s_cont\(6) & !\tRef|GEL|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ud~combout\,
	datab => \tRef|GEL|s_cont\(6),
	datad => VCC,
	cin => \tRef|GEL|Add1~9\,
	combout => \tRef|GEL|Add1~10_combout\,
	cout => \tRef|GEL|Add1~11\);

-- Location: FF_X47_Y1_N19
\tRef|GEL|s_cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|GEL|Add1~10_combout\,
	ena => \FSM|eG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|GEL|s_cont\(6));

-- Location: LCCOMB_X47_Y1_N20
\tRef|GEL|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|GEL|Add1~12_combout\ = ((\FSM|ud~combout\ $ (\tRef|GEL|s_cont\(7) $ (\tRef|GEL|Add1~11\)))) # (GND)
-- \tRef|GEL|Add1~13\ = CARRY((\FSM|ud~combout\ & (\tRef|GEL|s_cont\(7) & !\tRef|GEL|Add1~11\)) # (!\FSM|ud~combout\ & ((\tRef|GEL|s_cont\(7)) # (!\tRef|GEL|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ud~combout\,
	datab => \tRef|GEL|s_cont\(7),
	datad => VCC,
	cin => \tRef|GEL|Add1~11\,
	combout => \tRef|GEL|Add1~12_combout\,
	cout => \tRef|GEL|Add1~13\);

-- Location: FF_X47_Y1_N21
\tRef|GEL|s_cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|GEL|Add1~12_combout\,
	ena => \FSM|eG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|GEL|s_cont\(7));

-- Location: LCCOMB_X47_Y1_N22
\tRef|GEL|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|GEL|Add1~14_combout\ = \FSM|ud~combout\ $ (\tRef|GEL|Add1~13\ $ (!\tRef|GEL|s_cont\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ud~combout\,
	datad => \tRef|GEL|s_cont\(8),
	cin => \tRef|GEL|Add1~13\,
	combout => \tRef|GEL|Add1~14_combout\);

-- Location: FF_X47_Y1_N23
\tRef|GEL|s_cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|GEL|Add1~14_combout\,
	ena => \FSM|eG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|GEL|s_cont\(8));

-- Location: LCCOMB_X48_Y1_N26
\tSelect|selecao|tRef[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[8]~1_combout\ = (\tSelect|selecao|tRef[2]~0_combout\ & ((\tSelect|selecao|Equal0~0_combout\ & ((\tRef|GEL|s_cont\(8)))) # (!\tSelect|selecao|Equal0~0_combout\ & (\tRef|LUA|s_cont\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|Equal0~0_combout\,
	datab => \tSelect|selecao|tRef[2]~0_combout\,
	datac => \tRef|LUA|s_cont\(8),
	datad => \tRef|GEL|s_cont\(8),
	combout => \tSelect|selecao|tRef[8]~1_combout\);

-- Location: LCCOMB_X45_Y1_N6
\tRef|SOL|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|SOL|Add1~0_combout\ = \tRef|SOL|s_cont\(1) $ (VCC)
-- \tRef|SOL|Add1~1\ = CARRY(\tRef|SOL|s_cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|SOL|s_cont\(1),
	datad => VCC,
	combout => \tRef|SOL|Add1~0_combout\,
	cout => \tRef|SOL|Add1~1\);

-- Location: LCCOMB_X46_Y1_N28
\FSM|eS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|eS~1_combout\ = (\FSM|pS.SOL~q\ & ((\up~input_o\) # (\dw~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \up~input_o\,
	datac => \FSM|pS.SOL~q\,
	datad => \dw~input_o\,
	combout => \FSM|eS~1_combout\);

-- Location: FF_X45_Y1_N7
\tRef|SOL|s_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|SOL|Add1~0_combout\,
	ena => \FSM|eS~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|SOL|s_cont\(1));

-- Location: LCCOMB_X45_Y1_N8
\tRef|SOL|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|SOL|Add1~2_combout\ = (\tRef|SOL|s_cont\(2) & ((\FSM|ud~combout\ & (!\tRef|SOL|Add1~1\)) # (!\FSM|ud~combout\ & (\tRef|SOL|Add1~1\ & VCC)))) # (!\tRef|SOL|s_cont\(2) & ((\FSM|ud~combout\ & ((\tRef|SOL|Add1~1\) # (GND))) # (!\FSM|ud~combout\ & 
-- (!\tRef|SOL|Add1~1\))))
-- \tRef|SOL|Add1~3\ = CARRY((\tRef|SOL|s_cont\(2) & (\FSM|ud~combout\ & !\tRef|SOL|Add1~1\)) # (!\tRef|SOL|s_cont\(2) & ((\FSM|ud~combout\) # (!\tRef|SOL|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|SOL|s_cont\(2),
	datab => \FSM|ud~combout\,
	datad => VCC,
	cin => \tRef|SOL|Add1~1\,
	combout => \tRef|SOL|Add1~2_combout\,
	cout => \tRef|SOL|Add1~3\);

-- Location: FF_X45_Y1_N9
\tRef|SOL|s_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|SOL|Add1~2_combout\,
	ena => \FSM|eS~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|SOL|s_cont\(2));

-- Location: LCCOMB_X45_Y1_N10
\tRef|SOL|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|SOL|Add1~4_combout\ = ((\tRef|SOL|s_cont\(3) $ (\FSM|ud~combout\ $ (\tRef|SOL|Add1~3\)))) # (GND)
-- \tRef|SOL|Add1~5\ = CARRY((\tRef|SOL|s_cont\(3) & (\FSM|ud~combout\ & !\tRef|SOL|Add1~3\)) # (!\tRef|SOL|s_cont\(3) & ((\FSM|ud~combout\) # (!\tRef|SOL|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|SOL|s_cont\(3),
	datab => \FSM|ud~combout\,
	datad => VCC,
	cin => \tRef|SOL|Add1~3\,
	combout => \tRef|SOL|Add1~4_combout\,
	cout => \tRef|SOL|Add1~5\);

-- Location: LCCOMB_X45_Y1_N22
\tRef|SOL|s_cont[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|SOL|s_cont[3]~2_combout\ = !\tRef|SOL|Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tRef|SOL|Add1~4_combout\,
	combout => \tRef|SOL|s_cont[3]~2_combout\);

-- Location: FF_X45_Y1_N23
\tRef|SOL|s_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|SOL|s_cont[3]~2_combout\,
	ena => \FSM|eS~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|SOL|s_cont\(3));

-- Location: LCCOMB_X45_Y1_N12
\tRef|SOL|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|SOL|Add1~6_combout\ = (\tRef|SOL|s_cont\(4) & ((\FSM|ud~combout\ & (!\tRef|SOL|Add1~5\)) # (!\FSM|ud~combout\ & (\tRef|SOL|Add1~5\ & VCC)))) # (!\tRef|SOL|s_cont\(4) & ((\FSM|ud~combout\ & ((\tRef|SOL|Add1~5\) # (GND))) # (!\FSM|ud~combout\ & 
-- (!\tRef|SOL|Add1~5\))))
-- \tRef|SOL|Add1~7\ = CARRY((\tRef|SOL|s_cont\(4) & (\FSM|ud~combout\ & !\tRef|SOL|Add1~5\)) # (!\tRef|SOL|s_cont\(4) & ((\FSM|ud~combout\) # (!\tRef|SOL|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|SOL|s_cont\(4),
	datab => \FSM|ud~combout\,
	datad => VCC,
	cin => \tRef|SOL|Add1~5\,
	combout => \tRef|SOL|Add1~6_combout\,
	cout => \tRef|SOL|Add1~7\);

-- Location: FF_X45_Y1_N13
\tRef|SOL|s_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|SOL|Add1~6_combout\,
	ena => \FSM|eS~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|SOL|s_cont\(4));

-- Location: LCCOMB_X45_Y1_N14
\tRef|SOL|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|SOL|Add1~8_combout\ = ((\tRef|SOL|s_cont\(5) $ (\FSM|ud~combout\ $ (\tRef|SOL|Add1~7\)))) # (GND)
-- \tRef|SOL|Add1~9\ = CARRY((\tRef|SOL|s_cont\(5) & ((!\tRef|SOL|Add1~7\) # (!\FSM|ud~combout\))) # (!\tRef|SOL|s_cont\(5) & (!\FSM|ud~combout\ & !\tRef|SOL|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|SOL|s_cont\(5),
	datab => \FSM|ud~combout\,
	datad => VCC,
	cin => \tRef|SOL|Add1~7\,
	combout => \tRef|SOL|Add1~8_combout\,
	cout => \tRef|SOL|Add1~9\);

-- Location: FF_X45_Y1_N15
\tRef|SOL|s_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|SOL|Add1~8_combout\,
	ena => \FSM|eS~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|SOL|s_cont\(5));

-- Location: LCCOMB_X45_Y1_N16
\tRef|SOL|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|SOL|Add1~10_combout\ = (\tRef|SOL|s_cont\(6) & ((\FSM|ud~combout\ & ((\tRef|SOL|Add1~9\) # (GND))) # (!\FSM|ud~combout\ & (!\tRef|SOL|Add1~9\)))) # (!\tRef|SOL|s_cont\(6) & ((\FSM|ud~combout\ & (!\tRef|SOL|Add1~9\)) # (!\FSM|ud~combout\ & 
-- (\tRef|SOL|Add1~9\ & VCC))))
-- \tRef|SOL|Add1~11\ = CARRY((\tRef|SOL|s_cont\(6) & ((\FSM|ud~combout\) # (!\tRef|SOL|Add1~9\))) # (!\tRef|SOL|s_cont\(6) & (\FSM|ud~combout\ & !\tRef|SOL|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|SOL|s_cont\(6),
	datab => \FSM|ud~combout\,
	datad => VCC,
	cin => \tRef|SOL|Add1~9\,
	combout => \tRef|SOL|Add1~10_combout\,
	cout => \tRef|SOL|Add1~11\);

-- Location: LCCOMB_X45_Y1_N30
\tRef|SOL|s_cont[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|SOL|s_cont[6]~1_combout\ = !\tRef|SOL|Add1~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tRef|SOL|Add1~10_combout\,
	combout => \tRef|SOL|s_cont[6]~1_combout\);

-- Location: FF_X45_Y1_N31
\tRef|SOL|s_cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|SOL|s_cont[6]~1_combout\,
	ena => \FSM|eS~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|SOL|s_cont\(6));

-- Location: LCCOMB_X45_Y1_N18
\tRef|SOL|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|SOL|Add1~12_combout\ = ((\tRef|SOL|s_cont\(7) $ (\FSM|ud~combout\ $ (!\tRef|SOL|Add1~11\)))) # (GND)
-- \tRef|SOL|Add1~13\ = CARRY((\tRef|SOL|s_cont\(7) & (!\FSM|ud~combout\ & !\tRef|SOL|Add1~11\)) # (!\tRef|SOL|s_cont\(7) & ((!\tRef|SOL|Add1~11\) # (!\FSM|ud~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|SOL|s_cont\(7),
	datab => \FSM|ud~combout\,
	datad => VCC,
	cin => \tRef|SOL|Add1~11\,
	combout => \tRef|SOL|Add1~12_combout\,
	cout => \tRef|SOL|Add1~13\);

-- Location: LCCOMB_X45_Y1_N4
\tRef|SOL|s_cont[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|SOL|s_cont[7]~0_combout\ = !\tRef|SOL|Add1~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tRef|SOL|Add1~12_combout\,
	combout => \tRef|SOL|s_cont[7]~0_combout\);

-- Location: FF_X45_Y1_N5
\tRef|SOL|s_cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|SOL|s_cont[7]~0_combout\,
	ena => \FSM|eS~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|SOL|s_cont\(7));

-- Location: LCCOMB_X45_Y1_N20
\tRef|SOL|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tRef|SOL|Add1~14_combout\ = \FSM|ud~combout\ $ (\tRef|SOL|Add1~13\ $ (!\tRef|SOL|s_cont\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ud~combout\,
	datad => \tRef|SOL|s_cont\(8),
	cin => \tRef|SOL|Add1~13\,
	combout => \tRef|SOL|Add1~14_combout\);

-- Location: FF_X45_Y1_N21
\tRef|SOL|s_cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tRef|SOL|Add1~14_combout\,
	ena => \FSM|eS~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tRef|SOL|s_cont\(8));

-- Location: LCCOMB_X48_Y1_N0
\tSelect|selecao|tRef[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[8]~2_combout\ = (\tSelect|selecao|tRef[8]~1_combout\) # ((!\tSelect|selecao|tRef[2]~0_combout\ & \tRef|SOL|s_cont\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|selecao|tRef[2]~0_combout\,
	datac => \tSelect|selecao|tRef[8]~1_combout\,
	datad => \tRef|SOL|s_cont\(8),
	combout => \tSelect|selecao|tRef[8]~2_combout\);

-- Location: LCCOMB_X47_Y1_N28
\tSelect|selecao|tRef[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[7]~3_combout\ = (\tSelect|selecao|tRef[2]~0_combout\ & ((\tSelect|selecao|Equal0~0_combout\ & (\tRef|GEL|s_cont\(7))) # (!\tSelect|selecao|Equal0~0_combout\ & ((!\tRef|LUA|s_cont\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|Equal0~0_combout\,
	datab => \tRef|GEL|s_cont\(7),
	datac => \tSelect|selecao|tRef[2]~0_combout\,
	datad => \tRef|LUA|s_cont\(7),
	combout => \tSelect|selecao|tRef[7]~3_combout\);

-- Location: LCCOMB_X48_Y1_N14
\tSelect|selecao|tRef[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[7]~4_combout\ = (\tSelect|selecao|tRef[7]~3_combout\) # ((!\tSelect|selecao|tRef[2]~0_combout\ & !\tRef|SOL|s_cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|selecao|tRef[2]~0_combout\,
	datac => \tRef|SOL|s_cont\(7),
	datad => \tSelect|selecao|tRef[7]~3_combout\,
	combout => \tSelect|selecao|tRef[7]~4_combout\);

-- Location: LCCOMB_X49_Y1_N10
\tSelect|selecao|tRef[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[6]~5_combout\ = (\tSelect|selecao|tRef[2]~0_combout\ & ((\tSelect|selecao|Equal0~0_combout\ & ((\tRef|GEL|s_cont\(6)))) # (!\tSelect|selecao|Equal0~0_combout\ & (\tRef|LUA|s_cont\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[2]~0_combout\,
	datab => \tSelect|selecao|Equal0~0_combout\,
	datac => \tRef|LUA|s_cont\(6),
	datad => \tRef|GEL|s_cont\(6),
	combout => \tSelect|selecao|tRef[6]~5_combout\);

-- Location: LCCOMB_X49_Y1_N12
\tSelect|selecao|tRef[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[6]~6_combout\ = (\tSelect|selecao|tRef[6]~5_combout\) # ((!\tSelect|selecao|tRef[2]~0_combout\ & !\tRef|SOL|s_cont\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[2]~0_combout\,
	datac => \tRef|SOL|s_cont\(6),
	datad => \tSelect|selecao|tRef[6]~5_combout\,
	combout => \tSelect|selecao|tRef[6]~6_combout\);

-- Location: LCCOMB_X49_Y1_N6
\tSelect|selecao|tRef[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[5]~7_combout\ = (\tSelect|selecao|tRef[2]~0_combout\ & ((\tSelect|selecao|Equal0~0_combout\ & ((!\tRef|GEL|s_cont\(5)))) # (!\tSelect|selecao|Equal0~0_combout\ & (!\tRef|LUA|s_cont\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[2]~0_combout\,
	datab => \tSelect|selecao|Equal0~0_combout\,
	datac => \tRef|LUA|s_cont\(5),
	datad => \tRef|GEL|s_cont\(5),
	combout => \tSelect|selecao|tRef[5]~7_combout\);

-- Location: LCCOMB_X49_Y1_N8
\tSelect|selecao|tRef[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[5]~8_combout\ = (\tSelect|selecao|tRef[5]~7_combout\) # ((!\tSelect|selecao|tRef[2]~0_combout\ & \tRef|SOL|s_cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[2]~0_combout\,
	datac => \tRef|SOL|s_cont\(5),
	datad => \tSelect|selecao|tRef[5]~7_combout\,
	combout => \tSelect|selecao|tRef[5]~8_combout\);

-- Location: LCCOMB_X49_Y1_N2
\tSelect|selecao|tRef[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[4]~9_combout\ = (\tSelect|selecao|tRef[2]~0_combout\ & ((\tSelect|selecao|Equal0~0_combout\ & (\tRef|GEL|s_cont\(4))) # (!\tSelect|selecao|Equal0~0_combout\ & ((\tRef|LUA|s_cont\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[2]~0_combout\,
	datab => \tSelect|selecao|Equal0~0_combout\,
	datac => \tRef|GEL|s_cont\(4),
	datad => \tRef|LUA|s_cont\(4),
	combout => \tSelect|selecao|tRef[4]~9_combout\);

-- Location: LCCOMB_X49_Y1_N0
\tSelect|selecao|tRef[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[4]~10_combout\ = (\tSelect|selecao|tRef[4]~9_combout\) # ((!\tSelect|selecao|tRef[2]~0_combout\ & \tRef|SOL|s_cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[2]~0_combout\,
	datac => \tRef|SOL|s_cont\(4),
	datad => \tSelect|selecao|tRef[4]~9_combout\,
	combout => \tSelect|selecao|tRef[4]~10_combout\);

-- Location: LCCOMB_X47_Y1_N26
\tSelect|selecao|tRef[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[3]~11_combout\ = (!\tRef|GEL|s_cont\(3) & (((\horaROM[3]~input_o\) # (!\ROM|Mux1~0_combout\)) # (!\ROM|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux0~0_combout\,
	datab => \horaROM[3]~input_o\,
	datac => \ROM|Mux1~0_combout\,
	datad => \tRef|GEL|s_cont\(3),
	combout => \tSelect|selecao|tRef[3]~11_combout\);

-- Location: LCCOMB_X46_Y1_N18
\tSelect|selecao|tRef[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[3]~12_combout\ = (!\horaROM[3]~input_o\ & (\ROM|Mux0~0_combout\ & (\ROM|Mux1~0_combout\ & \tRef|LUA|s_cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaROM[3]~input_o\,
	datab => \ROM|Mux0~0_combout\,
	datac => \ROM|Mux1~0_combout\,
	datad => \tRef|LUA|s_cont\(3),
	combout => \tSelect|selecao|tRef[3]~12_combout\);

-- Location: LCCOMB_X47_Y1_N0
\tSelect|selecao|tRef[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[3]~13_combout\ = (\tSelect|selecao|tRef[2]~0_combout\ & (((\tSelect|selecao|tRef[3]~11_combout\) # (\tSelect|selecao|tRef[3]~12_combout\)))) # (!\tSelect|selecao|tRef[2]~0_combout\ & (!\tRef|SOL|s_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|SOL|s_cont\(3),
	datab => \tSelect|selecao|tRef[2]~0_combout\,
	datac => \tSelect|selecao|tRef[3]~11_combout\,
	datad => \tSelect|selecao|tRef[3]~12_combout\,
	combout => \tSelect|selecao|tRef[3]~13_combout\);

-- Location: LCCOMB_X48_Y1_N8
\tSelect|selecao|tRef[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[2]~14_combout\ = (\tRef|GEL|s_cont\(2) & (((\horaROM[3]~input_o\) # (!\ROM|Mux0~0_combout\)) # (!\ROM|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux1~0_combout\,
	datab => \ROM|Mux0~0_combout\,
	datac => \horaROM[3]~input_o\,
	datad => \tRef|GEL|s_cont\(2),
	combout => \tSelect|selecao|tRef[2]~14_combout\);

-- Location: LCCOMB_X47_Y1_N30
\tSelect|selecao|tRef[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[2]~15_combout\ = (\ROM|Mux1~0_combout\ & (!\horaROM[3]~input_o\ & (\tRef|LUA|s_cont\(2) & \ROM|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|Mux1~0_combout\,
	datab => \horaROM[3]~input_o\,
	datac => \tRef|LUA|s_cont\(2),
	datad => \ROM|Mux0~0_combout\,
	combout => \tSelect|selecao|tRef[2]~15_combout\);

-- Location: LCCOMB_X48_Y1_N6
\tSelect|selecao|tRef[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[2]~16_combout\ = (\tSelect|selecao|tRef[2]~0_combout\ & (((\tSelect|selecao|tRef[2]~14_combout\) # (\tSelect|selecao|tRef[2]~15_combout\)))) # (!\tSelect|selecao|tRef[2]~0_combout\ & (\tRef|SOL|s_cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[2]~0_combout\,
	datab => \tRef|SOL|s_cont\(2),
	datac => \tSelect|selecao|tRef[2]~14_combout\,
	datad => \tSelect|selecao|tRef[2]~15_combout\,
	combout => \tSelect|selecao|tRef[2]~16_combout\);

-- Location: LCCOMB_X49_Y1_N14
\tSelect|control|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add0~1_cout\ = CARRY(\tSelect|selecao|tRef[2]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|selecao|tRef[2]~16_combout\,
	datad => VCC,
	cout => \tSelect|control|Add0~1_cout\);

-- Location: LCCOMB_X49_Y1_N16
\tSelect|control|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add0~2_combout\ = (\tSelect|selecao|tRef[3]~13_combout\ & (\tSelect|control|Add0~1_cout\ & VCC)) # (!\tSelect|selecao|tRef[3]~13_combout\ & (!\tSelect|control|Add0~1_cout\))
-- \tSelect|control|Add0~3\ = CARRY((!\tSelect|selecao|tRef[3]~13_combout\ & !\tSelect|control|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|selecao|tRef[3]~13_combout\,
	datad => VCC,
	cin => \tSelect|control|Add0~1_cout\,
	combout => \tSelect|control|Add0~2_combout\,
	cout => \tSelect|control|Add0~3\);

-- Location: LCCOMB_X49_Y1_N18
\tSelect|control|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add0~4_combout\ = (\tSelect|selecao|tRef[4]~10_combout\ & (\tSelect|control|Add0~3\ $ (GND))) # (!\tSelect|selecao|tRef[4]~10_combout\ & (!\tSelect|control|Add0~3\ & VCC))
-- \tSelect|control|Add0~5\ = CARRY((\tSelect|selecao|tRef[4]~10_combout\ & !\tSelect|control|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|selecao|tRef[4]~10_combout\,
	datad => VCC,
	cin => \tSelect|control|Add0~3\,
	combout => \tSelect|control|Add0~4_combout\,
	cout => \tSelect|control|Add0~5\);

-- Location: LCCOMB_X49_Y1_N20
\tSelect|control|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add0~6_combout\ = (\tSelect|selecao|tRef[5]~8_combout\ & (\tSelect|control|Add0~5\ & VCC)) # (!\tSelect|selecao|tRef[5]~8_combout\ & (!\tSelect|control|Add0~5\))
-- \tSelect|control|Add0~7\ = CARRY((!\tSelect|selecao|tRef[5]~8_combout\ & !\tSelect|control|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|selecao|tRef[5]~8_combout\,
	datad => VCC,
	cin => \tSelect|control|Add0~5\,
	combout => \tSelect|control|Add0~6_combout\,
	cout => \tSelect|control|Add0~7\);

-- Location: LCCOMB_X49_Y1_N22
\tSelect|control|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add0~8_combout\ = (\tSelect|selecao|tRef[6]~6_combout\ & ((GND) # (!\tSelect|control|Add0~7\))) # (!\tSelect|selecao|tRef[6]~6_combout\ & (\tSelect|control|Add0~7\ $ (GND)))
-- \tSelect|control|Add0~9\ = CARRY((\tSelect|selecao|tRef[6]~6_combout\) # (!\tSelect|control|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[6]~6_combout\,
	datad => VCC,
	cin => \tSelect|control|Add0~7\,
	combout => \tSelect|control|Add0~8_combout\,
	cout => \tSelect|control|Add0~9\);

-- Location: LCCOMB_X49_Y1_N24
\tSelect|control|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add0~10_combout\ = (\tSelect|selecao|tRef[7]~4_combout\ & (\tSelect|control|Add0~9\ & VCC)) # (!\tSelect|selecao|tRef[7]~4_combout\ & (!\tSelect|control|Add0~9\))
-- \tSelect|control|Add0~11\ = CARRY((!\tSelect|selecao|tRef[7]~4_combout\ & !\tSelect|control|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[7]~4_combout\,
	datad => VCC,
	cin => \tSelect|control|Add0~9\,
	combout => \tSelect|control|Add0~10_combout\,
	cout => \tSelect|control|Add0~11\);

-- Location: LCCOMB_X49_Y1_N26
\tSelect|control|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add0~12_combout\ = (\tSelect|selecao|tRef[8]~2_combout\ & ((GND) # (!\tSelect|control|Add0~11\))) # (!\tSelect|selecao|tRef[8]~2_combout\ & (\tSelect|control|Add0~11\ $ (GND)))
-- \tSelect|control|Add0~13\ = CARRY((\tSelect|selecao|tRef[8]~2_combout\) # (!\tSelect|control|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[8]~2_combout\,
	datad => VCC,
	cin => \tSelect|control|Add0~11\,
	combout => \tSelect|control|Add0~12_combout\,
	cout => \tSelect|control|Add0~13\);

-- Location: LCCOMB_X49_Y1_N28
\tSelect|control|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add0~14_combout\ = !\tSelect|control|Add0~13\
-- \tSelect|control|Add0~15\ = CARRY(!\tSelect|control|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \tSelect|control|Add0~13\,
	combout => \tSelect|control|Add0~14_combout\,
	cout => \tSelect|control|Add0~15\);

-- Location: LCCOMB_X49_Y1_N30
\tSelect|control|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add0~16_combout\ = \tSelect|control|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \tSelect|control|Add0~15\,
	combout => \tSelect|control|Add0~16_combout\);

-- Location: LCCOMB_X50_Y1_N12
\tSelect|cont9|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add0~0_combout\ = \tSelect|cont9|s_cont\(0) $ (VCC)
-- \tSelect|cont9|Add0~1\ = CARRY(\tSelect|cont9|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|cont9|s_cont\(0),
	datad => VCC,
	combout => \tSelect|cont9|Add0~0_combout\,
	cout => \tSelect|cont9|Add0~1\);

-- Location: LCCOMB_X50_Y2_N8
\tSelect|cont9|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add1~0_combout\ = \tSelect|cont9|s_cont\(0) $ (VCC)
-- \tSelect|cont9|Add1~1\ = CARRY(\tSelect|cont9|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|cont9|s_cont\(0),
	datad => VCC,
	combout => \tSelect|cont9|Add1~0_combout\,
	cout => \tSelect|cont9|Add1~1\);

-- Location: LCCOMB_X50_Y1_N0
\tSelect|cont9|s_cont~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|s_cont~11_combout\ = (\tSelect|cont9|Add0~0_combout\ & (((\tSelect|cont9|Add1~0_combout\ & \tSelect|cont9|s_cont~2_combout\)) # (!\tSelect|control|controlOut~q\))) # (!\tSelect|cont9|Add0~0_combout\ & (\tSelect|cont9|Add1~0_combout\ & 
-- (\tSelect|cont9|s_cont~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|Add0~0_combout\,
	datab => \tSelect|cont9|Add1~0_combout\,
	datac => \tSelect|cont9|s_cont~2_combout\,
	datad => \tSelect|control|controlOut~q\,
	combout => \tSelect|cont9|s_cont~11_combout\);

-- Location: IOIBUF_X52_Y0_N8
\pulso~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso,
	o => \pulso~input_o\);

-- Location: FF_X50_Y1_N1
\tSelect|cont9|s_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tSelect|cont9|s_cont~11_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tSelect|cont9|s_cont\(0));

-- Location: LCCOMB_X50_Y2_N10
\tSelect|cont9|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add1~2_combout\ = (\tSelect|cont9|s_cont\(1) & (!\tSelect|cont9|Add1~1\)) # (!\tSelect|cont9|s_cont\(1) & ((\tSelect|cont9|Add1~1\) # (GND)))
-- \tSelect|cont9|Add1~3\ = CARRY((!\tSelect|cont9|Add1~1\) # (!\tSelect|cont9|s_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(1),
	datad => VCC,
	cin => \tSelect|cont9|Add1~1\,
	combout => \tSelect|cont9|Add1~2_combout\,
	cout => \tSelect|cont9|Add1~3\);

-- Location: LCCOMB_X50_Y1_N14
\tSelect|cont9|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add0~2_combout\ = (\tSelect|cont9|s_cont\(1) & (\tSelect|cont9|Add0~1\ & VCC)) # (!\tSelect|cont9|s_cont\(1) & (!\tSelect|cont9|Add0~1\))
-- \tSelect|cont9|Add0~3\ = CARRY((!\tSelect|cont9|s_cont\(1) & !\tSelect|cont9|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(1),
	datad => VCC,
	cin => \tSelect|cont9|Add0~1\,
	combout => \tSelect|cont9|Add0~2_combout\,
	cout => \tSelect|cont9|Add0~3\);

-- Location: LCCOMB_X50_Y1_N10
\tSelect|cont9|s_cont~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|s_cont~10_combout\ = (\tSelect|cont9|Add1~2_combout\ & ((\tSelect|cont9|s_cont~2_combout\) # ((\tSelect|cont9|Add0~2_combout\ & !\tSelect|control|controlOut~q\)))) # (!\tSelect|cont9|Add1~2_combout\ & (\tSelect|cont9|Add0~2_combout\ & 
-- ((!\tSelect|control|controlOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|Add1~2_combout\,
	datab => \tSelect|cont9|Add0~2_combout\,
	datac => \tSelect|cont9|s_cont~2_combout\,
	datad => \tSelect|control|controlOut~q\,
	combout => \tSelect|cont9|s_cont~10_combout\);

-- Location: FF_X50_Y1_N11
\tSelect|cont9|s_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tSelect|cont9|s_cont~10_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tSelect|cont9|s_cont\(1));

-- Location: LCCOMB_X50_Y2_N12
\tSelect|cont9|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add1~4_combout\ = (\tSelect|cont9|s_cont\(2) & (\tSelect|cont9|Add1~3\ $ (GND))) # (!\tSelect|cont9|s_cont\(2) & (!\tSelect|cont9|Add1~3\ & VCC))
-- \tSelect|cont9|Add1~5\ = CARRY((\tSelect|cont9|s_cont\(2) & !\tSelect|cont9|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|cont9|s_cont\(2),
	datad => VCC,
	cin => \tSelect|cont9|Add1~3\,
	combout => \tSelect|cont9|Add1~4_combout\,
	cout => \tSelect|cont9|Add1~5\);

-- Location: LCCOMB_X50_Y1_N16
\tSelect|cont9|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add0~4_combout\ = (\tSelect|cont9|s_cont\(2) & ((GND) # (!\tSelect|cont9|Add0~3\))) # (!\tSelect|cont9|s_cont\(2) & (\tSelect|cont9|Add0~3\ $ (GND)))
-- \tSelect|cont9|Add0~5\ = CARRY((\tSelect|cont9|s_cont\(2)) # (!\tSelect|cont9|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|cont9|s_cont\(2),
	datad => VCC,
	cin => \tSelect|cont9|Add0~3\,
	combout => \tSelect|cont9|Add0~4_combout\,
	cout => \tSelect|cont9|Add0~5\);

-- Location: LCCOMB_X50_Y1_N2
\tSelect|cont9|s_cont~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|s_cont~9_combout\ = (\tSelect|cont9|Add1~4_combout\ & ((\tSelect|cont9|s_cont~2_combout\) # ((\tSelect|cont9|Add0~4_combout\ & !\tSelect|control|controlOut~q\)))) # (!\tSelect|cont9|Add1~4_combout\ & (\tSelect|cont9|Add0~4_combout\ & 
-- ((!\tSelect|control|controlOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|Add1~4_combout\,
	datab => \tSelect|cont9|Add0~4_combout\,
	datac => \tSelect|cont9|s_cont~2_combout\,
	datad => \tSelect|control|controlOut~q\,
	combout => \tSelect|cont9|s_cont~9_combout\);

-- Location: FF_X50_Y1_N3
\tSelect|cont9|s_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tSelect|cont9|s_cont~9_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tSelect|cont9|s_cont\(2));

-- Location: LCCOMB_X50_Y1_N18
\tSelect|cont9|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add0~6_combout\ = (\tSelect|cont9|s_cont\(3) & (\tSelect|cont9|Add0~5\ & VCC)) # (!\tSelect|cont9|s_cont\(3) & (!\tSelect|cont9|Add0~5\))
-- \tSelect|cont9|Add0~7\ = CARRY((!\tSelect|cont9|s_cont\(3) & !\tSelect|cont9|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|cont9|s_cont\(3),
	datad => VCC,
	cin => \tSelect|cont9|Add0~5\,
	combout => \tSelect|cont9|Add0~6_combout\,
	cout => \tSelect|cont9|Add0~7\);

-- Location: LCCOMB_X50_Y2_N14
\tSelect|cont9|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add1~6_combout\ = (\tSelect|cont9|s_cont\(3) & (!\tSelect|cont9|Add1~5\)) # (!\tSelect|cont9|s_cont\(3) & ((\tSelect|cont9|Add1~5\) # (GND)))
-- \tSelect|cont9|Add1~7\ = CARRY((!\tSelect|cont9|Add1~5\) # (!\tSelect|cont9|s_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|cont9|s_cont\(3),
	datad => VCC,
	cin => \tSelect|cont9|Add1~5\,
	combout => \tSelect|cont9|Add1~6_combout\,
	cout => \tSelect|cont9|Add1~7\);

-- Location: LCCOMB_X50_Y2_N28
\tSelect|cont9|s_cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|s_cont~8_combout\ = (\tSelect|control|controlOut~q\ & (((\tSelect|cont9|s_cont~2_combout\ & \tSelect|cont9|Add1~6_combout\)))) # (!\tSelect|control|controlOut~q\ & ((\tSelect|cont9|Add0~6_combout\) # ((\tSelect|cont9|s_cont~2_combout\ & 
-- \tSelect|cont9|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|control|controlOut~q\,
	datab => \tSelect|cont9|Add0~6_combout\,
	datac => \tSelect|cont9|s_cont~2_combout\,
	datad => \tSelect|cont9|Add1~6_combout\,
	combout => \tSelect|cont9|s_cont~8_combout\);

-- Location: FF_X50_Y2_N29
\tSelect|cont9|s_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tSelect|cont9|s_cont~8_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tSelect|cont9|s_cont\(3));

-- Location: LCCOMB_X50_Y2_N16
\tSelect|cont9|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add1~8_combout\ = (\tSelect|cont9|s_cont\(4) & (\tSelect|cont9|Add1~7\ $ (GND))) # (!\tSelect|cont9|s_cont\(4) & (!\tSelect|cont9|Add1~7\ & VCC))
-- \tSelect|cont9|Add1~9\ = CARRY((\tSelect|cont9|s_cont\(4) & !\tSelect|cont9|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|cont9|s_cont\(4),
	datad => VCC,
	cin => \tSelect|cont9|Add1~7\,
	combout => \tSelect|cont9|Add1~8_combout\,
	cout => \tSelect|cont9|Add1~9\);

-- Location: LCCOMB_X50_Y1_N20
\tSelect|cont9|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add0~8_combout\ = (\tSelect|cont9|s_cont\(4) & ((GND) # (!\tSelect|cont9|Add0~7\))) # (!\tSelect|cont9|s_cont\(4) & (\tSelect|cont9|Add0~7\ $ (GND)))
-- \tSelect|cont9|Add0~9\ = CARRY((\tSelect|cont9|s_cont\(4)) # (!\tSelect|cont9|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(4),
	datad => VCC,
	cin => \tSelect|cont9|Add0~7\,
	combout => \tSelect|cont9|Add0~8_combout\,
	cout => \tSelect|cont9|Add0~9\);

-- Location: LCCOMB_X50_Y2_N2
\tSelect|cont9|s_cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|s_cont~7_combout\ = (\tSelect|control|controlOut~q\ & (\tSelect|cont9|Add1~8_combout\ & (\tSelect|cont9|s_cont~2_combout\))) # (!\tSelect|control|controlOut~q\ & ((\tSelect|cont9|Add0~8_combout\) # ((\tSelect|cont9|Add1~8_combout\ & 
-- \tSelect|cont9|s_cont~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|control|controlOut~q\,
	datab => \tSelect|cont9|Add1~8_combout\,
	datac => \tSelect|cont9|s_cont~2_combout\,
	datad => \tSelect|cont9|Add0~8_combout\,
	combout => \tSelect|cont9|s_cont~7_combout\);

-- Location: FF_X50_Y2_N3
\tSelect|cont9|s_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tSelect|cont9|s_cont~7_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tSelect|cont9|s_cont\(4));

-- Location: LCCOMB_X49_Y2_N6
\tSelect|cont9|s_cont[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|s_cont[3]~1_combout\ = (\tSelect|cont9|s_cont\(4) & (\tSelect|cont9|s_cont\(7) & (\tSelect|cont9|s_cont\(6) & \tSelect|cont9|s_cont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(4),
	datab => \tSelect|cont9|s_cont\(7),
	datac => \tSelect|cont9|s_cont\(6),
	datad => \tSelect|cont9|s_cont\(5),
	combout => \tSelect|cont9|s_cont[3]~1_combout\);

-- Location: LCCOMB_X49_Y2_N4
\tSelect|cont9|s_cont[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|s_cont[3]~0_combout\ = (\tSelect|cont9|s_cont\(1) & (\tSelect|cont9|s_cont\(2) & (\tSelect|cont9|s_cont\(3) & \tSelect|cont9|s_cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(1),
	datab => \tSelect|cont9|s_cont\(2),
	datac => \tSelect|cont9|s_cont\(3),
	datad => \tSelect|cont9|s_cont\(0),
	combout => \tSelect|cont9|s_cont[3]~0_combout\);

-- Location: LCCOMB_X50_Y2_N30
\tSelect|cont9|s_cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|s_cont~2_combout\ = (\tSelect|control|controlOut~q\ & (((!\tSelect|cont9|s_cont\(8)) # (!\tSelect|cont9|s_cont[3]~0_combout\)) # (!\tSelect|cont9|s_cont[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|control|controlOut~q\,
	datab => \tSelect|cont9|s_cont[3]~1_combout\,
	datac => \tSelect|cont9|s_cont[3]~0_combout\,
	datad => \tSelect|cont9|s_cont\(8),
	combout => \tSelect|cont9|s_cont~2_combout\);

-- Location: LCCOMB_X50_Y1_N22
\tSelect|cont9|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add0~10_combout\ = (\tSelect|cont9|s_cont\(5) & (\tSelect|cont9|Add0~9\ & VCC)) # (!\tSelect|cont9|s_cont\(5) & (!\tSelect|cont9|Add0~9\))
-- \tSelect|cont9|Add0~11\ = CARRY((!\tSelect|cont9|s_cont\(5) & !\tSelect|cont9|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(5),
	datad => VCC,
	cin => \tSelect|cont9|Add0~9\,
	combout => \tSelect|cont9|Add0~10_combout\,
	cout => \tSelect|cont9|Add0~11\);

-- Location: LCCOMB_X50_Y2_N18
\tSelect|cont9|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add1~10_combout\ = (\tSelect|cont9|s_cont\(5) & (!\tSelect|cont9|Add1~9\)) # (!\tSelect|cont9|s_cont\(5) & ((\tSelect|cont9|Add1~9\) # (GND)))
-- \tSelect|cont9|Add1~11\ = CARRY((!\tSelect|cont9|Add1~9\) # (!\tSelect|cont9|s_cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(5),
	datad => VCC,
	cin => \tSelect|cont9|Add1~9\,
	combout => \tSelect|cont9|Add1~10_combout\,
	cout => \tSelect|cont9|Add1~11\);

-- Location: LCCOMB_X50_Y2_N26
\tSelect|cont9|s_cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|s_cont~6_combout\ = (\tSelect|cont9|s_cont~2_combout\ & ((\tSelect|cont9|Add1~10_combout\) # ((\tSelect|cont9|Add0~10_combout\ & !\tSelect|control|controlOut~q\)))) # (!\tSelect|cont9|s_cont~2_combout\ & (\tSelect|cont9|Add0~10_combout\ & 
-- (!\tSelect|control|controlOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont~2_combout\,
	datab => \tSelect|cont9|Add0~10_combout\,
	datac => \tSelect|control|controlOut~q\,
	datad => \tSelect|cont9|Add1~10_combout\,
	combout => \tSelect|cont9|s_cont~6_combout\);

-- Location: FF_X50_Y2_N27
\tSelect|cont9|s_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tSelect|cont9|s_cont~6_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tSelect|cont9|s_cont\(5));

-- Location: LCCOMB_X50_Y1_N24
\tSelect|cont9|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add0~12_combout\ = (\tSelect|cont9|s_cont\(6) & ((GND) # (!\tSelect|cont9|Add0~11\))) # (!\tSelect|cont9|s_cont\(6) & (\tSelect|cont9|Add0~11\ $ (GND)))
-- \tSelect|cont9|Add0~13\ = CARRY((\tSelect|cont9|s_cont\(6)) # (!\tSelect|cont9|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(6),
	datad => VCC,
	cin => \tSelect|cont9|Add0~11\,
	combout => \tSelect|cont9|Add0~12_combout\,
	cout => \tSelect|cont9|Add0~13\);

-- Location: LCCOMB_X50_Y2_N20
\tSelect|cont9|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add1~12_combout\ = (\tSelect|cont9|s_cont\(6) & (\tSelect|cont9|Add1~11\ $ (GND))) # (!\tSelect|cont9|s_cont\(6) & (!\tSelect|cont9|Add1~11\ & VCC))
-- \tSelect|cont9|Add1~13\ = CARRY((\tSelect|cont9|s_cont\(6) & !\tSelect|cont9|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|cont9|s_cont\(6),
	datad => VCC,
	cin => \tSelect|cont9|Add1~11\,
	combout => \tSelect|cont9|Add1~12_combout\,
	cout => \tSelect|cont9|Add1~13\);

-- Location: LCCOMB_X50_Y2_N0
\tSelect|cont9|s_cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|s_cont~5_combout\ = (\tSelect|control|controlOut~q\ & (((\tSelect|cont9|s_cont~2_combout\ & \tSelect|cont9|Add1~12_combout\)))) # (!\tSelect|control|controlOut~q\ & ((\tSelect|cont9|Add0~12_combout\) # ((\tSelect|cont9|s_cont~2_combout\ & 
-- \tSelect|cont9|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|control|controlOut~q\,
	datab => \tSelect|cont9|Add0~12_combout\,
	datac => \tSelect|cont9|s_cont~2_combout\,
	datad => \tSelect|cont9|Add1~12_combout\,
	combout => \tSelect|cont9|s_cont~5_combout\);

-- Location: FF_X50_Y2_N1
\tSelect|cont9|s_cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tSelect|cont9|s_cont~5_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tSelect|cont9|s_cont\(6));

-- Location: LCCOMB_X50_Y2_N22
\tSelect|cont9|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add1~14_combout\ = (\tSelect|cont9|s_cont\(7) & (!\tSelect|cont9|Add1~13\)) # (!\tSelect|cont9|s_cont\(7) & ((\tSelect|cont9|Add1~13\) # (GND)))
-- \tSelect|cont9|Add1~15\ = CARRY((!\tSelect|cont9|Add1~13\) # (!\tSelect|cont9|s_cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(7),
	datad => VCC,
	cin => \tSelect|cont9|Add1~13\,
	combout => \tSelect|cont9|Add1~14_combout\,
	cout => \tSelect|cont9|Add1~15\);

-- Location: LCCOMB_X50_Y1_N26
\tSelect|cont9|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add0~14_combout\ = (\tSelect|cont9|s_cont\(7) & (\tSelect|cont9|Add0~13\ & VCC)) # (!\tSelect|cont9|s_cont\(7) & (!\tSelect|cont9|Add0~13\))
-- \tSelect|cont9|Add0~15\ = CARRY((!\tSelect|cont9|s_cont\(7) & !\tSelect|cont9|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|cont9|s_cont\(7),
	datad => VCC,
	cin => \tSelect|cont9|Add0~13\,
	combout => \tSelect|cont9|Add0~14_combout\,
	cout => \tSelect|cont9|Add0~15\);

-- Location: LCCOMB_X50_Y2_N6
\tSelect|cont9|s_cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|s_cont~4_combout\ = (\tSelect|control|controlOut~q\ & (\tSelect|cont9|Add1~14_combout\ & (\tSelect|cont9|s_cont~2_combout\))) # (!\tSelect|control|controlOut~q\ & ((\tSelect|cont9|Add0~14_combout\) # ((\tSelect|cont9|Add1~14_combout\ & 
-- \tSelect|cont9|s_cont~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|control|controlOut~q\,
	datab => \tSelect|cont9|Add1~14_combout\,
	datac => \tSelect|cont9|s_cont~2_combout\,
	datad => \tSelect|cont9|Add0~14_combout\,
	combout => \tSelect|cont9|s_cont~4_combout\);

-- Location: FF_X50_Y2_N7
\tSelect|cont9|s_cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tSelect|cont9|s_cont~4_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tSelect|cont9|s_cont\(7));

-- Location: LCCOMB_X50_Y2_N24
\tSelect|cont9|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add1~16_combout\ = \tSelect|cont9|s_cont\(8) $ (!\tSelect|cont9|Add1~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|cont9|s_cont\(8),
	cin => \tSelect|cont9|Add1~15\,
	combout => \tSelect|cont9|Add1~16_combout\);

-- Location: LCCOMB_X50_Y1_N28
\tSelect|cont9|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|Add0~16_combout\ = \tSelect|cont9|Add0~15\ $ (\tSelect|cont9|s_cont\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tSelect|cont9|s_cont\(8),
	cin => \tSelect|cont9|Add0~15\,
	combout => \tSelect|cont9|Add0~16_combout\);

-- Location: LCCOMB_X50_Y2_N4
\tSelect|cont9|s_cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|cont9|s_cont~3_combout\ = (\tSelect|control|controlOut~q\ & (\tSelect|cont9|Add1~16_combout\ & (\tSelect|cont9|s_cont~2_combout\))) # (!\tSelect|control|controlOut~q\ & ((\tSelect|cont9|Add0~16_combout\) # ((\tSelect|cont9|Add1~16_combout\ & 
-- \tSelect|cont9|s_cont~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|control|controlOut~q\,
	datab => \tSelect|cont9|Add1~16_combout\,
	datac => \tSelect|cont9|s_cont~2_combout\,
	datad => \tSelect|cont9|Add0~16_combout\,
	combout => \tSelect|cont9|s_cont~3_combout\);

-- Location: FF_X50_Y2_N5
\tSelect|cont9|s_cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tSelect|cont9|s_cont~3_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tSelect|cont9|s_cont\(8));

-- Location: LCCOMB_X47_Y1_N24
\tSelect|selecao|tRef[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[1]~17_combout\ = (\tSelect|selecao|tRef[2]~0_combout\ & ((\tSelect|selecao|Equal0~0_combout\ & (\tRef|GEL|s_cont\(1))) # (!\tSelect|selecao|Equal0~0_combout\ & ((\tRef|LUA|s_cont\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|Equal0~0_combout\,
	datab => \tSelect|selecao|tRef[2]~0_combout\,
	datac => \tRef|GEL|s_cont\(1),
	datad => \tRef|LUA|s_cont\(1),
	combout => \tSelect|selecao|tRef[1]~17_combout\);

-- Location: LCCOMB_X48_Y2_N30
\tSelect|selecao|tRef[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|selecao|tRef[1]~18_combout\ = (\tSelect|selecao|tRef[1]~17_combout\) # ((!\tSelect|selecao|tRef[2]~0_combout\ & \tRef|SOL|s_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[2]~0_combout\,
	datac => \tRef|SOL|s_cont\(1),
	datad => \tSelect|selecao|tRef[1]~17_combout\,
	combout => \tSelect|selecao|tRef[1]~18_combout\);

-- Location: LCCOMB_X49_Y2_N10
\tSelect|control|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan0~1_cout\ = CARRY(\tSelect|cont9|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|cont9|s_cont\(0),
	datad => VCC,
	cout => \tSelect|control|LessThan0~1_cout\);

-- Location: LCCOMB_X49_Y2_N12
\tSelect|control|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan0~3_cout\ = CARRY((\tSelect|cont9|s_cont\(1) & (\tSelect|selecao|tRef[1]~18_combout\ & !\tSelect|control|LessThan0~1_cout\)) # (!\tSelect|cont9|s_cont\(1) & ((\tSelect|selecao|tRef[1]~18_combout\) # 
-- (!\tSelect|control|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(1),
	datab => \tSelect|selecao|tRef[1]~18_combout\,
	datad => VCC,
	cin => \tSelect|control|LessThan0~1_cout\,
	cout => \tSelect|control|LessThan0~3_cout\);

-- Location: LCCOMB_X49_Y2_N14
\tSelect|control|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan0~5_cout\ = CARRY((\tSelect|selecao|tRef[2]~16_combout\ & ((\tSelect|cont9|s_cont\(2)) # (!\tSelect|control|LessThan0~3_cout\))) # (!\tSelect|selecao|tRef[2]~16_combout\ & (\tSelect|cont9|s_cont\(2) & 
-- !\tSelect|control|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[2]~16_combout\,
	datab => \tSelect|cont9|s_cont\(2),
	datad => VCC,
	cin => \tSelect|control|LessThan0~3_cout\,
	cout => \tSelect|control|LessThan0~5_cout\);

-- Location: LCCOMB_X49_Y2_N16
\tSelect|control|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan0~7_cout\ = CARRY((\tSelect|control|Add0~2_combout\ & ((!\tSelect|control|LessThan0~5_cout\) # (!\tSelect|cont9|s_cont\(3)))) # (!\tSelect|control|Add0~2_combout\ & (!\tSelect|cont9|s_cont\(3) & 
-- !\tSelect|control|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|control|Add0~2_combout\,
	datab => \tSelect|cont9|s_cont\(3),
	datad => VCC,
	cin => \tSelect|control|LessThan0~5_cout\,
	cout => \tSelect|control|LessThan0~7_cout\);

-- Location: LCCOMB_X49_Y2_N18
\tSelect|control|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan0~9_cout\ = CARRY((\tSelect|cont9|s_cont\(4) & ((!\tSelect|control|LessThan0~7_cout\) # (!\tSelect|control|Add0~4_combout\))) # (!\tSelect|cont9|s_cont\(4) & (!\tSelect|control|Add0~4_combout\ & 
-- !\tSelect|control|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(4),
	datab => \tSelect|control|Add0~4_combout\,
	datad => VCC,
	cin => \tSelect|control|LessThan0~7_cout\,
	cout => \tSelect|control|LessThan0~9_cout\);

-- Location: LCCOMB_X49_Y2_N20
\tSelect|control|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan0~11_cout\ = CARRY((\tSelect|control|Add0~6_combout\ & ((!\tSelect|control|LessThan0~9_cout\) # (!\tSelect|cont9|s_cont\(5)))) # (!\tSelect|control|Add0~6_combout\ & (!\tSelect|cont9|s_cont\(5) & 
-- !\tSelect|control|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|control|Add0~6_combout\,
	datab => \tSelect|cont9|s_cont\(5),
	datad => VCC,
	cin => \tSelect|control|LessThan0~9_cout\,
	cout => \tSelect|control|LessThan0~11_cout\);

-- Location: LCCOMB_X49_Y2_N22
\tSelect|control|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan0~13_cout\ = CARRY((\tSelect|control|Add0~8_combout\ & (\tSelect|cont9|s_cont\(6) & !\tSelect|control|LessThan0~11_cout\)) # (!\tSelect|control|Add0~8_combout\ & ((\tSelect|cont9|s_cont\(6)) # 
-- (!\tSelect|control|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|control|Add0~8_combout\,
	datab => \tSelect|cont9|s_cont\(6),
	datad => VCC,
	cin => \tSelect|control|LessThan0~11_cout\,
	cout => \tSelect|control|LessThan0~13_cout\);

-- Location: LCCOMB_X49_Y2_N24
\tSelect|control|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan0~15_cout\ = CARRY((\tSelect|control|Add0~10_combout\ & ((!\tSelect|control|LessThan0~13_cout\) # (!\tSelect|cont9|s_cont\(7)))) # (!\tSelect|control|Add0~10_combout\ & (!\tSelect|cont9|s_cont\(7) & 
-- !\tSelect|control|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|control|Add0~10_combout\,
	datab => \tSelect|cont9|s_cont\(7),
	datad => VCC,
	cin => \tSelect|control|LessThan0~13_cout\,
	cout => \tSelect|control|LessThan0~15_cout\);

-- Location: LCCOMB_X49_Y2_N26
\tSelect|control|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan0~16_combout\ = (\tSelect|cont9|s_cont\(8) & ((!\tSelect|control|Add0~12_combout\) # (!\tSelect|control|LessThan0~15_cout\))) # (!\tSelect|cont9|s_cont\(8) & (!\tSelect|control|LessThan0~15_cout\ & 
-- !\tSelect|control|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(8),
	datad => \tSelect|control|Add0~12_combout\,
	cin => \tSelect|control|LessThan0~15_cout\,
	combout => \tSelect|control|LessThan0~16_combout\);

-- Location: LCCOMB_X48_Y2_N16
\tSelect|control|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add1~0_combout\ = (\tSelect|selecao|tRef[3]~13_combout\ & (\tSelect|selecao|tRef[2]~16_combout\ $ (VCC))) # (!\tSelect|selecao|tRef[3]~13_combout\ & (\tSelect|selecao|tRef[2]~16_combout\ & VCC))
-- \tSelect|control|Add1~1\ = CARRY((\tSelect|selecao|tRef[3]~13_combout\ & \tSelect|selecao|tRef[2]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[3]~13_combout\,
	datab => \tSelect|selecao|tRef[2]~16_combout\,
	datad => VCC,
	combout => \tSelect|control|Add1~0_combout\,
	cout => \tSelect|control|Add1~1\);

-- Location: LCCOMB_X48_Y2_N18
\tSelect|control|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add1~2_combout\ = (\tSelect|selecao|tRef[4]~10_combout\ & (\tSelect|control|Add1~1\ & VCC)) # (!\tSelect|selecao|tRef[4]~10_combout\ & (!\tSelect|control|Add1~1\))
-- \tSelect|control|Add1~3\ = CARRY((!\tSelect|selecao|tRef[4]~10_combout\ & !\tSelect|control|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|selecao|tRef[4]~10_combout\,
	datad => VCC,
	cin => \tSelect|control|Add1~1\,
	combout => \tSelect|control|Add1~2_combout\,
	cout => \tSelect|control|Add1~3\);

-- Location: LCCOMB_X48_Y2_N20
\tSelect|control|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add1~4_combout\ = (\tSelect|selecao|tRef[5]~8_combout\ & (\tSelect|control|Add1~3\ $ (GND))) # (!\tSelect|selecao|tRef[5]~8_combout\ & (!\tSelect|control|Add1~3\ & VCC))
-- \tSelect|control|Add1~5\ = CARRY((\tSelect|selecao|tRef[5]~8_combout\ & !\tSelect|control|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[5]~8_combout\,
	datad => VCC,
	cin => \tSelect|control|Add1~3\,
	combout => \tSelect|control|Add1~4_combout\,
	cout => \tSelect|control|Add1~5\);

-- Location: LCCOMB_X48_Y2_N22
\tSelect|control|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add1~6_combout\ = (\tSelect|selecao|tRef[6]~6_combout\ & (!\tSelect|control|Add1~5\)) # (!\tSelect|selecao|tRef[6]~6_combout\ & ((\tSelect|control|Add1~5\) # (GND)))
-- \tSelect|control|Add1~7\ = CARRY((!\tSelect|control|Add1~5\) # (!\tSelect|selecao|tRef[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|selecao|tRef[6]~6_combout\,
	datad => VCC,
	cin => \tSelect|control|Add1~5\,
	combout => \tSelect|control|Add1~6_combout\,
	cout => \tSelect|control|Add1~7\);

-- Location: LCCOMB_X48_Y2_N24
\tSelect|control|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add1~8_combout\ = (\tSelect|selecao|tRef[7]~4_combout\ & (\tSelect|control|Add1~7\ $ (GND))) # (!\tSelect|selecao|tRef[7]~4_combout\ & (!\tSelect|control|Add1~7\ & VCC))
-- \tSelect|control|Add1~9\ = CARRY((\tSelect|selecao|tRef[7]~4_combout\ & !\tSelect|control|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[7]~4_combout\,
	datad => VCC,
	cin => \tSelect|control|Add1~7\,
	combout => \tSelect|control|Add1~8_combout\,
	cout => \tSelect|control|Add1~9\);

-- Location: LCCOMB_X48_Y2_N26
\tSelect|control|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add1~10_combout\ = (\tSelect|selecao|tRef[8]~2_combout\ & (!\tSelect|control|Add1~9\)) # (!\tSelect|selecao|tRef[8]~2_combout\ & ((\tSelect|control|Add1~9\) # (GND)))
-- \tSelect|control|Add1~11\ = CARRY((!\tSelect|control|Add1~9\) # (!\tSelect|selecao|tRef[8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|selecao|tRef[8]~2_combout\,
	datad => VCC,
	cin => \tSelect|control|Add1~9\,
	combout => \tSelect|control|Add1~10_combout\,
	cout => \tSelect|control|Add1~11\);

-- Location: LCCOMB_X48_Y2_N28
\tSelect|control|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|Add1~12_combout\ = !\tSelect|control|Add1~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \tSelect|control|Add1~11\,
	combout => \tSelect|control|Add1~12_combout\);

-- Location: LCCOMB_X48_Y2_N0
\tSelect|control|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan1~1_cout\ = CARRY((\tSelect|selecao|tRef[1]~18_combout\ & !\tSelect|cont9|s_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|selecao|tRef[1]~18_combout\,
	datab => \tSelect|cont9|s_cont\(1),
	datad => VCC,
	cout => \tSelect|control|LessThan1~1_cout\);

-- Location: LCCOMB_X48_Y2_N2
\tSelect|control|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan1~3_cout\ = CARRY((\tSelect|cont9|s_cont\(2) & ((\tSelect|selecao|tRef[2]~16_combout\) # (!\tSelect|control|LessThan1~1_cout\))) # (!\tSelect|cont9|s_cont\(2) & (\tSelect|selecao|tRef[2]~16_combout\ & 
-- !\tSelect|control|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(2),
	datab => \tSelect|selecao|tRef[2]~16_combout\,
	datad => VCC,
	cin => \tSelect|control|LessThan1~1_cout\,
	cout => \tSelect|control|LessThan1~3_cout\);

-- Location: LCCOMB_X48_Y2_N4
\tSelect|control|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan1~5_cout\ = CARRY((\tSelect|cont9|s_cont\(3) & (\tSelect|control|Add1~0_combout\ & !\tSelect|control|LessThan1~3_cout\)) # (!\tSelect|cont9|s_cont\(3) & ((\tSelect|control|Add1~0_combout\) # 
-- (!\tSelect|control|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(3),
	datab => \tSelect|control|Add1~0_combout\,
	datad => VCC,
	cin => \tSelect|control|LessThan1~3_cout\,
	cout => \tSelect|control|LessThan1~5_cout\);

-- Location: LCCOMB_X48_Y2_N6
\tSelect|control|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan1~7_cout\ = CARRY((\tSelect|cont9|s_cont\(4) & ((!\tSelect|control|LessThan1~5_cout\) # (!\tSelect|control|Add1~2_combout\))) # (!\tSelect|cont9|s_cont\(4) & (!\tSelect|control|Add1~2_combout\ & 
-- !\tSelect|control|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(4),
	datab => \tSelect|control|Add1~2_combout\,
	datad => VCC,
	cin => \tSelect|control|LessThan1~5_cout\,
	cout => \tSelect|control|LessThan1~7_cout\);

-- Location: LCCOMB_X48_Y2_N8
\tSelect|control|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan1~9_cout\ = CARRY((\tSelect|cont9|s_cont\(5) & (\tSelect|control|Add1~4_combout\ & !\tSelect|control|LessThan1~7_cout\)) # (!\tSelect|cont9|s_cont\(5) & ((\tSelect|control|Add1~4_combout\) # 
-- (!\tSelect|control|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(5),
	datab => \tSelect|control|Add1~4_combout\,
	datad => VCC,
	cin => \tSelect|control|LessThan1~7_cout\,
	cout => \tSelect|control|LessThan1~9_cout\);

-- Location: LCCOMB_X48_Y2_N10
\tSelect|control|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan1~11_cout\ = CARRY((\tSelect|control|Add1~6_combout\ & (\tSelect|cont9|s_cont\(6) & !\tSelect|control|LessThan1~9_cout\)) # (!\tSelect|control|Add1~6_combout\ & ((\tSelect|cont9|s_cont\(6)) # 
-- (!\tSelect|control|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|control|Add1~6_combout\,
	datab => \tSelect|cont9|s_cont\(6),
	datad => VCC,
	cin => \tSelect|control|LessThan1~9_cout\,
	cout => \tSelect|control|LessThan1~11_cout\);

-- Location: LCCOMB_X48_Y2_N12
\tSelect|control|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan1~13_cout\ = CARRY((\tSelect|cont9|s_cont\(7) & (\tSelect|control|Add1~8_combout\ & !\tSelect|control|LessThan1~11_cout\)) # (!\tSelect|cont9|s_cont\(7) & ((\tSelect|control|Add1~8_combout\) # 
-- (!\tSelect|control|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(7),
	datab => \tSelect|control|Add1~8_combout\,
	datad => VCC,
	cin => \tSelect|control|LessThan1~11_cout\,
	cout => \tSelect|control|LessThan1~13_cout\);

-- Location: LCCOMB_X48_Y2_N14
\tSelect|control|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|LessThan1~14_combout\ = (\tSelect|control|Add1~10_combout\ & ((\tSelect|control|LessThan1~13_cout\) # (!\tSelect|cont9|s_cont\(8)))) # (!\tSelect|control|Add1~10_combout\ & (!\tSelect|cont9|s_cont\(8) & 
-- \tSelect|control|LessThan1~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|control|Add1~10_combout\,
	datab => \tSelect|cont9|s_cont\(8),
	cin => \tSelect|control|LessThan1~13_cout\,
	combout => \tSelect|control|LessThan1~14_combout\);

-- Location: LCCOMB_X49_Y2_N2
\tSelect|control|controlOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|controlOut~0_combout\ = (\tSelect|control|controlOut~q\ & ((\tSelect|control|Add1~12_combout\) # (\tSelect|control|LessThan1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tSelect|control|Add1~12_combout\,
	datac => \tSelect|control|controlOut~q\,
	datad => \tSelect|control|LessThan1~14_combout\,
	combout => \tSelect|control|controlOut~0_combout\);

-- Location: LCCOMB_X49_Y2_N0
\tSelect|control|controlOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tSelect|control|controlOut~1_combout\ = (\tSelect|control|controlOut~0_combout\) # ((!\tSelect|control|Add0~16_combout\ & ((\tSelect|control|Add0~14_combout\) # (!\tSelect|control|LessThan0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|control|Add0~14_combout\,
	datab => \tSelect|control|Add0~16_combout\,
	datac => \tSelect|control|LessThan0~16_combout\,
	datad => \tSelect|control|controlOut~0_combout\,
	combout => \tSelect|control|controlOut~1_combout\);

-- Location: FF_X49_Y2_N1
\tSelect|control|controlOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tSelect|control|controlOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tSelect|control|controlOut~q\);

-- Location: LCCOMB_X47_Y2_N0
\FSM|stOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|stOut~2_combout\ = (\FSM|pS.LUA~q\) # (!\FSM|pS.NORMAL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|pS.LUA~q\,
	datad => \FSM|pS.NORMAL~q\,
	combout => \FSM|stOut~2_combout\);

-- Location: LCCOMB_X48_Y1_N24
\FSM|stOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|stOut~3_combout\ = (\FSM|pS.GEL~q\) # (!\FSM|pS.NORMAL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|pS.NORMAL~q\,
	datad => \FSM|pS.GEL~q\,
	combout => \FSM|stOut~3_combout\);

-- Location: LCCOMB_X48_Y1_N22
\conv|inRefConv|tRef[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[8]~0_combout\ = (\FSM|stOut~2_combout\ & ((\FSM|stOut~3_combout\ & ((\tSelect|cont9|s_cont\(8)))) # (!\FSM|stOut~3_combout\ & (\tRef|LUA|s_cont\(8))))) # (!\FSM|stOut~2_combout\ & (((\FSM|stOut~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|LUA|s_cont\(8),
	datab => \FSM|stOut~2_combout\,
	datac => \tSelect|cont9|s_cont\(8),
	datad => \FSM|stOut~3_combout\,
	combout => \conv|inRefConv|tRef[8]~0_combout\);

-- Location: LCCOMB_X48_Y1_N28
\conv|inRefConv|tRef[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[8]~1_combout\ = (\conv|inRefConv|tRef[8]~0_combout\ & ((\FSM|stOut~2_combout\) # ((\tRef|GEL|s_cont\(8))))) # (!\conv|inRefConv|tRef[8]~0_combout\ & (!\FSM|stOut~2_combout\ & (\tRef|SOL|s_cont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[8]~0_combout\,
	datab => \FSM|stOut~2_combout\,
	datac => \tRef|SOL|s_cont\(8),
	datad => \tRef|GEL|s_cont\(8),
	combout => \conv|inRefConv|tRef[8]~1_combout\);

-- Location: LCCOMB_X46_Y2_N28
\conv|inRefConv|tRef[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[8]~2_combout\ = (\FSM|pS.NORMAL~q\ & (\FSM|pS.LUA~q\ $ (\FSM|pS.GEL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|pS.LUA~q\,
	datac => \FSM|pS.GEL~q\,
	datad => \FSM|pS.NORMAL~q\,
	combout => \conv|inRefConv|tRef[8]~2_combout\);

-- Location: LCCOMB_X48_Y1_N2
\conv|inRefConv|tRef[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[7]~3_combout\ = (\FSM|stOut~2_combout\ & (\tSelect|cont9|s_cont\(7) & ((\FSM|stOut~3_combout\)))) # (!\FSM|stOut~2_combout\ & (((\FSM|stOut~3_combout\) # (!\tRef|SOL|s_cont\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(7),
	datab => \FSM|stOut~2_combout\,
	datac => \tRef|SOL|s_cont\(7),
	datad => \FSM|stOut~3_combout\,
	combout => \conv|inRefConv|tRef[7]~3_combout\);

-- Location: LCCOMB_X47_Y2_N26
\conv|inRefConv|tRef[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[7]~4_combout\ = (\conv|inRefConv|tRef[8]~2_combout\ & ((\conv|inRefConv|tRef[7]~3_combout\ & (\tRef|GEL|s_cont\(7))) # (!\conv|inRefConv|tRef[7]~3_combout\ & ((!\tRef|LUA|s_cont\(7)))))) # (!\conv|inRefConv|tRef[8]~2_combout\ & 
-- (((\conv|inRefConv|tRef[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|GEL|s_cont\(7),
	datab => \conv|inRefConv|tRef[8]~2_combout\,
	datac => \tRef|LUA|s_cont\(7),
	datad => \conv|inRefConv|tRef[7]~3_combout\,
	combout => \conv|inRefConv|tRef[7]~4_combout\);

-- Location: LCCOMB_X50_Y1_N4
\conv|inRefConv|tRef[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[6]~5_combout\ = (\FSM|stOut~3_combout\ & (((\tSelect|cont9|s_cont\(6)) # (!\FSM|stOut~2_combout\)))) # (!\FSM|stOut~3_combout\ & (\tRef|LUA|s_cont\(6) & ((\FSM|stOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|LUA|s_cont\(6),
	datab => \FSM|stOut~3_combout\,
	datac => \tSelect|cont9|s_cont\(6),
	datad => \FSM|stOut~2_combout\,
	combout => \conv|inRefConv|tRef[6]~5_combout\);

-- Location: LCCOMB_X45_Y1_N24
\conv|inRefConv|tRef[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[6]~6_combout\ = (\conv|inRefConv|tRef[6]~5_combout\ & ((\tRef|GEL|s_cont\(6)) # ((\FSM|stOut~2_combout\)))) # (!\conv|inRefConv|tRef[6]~5_combout\ & (((!\tRef|SOL|s_cont\(6) & !\FSM|stOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[6]~5_combout\,
	datab => \tRef|GEL|s_cont\(6),
	datac => \tRef|SOL|s_cont\(6),
	datad => \FSM|stOut~2_combout\,
	combout => \conv|inRefConv|tRef[6]~6_combout\);

-- Location: LCCOMB_X49_Y1_N4
\conv|inRefConv|tRef[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[5]~7_combout\ = (\FSM|stOut~2_combout\ & (\FSM|stOut~3_combout\ & ((\tSelect|cont9|s_cont\(5))))) # (!\FSM|stOut~2_combout\ & ((\FSM|stOut~3_combout\) # ((\tRef|SOL|s_cont\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|stOut~2_combout\,
	datab => \FSM|stOut~3_combout\,
	datac => \tRef|SOL|s_cont\(5),
	datad => \tSelect|cont9|s_cont\(5),
	combout => \conv|inRefConv|tRef[5]~7_combout\);

-- Location: LCCOMB_X45_Y1_N26
\conv|inRefConv|tRef[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[5]~8_combout\ = (\conv|inRefConv|tRef[8]~2_combout\ & ((\conv|inRefConv|tRef[5]~7_combout\ & (!\tRef|GEL|s_cont\(5))) # (!\conv|inRefConv|tRef[5]~7_combout\ & ((!\tRef|LUA|s_cont\(5)))))) # (!\conv|inRefConv|tRef[8]~2_combout\ & 
-- (((\conv|inRefConv|tRef[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|GEL|s_cont\(5),
	datab => \conv|inRefConv|tRef[8]~2_combout\,
	datac => \conv|inRefConv|tRef[5]~7_combout\,
	datad => \tRef|LUA|s_cont\(5),
	combout => \conv|inRefConv|tRef[5]~8_combout\);

-- Location: LCCOMB_X48_Y1_N4
\conv|inRefConv|tRef[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[4]~9_combout\ = (\FSM|stOut~3_combout\ & ((\tSelect|cont9|s_cont\(4)) # ((!\FSM|stOut~2_combout\)))) # (!\FSM|stOut~3_combout\ & (((\tRef|LUA|s_cont\(4) & \FSM|stOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(4),
	datab => \FSM|stOut~3_combout\,
	datac => \tRef|LUA|s_cont\(4),
	datad => \FSM|stOut~2_combout\,
	combout => \conv|inRefConv|tRef[4]~9_combout\);

-- Location: LCCOMB_X45_Y1_N0
\conv|inRefConv|tRef[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[4]~10_combout\ = (\FSM|stOut~2_combout\ & (((\conv|inRefConv|tRef[4]~9_combout\)))) # (!\FSM|stOut~2_combout\ & ((\conv|inRefConv|tRef[4]~9_combout\ & ((\tRef|GEL|s_cont\(4)))) # (!\conv|inRefConv|tRef[4]~9_combout\ & 
-- (\tRef|SOL|s_cont\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|SOL|s_cont\(4),
	datab => \FSM|stOut~2_combout\,
	datac => \conv|inRefConv|tRef[4]~9_combout\,
	datad => \tRef|GEL|s_cont\(4),
	combout => \conv|inRefConv|tRef[4]~10_combout\);

-- Location: LCCOMB_X42_Y3_N4
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\ = \conv|inRefConv|tRef[4]~10_combout\ $ (VCC)
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~1\ = CARRY(\conv|inRefConv|tRef[4]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[4]~10_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~1\);

-- Location: LCCOMB_X42_Y3_N6
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\ = (\conv|inRefConv|tRef[5]~8_combout\ & (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~1\ & VCC)) # (!\conv|inRefConv|tRef[5]~8_combout\ & 
-- (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~1\))
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~3\ = CARRY((!\conv|inRefConv|tRef[5]~8_combout\ & !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv|inRefConv|tRef[5]~8_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~1\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~3\);

-- Location: LCCOMB_X42_Y3_N8
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\ = (\conv|inRefConv|tRef[6]~6_combout\ & ((GND) # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~3\))) # 
-- (!\conv|inRefConv|tRef[6]~6_combout\ & (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~3\ $ (GND)))
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~5\ = CARRY((\conv|inRefConv|tRef[6]~6_combout\) # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[6]~6_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~3\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~5\);

-- Location: LCCOMB_X42_Y3_N10
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\ = (\conv|inRefConv|tRef[7]~4_combout\ & (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~5\)) # (!\conv|inRefConv|tRef[7]~4_combout\ & 
-- ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~5\) # (GND)))
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ = CARRY((!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~5\) # (!\conv|inRefConv|tRef[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[7]~4_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~5\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~7\);

-- Location: LCCOMB_X42_Y3_N12
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\ = (\conv|inRefConv|tRef[8]~1_combout\ & (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ $ (GND))) # (!\conv|inRefConv|tRef[8]~1_combout\ 
-- & (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ & VCC))
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~9\ = CARRY((\conv|inRefConv|tRef[8]~1_combout\ & !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[8]~1_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~7\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~9\);

-- Location: LCCOMB_X42_Y3_N14
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~10_combout\ = !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~9\
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~11\ = CARRY(!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~9\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~10_combout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~11\);

-- Location: LCCOMB_X42_Y3_N16
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[8]~13_cout\ = CARRY(!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~11\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[8]~13_cout\);

-- Location: LCCOMB_X42_Y3_N18
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ = !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[8]~13_cout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\);

-- Location: LCCOMB_X42_Y3_N24
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[268]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[268]~48_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~10_combout\ & 
-- !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~10_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[268]~48_combout\);

-- Location: LCCOMB_X41_Y6_N14
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49_combout\ = (\conv|inRefConv|tRef[8]~1_combout\ & \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|inRefConv|tRef[8]~1_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49_combout\);

-- Location: LCCOMB_X42_Y3_N22
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\ & 
-- !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50_combout\);

-- Location: LCCOMB_X43_Y6_N4
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51_combout\ = (\conv|inRefConv|tRef[7]~4_combout\ & \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|inRefConv|tRef[7]~4_combout\,
	datac => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51_combout\);

-- Location: LCCOMB_X43_Y6_N2
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52_combout\ = (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datac => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52_combout\);

-- Location: LCCOMB_X41_Y6_N16
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53_combout\ = (\conv|inRefConv|tRef[6]~6_combout\ & \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|inRefConv|tRef[6]~6_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53_combout\);

-- Location: LCCOMB_X41_Y6_N22
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54_combout\ = (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54_combout\);

-- Location: LCCOMB_X42_Y3_N0
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55_combout\ = (\conv|inRefConv|tRef[5]~8_combout\ & \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|inRefConv|tRef[5]~8_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55_combout\);

-- Location: LCCOMB_X42_Y3_N30
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\ & 
-- !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56_combout\);

-- Location: LCCOMB_X42_Y3_N28
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\ & 
-- !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58_combout\);

-- Location: LCCOMB_X42_Y6_N2
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57_combout\ = (\conv|inRefConv|tRef[4]~10_combout\ & \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|inRefConv|tRef[4]~10_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57_combout\);

-- Location: LCCOMB_X48_Y1_N10
\conv|inRefConv|tRef[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[3]~11_combout\ = (\FSM|stOut~3_combout\ & ((\tSelect|cont9|s_cont\(3)) # ((!\FSM|stOut~2_combout\)))) # (!\FSM|stOut~3_combout\ & (((!\tRef|SOL|s_cont\(3) & !\FSM|stOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(3),
	datab => \FSM|stOut~3_combout\,
	datac => \tRef|SOL|s_cont\(3),
	datad => \FSM|stOut~2_combout\,
	combout => \conv|inRefConv|tRef[3]~11_combout\);

-- Location: LCCOMB_X46_Y1_N24
\conv|inRefConv|tRef[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[3]~12_combout\ = (\conv|inRefConv|tRef[8]~2_combout\ & ((\conv|inRefConv|tRef[3]~11_combout\ & (!\tRef|GEL|s_cont\(3))) # (!\conv|inRefConv|tRef[3]~11_combout\ & ((\tRef|LUA|s_cont\(3)))))) # (!\conv|inRefConv|tRef[8]~2_combout\ & 
-- (((\conv|inRefConv|tRef[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[8]~2_combout\,
	datab => \tRef|GEL|s_cont\(3),
	datac => \tRef|LUA|s_cont\(3),
	datad => \conv|inRefConv|tRef[3]~11_combout\,
	combout => \conv|inRefConv|tRef[3]~12_combout\);

-- Location: LCCOMB_X41_Y6_N0
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~59_combout\ = (\conv|inRefConv|tRef[3]~12_combout\ & \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|inRefConv|tRef[3]~12_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~59_combout\);

-- Location: LCCOMB_X41_Y6_N12
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16_combout\ = \conv|inRefConv|tRef[3]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|inRefConv|tRef[3]~12_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16_combout\);

-- Location: LCCOMB_X41_Y6_N6
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~60_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16_combout\ & 
-- !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~60_combout\);

-- Location: LCCOMB_X42_Y6_N8
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\ = (((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~59_combout\) # (\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~60_combout\)))
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ = CARRY((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~59_combout\) # (\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~59_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~60_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~1\);

-- Location: LCCOMB_X42_Y6_N10
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ & (((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58_combout\) # 
-- (\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57_combout\)))) # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ & (!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58_combout\ & 
-- (!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57_combout\)))
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ = CARRY((!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58_combout\ & (!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57_combout\ & 
-- !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~1\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~3\);

-- Location: LCCOMB_X42_Y6_N12
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ & ((((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55_combout\) # 
-- (\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56_combout\))))) # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ & ((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55_combout\) # 
-- ((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56_combout\) # (GND))))
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\ = CARRY((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55_combout\) # ((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56_combout\) # 
-- (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~3\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\);

-- Location: LCCOMB_X42_Y6_N14
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53_combout\ & (((!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\)))) 
-- # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53_combout\ & ((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54_combout\ & (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\)) # 
-- (!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54_combout\ & ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\) # (GND)))))
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ = CARRY(((!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53_combout\ & !\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54_combout\)) # 
-- (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~7\);

-- Location: LCCOMB_X42_Y6_N16
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ & (((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51_combout\) # 
-- (\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52_combout\)))) # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ & ((((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51_combout\) # 
-- (\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52_combout\)))))
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~9\ = CARRY((!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ & ((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51_combout\) # 
-- (\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~7\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~9\);

-- Location: LCCOMB_X42_Y6_N18
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~10_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~9\ & (((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49_combout\) # 
-- (\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50_combout\)))) # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~9\ & (!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49_combout\ & 
-- (!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50_combout\)))
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~11\ = CARRY((!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49_combout\ & (!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50_combout\ & 
-- !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~9\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~10_combout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~11\);

-- Location: LCCOMB_X42_Y6_N20
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[8]~13_cout\ = CARRY((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[268]~48_combout\) # 
-- (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[268]~48_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~11\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[8]~13_cout\);

-- Location: LCCOMB_X42_Y6_N22
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ = !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[8]~13_cout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\);

-- Location: IOIBUF_X42_Y0_N15
\divF~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divF,
	o => \divF~input_o\);

-- Location: LCCOMB_X35_Y3_N8
\conv|enableConv|yout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|enableConv|yout~0_combout\ = (\divF~input_o\) # (!\FSM|pS.NORMAL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|pS.NORMAL~q\,
	datad => \divF~input_o\,
	combout => \conv|enableConv|yout~0_combout\);

-- Location: LCCOMB_X42_Y3_N2
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~71_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & ((\conv|inRefConv|tRef[8]~1_combout\))) # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datac => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\,
	datad => \conv|inRefConv|tRef[8]~1_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~71_combout\);

-- Location: LCCOMB_X43_Y6_N24
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~61_combout\ = (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~10_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~61_combout\);

-- Location: LCCOMB_X42_Y6_N0
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~62_combout\ = (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~62_combout\);

-- Location: LCCOMB_X43_Y6_N0
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~72_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & (\conv|inRefConv|tRef[7]~4_combout\)) # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datab => \conv|inRefConv|tRef[7]~4_combout\,
	datac => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~72_combout\);

-- Location: LCCOMB_X41_Y6_N4
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~73_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & ((\conv|inRefConv|tRef[6]~6_combout\))) # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datac => \conv|inRefConv|tRef[6]~6_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~73_combout\);

-- Location: LCCOMB_X42_Y6_N6
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~63_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\ & 
-- !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\,
	datac => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~63_combout\);

-- Location: LCCOMB_X43_Y6_N6
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~64_combout\ = (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~64_combout\);

-- Location: LCCOMB_X42_Y3_N20
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~74_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & (\conv|inRefConv|tRef[5]~8_combout\)) # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datac => \conv|inRefConv|tRef[5]~8_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~74_combout\);

-- Location: LCCOMB_X42_Y3_N26
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~75_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & (\conv|inRefConv|tRef[4]~10_combout\)) # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[4]~10_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\,
	datac => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~75_combout\);

-- Location: LCCOMB_X43_Y6_N28
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~65_combout\ = (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~65_combout\);

-- Location: LCCOMB_X41_Y6_N10
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~76_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & ((\conv|inRefConv|tRef[3]~12_combout\))) # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datac => \conv|inRefConv|tRef[3]~12_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~76_combout\);

-- Location: LCCOMB_X42_Y6_N4
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~66_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\ & 
-- !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\,
	datac => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~66_combout\);

-- Location: LCCOMB_X50_Y1_N8
\conv|inRefConv|tRef[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[2]~13_combout\ = (\FSM|stOut~3_combout\ & ((\tSelect|cont9|s_cont\(2)) # ((!\FSM|stOut~2_combout\)))) # (!\FSM|stOut~3_combout\ & (((\tRef|LUA|s_cont\(2) & \FSM|stOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(2),
	datab => \FSM|stOut~3_combout\,
	datac => \tRef|LUA|s_cont\(2),
	datad => \FSM|stOut~2_combout\,
	combout => \conv|inRefConv|tRef[2]~13_combout\);

-- Location: LCCOMB_X48_Y1_N20
\conv|inRefConv|tRef[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[2]~14_combout\ = (\FSM|stOut~2_combout\ & (((\conv|inRefConv|tRef[2]~13_combout\)))) # (!\FSM|stOut~2_combout\ & ((\conv|inRefConv|tRef[2]~13_combout\ & (\tRef|GEL|s_cont\(2))) # (!\conv|inRefConv|tRef[2]~13_combout\ & 
-- ((\tRef|SOL|s_cont\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|GEL|s_cont\(2),
	datab => \FSM|stOut~2_combout\,
	datac => \tRef|SOL|s_cont\(2),
	datad => \conv|inRefConv|tRef[2]~13_combout\,
	combout => \conv|inRefConv|tRef[2]~14_combout\);

-- Location: LCCOMB_X42_Y6_N26
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~69_combout\ = (\conv|inRefConv|tRef[2]~14_combout\ & !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|inRefConv|tRef[2]~14_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~69_combout\);

-- Location: LCCOMB_X42_Y6_N28
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~68_combout\ = (\conv|inRefConv|tRef[2]~14_combout\ & \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|inRefConv|tRef[2]~14_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~68_combout\);

-- Location: LCCOMB_X42_Y6_N24
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~16_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~69_combout\) # (\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~69_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~68_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~16_combout\);

-- Location: LCCOMB_X43_Y6_N26
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~70_combout\ = (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~16_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~70_combout\);

-- Location: LCCOMB_X42_Y6_N30
\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~67_combout\ = (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & \conv|inRefConv|tRef[2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv|inRefConv|tRef[2]~14_combout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~67_combout\);

-- Location: LCCOMB_X43_Y6_N8
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~1_cout\ = CARRY((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~70_combout\) # (\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~70_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~67_combout\,
	datad => VCC,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~1_cout\);

-- Location: LCCOMB_X43_Y6_N10
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~3_cout\ = CARRY((!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~76_combout\ & (!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~66_combout\ & 
-- !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~76_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~66_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~1_cout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~3_cout\);

-- Location: LCCOMB_X43_Y6_N12
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~5_cout\ = CARRY((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~75_combout\) # ((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~65_combout\) # 
-- (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~75_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~65_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~3_cout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~5_cout\);

-- Location: LCCOMB_X43_Y6_N14
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~7_cout\ = CARRY(((!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~64_combout\ & !\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~74_combout\)) # 
-- (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~64_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~74_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~5_cout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~7_cout\);

-- Location: LCCOMB_X43_Y6_N16
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~9_cout\ = CARRY((!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~7_cout\ & 
-- ((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~73_combout\) # (\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~73_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~63_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~7_cout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~9_cout\);

-- Location: LCCOMB_X43_Y6_N18
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[7]~11_cout\ = CARRY((!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~62_combout\ & (!\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~72_combout\ & 
-- !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~62_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~72_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~9_cout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[7]~11_cout\);

-- Location: LCCOMB_X43_Y6_N20
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[8]~13_cout\ = CARRY((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~71_combout\) # ((\conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~61_combout\) # 
-- (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[7]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~71_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~61_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[7]~11_cout\,
	cout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[8]~13_cout\);

-- Location: LCCOMB_X43_Y6_N22
\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\ = !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[8]~13_cout\,
	combout => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\);

-- Location: LCCOMB_X35_Y3_N30
\conv|conv7seg|outPort2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort2[0]~0_combout\ = ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ $ 
-- (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\)))) # (!\conv|enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\,
	combout => \conv|conv7seg|outPort2[0]~0_combout\);

-- Location: LCCOMB_X35_Y3_N4
\conv|conv7seg|outPort2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort2~1_combout\ = ((!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ $ 
-- (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\)))) # (!\conv|enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\,
	combout => \conv|conv7seg|outPort2~1_combout\);

-- Location: LCCOMB_X35_Y3_N10
\conv|conv7seg|outPort2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort2[2]~2_combout\ = ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\))) # (!\conv|enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\,
	combout => \conv|conv7seg|outPort2[2]~2_combout\);

-- Location: LCCOMB_X35_Y3_N24
\conv|conv7seg|outPort2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort2[3]~3_combout\ = ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\)) # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ $ (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\)))) # (!\conv|enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\,
	combout => \conv|conv7seg|outPort2[3]~3_combout\);

-- Location: LCCOMB_X35_Y3_N22
\conv|conv7seg|outPort2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort2[4]~4_combout\ = (((!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\)) # 
-- (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\)) # (!\conv|enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\,
	combout => \conv|conv7seg|outPort2[4]~4_combout\);

-- Location: LCCOMB_X35_Y3_N20
\conv|conv7seg|outPort2[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort2[5]~5_combout\ = ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & ((!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\) # 
-- (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\))) # (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\))) # (!\conv|enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\,
	combout => \conv|conv7seg|outPort2[5]~5_combout\);

-- Location: LCCOMB_X35_Y3_N18
\conv|conv7seg|outPort2[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort2[6]~6_combout\ = ((\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & (\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\)) # 
-- (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & (!\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- !\conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\))) # (!\conv|enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datab => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\,
	combout => \conv|conv7seg|outPort2[6]~6_combout\);

-- Location: LCCOMB_X40_Y8_N12
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ = \conv|inRefConv|tRef[6]~6_combout\ $ (VCC)
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ = CARRY(\conv|inRefConv|tRef[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|inRefConv|tRef[6]~6_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\);

-- Location: LCCOMB_X40_Y8_N14
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ = (\conv|inRefConv|tRef[7]~4_combout\ & (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ & VCC)) # (!\conv|inRefConv|tRef[7]~4_combout\ & 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ = CARRY((!\conv|inRefConv|tRef[7]~4_combout\ & !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv|inRefConv|tRef[7]~4_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\);

-- Location: LCCOMB_X40_Y8_N16
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ = (\conv|inRefConv|tRef[8]~1_combout\ & (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ $ (GND))) # (!\conv|inRefConv|tRef[8]~1_combout\ 
-- & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ & VCC))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ = CARRY((\conv|inRefConv|tRef[8]~1_combout\ & !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[8]~1_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\);

-- Location: LCCOMB_X40_Y8_N18
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\ = !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\ = CARRY(!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\);

-- Location: LCCOMB_X40_Y8_N20
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\ = CARRY(!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\);

-- Location: LCCOMB_X40_Y8_N22
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ = !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\);

-- Location: LCCOMB_X40_Y8_N4
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & 
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62_combout\);

-- Location: LCCOMB_X40_Y8_N26
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61_combout\ = (\conv|inRefConv|tRef[8]~1_combout\ & \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[8]~1_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61_combout\);

-- Location: LCCOMB_X40_Y8_N6
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & \conv|inRefConv|tRef[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \conv|inRefConv|tRef[7]~4_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63_combout\);

-- Location: LCCOMB_X40_Y8_N8
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64_combout\);

-- Location: LCCOMB_X40_Y8_N24
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & 
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66_combout\);

-- Location: LCCOMB_X40_Y8_N10
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & \conv|inRefConv|tRef[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \conv|inRefConv|tRef[6]~6_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65_combout\);

-- Location: LCCOMB_X39_Y8_N12
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~67_combout\ = (\conv|inRefConv|tRef[5]~8_combout\ & \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|inRefConv|tRef[5]~8_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~67_combout\);

-- Location: LCCOMB_X39_Y8_N18
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~68_combout\ = (\conv|inRefConv|tRef[5]~8_combout\ & !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|inRefConv|tRef[5]~8_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~68_combout\);

-- Location: LCCOMB_X39_Y8_N20
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ = (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~67_combout\) # (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~68_combout\)))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ = CARRY((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~67_combout\) # (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~67_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~68_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\);

-- Location: LCCOMB_X39_Y8_N22
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65_combout\)))) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66_combout\ & 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65_combout\)))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66_combout\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\);

-- Location: LCCOMB_X39_Y8_N24
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64_combout\)))) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & ((((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64_combout\)))))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\);

-- Location: LCCOMB_X39_Y8_N26
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ & (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61_combout\)))) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62_combout\ & 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61_combout\)))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62_combout\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\);

-- Location: LCCOMB_X40_Y8_N28
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[160]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[160]~60_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & 
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[160]~60_combout\);

-- Location: LCCOMB_X39_Y8_N28
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\ = CARRY((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[160]~60_combout\) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[160]~60_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\);

-- Location: LCCOMB_X39_Y8_N30
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ = !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\);

-- Location: LCCOMB_X39_Y8_N0
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~69_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~69_combout\);

-- Location: LCCOMB_X40_Y8_N30
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~103_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & 
-- ((\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & (\conv|inRefConv|tRef[8]~1_combout\)) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & 
-- ((\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datac => \conv|inRefConv|tRef[8]~1_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~103_combout\);

-- Location: LCCOMB_X39_Y7_N20
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70_combout\);

-- Location: LCCOMB_X40_Y8_N0
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & 
-- ((\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & (\conv|inRefConv|tRef[7]~4_combout\)) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & 
-- ((\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datab => \conv|inRefConv|tRef[7]~4_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\);

-- Location: LCCOMB_X39_Y7_N22
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71_combout\);

-- Location: LCCOMB_X40_Y8_N2
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & 
-- ((\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & ((\conv|inRefConv|tRef[6]~6_combout\))) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	datab => \conv|inRefConv|tRef[6]~6_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\);

-- Location: LCCOMB_X39_Y7_N28
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \conv|inRefConv|tRef[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \conv|inRefConv|tRef[5]~8_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72_combout\);

-- Location: LCCOMB_X39_Y8_N10
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & 
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73_combout\);

-- Location: LCCOMB_X39_Y7_N26
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~74_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \conv|inRefConv|tRef[4]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \conv|inRefConv|tRef[4]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~74_combout\);

-- Location: LCCOMB_X39_Y7_N0
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~75_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \conv|inRefConv|tRef[4]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \conv|inRefConv|tRef[4]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~75_combout\);

-- Location: LCCOMB_X39_Y7_N4
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ = (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~74_combout\) # (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~75_combout\)))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ = CARRY((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~74_combout\) # (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~74_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~75_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\);

-- Location: LCCOMB_X39_Y7_N6
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73_combout\)))) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72_combout\ & 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73_combout\)))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72_combout\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\);

-- Location: LCCOMB_X39_Y7_N8
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\)))) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\)))))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\);

-- Location: LCCOMB_X39_Y7_N10
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ & (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\)))) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70_combout\ & 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\)))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70_combout\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\);

-- Location: LCCOMB_X39_Y7_N12
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\ = CARRY((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~69_combout\) # ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~103_combout\) # 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~69_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~103_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\);

-- Location: LCCOMB_X39_Y7_N14
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ = !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\);

-- Location: LCCOMB_X38_Y7_N28
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & 
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78_combout\);

-- Location: LCCOMB_X39_Y8_N4
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & 
-- ((\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & (\conv|inRefConv|tRef[5]~8_combout\)) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & 
-- ((\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[5]~8_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\);

-- Location: LCCOMB_X39_Y7_N2
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \conv|inRefConv|tRef[4]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \conv|inRefConv|tRef[4]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79_combout\);

-- Location: LCCOMB_X38_Y7_N2
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & 
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80_combout\);

-- Location: LCCOMB_X38_Y7_N10
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~82_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \conv|inRefConv|tRef[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \conv|inRefConv|tRef[3]~12_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~82_combout\);

-- Location: LCCOMB_X38_Y7_N4
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~81_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \conv|inRefConv|tRef[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \conv|inRefConv|tRef[3]~12_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~81_combout\);

-- Location: LCCOMB_X38_Y7_N12
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ = (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~82_combout\) # (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~81_combout\)))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ = CARRY((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~82_combout\) # (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~82_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~81_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\);

-- Location: LCCOMB_X38_Y7_N14
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80_combout\)))) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79_combout\ & 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80_combout\)))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79_combout\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\);

-- Location: LCCOMB_X38_Y7_N16
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\)))) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\)))))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

-- Location: LCCOMB_X39_Y7_N30
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~97_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\) # 
-- ((!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~97_combout\);

-- Location: LCCOMB_X38_Y7_N24
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~76_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~76_combout\);

-- Location: LCCOMB_X38_Y7_N26
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77_combout\);

-- Location: LCCOMB_X39_Y7_N24
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\) # 
-- ((!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\);

-- Location: LCCOMB_X38_Y7_N18
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ & (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\)))) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77_combout\ & 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\)))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77_combout\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\);

-- Location: LCCOMB_X38_Y7_N20
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ = CARRY((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~97_combout\) # ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~76_combout\) # 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~97_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~76_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\);

-- Location: LCCOMB_X38_Y7_N22
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ = !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\);

-- Location: LCCOMB_X38_Y7_N30
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\) # 
-- ((!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\);

-- Location: LCCOMB_X39_Y7_N16
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~83_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~83_combout\);

-- Location: LCCOMB_X38_Y7_N0
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~99_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\) # 
-- ((\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ & !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~99_combout\);

-- Location: LCCOMB_X40_Y7_N8
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84_combout\);

-- Location: LCCOMB_X40_Y7_N22
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85_combout\);

-- Location: LCCOMB_X39_Y7_N18
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- ((\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & (\conv|inRefConv|tRef[4]~10_combout\)) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & 
-- ((\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[4]~10_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\);

-- Location: LCCOMB_X41_Y7_N4
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86_combout\ = (\conv|inRefConv|tRef[3]~12_combout\ & \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|inRefConv|tRef[3]~12_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86_combout\);

-- Location: LCCOMB_X41_Y7_N26
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87_combout\);

-- Location: LCCOMB_X40_Y7_N30
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~89_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \conv|inRefConv|tRef[2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \conv|inRefConv|tRef[2]~14_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~89_combout\);

-- Location: LCCOMB_X40_Y7_N24
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~88_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \conv|inRefConv|tRef[2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \conv|inRefConv|tRef[2]~14_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~88_combout\);

-- Location: LCCOMB_X40_Y7_N10
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~89_combout\) # (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~88_combout\)))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~89_combout\) # (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~89_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~88_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X40_Y7_N12
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87_combout\)))) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86_combout\ & 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87_combout\)))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86_combout\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X40_Y7_N14
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\)))) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\)))))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X40_Y7_N16
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\) # 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84_combout\)))) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\ & 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84_combout\)))
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\);

-- Location: LCCOMB_X40_Y7_N18
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ = CARRY((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~83_combout\) # ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~99_combout\) # 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~83_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~99_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\);

-- Location: LCCOMB_X40_Y7_N20
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ = !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\);

-- Location: LCCOMB_X40_Y7_N26
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~101_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\) # 
-- ((\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ & !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~101_combout\);

-- Location: LCCOMB_X41_Y7_N8
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~90_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~90_combout\);

-- Location: LCCOMB_X41_Y7_N30
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~91_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~91_combout\);

-- Location: LCCOMB_X40_Y7_N28
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~102_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\) # 
-- ((!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~102_combout\);

-- Location: LCCOMB_X41_Y7_N28
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~92_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~92_combout\);

-- Location: LCCOMB_X41_Y7_N0
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~108_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- ((\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\conv|inRefConv|tRef[3]~12_combout\))) # (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datac => \conv|inRefConv|tRef[3]~12_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~108_combout\);

-- Location: LCCOMB_X41_Y7_N6
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~94_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~94_combout\);

-- Location: LCCOMB_X40_Y7_N4
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~93_combout\ = (\conv|inRefConv|tRef[2]~14_combout\ & \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|inRefConv|tRef[2]~14_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~93_combout\);

-- Location: LCCOMB_X48_Y1_N30
\conv|inRefConv|tRef[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[1]~15_combout\ = (\FSM|stOut~2_combout\ & (\tSelect|cont9|s_cont\(1) & ((\FSM|stOut~3_combout\)))) # (!\FSM|stOut~2_combout\ & (((\tRef|SOL|s_cont\(1)) # (\FSM|stOut~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSelect|cont9|s_cont\(1),
	datab => \FSM|stOut~2_combout\,
	datac => \tRef|SOL|s_cont\(1),
	datad => \FSM|stOut~3_combout\,
	combout => \conv|inRefConv|tRef[1]~15_combout\);

-- Location: LCCOMB_X48_Y1_N12
\conv|inRefConv|tRef[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|tRef[1]~16_combout\ = (\conv|inRefConv|tRef[8]~2_combout\ & ((\conv|inRefConv|tRef[1]~15_combout\ & ((\tRef|GEL|s_cont\(1)))) # (!\conv|inRefConv|tRef[1]~15_combout\ & (\tRef|LUA|s_cont\(1))))) # (!\conv|inRefConv|tRef[8]~2_combout\ & 
-- (((\conv|inRefConv|tRef[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tRef|LUA|s_cont\(1),
	datab => \conv|inRefConv|tRef[8]~2_combout\,
	datac => \conv|inRefConv|tRef[1]~15_combout\,
	datad => \tRef|GEL|s_cont\(1),
	combout => \conv|inRefConv|tRef[1]~16_combout\);

-- Location: LCCOMB_X41_Y7_N22
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~96_combout\ = (\conv|inRefConv|tRef[1]~16_combout\ & !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|inRefConv|tRef[1]~16_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~96_combout\);

-- Location: LCCOMB_X41_Y7_N24
\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~95_combout\ = (\conv|inRefConv|tRef[1]~16_combout\ & \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|inRefConv|tRef[1]~16_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~95_combout\);

-- Location: LCCOMB_X41_Y7_N10
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ = CARRY((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~96_combout\) # (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~96_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~95_combout\,
	datad => VCC,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\);

-- Location: LCCOMB_X41_Y7_N12
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~94_combout\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~93_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~94_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~93_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X41_Y7_N14
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ & 
-- ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~92_combout\) # (\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~92_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~108_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\);

-- Location: LCCOMB_X41_Y7_N16
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~91_combout\ & (!\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~102_combout\ & 
-- !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~91_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~102_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X41_Y7_N18
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ = CARRY((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~101_combout\) # ((\conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~90_combout\) # 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~101_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~90_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\,
	cout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\);

-- Location: LCCOMB_X41_Y7_N20
\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ = !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\,
	combout => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\);

-- Location: LCCOMB_X38_Y5_N20
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~0_combout\ = !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~0_combout\);

-- Location: LCCOMB_X36_Y5_N6
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~0_combout\ = \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ $ (GND)
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~1\ = CARRY(!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~0_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~1\);

-- Location: LCCOMB_X36_Y5_N8
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~2_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~1\)) # 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~1\ & VCC))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~3\ = CARRY((\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~1\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~2_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~3\);

-- Location: LCCOMB_X36_Y5_N10
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~4_combout\ = (\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~3\ & VCC)) # 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~3\ $ (GND)))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~5\ = CARRY((!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~3\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~4_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~5\);

-- Location: LCCOMB_X36_Y5_N12
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~6_combout\ = !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~5\
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~7\ = CARRY(!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~5\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~6_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~7\);

-- Location: LCCOMB_X36_Y5_N14
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~8_combout\ = \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~7\ $ (GND)
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~9\ = CARRY(!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~7\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~8_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~9\);

-- Location: LCCOMB_X36_Y5_N16
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~10_combout\ = !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~9\
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~11\ = CARRY(!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~9\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~10_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~11\);

-- Location: LCCOMB_X36_Y5_N18
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~12_combout\ = \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~11\ $ (GND)
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~13\ = CARRY(!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~11\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~12_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~13\);

-- Location: LCCOMB_X36_Y5_N20
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~14_combout\ = !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~13\
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~15\ = CARRY(!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~13\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~14_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~15\);

-- Location: LCCOMB_X36_Y5_N22
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~16_combout\ = \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~15\ $ (GND)
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~17\ = CARRY(!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~15\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~16_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~17\);

-- Location: LCCOMB_X36_Y5_N24
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~18_combout\ = !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~17\
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~19\ = CARRY(!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~17\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~18_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~19\);

-- Location: LCCOMB_X36_Y5_N26
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~20_combout\ = \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~19\ $ (GND)
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~21\ = CARRY(!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~19\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~20_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~21\);

-- Location: LCCOMB_X36_Y5_N28
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\ = !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~21\
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~23\ = CARRY(!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~21\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~23\);

-- Location: LCCOMB_X36_Y5_N30
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ = \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~23\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\);

-- Location: LCCOMB_X40_Y5_N24
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~20_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48_combout\);

-- Location: LCCOMB_X40_Y5_N30
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~18_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49_combout\);

-- Location: LCCOMB_X39_Y6_N24
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~16_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50_combout\);

-- Location: LCCOMB_X39_Y6_N26
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~14_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51_combout\);

-- Location: LCCOMB_X41_Y5_N0
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~12_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52_combout\);

-- Location: LCCOMB_X39_Y6_N12
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~10_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53_combout\);

-- Location: LCCOMB_X38_Y5_N24
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~8_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54_combout\);

-- Location: LCCOMB_X40_Y5_N16
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~6_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55_combout\);

-- Location: LCCOMB_X36_Y5_N2
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~4_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57_combout\);

-- Location: LCCOMB_X36_Y5_N4
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56_combout\);

-- Location: LCCOMB_X39_Y6_N10
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~2_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59_combout\);

-- Location: LCCOMB_X40_Y6_N30
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58_combout\);

-- Location: LCCOMB_X40_Y6_N28
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60_combout\);

-- Location: LCCOMB_X38_Y5_N18
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~0_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~0_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61_combout\);

-- Location: LCCOMB_X40_Y6_N16
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~26_combout\ = !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~26_combout\);

-- Location: LCCOMB_X40_Y6_N8
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~63_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~26_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~63_combout\);

-- Location: LCCOMB_X40_Y6_N14
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~62_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~62_combout\);

-- Location: LCCOMB_X41_Y5_N2
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~0_combout\ = (((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~63_combout\) # (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~62_combout\)))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~1\ = CARRY((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~63_combout\) # (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~63_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~62_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~0_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~1\);

-- Location: LCCOMB_X41_Y5_N4
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~2_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~1\ & (((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60_combout\) # 
-- (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61_combout\)))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~1\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60_combout\ & 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61_combout\)))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~3\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61_combout\ & 
-- !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~1\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~2_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~3\);

-- Location: LCCOMB_X41_Y5_N6
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~4_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~3\ & (((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59_combout\) # 
-- (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58_combout\)))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~3\ & ((((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59_combout\) # 
-- (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58_combout\)))))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~5\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~3\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59_combout\) # 
-- (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~3\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~4_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~5\);

-- Location: LCCOMB_X41_Y5_N8
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~6_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~5\ & (((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57_combout\) # 
-- (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56_combout\)))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~5\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57_combout\ & 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56_combout\)))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~7\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56_combout\ & 
-- !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~5\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~6_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~7\);

-- Location: LCCOMB_X41_Y5_N10
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~8_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55_combout\ & ((GND) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~7\))) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~7\ $ (GND)))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~9\ = CARRY((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55_combout\) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~7\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~8_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~9\);

-- Location: LCCOMB_X41_Y5_N12
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~10_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~9\ & VCC)) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~9\))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~11\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~9\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~10_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~11\);

-- Location: LCCOMB_X41_Y5_N14
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~12_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53_combout\ & ((GND) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~11\))) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~11\ $ (GND)))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~13\ = CARRY((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53_combout\) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~11\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~12_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~13\);

-- Location: LCCOMB_X41_Y5_N16
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~14_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~13\ & VCC)) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~13\))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~15\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~13\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~14_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~15\);

-- Location: LCCOMB_X41_Y5_N18
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~16_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51_combout\ & ((GND) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~15\))) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~15\ $ (GND)))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~17\ = CARRY((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51_combout\) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~15\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~17\);

-- Location: LCCOMB_X41_Y5_N20
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~18_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~17\ & VCC)) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~17\))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~19\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~17\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~18_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~19\);

-- Location: LCCOMB_X41_Y5_N22
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~20_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49_combout\ & ((GND) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~19\))) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~19\ $ (GND)))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~21\ = CARRY((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49_combout\) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~19\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~20_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~21\);

-- Location: LCCOMB_X41_Y5_N24
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~22_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~21\ & VCC)) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~21\))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~23\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~21\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~22_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~23\);

-- Location: LCCOMB_X41_Y5_N26
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~24_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~23\ & ((((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\))))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~23\ & (((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\)) # (GND)))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~25\ = CARRY(((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\)) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~23\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~24_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~25\);

-- Location: LCCOMB_X41_Y5_N28
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~26_combout\ = !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~25\
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~27\ = CARRY(!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~25\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~26_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~27\);

-- Location: LCCOMB_X41_Y5_N30
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ = \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~27\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\);

-- Location: LCCOMB_X38_Y5_N8
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~64_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\ & 
-- !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~64_combout\);

-- Location: LCCOMB_X40_Y5_N26
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~65_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~24_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~65_combout\);

-- Location: LCCOMB_X38_Y5_N28
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~84_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~20_combout\ & 
-- !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~20_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~84_combout\);

-- Location: LCCOMB_X40_Y5_N0
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~66_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~22_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~66_combout\);

-- Location: LCCOMB_X40_Y5_N20
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~85_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~18_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~18_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~85_combout\);

-- Location: LCCOMB_X40_Y5_N22
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~67_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~20_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~67_combout\);

-- Location: LCCOMB_X39_Y6_N20
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~86_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~16_combout\ & 
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~16_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~86_combout\);

-- Location: LCCOMB_X40_Y5_N12
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~68_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~18_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~18_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~68_combout\);

-- Location: LCCOMB_X39_Y6_N30
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~87_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~14_combout\ & 
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~14_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~87_combout\);

-- Location: LCCOMB_X40_Y5_N18
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~69_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~69_combout\);

-- Location: LCCOMB_X38_Y5_N10
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~88_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & 
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~12_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~88_combout\);

-- Location: LCCOMB_X40_Y5_N28
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~70_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~14_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~70_combout\);

-- Location: LCCOMB_X39_Y6_N4
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~89_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~10_combout\ & 
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~10_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~89_combout\);

-- Location: LCCOMB_X40_Y5_N14
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~71_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~12_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~12_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~71_combout\);

-- Location: LCCOMB_X38_Y5_N12
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~90_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & 
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~8_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~90_combout\);

-- Location: LCCOMB_X40_Y5_N8
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~72_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~10_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~10_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~72_combout\);

-- Location: LCCOMB_X40_Y5_N2
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~73_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~8_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~8_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~73_combout\);

-- Location: LCCOMB_X40_Y5_N6
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~91_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~6_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~6_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~91_combout\);

-- Location: LCCOMB_X40_Y5_N4
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~74_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~6_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~6_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~74_combout\);

-- Location: LCCOMB_X36_Y5_N0
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~92_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- ((!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~4_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~92_combout\);

-- Location: LCCOMB_X39_Y6_N6
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~93_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~2_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~93_combout\);

-- Location: LCCOMB_X40_Y5_N10
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~75_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~4_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~75_combout\);

-- Location: LCCOMB_X38_Y5_N14
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- ((!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~0_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\);

-- Location: LCCOMB_X38_Y5_N30
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~2_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\);

-- Location: LCCOMB_X39_Y6_N28
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~0_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~0_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\);

-- Location: LCCOMB_X39_Y6_N8
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- ((!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_23~26_combout\,
	datac => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\);

-- Location: LCCOMB_X38_Y5_N16
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\ = (!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\);

-- Location: LCCOMB_X38_Y5_N6
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~30_combout\ = !\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~30_combout\);

-- Location: LCCOMB_X38_Y5_N22
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~30_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\);

-- Location: LCCOMB_X39_Y5_N0
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~2_combout\ = (((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\) # (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\)))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~3\ = CARRY((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\) # (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~2_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~3\);

-- Location: LCCOMB_X39_Y5_N2
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~4_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~3\ & (((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\) # 
-- (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\)))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~3\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\ & 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\)))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~5\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\ & 
-- !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~3\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~4_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~5\);

-- Location: LCCOMB_X39_Y5_N4
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~6_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~5\ & (((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\) # 
-- (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\)))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~5\ & ((((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\) # 
-- (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\)))))
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~7\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~5\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\) # 
-- (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~5\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~6_combout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~7\);

-- Location: LCCOMB_X39_Y5_N6
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~9_cout\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~93_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~75_combout\ & 
-- !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~93_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~75_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~7\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~9_cout\);

-- Location: LCCOMB_X39_Y5_N8
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~11_cout\ = CARRY((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~74_combout\) # ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~92_combout\) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~74_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~92_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~9_cout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~11_cout\);

-- Location: LCCOMB_X39_Y5_N10
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~13_cout\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~73_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~91_combout\ & 
-- !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~73_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~91_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~11_cout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~13_cout\);

-- Location: LCCOMB_X39_Y5_N12
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~15_cout\ = CARRY((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~90_combout\) # ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~72_combout\) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~90_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~72_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~13_cout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~15_cout\);

-- Location: LCCOMB_X39_Y5_N14
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~17_cout\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~89_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~71_combout\ & 
-- !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~89_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~71_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~15_cout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~17_cout\);

-- Location: LCCOMB_X39_Y5_N16
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~19_cout\ = CARRY((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~88_combout\) # ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~70_combout\) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~88_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~70_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~17_cout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~19_cout\);

-- Location: LCCOMB_X39_Y5_N18
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~21_cout\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~87_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~69_combout\ & 
-- !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~87_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~69_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~19_cout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~21_cout\);

-- Location: LCCOMB_X39_Y5_N20
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~23_cout\ = CARRY((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~86_combout\) # ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~68_combout\) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~86_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~68_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~21_cout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~23_cout\);

-- Location: LCCOMB_X39_Y5_N22
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~25_cout\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~85_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~67_combout\ & 
-- !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~85_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~67_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~23_cout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~25_cout\);

-- Location: LCCOMB_X39_Y5_N24
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~27_cout\ = CARRY((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~84_combout\) # ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~66_combout\) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~84_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~66_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~25_cout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~27_cout\);

-- Location: LCCOMB_X39_Y5_N26
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~29_cout\ = CARRY((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~64_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~65_combout\ & 
-- !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~64_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~65_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~27_cout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~29_cout\);

-- Location: LCCOMB_X39_Y5_N28
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~31_cout\ = CARRY(((\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~26_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~29_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~26_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~29_cout\,
	cout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~31_cout\);

-- Location: LCCOMB_X39_Y5_N30
\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ = !\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~31_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~31_cout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\);

-- Location: LCCOMB_X38_Y5_N0
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & ((!\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\))) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~0_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\);

-- Location: LCCOMB_X38_Y5_N4
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\) # 
-- ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\)))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & (((\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~2_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\);

-- Location: LCCOMB_X38_Y5_N26
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\) # 
-- ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\)))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & (((\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~6_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\);

-- Location: LCCOMB_X39_Y6_N18
\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\) # 
-- ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\)))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & (((\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~4_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\,
	combout => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\);

-- Location: LCCOMB_X38_Y3_N4
\conv|conv7seg|outPort1[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[0]~8_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ & 
-- (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ $ (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv|conv7seg|outPort1[0]~8_combout\);

-- Location: LCCOMB_X35_Y3_N12
\conv|conv7seg|outPort1[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[0]~22_combout\ = (\conv|conv7seg|outPort1[0]~8_combout\) # ((!\divF~input_o\ & \FSM|pS.NORMAL~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divF~input_o\,
	datac => \FSM|pS.NORMAL~q\,
	datad => \conv|conv7seg|outPort1[0]~8_combout\,
	combout => \conv|conv7seg|outPort1[0]~22_combout\);

-- Location: LCCOMB_X38_Y3_N22
\conv|conv7seg|outPort1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1~9_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\ & 
-- (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ $ (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv|conv7seg|outPort1~9_combout\);

-- Location: LCCOMB_X35_Y3_N6
\conv|conv7seg|outPort1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1~23_combout\ = (\conv|conv7seg|outPort1~9_combout\) # ((!\divF~input_o\ & \FSM|pS.NORMAL~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divF~input_o\,
	datac => \FSM|pS.NORMAL~q\,
	datad => \conv|conv7seg|outPort1~9_combout\,
	combout => \conv|conv7seg|outPort1~23_combout\);

-- Location: LCCOMB_X38_Y3_N24
\conv|conv7seg|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|Equal16~0_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ & 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv|conv7seg|Equal16~0_combout\);

-- Location: LCCOMB_X35_Y3_N16
\conv|conv7seg|outPort1[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[2]~24_combout\ = (\conv|conv7seg|Equal16~0_combout\) # ((!\divF~input_o\ & \FSM|pS.NORMAL~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv7seg|Equal16~0_combout\,
	datab => \divF~input_o\,
	datac => \FSM|pS.NORMAL~q\,
	combout => \conv|conv7seg|outPort1[2]~24_combout\);

-- Location: LCCOMB_X38_Y3_N6
\conv|conv7seg|outPort1[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[5]~10_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ & 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ & \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv|conv7seg|outPort1[5]~10_combout\);

-- Location: LCCOMB_X38_Y3_N14
\conv|conv7seg|outPort1[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[3]~25_combout\ = ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\) # ((\FSM|pS.NORMAL~q\ & !\divF~input_o\))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|pS.NORMAL~q\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datac => \divF~input_o\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv|conv7seg|outPort1[3]~25_combout\);

-- Location: LCCOMB_X38_Y5_N2
\conv|conv7seg|outPort1[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[4]~11_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & 
-- ((\conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~0_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\,
	datad => \conv|conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	combout => \conv|conv7seg|outPort1[4]~11_combout\);

-- Location: LCCOMB_X38_Y3_N12
\conv|conv7seg|outPort1[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[5]~12_combout\ = (\conv|enableConv|yout~0_combout\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\) # (\conv|conv7seg|outPort1[4]~11_combout\ $ 
-- (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datab => \conv|conv7seg|outPort1[4]~11_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv|conv7seg|outPort1[5]~12_combout\);

-- Location: LCCOMB_X38_Y3_N18
\conv|conv7seg|outPort1[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[3]~13_combout\ = (\conv|conv7seg|outPort1[5]~10_combout\) # ((\conv|conv7seg|outPort1[3]~25_combout\ & !\conv|conv7seg|outPort1[5]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv7seg|outPort1[5]~10_combout\,
	datac => \conv|conv7seg|outPort1[3]~25_combout\,
	datad => \conv|conv7seg|outPort1[5]~12_combout\,
	combout => \conv|conv7seg|outPort1[3]~13_combout\);

-- Location: LCCOMB_X38_Y3_N16
\conv|conv7seg|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|Equal9~0_combout\ = (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv|conv7seg|Equal9~0_combout\);

-- Location: LCCOMB_X38_Y3_N10
\conv|conv7seg|outPort1[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[6]~16_combout\ = (\conv|enableConv|yout~0_combout\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ & (!\conv|conv7seg|Equal9~0_combout\)) # 
-- (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ & (\conv|conv7seg|Equal9~0_combout\ & !\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datab => \conv|conv7seg|Equal9~0_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	combout => \conv|conv7seg|outPort1[6]~16_combout\);

-- Location: LCCOMB_X38_Y3_N2
\conv|conv7seg|outPort1[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[6]~14_combout\ = (\conv|enableConv|yout~0_combout\ & (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ $ (((\conv|conv7seg|Equal9~0_combout\ & 
-- !\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datab => \conv|conv7seg|Equal9~0_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	combout => \conv|conv7seg|outPort1[6]~14_combout\);

-- Location: LCCOMB_X38_Y3_N20
\conv|conv7seg|outPort1[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[4]~15_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\) # 
-- ((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\)))) # (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ & 
-- ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv|conv7seg|outPort1[4]~15_combout\);

-- Location: LCCOMB_X38_Y3_N0
\conv|conv7seg|outPort1[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[4]~17_combout\ = (!\conv|conv7seg|outPort1[6]~16_combout\ & ((\conv|conv7seg|outPort1[6]~14_combout\) # ((\conv|conv7seg|outPort1[4]~15_combout\) # (!\conv|enableConv|yout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv7seg|outPort1[6]~16_combout\,
	datab => \conv|conv7seg|outPort1[6]~14_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv7seg|outPort1[4]~15_combout\,
	combout => \conv|conv7seg|outPort1[4]~17_combout\);

-- Location: LCCOMB_X38_Y3_N26
\conv|conv7seg|outPort1[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[5]~18_combout\ = ((!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\ & ((\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\) # 
-- (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\)))) # (!\conv|enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv|conv7seg|outPort1[5]~18_combout\);

-- Location: LCCOMB_X38_Y3_N28
\conv|conv7seg|outPort1[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[5]~19_combout\ = (\conv|conv7seg|outPort1[5]~12_combout\ & (\conv|conv7seg|outPort1[5]~10_combout\)) # (!\conv|conv7seg|outPort1[5]~12_combout\ & ((\conv|conv7seg|outPort1[5]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv7seg|outPort1[5]~10_combout\,
	datac => \conv|conv7seg|outPort1[5]~18_combout\,
	datad => \conv|conv7seg|outPort1[5]~12_combout\,
	combout => \conv|conv7seg|outPort1[5]~19_combout\);

-- Location: LCCOMB_X38_Y3_N30
\conv|conv7seg|outPort1[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[6]~20_combout\ = (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ & (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ & 
-- (\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ $ (!\conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datab => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datac => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datad => \conv|conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv|conv7seg|outPort1[6]~20_combout\);

-- Location: LCCOMB_X38_Y3_N8
\conv|conv7seg|outPort1[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort1[6]~21_combout\ = (\conv|conv7seg|outPort1[6]~16_combout\) # ((!\conv|conv7seg|outPort1[6]~14_combout\ & ((\conv|conv7seg|outPort1[6]~20_combout\) # (!\conv|enableConv|yout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv7seg|outPort1[6]~16_combout\,
	datab => \conv|enableConv|yout~0_combout\,
	datac => \conv|conv7seg|outPort1[6]~20_combout\,
	datad => \conv|conv7seg|outPort1[6]~14_combout\,
	combout => \conv|conv7seg|outPort1[6]~21_combout\);

-- Location: LCCOMB_X41_Y4_N6
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~0_combout\ = \conv|inRefConv|tRef[6]~6_combout\ $ (VCC)
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~1\ = CARRY(\conv|inRefConv|tRef[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[6]~6_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~0_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~1\);

-- Location: LCCOMB_X41_Y4_N8
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~2_combout\ = (\conv|inRefConv|tRef[7]~4_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~1\ & VCC)) # (!\conv|inRefConv|tRef[7]~4_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~1\))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~3\ = CARRY((!\conv|inRefConv|tRef[7]~4_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[7]~4_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~1\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~2_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~3\);

-- Location: LCCOMB_X41_Y4_N10
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~4_combout\ = (\conv|inRefConv|tRef[8]~1_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~3\ $ (GND))) # (!\conv|inRefConv|tRef[8]~1_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~3\ & VCC))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~5\ = CARRY((\conv|inRefConv|tRef[8]~1_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv|inRefConv|tRef[8]~1_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~3\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~4_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~5\);

-- Location: LCCOMB_X41_Y4_N12
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~6_combout\ = !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~5\
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~7\ = CARRY(!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~5\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~6_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~7\);

-- Location: LCCOMB_X41_Y4_N14
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~8_combout\ = \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~7\ $ (GND)
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~9\ = CARRY(!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~7\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~8_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~9\);

-- Location: LCCOMB_X41_Y4_N16
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~10_combout\ = !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~9\
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~11\ = CARRY(!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~9\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~10_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~11\);

-- Location: LCCOMB_X41_Y4_N18
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~12_combout\ = \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~11\ $ (GND)
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~13\ = CARRY(!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~11\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~12_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~13\);

-- Location: LCCOMB_X41_Y4_N20
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\ = !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~13\
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~15\ = CARRY(!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~13\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~15\);

-- Location: LCCOMB_X41_Y4_N22
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ = \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~15\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\);

-- Location: LCCOMB_X41_Y4_N28
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~12_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116_combout\);

-- Location: LCCOMB_X43_Y4_N12
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~10_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~10_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117_combout\);

-- Location: LCCOMB_X43_Y4_N6
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~8_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~8_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118_combout\);

-- Location: LCCOMB_X43_Y4_N28
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~6_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~6_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119_combout\);

-- Location: LCCOMB_X42_Y4_N6
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~4_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121_combout\);

-- Location: LCCOMB_X42_Y4_N0
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & \conv|inRefConv|tRef[8]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datac => \conv|inRefConv|tRef[8]~1_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120_combout\);

-- Location: LCCOMB_X41_Y4_N26
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122_combout\ = (\conv|inRefConv|tRef[7]~4_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[7]~4_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122_combout\);

-- Location: LCCOMB_X41_Y4_N24
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~2_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123_combout\);

-- Location: LCCOMB_X43_Y4_N2
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & \conv|inRefConv|tRef[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datad => \conv|inRefConv|tRef[6]~6_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124_combout\);

-- Location: LCCOMB_X41_Y4_N4
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~0_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125_combout\);

-- Location: LCCOMB_X45_Y4_N12
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~126_combout\ = (\conv|inRefConv|tRef[5]~8_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[5]~8_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~126_combout\);

-- Location: LCCOMB_X45_Y4_N10
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~127_combout\ = (\conv|inRefConv|tRef[5]~8_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[5]~8_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~127_combout\);

-- Location: LCCOMB_X42_Y4_N10
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~0_combout\ = (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~126_combout\) # (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~127_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~1\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~126_combout\) # (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~126_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~127_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~0_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~1\);

-- Location: LCCOMB_X42_Y4_N12
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~2_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~1\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~1\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~3\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~1\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~2_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~3\);

-- Location: LCCOMB_X42_Y4_N14
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~4_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~3\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~3\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123_combout\)))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~5\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~3\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~3\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~4_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~5\);

-- Location: LCCOMB_X42_Y4_N16
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~6_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~5\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~5\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~7\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~5\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~6_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~7\);

-- Location: LCCOMB_X42_Y4_N18
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~8_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119_combout\ & ((GND) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~7\))) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~7\ $ (GND)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~9\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119_combout\) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~7\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~8_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~9\);

-- Location: LCCOMB_X42_Y4_N20
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~10_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~9\ & VCC)) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~9\))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~11\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~9\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~10_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~11\);

-- Location: LCCOMB_X42_Y4_N22
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~12_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117_combout\ & ((GND) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~11\))) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~11\ $ (GND)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~13\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117_combout\) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~11\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~12_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~13\);

-- Location: LCCOMB_X42_Y4_N24
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~14_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~13\ & VCC)) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~13\))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~15\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~13\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~14_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~15\);

-- Location: LCCOMB_X42_Y4_N26
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~16_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~15\ & ((((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & 
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~15\ & (((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & 
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\)) # (GND)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~17\ = CARRY(((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\)) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~15\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~16_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~17\);

-- Location: LCCOMB_X42_Y4_N28
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\ = !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~17\
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~19\ = CARRY(!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~17\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~19\);

-- Location: LCCOMB_X42_Y4_N30
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ = \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~19\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\);

-- Location: LCCOMB_X42_Y4_N4
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & 
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\);

-- Location: LCCOMB_X45_Y4_N0
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~16_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129_combout\);

-- Location: LCCOMB_X45_Y4_N26
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~14_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130_combout\);

-- Location: LCCOMB_X41_Y4_N30
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~196_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & 
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~12_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~196_combout\);

-- Location: LCCOMB_X43_Y4_N8
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~12_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131_combout\);

-- Location: LCCOMB_X43_Y4_N16
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~197_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~10_combout\ & 
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~10_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~197_combout\);

-- Location: LCCOMB_X43_Y4_N14
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~198_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~8_combout\ & 
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~8_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~198_combout\);

-- Location: LCCOMB_X42_Y4_N2
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~10_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132_combout\);

-- Location: LCCOMB_X43_Y4_N10
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~8_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133_combout\);

-- Location: LCCOMB_X43_Y4_N0
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~199_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~6_combout\ & 
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~6_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~199_combout\);

-- Location: LCCOMB_X46_Y4_N28
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~6_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~6_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134_combout\);

-- Location: LCCOMB_X42_Y4_N8
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~230_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & 
-- (\conv|inRefConv|tRef[8]~1_combout\)) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[8]~1_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~4_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~230_combout\);

-- Location: LCCOMB_X43_Y5_N20
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~4_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~4_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135_combout\);

-- Location: LCCOMB_X41_Y4_N0
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~231_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & 
-- (\conv|inRefConv|tRef[7]~4_combout\)) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[7]~4_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~2_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~231_combout\);

-- Location: LCCOMB_X42_Y5_N28
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~2_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136_combout\);

-- Location: LCCOMB_X41_Y4_N2
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~232_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & 
-- (\conv|inRefConv|tRef[6]~6_combout\)) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datac => \conv|inRefConv|tRef[6]~6_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_19~0_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~232_combout\);

-- Location: LCCOMB_X43_Y5_N4
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~0_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~0_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138_combout\);

-- Location: LCCOMB_X43_Y5_N26
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137_combout\ = (\conv|inRefConv|tRef[5]~8_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[5]~8_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137_combout\);

-- Location: LCCOMB_X43_Y5_N2
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~139_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv|inRefConv|tRef[4]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv|inRefConv|tRef[4]~10_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~139_combout\);

-- Location: LCCOMB_X43_Y5_N12
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~140_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv|inRefConv|tRef[4]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv|inRefConv|tRef[4]~10_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~140_combout\);

-- Location: LCCOMB_X42_Y5_N2
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~0_combout\ = (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~139_combout\) # (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~140_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~1\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~139_combout\) # (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~139_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~140_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~0_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~1\);

-- Location: LCCOMB_X42_Y5_N4
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~2_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~1\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~1\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~3\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~1\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~2_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~3\);

-- Location: LCCOMB_X42_Y5_N6
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~4_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~3\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~232_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~3\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~232_combout\)))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~5\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~3\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~232_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~3\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~4_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~5\);

-- Location: LCCOMB_X42_Y5_N8
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~6_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~5\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~231_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~5\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~231_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~7\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~231_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~231_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~5\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~6_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~7\);

-- Location: LCCOMB_X42_Y5_N10
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~8_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~7\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~230_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~7\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~230_combout\) # (GND))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~9\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~230_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~230_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~7\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~8_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~9\);

-- Location: LCCOMB_X42_Y5_N12
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~10_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~9\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~199_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~9\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~199_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~11\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~199_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~199_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~9\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~10_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~11\);

-- Location: LCCOMB_X42_Y5_N14
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~12_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~11\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~198_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~11\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~198_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132_combout\) # (GND))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~13\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~198_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~198_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~11\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~12_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~13\);

-- Location: LCCOMB_X42_Y5_N16
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~14_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~13\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~197_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~13\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~197_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~15\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~197_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~197_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~13\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~14_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~15\);

-- Location: LCCOMB_X42_Y5_N18
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~16_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~15\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~196_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~15\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~196_combout\) # (GND))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~17\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~196_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~196_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~15\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~16_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~17\);

-- Location: LCCOMB_X42_Y5_N20
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~18_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~17\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~17\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~19\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~17\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~18_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~19\);

-- Location: LCCOMB_X42_Y5_N22
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~20_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~19\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~19\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)) # (GND)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~21\ = CARRY(((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~19\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~20_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~21\);

-- Location: LCCOMB_X42_Y5_N24
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\ = !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~21\
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~23\ = CARRY(!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~21\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~23\);

-- Location: LCCOMB_X42_Y5_N26
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ = \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~23\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\);

-- Location: LCCOMB_X43_Y5_N6
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & 
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\);

-- Location: LCCOMB_X42_Y5_N0
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142_combout\);

-- Location: LCCOMB_X45_Y4_N28
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~200_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~16_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~200_combout\);

-- Location: LCCOMB_X43_Y5_N8
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~18_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143_combout\);

-- Location: LCCOMB_X45_Y4_N14
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~201_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~196_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~14_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~14_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~196_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~201_combout\);

-- Location: LCCOMB_X46_Y4_N6
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~16_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144_combout\);

-- Location: LCCOMB_X43_Y4_N4
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~14_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145_combout\);

-- Location: LCCOMB_X43_Y4_N26
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~202_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~197_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~197_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~12_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~202_combout\);

-- Location: LCCOMB_X43_Y4_N20
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~203_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~198_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~198_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~10_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~203_combout\);

-- Location: LCCOMB_X43_Y4_N22
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~12_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~12_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146_combout\);

-- Location: LCCOMB_X43_Y4_N18
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~204_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~199_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~8_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~199_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~204_combout\);

-- Location: LCCOMB_X45_Y6_N8
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~10_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147_combout\);

-- Location: LCCOMB_X46_Y4_N12
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~8_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148_combout\);

-- Location: LCCOMB_X46_Y4_N18
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~205_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~230_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~6_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~230_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~205_combout\);

-- Location: LCCOMB_X43_Y5_N16
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~206_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~231_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~4_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~4_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~231_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~206_combout\);

-- Location: LCCOMB_X43_Y5_N14
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~6_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149_combout\);

-- Location: LCCOMB_X45_Y6_N30
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~4_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150_combout\);

-- Location: LCCOMB_X42_Y5_N30
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~207_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~232_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~2_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~2_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~232_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~207_combout\);

-- Location: LCCOMB_X43_Y5_N0
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~233_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & 
-- (\conv|inRefConv|tRef[5]~8_combout\)) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[5]~8_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_20~0_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~233_combout\);

-- Location: LCCOMB_X45_Y6_N28
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~2_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151_combout\);

-- Location: LCCOMB_X43_Y5_N28
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|inRefConv|tRef[4]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|inRefConv|tRef[4]~10_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152_combout\);

-- Location: LCCOMB_X43_Y5_N18
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~0_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153_combout\);

-- Location: LCCOMB_X46_Y4_N24
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~155_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|inRefConv|tRef[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|inRefConv|tRef[3]~12_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~155_combout\);

-- Location: LCCOMB_X46_Y4_N14
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~154_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|inRefConv|tRef[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|inRefConv|tRef[3]~12_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~154_combout\);

-- Location: LCCOMB_X45_Y5_N2
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~0_combout\ = (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~155_combout\) # (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~154_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~1\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~155_combout\) # (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~154_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~155_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~154_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~1\);

-- Location: LCCOMB_X45_Y5_N4
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~2_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~1\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~1\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~3\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~1\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~3\);

-- Location: LCCOMB_X45_Y5_N6
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~4_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~3\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~233_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~3\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~233_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151_combout\)))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~5\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~3\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~233_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~233_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~3\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~5\);

-- Location: LCCOMB_X45_Y5_N8
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~6_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~5\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~207_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~5\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~207_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~7\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~207_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~207_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~5\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~7\);

-- Location: LCCOMB_X45_Y5_N10
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~8_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~7\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~206_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~7\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~206_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149_combout\) # (GND))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~9\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~206_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~206_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~7\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~9\);

-- Location: LCCOMB_X45_Y5_N12
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~10_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~9\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~205_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~9\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~205_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~11\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~205_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~205_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~9\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~11\);

-- Location: LCCOMB_X45_Y5_N14
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~12_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~11\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~204_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~11\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~204_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147_combout\) # (GND))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~13\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~204_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~204_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~11\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~13\);

-- Location: LCCOMB_X45_Y5_N16
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~14_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~13\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~203_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~13\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~203_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~15\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~203_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~203_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~13\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~15\);

-- Location: LCCOMB_X45_Y5_N18
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~16_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~15\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~202_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~15\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~202_combout\) # (GND))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~17\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~202_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~202_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~15\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~17\);

-- Location: LCCOMB_X45_Y5_N20
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~18_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~17\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~201_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~17\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~201_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~19\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~201_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~201_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~17\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~18_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~19\);

-- Location: LCCOMB_X45_Y5_N22
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~20_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~19\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~200_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~19\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~200_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143_combout\) # (GND))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~21\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~200_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~200_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~19\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~20_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~21\);

-- Location: LCCOMB_X45_Y5_N24
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~22_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~21\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~21\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~23\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~21\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~22_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~23\);

-- Location: LCCOMB_X45_Y5_N26
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~24_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~23\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~23\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\)) # (GND)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~25\ = CARRY(((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\)) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~23\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~24_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~25\);

-- Location: LCCOMB_X45_Y5_N28
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\ = !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~25\
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~27\ = CARRY(!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~25\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~27\);

-- Location: LCCOMB_X45_Y5_N30
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ = \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~27\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\);

-- Location: LCCOMB_X46_Y5_N22
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157_combout\);

-- Location: LCCOMB_X46_Y4_N10
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\ & 
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\);

-- Location: LCCOMB_X43_Y5_N30
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~208_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~208_combout\);

-- Location: LCCOMB_X46_Y4_N8
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~22_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~22_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158_combout\);

-- Location: LCCOMB_X47_Y5_N30
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~20_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159_combout\);

-- Location: LCCOMB_X43_Y5_N24
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~209_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~200_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~200_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~18_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~209_combout\);

-- Location: LCCOMB_X45_Y5_N0
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~18_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160_combout\);

-- Location: LCCOMB_X46_Y4_N0
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~210_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~201_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~16_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~201_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~210_combout\);

-- Location: LCCOMB_X43_Y4_N24
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~211_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~202_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~202_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~14_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~211_combout\);

-- Location: LCCOMB_X46_Y5_N28
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161_combout\);

-- Location: LCCOMB_X43_Y4_N30
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~212_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~203_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~12_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~12_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~203_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~212_combout\);

-- Location: LCCOMB_X46_Y5_N18
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162_combout\);

-- Location: LCCOMB_X45_Y6_N2
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~12_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163_combout\);

-- Location: LCCOMB_X45_Y6_N18
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~213_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~204_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~10_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~10_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~204_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~213_combout\);

-- Location: LCCOMB_X46_Y6_N12
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164_combout\);

-- Location: LCCOMB_X46_Y4_N26
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~214_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~205_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~8_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~205_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~214_combout\);

-- Location: LCCOMB_X45_Y6_N12
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165_combout\);

-- Location: LCCOMB_X43_Y5_N22
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~215_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~206_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~6_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~6_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~206_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~215_combout\);

-- Location: LCCOMB_X45_Y6_N10
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~6_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166_combout\);

-- Location: LCCOMB_X45_Y6_N24
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~216_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~207_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~4_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~4_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~207_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~216_combout\);

-- Location: LCCOMB_X45_Y6_N20
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167_combout\);

-- Location: LCCOMB_X45_Y6_N6
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~217_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~233_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~2_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~233_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~217_combout\);

-- Location: LCCOMB_X45_Y6_N14
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~2_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168_combout\);

-- Location: LCCOMB_X43_Y5_N10
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~234_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & 
-- (\conv|inRefConv|tRef[4]~10_combout\)) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[4]~10_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_21~0_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~234_combout\);

-- Location: LCCOMB_X46_Y4_N4
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~0_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170_combout\);

-- Location: LCCOMB_X46_Y4_N30
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|inRefConv|tRef[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv|inRefConv|tRef[3]~12_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169_combout\);

-- Location: LCCOMB_X45_Y6_N16
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~171_combout\ = (\conv|inRefConv|tRef[2]~14_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[2]~14_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~171_combout\);

-- Location: LCCOMB_X47_Y4_N4
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~172_combout\ = (\conv|inRefConv|tRef[2]~14_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[2]~14_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~172_combout\);

-- Location: LCCOMB_X46_Y6_N16
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~0_combout\ = (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~171_combout\) # (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~172_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~1\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~171_combout\) # (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~171_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~172_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~1\);

-- Location: LCCOMB_X46_Y6_N18
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~2_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~1\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~1\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~3\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~1\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~3\);

-- Location: LCCOMB_X46_Y6_N20
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~4_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~3\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~234_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~3\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~234_combout\)))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~5\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~3\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~234_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~3\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~5\);

-- Location: LCCOMB_X46_Y6_N22
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~6_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~5\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~217_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~5\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~217_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~7\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~217_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~217_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~5\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~7\);

-- Location: LCCOMB_X46_Y6_N24
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~8_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~7\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~216_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~7\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~216_combout\) # (GND))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~9\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~216_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~216_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~7\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~9\);

-- Location: LCCOMB_X46_Y6_N26
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~10_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~9\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~215_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~9\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~215_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~11\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~215_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~215_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~9\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~11\);

-- Location: LCCOMB_X46_Y6_N28
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~12_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~11\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~214_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~11\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~214_combout\) # (GND))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~13\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~214_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~214_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~11\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~13\);

-- Location: LCCOMB_X46_Y6_N30
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~14_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~13\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~213_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~13\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~213_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~15\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~213_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~213_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~13\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~15\);

-- Location: LCCOMB_X46_Y5_N0
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~16_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~15\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~212_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~15\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~212_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162_combout\) # (GND))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~17\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~212_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~212_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~15\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~17\);

-- Location: LCCOMB_X46_Y5_N2
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~18_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~17\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~211_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~17\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~211_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~19\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~211_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~211_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~17\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~18_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~19\);

-- Location: LCCOMB_X46_Y5_N4
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~20_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~19\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~210_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~19\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~210_combout\) # (GND))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~21\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~210_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~210_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~19\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~21\);

-- Location: LCCOMB_X46_Y5_N6
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~22_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~21\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~209_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~21\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~209_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~23\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~209_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~209_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~21\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~22_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~23\);

-- Location: LCCOMB_X46_Y5_N8
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~24_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~23\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~208_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~23\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~208_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158_combout\) # (GND))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~25\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~208_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~208_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~23\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~24_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~25\);

-- Location: LCCOMB_X46_Y5_N10
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~26_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~25\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~25\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~27\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~25\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~26_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~27\);

-- Location: LCCOMB_X46_Y5_N12
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~28_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~27\ & ((((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & 
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\))))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~27\ & (((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & 
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\)) # (GND)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~29\ = CARRY(((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\)) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~27\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~28_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~29\);

-- Location: LCCOMB_X46_Y5_N14
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~30_combout\ = !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~29\
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~31\ = CARRY(!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~29\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~30_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~31\);

-- Location: LCCOMB_X46_Y5_N16
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ = \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~31\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\);

-- Location: LCCOMB_X47_Y4_N12
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~188_combout\ = (\conv|inRefConv|tRef[2]~14_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[2]~14_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~188_combout\);

-- Location: LCCOMB_X47_Y6_N12
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~189_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~0_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~189_combout\);

-- Location: LCCOMB_X47_Y6_N6
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~190_combout\ = (\conv|inRefConv|tRef[1]~16_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[1]~16_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~190_combout\);

-- Location: LCCOMB_X47_Y6_N4
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~191_combout\ = (\conv|inRefConv|tRef[1]~16_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|tRef[1]~16_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~191_combout\);

-- Location: LCCOMB_X47_Y6_N14
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~2_combout\ = (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~190_combout\) # (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~191_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~3\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~190_combout\) # (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~190_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~191_combout\,
	datad => VCC,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~2_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~3\);

-- Location: LCCOMB_X47_Y6_N16
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~4_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~3\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~189_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~188_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~3\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~189_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~188_combout\)))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~5\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~189_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~188_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~189_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~188_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~3\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~4_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~5\);

-- Location: LCCOMB_X47_Y6_N8
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~174_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~28_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~174_combout\);

-- Location: LCCOMB_X46_Y5_N24
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~173_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & 
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~173_combout\);

-- Location: LCCOMB_X46_Y5_N26
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~218_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~218_combout\);

-- Location: LCCOMB_X47_Y5_N20
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~175_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~26_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~175_combout\);

-- Location: LCCOMB_X46_Y4_N16
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~219_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~208_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~208_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~22_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~219_combout\);

-- Location: LCCOMB_X47_Y5_N18
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~176_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~24_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~176_combout\);

-- Location: LCCOMB_X47_Y5_N26
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~220_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~209_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~20_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~20_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~209_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~220_combout\);

-- Location: LCCOMB_X47_Y5_N24
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~177_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~22_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~22_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~177_combout\);

-- Location: LCCOMB_X47_Y5_N22
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~178_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~20_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~178_combout\);

-- Location: LCCOMB_X46_Y4_N2
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~221_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~210_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~18_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~210_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~221_combout\);

-- Location: LCCOMB_X47_Y4_N14
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~179_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~18_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~18_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~179_combout\);

-- Location: LCCOMB_X46_Y5_N20
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~222_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~211_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~211_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~222_combout\);

-- Location: LCCOMB_X46_Y5_N30
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~223_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~212_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~14_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~212_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~223_combout\);

-- Location: LCCOMB_X47_Y5_N28
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~180_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~16_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~180_combout\);

-- Location: LCCOMB_X45_Y6_N0
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~224_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~213_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~12_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~213_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~224_combout\);

-- Location: LCCOMB_X46_Y6_N6
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~181_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~14_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~181_combout\);

-- Location: LCCOMB_X46_Y6_N8
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~182_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~182_combout\);

-- Location: LCCOMB_X46_Y4_N20
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~225_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~214_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~214_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~225_combout\);

-- Location: LCCOMB_X46_Y6_N2
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~183_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~10_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~183_combout\);

-- Location: LCCOMB_X45_Y6_N22
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~226_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~215_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~8_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~215_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~226_combout\);

-- Location: LCCOMB_X46_Y6_N0
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~184_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~184_combout\);

-- Location: LCCOMB_X45_Y6_N4
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~227_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~216_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~216_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~227_combout\);

-- Location: LCCOMB_X46_Y6_N10
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~185_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~6_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~185_combout\);

-- Location: LCCOMB_X45_Y6_N26
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~228_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~217_combout\) # 
-- ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~217_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~228_combout\);

-- Location: LCCOMB_X46_Y6_N14
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~229_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~234_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~2_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~234_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~229_combout\);

-- Location: LCCOMB_X47_Y6_N2
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~186_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~186_combout\);

-- Location: LCCOMB_X46_Y4_N22
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~235_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & 
-- (\conv|inRefConv|tRef[3]~12_combout\)) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv|inRefConv|tRef[3]~12_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~235_combout\);

-- Location: LCCOMB_X46_Y6_N4
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~187_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~187_combout\);

-- Location: LCCOMB_X47_Y6_N18
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~6_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~5\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~235_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~187_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~5\ & ((((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~235_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~187_combout\)))))
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~7\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~5\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~235_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~235_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~187_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~5\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~6_combout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~7\);

-- Location: LCCOMB_X47_Y6_N20
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~9_cout\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~229_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~186_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~229_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~186_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~7\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~9_cout\);

-- Location: LCCOMB_X47_Y6_N22
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~11_cout\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~185_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~228_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~185_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~228_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~9_cout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~11_cout\);

-- Location: LCCOMB_X47_Y6_N24
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~13_cout\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~184_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~227_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~184_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~227_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~11_cout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~13_cout\);

-- Location: LCCOMB_X47_Y6_N26
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~15_cout\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~183_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~226_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~183_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~226_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~13_cout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~15_cout\);

-- Location: LCCOMB_X47_Y6_N28
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~17_cout\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~182_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~225_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~182_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~225_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~15_cout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~17_cout\);

-- Location: LCCOMB_X47_Y6_N30
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~19_cout\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~224_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~181_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~224_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~181_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~17_cout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~19_cout\);

-- Location: LCCOMB_X47_Y5_N0
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~21_cout\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~223_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~180_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~223_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~180_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~19_cout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~21_cout\);

-- Location: LCCOMB_X47_Y5_N2
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~23_cout\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~179_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~222_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~179_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~222_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~21_cout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~23_cout\);

-- Location: LCCOMB_X47_Y5_N4
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~25_cout\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~178_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~221_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~178_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~221_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~23_cout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~25_cout\);

-- Location: LCCOMB_X47_Y5_N6
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~27_cout\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~220_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~177_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~220_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~177_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~25_cout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~27_cout\);

-- Location: LCCOMB_X47_Y5_N8
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~29_cout\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~219_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~176_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~219_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~176_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~27_cout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~29_cout\);

-- Location: LCCOMB_X47_Y5_N10
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~31_cout\ = CARRY((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~218_combout\) # ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~175_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~218_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~175_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~29_cout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~31_cout\);

-- Location: LCCOMB_X47_Y5_N12
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~33_cout\ = CARRY((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~174_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~173_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~174_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~173_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~31_cout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~33_cout\);

-- Location: LCCOMB_X47_Y5_N14
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~35_cout\ = CARRY(((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~30_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~33_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~30_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => VCC,
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~33_cout\,
	cout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~35_cout\);

-- Location: LCCOMB_X47_Y5_N16
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\ = !\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~35_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~35_cout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\);

-- Location: LCCOMB_X47_Y6_N10
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~188_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~189_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~188_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~4_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~189_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\);

-- Location: LCCOMB_X46_Y3_N22
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\ & (\conv|inRefConv|tRef[1]~16_combout\)) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|inRefConv|tRef[1]~16_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~2_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\);

-- Location: LCCOMB_X47_Y6_N0
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~235_combout\) # 
-- ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~187_combout\)))) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~235_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~187_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~6_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\);

-- Location: LCCOMB_X47_Y3_N6
\conv|inRefConv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|inRefConv|Equal0~0_combout\ = (\FSM|pS.NORMAL~q\ & ((!\FSM|pS.GEL~q\) # (!\FSM|pS.LUA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|pS.NORMAL~q\,
	datac => \FSM|pS.LUA~q\,
	datad => \FSM|pS.GEL~q\,
	combout => \conv|inRefConv|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y3_N0
\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~0_combout\ = (!\conv|inRefConv|Equal0~0_combout\ & \tSelect|cont9|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|Equal0~0_combout\,
	datad => \tSelect|cont9|s_cont\(0),
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~0_combout\);

-- Location: LCCOMB_X46_Y3_N24
\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\ & (!\conv|inRefConv|Equal0~0_combout\ & (\tSelect|cont9|s_cont\(0)))) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\ & (((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|inRefConv|Equal0~0_combout\,
	datab => \tSelect|cont9|s_cont\(0),
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~0_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\,
	combout => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\);

-- Location: LCCOMB_X45_Y3_N4
\conv|conv7seg|outPort0[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[0]~8_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\ & 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\ $ (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\,
	combout => \conv|conv7seg|outPort0[0]~8_combout\);

-- Location: LCCOMB_X45_Y3_N24
\conv|conv7seg|outPort0[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[0]~21_combout\ = (\conv|conv7seg|outPort0[0]~8_combout\) # ((!\divF~input_o\ & \FSM|pS.NORMAL~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv7seg|outPort0[0]~8_combout\,
	datac => \divF~input_o\,
	datad => \FSM|pS.NORMAL~q\,
	combout => \conv|conv7seg|outPort0[0]~21_combout\);

-- Location: LCCOMB_X45_Y3_N26
\conv|conv7seg|outPort0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0~9_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\ & 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\ $ (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\,
	combout => \conv|conv7seg|outPort0~9_combout\);

-- Location: LCCOMB_X35_Y3_N26
\conv|conv7seg|outPort0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0~22_combout\ = (\conv|conv7seg|outPort0~9_combout\) # ((!\divF~input_o\ & \FSM|pS.NORMAL~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divF~input_o\,
	datac => \FSM|pS.NORMAL~q\,
	datad => \conv|conv7seg|outPort0~9_combout\,
	combout => \conv|conv7seg|outPort0~22_combout\);

-- Location: LCCOMB_X45_Y3_N20
\conv|conv7seg|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|Equal7~0_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\,
	combout => \conv|conv7seg|Equal7~0_combout\);

-- Location: LCCOMB_X35_Y3_N28
\conv|conv7seg|outPort0[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[2]~23_combout\ = (\conv|conv7seg|Equal7~0_combout\) # ((!\divF~input_o\ & \FSM|pS.NORMAL~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divF~input_o\,
	datac => \FSM|pS.NORMAL~q\,
	datad => \conv|conv7seg|Equal7~0_combout\,
	combout => \conv|conv7seg|outPort0[2]~23_combout\);

-- Location: LCCOMB_X45_Y3_N6
\conv|conv7seg|outPort0[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[3]~24_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\) # (((\FSM|pS.NORMAL~q\ & !\divF~input_o\)) # (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|pS.NORMAL~q\,
	datab => \divF~input_o\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	combout => \conv|conv7seg|outPort0[3]~24_combout\);

-- Location: LCCOMB_X45_Y3_N0
\conv|conv7seg|outPort0[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[5]~11_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\) # (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\ $ 
-- (((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\ & !\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\,
	combout => \conv|conv7seg|outPort0[5]~11_combout\);

-- Location: LCCOMB_X45_Y3_N18
\conv|conv7seg|outPort0[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[5]~10_combout\ = (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\ & 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\ & \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\,
	combout => \conv|conv7seg|outPort0[5]~10_combout\);

-- Location: LCCOMB_X45_Y3_N30
\conv|conv7seg|outPort0[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[3]~12_combout\ = (\conv|conv7seg|outPort0[5]~10_combout\) # ((\conv|conv7seg|outPort0[3]~24_combout\ & ((!\conv|enableConv|yout~0_combout\) # (!\conv|conv7seg|outPort0[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv7seg|outPort0[3]~24_combout\,
	datab => \conv|conv7seg|outPort0[5]~11_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv7seg|outPort0[5]~10_combout\,
	combout => \conv|conv7seg|outPort0[3]~12_combout\);

-- Location: LCCOMB_X45_Y3_N22
\conv|conv7seg|outPort0[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[4]~14_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\,
	combout => \conv|conv7seg|outPort0[4]~14_combout\);

-- Location: LCCOMB_X46_Y3_N4
\conv|conv7seg|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|Equal0~0_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\ & ((!\conv|inRefConv|tRef[1]~16_combout\))) # 
-- (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~2_combout\,
	datac => \conv|inRefConv|tRef[1]~16_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|op_25~36_combout\,
	combout => \conv|conv7seg|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y3_N16
\conv|conv7seg|outPort0[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[6]~13_combout\ = (\conv|enableConv|yout~0_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\ $ (((\conv|conv7seg|Equal0~0_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv7seg|Equal0~0_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\,
	combout => \conv|conv7seg|outPort0[6]~13_combout\);

-- Location: LCCOMB_X45_Y3_N28
\conv|conv7seg|outPort0[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[6]~15_combout\ = (\conv|enableConv|yout~0_combout\ & ((\conv|conv7seg|Equal0~0_combout\ & (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\ & 
-- !\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\)) # (!\conv|conv7seg|Equal0~0_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv7seg|Equal0~0_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\,
	combout => \conv|conv7seg|outPort0[6]~15_combout\);

-- Location: LCCOMB_X45_Y3_N2
\conv|conv7seg|outPort0[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[4]~16_combout\ = (!\conv|conv7seg|outPort0[6]~15_combout\ & ((\conv|conv7seg|outPort0[4]~14_combout\) # ((\conv|conv7seg|outPort0[6]~13_combout\) # (!\conv|enableConv|yout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv7seg|outPort0[4]~14_combout\,
	datab => \conv|conv7seg|outPort0[6]~13_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv7seg|outPort0[6]~15_combout\,
	combout => \conv|conv7seg|outPort0[4]~16_combout\);

-- Location: LCCOMB_X45_Y3_N12
\conv|conv7seg|outPort0[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[5]~17_combout\ = ((!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\ & ((\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\) # 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\)))) # (!\conv|enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\,
	combout => \conv|conv7seg|outPort0[5]~17_combout\);

-- Location: LCCOMB_X45_Y3_N10
\conv|conv7seg|outPort0[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[5]~18_combout\ = (\conv|conv7seg|outPort0[5]~11_combout\ & ((\conv|enableConv|yout~0_combout\ & ((\conv|conv7seg|outPort0[5]~10_combout\))) # (!\conv|enableConv|yout~0_combout\ & (\conv|conv7seg|outPort0[5]~17_combout\)))) # 
-- (!\conv|conv7seg|outPort0[5]~11_combout\ & (\conv|conv7seg|outPort0[5]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv7seg|outPort0[5]~17_combout\,
	datab => \conv|conv7seg|outPort0[5]~11_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv7seg|outPort0[5]~10_combout\,
	combout => \conv|conv7seg|outPort0[5]~18_combout\);

-- Location: LCCOMB_X45_Y3_N8
\conv|conv7seg|outPort0[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[6]~19_combout\ = (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\ & (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\ & 
-- (\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\ $ (!\conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~193_combout\,
	datab => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~195_combout\,
	datad => \conv|conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1056]~192_combout\,
	combout => \conv|conv7seg|outPort0[6]~19_combout\);

-- Location: LCCOMB_X45_Y3_N14
\conv|conv7seg|outPort0[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv|conv7seg|outPort0[6]~20_combout\ = (\conv|conv7seg|outPort0[6]~15_combout\) # ((!\conv|conv7seg|outPort0[6]~13_combout\ & ((\conv|conv7seg|outPort0[6]~19_combout\) # (!\conv|enableConv|yout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv|conv7seg|outPort0[6]~19_combout\,
	datab => \conv|conv7seg|outPort0[6]~13_combout\,
	datac => \conv|enableConv|yout~0_combout\,
	datad => \conv|conv7seg|outPort0[6]~15_combout\,
	combout => \conv|conv7seg|outPort0[6]~20_combout\);

-- Location: LCCOMB_X48_Y1_N18
\LEDs|mux1|yout[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDs|mux1|yout[1]~5_combout\ = (\FSM|pS.NORMAL~q\ & (!\FSM|pS.GEL~q\)) # (!\FSM|pS.NORMAL~q\ & (((\ROM|Mux0~0_combout\) # (\horaROM[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|pS.GEL~q\,
	datab => \ROM|Mux0~0_combout\,
	datac => \horaROM[3]~input_o\,
	datad => \FSM|pS.NORMAL~q\,
	combout => \LEDs|mux1|yout[1]~5_combout\);

-- Location: LCCOMB_X48_Y1_N16
\LEDs|mux1|yout[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDs|mux1|yout[0]~4_combout\ = (\FSM|pS.NORMAL~q\ & (((!\FSM|pS.LUA~q\)))) # (!\FSM|pS.NORMAL~q\ & ((\horaROM[3]~input_o\) # ((!\ROM|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaROM[3]~input_o\,
	datab => \FSM|pS.LUA~q\,
	datac => \ROM|Mux1~0_combout\,
	datad => \FSM|pS.NORMAL~q\,
	combout => \LEDs|mux1|yout[0]~4_combout\);

-- Location: LCCOMB_X43_Y1_N20
\LEDs|mux2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDs|mux2|Equal1~0_combout\ = (!\LEDs|mux1|yout[1]~5_combout\ & \LEDs|mux1|yout[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LEDs|mux1|yout[1]~5_combout\,
	datad => \LEDs|mux1|yout[0]~4_combout\,
	combout => \LEDs|mux2|Equal1~0_combout\);

-- Location: LCCOMB_X45_Y1_N28
\LEDs|mux2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDs|mux2|Equal0~0_combout\ = (!\LEDs|mux1|yout[0]~4_combout\ & \LEDs|mux1|yout[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDs|mux1|yout[0]~4_combout\,
	datac => \LEDs|mux1|yout[1]~5_combout\,
	combout => \LEDs|mux2|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y1_N2
\LEDs|mux2|yout[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDs|mux2|yout[2]~0_combout\ = \LEDs|mux1|yout[0]~4_combout\ $ (\LEDs|mux1|yout[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDs|mux1|yout[0]~4_combout\,
	datac => \LEDs|mux1|yout[1]~5_combout\,
	combout => \LEDs|mux2|yout[2]~0_combout\);

ww_radiador <= \radiador~output_o\;

ww_tDzn(0) <= \tDzn[0]~output_o\;

ww_tDzn(1) <= \tDzn[1]~output_o\;

ww_tDzn(2) <= \tDzn[2]~output_o\;

ww_tDzn(3) <= \tDzn[3]~output_o\;

ww_tDzn(4) <= \tDzn[4]~output_o\;

ww_tDzn(5) <= \tDzn[5]~output_o\;

ww_tDzn(6) <= \tDzn[6]~output_o\;

ww_tUni(0) <= \tUni[0]~output_o\;

ww_tUni(1) <= \tUni[1]~output_o\;

ww_tUni(2) <= \tUni[2]~output_o\;

ww_tUni(3) <= \tUni[3]~output_o\;

ww_tUni(4) <= \tUni[4]~output_o\;

ww_tUni(5) <= \tUni[5]~output_o\;

ww_tUni(6) <= \tUni[6]~output_o\;

ww_tDcm(0) <= \tDcm[0]~output_o\;

ww_tDcm(1) <= \tDcm[1]~output_o\;

ww_tDcm(2) <= \tDcm[2]~output_o\;

ww_tDcm(3) <= \tDcm[3]~output_o\;

ww_tDcm(4) <= \tDcm[4]~output_o\;

ww_tDcm(5) <= \tDcm[5]~output_o\;

ww_tDcm(6) <= \tDcm[6]~output_o\;

ww_modoLED(0) <= \modoLED[0]~output_o\;

ww_modoLED(1) <= \modoLED[1]~output_o\;

ww_modoLED(2) <= \modoLED[2]~output_o\;
END structure;


