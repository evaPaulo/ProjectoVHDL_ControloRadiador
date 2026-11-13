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

-- DATE "06/01/2023 10:58:27"

-- 
-- Device: Altera EP4CE115F23C7 Package FBGA484
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	RelogioFinal IS
    PORT (
	clk : IN std_logic;
	pulso : IN std_logic;
	divF : IN std_logic;
	up : IN std_logic;
	dw : IN std_logic;
	tS : IN std_logic;
	horaRom : OUT std_logic_vector(4 DOWNTO 0);
	hD : OUT std_logic_vector(6 DOWNTO 0);
	hU : OUT std_logic_vector(6 DOWNTO 0);
	mD : OUT std_logic_vector(6 DOWNTO 0);
	mU : OUT std_logic_vector(6 DOWNTO 0)
	);
END RelogioFinal;

-- Design Ports Information
-- horaRom[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaRom[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaRom[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaRom[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaRom[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hD[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hD[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hD[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hD[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hD[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hD[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hD[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hU[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hU[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hU[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hU[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hU[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hU[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hU[6]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD[1]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mU[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mU[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mU[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mU[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mU[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mU[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mU[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divF	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dw	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tS	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RelogioFinal IS
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
SIGNAL ww_tS : std_logic;
SIGNAL ww_horaRom : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_hD : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hU : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_mD : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_mU : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \horaRom[0]~output_o\ : std_logic;
SIGNAL \horaRom[1]~output_o\ : std_logic;
SIGNAL \horaRom[2]~output_o\ : std_logic;
SIGNAL \horaRom[3]~output_o\ : std_logic;
SIGNAL \horaRom[4]~output_o\ : std_logic;
SIGNAL \hD[0]~output_o\ : std_logic;
SIGNAL \hD[1]~output_o\ : std_logic;
SIGNAL \hD[2]~output_o\ : std_logic;
SIGNAL \hD[3]~output_o\ : std_logic;
SIGNAL \hD[4]~output_o\ : std_logic;
SIGNAL \hD[5]~output_o\ : std_logic;
SIGNAL \hD[6]~output_o\ : std_logic;
SIGNAL \hU[0]~output_o\ : std_logic;
SIGNAL \hU[1]~output_o\ : std_logic;
SIGNAL \hU[2]~output_o\ : std_logic;
SIGNAL \hU[3]~output_o\ : std_logic;
SIGNAL \hU[4]~output_o\ : std_logic;
SIGNAL \hU[5]~output_o\ : std_logic;
SIGNAL \hU[6]~output_o\ : std_logic;
SIGNAL \mD[0]~output_o\ : std_logic;
SIGNAL \mD[1]~output_o\ : std_logic;
SIGNAL \mD[2]~output_o\ : std_logic;
SIGNAL \mD[3]~output_o\ : std_logic;
SIGNAL \mD[4]~output_o\ : std_logic;
SIGNAL \mD[5]~output_o\ : std_logic;
SIGNAL \mD[6]~output_o\ : std_logic;
SIGNAL \mU[0]~output_o\ : std_logic;
SIGNAL \mU[1]~output_o\ : std_logic;
SIGNAL \mU[2]~output_o\ : std_logic;
SIGNAL \mU[3]~output_o\ : std_logic;
SIGNAL \mU[4]~output_o\ : std_logic;
SIGNAL \mU[5]~output_o\ : std_logic;
SIGNAL \mU[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \relBas|Horas|Add1~0_combout\ : std_logic;
SIGNAL \relBas|Horas|Add0~0_combout\ : std_logic;
SIGNAL \up~input_o\ : std_logic;
SIGNAL \FSMrel|pS.MINUTOS~0_combout\ : std_logic;
SIGNAL \tS~input_o\ : std_logic;
SIGNAL \FSMrel|pS.MINUTOS~q\ : std_logic;
SIGNAL \FSMrel|pS.HORAS~feeder_combout\ : std_logic;
SIGNAL \FSMrel|pS.HORAS~q\ : std_logic;
SIGNAL \FSMrel|pS.NORMAL~0_combout\ : std_logic;
SIGNAL \FSMrel|pS.NORMAL~q\ : std_logic;
SIGNAL \FSMrel|ud~0_combout\ : std_logic;
SIGNAL \relBas|Horas|Add0~1\ : std_logic;
SIGNAL \relBas|Horas|Add0~2_combout\ : std_logic;
SIGNAL \relBas|Horas|Add1~1\ : std_logic;
SIGNAL \relBas|Horas|Add1~2_combout\ : std_logic;
SIGNAL \relBas|Horas|s_cont~4_combout\ : std_logic;
SIGNAL \dw~input_o\ : std_logic;
SIGNAL \relBas|muxMin|yout~0_combout\ : std_logic;
SIGNAL \pulso~input_o\ : std_logic;
SIGNAL \relBas|muxMin|yout~1_combout\ : std_logic;
SIGNAL \relBas|Minutos|Add0~0_combout\ : std_logic;
SIGNAL \relBas|Minutos|Add1~0_combout\ : std_logic;
SIGNAL \relBas|Minutos|Add1~1\ : std_logic;
SIGNAL \relBas|Minutos|Add1~3\ : std_logic;
SIGNAL \relBas|Minutos|Add1~4_combout\ : std_logic;
SIGNAL \relBas|Minutos|Add0~3\ : std_logic;
SIGNAL \relBas|Minutos|Add0~4_combout\ : std_logic;
SIGNAL \relBas|Minutos|s_cont~3_combout\ : std_logic;
SIGNAL \relBas|Minutos|Add0~5\ : std_logic;
SIGNAL \relBas|Minutos|Add0~6_combout\ : std_logic;
SIGNAL \relBas|Minutos|Add1~5\ : std_logic;
SIGNAL \relBas|Minutos|Add1~6_combout\ : std_logic;
SIGNAL \relBas|Minutos|s_cont~2_combout\ : std_logic;
SIGNAL \relBas|Minutos|Add0~7\ : std_logic;
SIGNAL \relBas|Minutos|Add0~8_combout\ : std_logic;
SIGNAL \relBas|Minutos|Add1~7\ : std_logic;
SIGNAL \relBas|Minutos|Add1~8_combout\ : std_logic;
SIGNAL \relBas|Minutos|s_cont~1_combout\ : std_logic;
SIGNAL \relBas|Minutos|Add1~9\ : std_logic;
SIGNAL \relBas|Minutos|Add1~10_combout\ : std_logic;
SIGNAL \relBas|Minutos|Add0~9\ : std_logic;
SIGNAL \relBas|Minutos|Add0~10_combout\ : std_logic;
SIGNAL \relBas|Minutos|s_cont~0_combout\ : std_logic;
SIGNAL \relBas|Minutos|contFim~2_combout\ : std_logic;
SIGNAL \relBas|Minutos|LessThan0~4_combout\ : std_logic;
SIGNAL \relBas|Minutos|s_cont~5_combout\ : std_logic;
SIGNAL \relBas|Minutos|Add0~1\ : std_logic;
SIGNAL \relBas|Minutos|Add0~2_combout\ : std_logic;
SIGNAL \relBas|Minutos|Add1~2_combout\ : std_logic;
SIGNAL \relBas|Minutos|s_cont~4_combout\ : std_logic;
SIGNAL \relBas|Minutos|contFim~5_combout\ : std_logic;
SIGNAL \relBas|Minutos|contFim~3_combout\ : std_logic;
SIGNAL \relBas|Minutos|contFim~4_combout\ : std_logic;
SIGNAL \relBas|Minutos|contFim~q\ : std_logic;
SIGNAL \relBas|muxHrs|yout~0_combout\ : std_logic;
SIGNAL \relBas|muxHrs|yout~1_combout\ : std_logic;
SIGNAL \relBas|Horas|Add0~3\ : std_logic;
SIGNAL \relBas|Horas|Add0~4_combout\ : std_logic;
SIGNAL \relBas|Horas|Add1~3\ : std_logic;
SIGNAL \relBas|Horas|Add1~4_combout\ : std_logic;
SIGNAL \relBas|Horas|s_cont~5_combout\ : std_logic;
SIGNAL \relBas|Horas|Add0~5\ : std_logic;
SIGNAL \relBas|Horas|Add0~6_combout\ : std_logic;
SIGNAL \relBas|Horas|Add1~5\ : std_logic;
SIGNAL \relBas|Horas|Add1~6_combout\ : std_logic;
SIGNAL \relBas|Horas|s_cont~6_combout\ : std_logic;
SIGNAL \relBas|Horas|Add1~7\ : std_logic;
SIGNAL \relBas|Horas|Add1~8_combout\ : std_logic;
SIGNAL \relBas|Horas|Add0~7\ : std_logic;
SIGNAL \relBas|Horas|Add0~8_combout\ : std_logic;
SIGNAL \relBas|Horas|s_cont~7_combout\ : std_logic;
SIGNAL \relBas|Horas|s_cont~2_combout\ : std_logic;
SIGNAL \relBas|Horas|s_cont~8_combout\ : std_logic;
SIGNAL \relBas|Horas|s_cont~3_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ : std_logic;
SIGNAL \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ : std_logic;
SIGNAL \divF~input_o\ : std_logic;
SIGNAL \convRel|convHx|outPort3[0]~11_combout\ : std_logic;
SIGNAL \convRel|pulsos|yout[1]~0_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort3[2]~12_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort3[6]~8_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort3[4]~9_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort3[4]~10_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort3[5]~13_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~1\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~3\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~5\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~7\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~9\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~11\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~13\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~15\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~1\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~3\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~5\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[0]~6_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[0]~21_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2~7_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2~22_combout\ : std_logic;
SIGNAL \convRel|convHx|Equal25~0_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[2]~23_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[5]~10_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[5]~11_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[5]~8_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[3]~9_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[3]~12_combout\ : std_logic;
SIGNAL \convRel|convHx|Equal18~2_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[6]~13_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[4]~14_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[6]~15_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[4]~16_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[5]~17_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[5]~18_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[6]~19_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort2[6]~20_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ : std_logic;
SIGNAL \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ : std_logic;
SIGNAL \convRel|pulsos|yout~1_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort1[0]~0_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort1~1_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort1[2]~2_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort1[3]~3_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort1[4]~4_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort1[6]~5_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort1[4]~6_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort1[4]~7_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort1[5]~8_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort1[6]~9_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort1[6]~10_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~1\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~3\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~5\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~7\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~9\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~11\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~13\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~15\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~1\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~3\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~5\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~7\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~9\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~11\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~13\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~15\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~17\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~19\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~1\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~3\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~5\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\ : std_logic;
SIGNAL \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[0]~10_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[0]~23_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0~11_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0~24_combout\ : std_logic;
SIGNAL \convRel|convHx|Equal7~0_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[2]~25_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[3]~13_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[3]~27_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[5]~12_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[3]~26_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[3]~14_combout\ : std_logic;
SIGNAL \convRel|convHx|Equal0~2_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[6]~17_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[4]~16_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[6]~15_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[4]~18_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[5]~19_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[5]~20_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[6]~21_combout\ : std_logic;
SIGNAL \convRel|convHx|outPort0[6]~22_combout\ : std_logic;
SIGNAL \relBas|Minutos|s_cont\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \relBas|Horas|s_cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \convRel|convHx|ALT_INV_outPort3[5]~13_combout\ : std_logic;
SIGNAL \convRel|convHx|ALT_INV_outPort3[6]~8_combout\ : std_logic;
SIGNAL \convRel|pulsos|ALT_INV_yout[1]~0_combout\ : std_logic;

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
ww_tS <= tS;
horaRom <= ww_horaRom;
hD <= ww_hD;
hU <= ww_hU;
mD <= ww_mD;
mU <= ww_mU;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\convRel|convHx|ALT_INV_outPort3[5]~13_combout\ <= NOT \convRel|convHx|outPort3[5]~13_combout\;
\convRel|convHx|ALT_INV_outPort3[6]~8_combout\ <= NOT \convRel|convHx|outPort3[6]~8_combout\;
\convRel|pulsos|ALT_INV_yout[1]~0_combout\ <= NOT \convRel|pulsos|yout[1]~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X58_Y73_N16
\horaRom[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relBas|Horas|s_cont\(0),
	devoe => ww_devoe,
	o => \horaRom[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\horaRom[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relBas|Horas|s_cont\(1),
	devoe => ww_devoe,
	o => \horaRom[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\horaRom[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relBas|Horas|s_cont\(2),
	devoe => ww_devoe,
	o => \horaRom[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\horaRom[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relBas|Horas|s_cont\(3),
	devoe => ww_devoe,
	o => \horaRom[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\horaRom[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \relBas|Horas|s_cont\(4),
	devoe => ww_devoe,
	o => \horaRom[4]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\hD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort3[0]~11_combout\,
	devoe => ww_devoe,
	o => \hD[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\hD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|pulsos|ALT_INV_yout[1]~0_combout\,
	devoe => ww_devoe,
	o => \hD[1]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\hD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort3[2]~12_combout\,
	devoe => ww_devoe,
	o => \hD[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\hD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort3[0]~11_combout\,
	devoe => ww_devoe,
	o => \hD[3]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\hD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort3[4]~10_combout\,
	devoe => ww_devoe,
	o => \hD[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\hD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|ALT_INV_outPort3[5]~13_combout\,
	devoe => ww_devoe,
	o => \hD[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\hD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|ALT_INV_outPort3[6]~8_combout\,
	devoe => ww_devoe,
	o => \hD[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\hU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort2[0]~21_combout\,
	devoe => ww_devoe,
	o => \hU[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\hU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort2~22_combout\,
	devoe => ww_devoe,
	o => \hU[1]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\hU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort2[2]~23_combout\,
	devoe => ww_devoe,
	o => \hU[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\hU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort2[3]~12_combout\,
	devoe => ww_devoe,
	o => \hU[3]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\hU[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort2[4]~16_combout\,
	devoe => ww_devoe,
	o => \hU[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\hU[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort2[5]~18_combout\,
	devoe => ww_devoe,
	o => \hU[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\hU[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort2[6]~20_combout\,
	devoe => ww_devoe,
	o => \hU[6]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\mD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort1[0]~0_combout\,
	devoe => ww_devoe,
	o => \mD[0]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\mD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort1~1_combout\,
	devoe => ww_devoe,
	o => \mD[1]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\mD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort1[2]~2_combout\,
	devoe => ww_devoe,
	o => \mD[2]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\mD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort1[3]~3_combout\,
	devoe => ww_devoe,
	o => \mD[3]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\mD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort1[4]~7_combout\,
	devoe => ww_devoe,
	o => \mD[4]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\mD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort1[5]~8_combout\,
	devoe => ww_devoe,
	o => \mD[5]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\mD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort1[6]~10_combout\,
	devoe => ww_devoe,
	o => \mD[6]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\mU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort0[0]~23_combout\,
	devoe => ww_devoe,
	o => \mU[0]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\mU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort0~24_combout\,
	devoe => ww_devoe,
	o => \mU[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\mU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort0[2]~25_combout\,
	devoe => ww_devoe,
	o => \mU[2]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\mU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort0[3]~14_combout\,
	devoe => ww_devoe,
	o => \mU[3]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\mU[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort0[4]~18_combout\,
	devoe => ww_devoe,
	o => \mU[4]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\mU[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort0[5]~20_combout\,
	devoe => ww_devoe,
	o => \mU[5]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\mU[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convRel|convHx|outPort0[6]~22_combout\,
	devoe => ww_devoe,
	o => \mU[6]~output_o\);

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

-- Location: LCCOMB_X61_Y69_N10
\relBas|Horas|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|Add1~0_combout\ = \relBas|Horas|s_cont\(0) $ (VCC)
-- \relBas|Horas|Add1~1\ = CARRY(\relBas|Horas|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Horas|s_cont\(0),
	datad => VCC,
	combout => \relBas|Horas|Add1~0_combout\,
	cout => \relBas|Horas|Add1~1\);

-- Location: LCCOMB_X61_Y69_N20
\relBas|Horas|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|Add0~0_combout\ = \relBas|Horas|s_cont\(0) $ (VCC)
-- \relBas|Horas|Add0~1\ = CARRY(\relBas|Horas|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Horas|s_cont\(0),
	datad => VCC,
	combout => \relBas|Horas|Add0~0_combout\,
	cout => \relBas|Horas|Add0~1\);

-- Location: IOIBUF_X85_Y73_N1
\up~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up,
	o => \up~input_o\);

-- Location: LCCOMB_X65_Y69_N16
\FSMrel|pS.MINUTOS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMrel|pS.MINUTOS~0_combout\ = !\FSMrel|pS.NORMAL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSMrel|pS.NORMAL~q\,
	combout => \FSMrel|pS.MINUTOS~0_combout\);

-- Location: IOIBUF_X62_Y73_N15
\tS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tS,
	o => \tS~input_o\);

-- Location: FF_X65_Y69_N17
\FSMrel|pS.MINUTOS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSMrel|pS.MINUTOS~0_combout\,
	ena => \tS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMrel|pS.MINUTOS~q\);

-- Location: LCCOMB_X62_Y69_N8
\FSMrel|pS.HORAS~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMrel|pS.HORAS~feeder_combout\ = \FSMrel|pS.MINUTOS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FSMrel|pS.MINUTOS~q\,
	combout => \FSMrel|pS.HORAS~feeder_combout\);

-- Location: FF_X62_Y69_N9
\FSMrel|pS.HORAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSMrel|pS.HORAS~feeder_combout\,
	ena => \tS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMrel|pS.HORAS~q\);

-- Location: LCCOMB_X62_Y69_N14
\FSMrel|pS.NORMAL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMrel|pS.NORMAL~0_combout\ = !\FSMrel|pS.HORAS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSMrel|pS.HORAS~q\,
	combout => \FSMrel|pS.NORMAL~0_combout\);

-- Location: FF_X62_Y69_N15
\FSMrel|pS.NORMAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSMrel|pS.NORMAL~0_combout\,
	ena => \tS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMrel|pS.NORMAL~q\);

-- Location: LCCOMB_X66_Y69_N28
\FSMrel|ud~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMrel|ud~0_combout\ = (\up~input_o\) # (!\FSMrel|pS.NORMAL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \up~input_o\,
	datad => \FSMrel|pS.NORMAL~q\,
	combout => \FSMrel|ud~0_combout\);

-- Location: LCCOMB_X61_Y69_N22
\relBas|Horas|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|Add0~2_combout\ = (\relBas|Horas|s_cont\(1) & (\relBas|Horas|Add0~1\ & VCC)) # (!\relBas|Horas|s_cont\(1) & (!\relBas|Horas|Add0~1\))
-- \relBas|Horas|Add0~3\ = CARRY((!\relBas|Horas|s_cont\(1) & !\relBas|Horas|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Horas|s_cont\(1),
	datad => VCC,
	cin => \relBas|Horas|Add0~1\,
	combout => \relBas|Horas|Add0~2_combout\,
	cout => \relBas|Horas|Add0~3\);

-- Location: LCCOMB_X61_Y69_N12
\relBas|Horas|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|Add1~2_combout\ = (\relBas|Horas|s_cont\(1) & (!\relBas|Horas|Add1~1\)) # (!\relBas|Horas|s_cont\(1) & ((\relBas|Horas|Add1~1\) # (GND)))
-- \relBas|Horas|Add1~3\ = CARRY((!\relBas|Horas|Add1~1\) # (!\relBas|Horas|s_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Horas|s_cont\(1),
	datad => VCC,
	cin => \relBas|Horas|Add1~1\,
	combout => \relBas|Horas|Add1~2_combout\,
	cout => \relBas|Horas|Add1~3\);

-- Location: LCCOMB_X61_Y69_N30
\relBas|Horas|s_cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|s_cont~4_combout\ = (\relBas|Horas|Add0~2_combout\ & (((\relBas|Horas|Add1~2_combout\ & \relBas|Horas|s_cont~8_combout\)) # (!\FSMrel|ud~0_combout\))) # (!\relBas|Horas|Add0~2_combout\ & (\relBas|Horas|Add1~2_combout\ & 
-- ((\relBas|Horas|s_cont~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Horas|Add0~2_combout\,
	datab => \relBas|Horas|Add1~2_combout\,
	datac => \FSMrel|ud~0_combout\,
	datad => \relBas|Horas|s_cont~8_combout\,
	combout => \relBas|Horas|s_cont~4_combout\);

-- Location: IOIBUF_X87_Y73_N1
\dw~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dw,
	o => \dw~input_o\);

-- Location: LCCOMB_X66_Y69_N30
\relBas|muxMin|yout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|muxMin|yout~0_combout\ = (\up~input_o\) # (\dw~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \up~input_o\,
	datad => \dw~input_o\,
	combout => \relBas|muxMin|yout~0_combout\);

-- Location: IOIBUF_X87_Y73_N22
\pulso~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso,
	o => \pulso~input_o\);

-- Location: LCCOMB_X66_Y69_N20
\relBas|muxMin|yout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|muxMin|yout~1_combout\ = (\FSMrel|pS.NORMAL~q\ & (\relBas|muxMin|yout~0_combout\ & ((\FSMrel|pS.MINUTOS~q\)))) # (!\FSMrel|pS.NORMAL~q\ & (((\pulso~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|muxMin|yout~0_combout\,
	datab => \pulso~input_o\,
	datac => \FSMrel|pS.MINUTOS~q\,
	datad => \FSMrel|pS.NORMAL~q\,
	combout => \relBas|muxMin|yout~1_combout\);

-- Location: LCCOMB_X67_Y69_N4
\relBas|Minutos|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|Add0~0_combout\ = \relBas|Minutos|s_cont\(0) $ (VCC)
-- \relBas|Minutos|Add0~1\ = CARRY(\relBas|Minutos|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Minutos|s_cont\(0),
	datad => VCC,
	combout => \relBas|Minutos|Add0~0_combout\,
	cout => \relBas|Minutos|Add0~1\);

-- Location: LCCOMB_X67_Y69_N18
\relBas|Minutos|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|Add1~0_combout\ = \relBas|Minutos|s_cont\(0) $ (VCC)
-- \relBas|Minutos|Add1~1\ = CARRY(\relBas|Minutos|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Minutos|s_cont\(0),
	datad => VCC,
	combout => \relBas|Minutos|Add1~0_combout\,
	cout => \relBas|Minutos|Add1~1\);

-- Location: LCCOMB_X67_Y69_N20
\relBas|Minutos|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|Add1~2_combout\ = (\relBas|Minutos|s_cont\(1) & (!\relBas|Minutos|Add1~1\)) # (!\relBas|Minutos|s_cont\(1) & ((\relBas|Minutos|Add1~1\) # (GND)))
-- \relBas|Minutos|Add1~3\ = CARRY((!\relBas|Minutos|Add1~1\) # (!\relBas|Minutos|s_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(1),
	datad => VCC,
	cin => \relBas|Minutos|Add1~1\,
	combout => \relBas|Minutos|Add1~2_combout\,
	cout => \relBas|Minutos|Add1~3\);

-- Location: LCCOMB_X67_Y69_N22
\relBas|Minutos|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|Add1~4_combout\ = (\relBas|Minutos|s_cont\(2) & (\relBas|Minutos|Add1~3\ $ (GND))) # (!\relBas|Minutos|s_cont\(2) & (!\relBas|Minutos|Add1~3\ & VCC))
-- \relBas|Minutos|Add1~5\ = CARRY((\relBas|Minutos|s_cont\(2) & !\relBas|Minutos|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Minutos|s_cont\(2),
	datad => VCC,
	cin => \relBas|Minutos|Add1~3\,
	combout => \relBas|Minutos|Add1~4_combout\,
	cout => \relBas|Minutos|Add1~5\);

-- Location: LCCOMB_X67_Y69_N6
\relBas|Minutos|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|Add0~2_combout\ = (\relBas|Minutos|s_cont\(1) & (\relBas|Minutos|Add0~1\ & VCC)) # (!\relBas|Minutos|s_cont\(1) & (!\relBas|Minutos|Add0~1\))
-- \relBas|Minutos|Add0~3\ = CARRY((!\relBas|Minutos|s_cont\(1) & !\relBas|Minutos|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(1),
	datad => VCC,
	cin => \relBas|Minutos|Add0~1\,
	combout => \relBas|Minutos|Add0~2_combout\,
	cout => \relBas|Minutos|Add0~3\);

-- Location: LCCOMB_X67_Y69_N8
\relBas|Minutos|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|Add0~4_combout\ = (\relBas|Minutos|s_cont\(2) & ((GND) # (!\relBas|Minutos|Add0~3\))) # (!\relBas|Minutos|s_cont\(2) & (\relBas|Minutos|Add0~3\ $ (GND)))
-- \relBas|Minutos|Add0~5\ = CARRY((\relBas|Minutos|s_cont\(2)) # (!\relBas|Minutos|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Minutos|s_cont\(2),
	datad => VCC,
	cin => \relBas|Minutos|Add0~3\,
	combout => \relBas|Minutos|Add0~4_combout\,
	cout => \relBas|Minutos|Add0~5\);

-- Location: LCCOMB_X67_Y69_N16
\relBas|Minutos|s_cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|s_cont~3_combout\ = (\FSMrel|ud~0_combout\ & (\relBas|Minutos|Add1~4_combout\ & ((\relBas|Minutos|LessThan0~4_combout\)))) # (!\FSMrel|ud~0_combout\ & (((\relBas|Minutos|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|Add1~4_combout\,
	datab => \FSMrel|ud~0_combout\,
	datac => \relBas|Minutos|Add0~4_combout\,
	datad => \relBas|Minutos|LessThan0~4_combout\,
	combout => \relBas|Minutos|s_cont~3_combout\);

-- Location: FF_X67_Y69_N17
\relBas|Minutos|s_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \relBas|Minutos|s_cont~3_combout\,
	ena => \relBas|muxMin|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relBas|Minutos|s_cont\(2));

-- Location: LCCOMB_X67_Y69_N10
\relBas|Minutos|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|Add0~6_combout\ = (\relBas|Minutos|s_cont\(3) & (\relBas|Minutos|Add0~5\ & VCC)) # (!\relBas|Minutos|s_cont\(3) & (!\relBas|Minutos|Add0~5\))
-- \relBas|Minutos|Add0~7\ = CARRY((!\relBas|Minutos|s_cont\(3) & !\relBas|Minutos|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(3),
	datad => VCC,
	cin => \relBas|Minutos|Add0~5\,
	combout => \relBas|Minutos|Add0~6_combout\,
	cout => \relBas|Minutos|Add0~7\);

-- Location: LCCOMB_X67_Y69_N24
\relBas|Minutos|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|Add1~6_combout\ = (\relBas|Minutos|s_cont\(3) & (!\relBas|Minutos|Add1~5\)) # (!\relBas|Minutos|s_cont\(3) & ((\relBas|Minutos|Add1~5\) # (GND)))
-- \relBas|Minutos|Add1~7\ = CARRY((!\relBas|Minutos|Add1~5\) # (!\relBas|Minutos|s_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(3),
	datad => VCC,
	cin => \relBas|Minutos|Add1~5\,
	combout => \relBas|Minutos|Add1~6_combout\,
	cout => \relBas|Minutos|Add1~7\);

-- Location: LCCOMB_X66_Y69_N16
\relBas|Minutos|s_cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|s_cont~2_combout\ = (\FSMrel|ud~0_combout\ & (\relBas|Minutos|LessThan0~4_combout\ & ((\relBas|Minutos|Add1~6_combout\)))) # (!\FSMrel|ud~0_combout\ & (((\relBas|Minutos|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|LessThan0~4_combout\,
	datab => \FSMrel|ud~0_combout\,
	datac => \relBas|Minutos|Add0~6_combout\,
	datad => \relBas|Minutos|Add1~6_combout\,
	combout => \relBas|Minutos|s_cont~2_combout\);

-- Location: FF_X66_Y69_N17
\relBas|Minutos|s_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \relBas|Minutos|s_cont~2_combout\,
	ena => \relBas|muxMin|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relBas|Minutos|s_cont\(3));

-- Location: LCCOMB_X67_Y69_N12
\relBas|Minutos|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|Add0~8_combout\ = (\relBas|Minutos|s_cont\(4) & ((GND) # (!\relBas|Minutos|Add0~7\))) # (!\relBas|Minutos|s_cont\(4) & (\relBas|Minutos|Add0~7\ $ (GND)))
-- \relBas|Minutos|Add0~9\ = CARRY((\relBas|Minutos|s_cont\(4)) # (!\relBas|Minutos|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Minutos|s_cont\(4),
	datad => VCC,
	cin => \relBas|Minutos|Add0~7\,
	combout => \relBas|Minutos|Add0~8_combout\,
	cout => \relBas|Minutos|Add0~9\);

-- Location: LCCOMB_X67_Y69_N26
\relBas|Minutos|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|Add1~8_combout\ = (\relBas|Minutos|s_cont\(4) & (\relBas|Minutos|Add1~7\ $ (GND))) # (!\relBas|Minutos|s_cont\(4) & (!\relBas|Minutos|Add1~7\ & VCC))
-- \relBas|Minutos|Add1~9\ = CARRY((\relBas|Minutos|s_cont\(4) & !\relBas|Minutos|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Minutos|s_cont\(4),
	datad => VCC,
	cin => \relBas|Minutos|Add1~7\,
	combout => \relBas|Minutos|Add1~8_combout\,
	cout => \relBas|Minutos|Add1~9\);

-- Location: LCCOMB_X67_Y69_N2
\relBas|Minutos|s_cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|s_cont~1_combout\ = (\FSMrel|ud~0_combout\ & (((\relBas|Minutos|Add1~8_combout\ & \relBas|Minutos|LessThan0~4_combout\)))) # (!\FSMrel|ud~0_combout\ & (\relBas|Minutos|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|Add0~8_combout\,
	datab => \FSMrel|ud~0_combout\,
	datac => \relBas|Minutos|Add1~8_combout\,
	datad => \relBas|Minutos|LessThan0~4_combout\,
	combout => \relBas|Minutos|s_cont~1_combout\);

-- Location: FF_X67_Y69_N3
\relBas|Minutos|s_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \relBas|Minutos|s_cont~1_combout\,
	ena => \relBas|muxMin|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relBas|Minutos|s_cont\(4));

-- Location: LCCOMB_X67_Y69_N28
\relBas|Minutos|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|Add1~10_combout\ = \relBas|Minutos|Add1~9\ $ (\relBas|Minutos|s_cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \relBas|Minutos|s_cont\(5),
	cin => \relBas|Minutos|Add1~9\,
	combout => \relBas|Minutos|Add1~10_combout\);

-- Location: LCCOMB_X67_Y69_N14
\relBas|Minutos|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|Add0~10_combout\ = \relBas|Minutos|Add0~9\ $ (!\relBas|Minutos|s_cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \relBas|Minutos|s_cont\(5),
	cin => \relBas|Minutos|Add0~9\,
	combout => \relBas|Minutos|Add0~10_combout\);

-- Location: LCCOMB_X67_Y69_N0
\relBas|Minutos|s_cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|s_cont~0_combout\ = (\FSMrel|ud~0_combout\ & (\relBas|Minutos|Add1~10_combout\ & ((\relBas|Minutos|LessThan0~4_combout\)))) # (!\FSMrel|ud~0_combout\ & (((\relBas|Minutos|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMrel|ud~0_combout\,
	datab => \relBas|Minutos|Add1~10_combout\,
	datac => \relBas|Minutos|Add0~10_combout\,
	datad => \relBas|Minutos|LessThan0~4_combout\,
	combout => \relBas|Minutos|s_cont~0_combout\);

-- Location: FF_X67_Y69_N1
\relBas|Minutos|s_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \relBas|Minutos|s_cont~0_combout\,
	ena => \relBas|muxMin|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relBas|Minutos|s_cont\(5));

-- Location: LCCOMB_X66_Y69_N0
\relBas|Minutos|contFim~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|contFim~2_combout\ = (\relBas|Minutos|s_cont\(3) & (\relBas|Minutos|s_cont\(5) & \relBas|Minutos|s_cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Minutos|s_cont\(3),
	datac => \relBas|Minutos|s_cont\(5),
	datad => \relBas|Minutos|s_cont\(4),
	combout => \relBas|Minutos|contFim~2_combout\);

-- Location: LCCOMB_X66_Y69_N12
\relBas|Minutos|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|LessThan0~4_combout\ = ((!\relBas|Minutos|s_cont\(2) & ((!\relBas|Minutos|s_cont\(0)) # (!\relBas|Minutos|s_cont\(1))))) # (!\relBas|Minutos|contFim~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(1),
	datab => \relBas|Minutos|s_cont\(0),
	datac => \relBas|Minutos|s_cont\(2),
	datad => \relBas|Minutos|contFim~2_combout\,
	combout => \relBas|Minutos|LessThan0~4_combout\);

-- Location: LCCOMB_X66_Y69_N6
\relBas|Minutos|s_cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|s_cont~5_combout\ = (\FSMrel|ud~0_combout\ & (((\relBas|Minutos|Add1~0_combout\ & \relBas|Minutos|LessThan0~4_combout\)))) # (!\FSMrel|ud~0_combout\ & (\relBas|Minutos|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|Add0~0_combout\,
	datab => \FSMrel|ud~0_combout\,
	datac => \relBas|Minutos|Add1~0_combout\,
	datad => \relBas|Minutos|LessThan0~4_combout\,
	combout => \relBas|Minutos|s_cont~5_combout\);

-- Location: FF_X66_Y69_N7
\relBas|Minutos|s_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \relBas|Minutos|s_cont~5_combout\,
	ena => \relBas|muxMin|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relBas|Minutos|s_cont\(0));

-- Location: LCCOMB_X67_Y69_N30
\relBas|Minutos|s_cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|s_cont~4_combout\ = (\FSMrel|ud~0_combout\ & (((\relBas|Minutos|Add1~2_combout\ & \relBas|Minutos|LessThan0~4_combout\)))) # (!\FSMrel|ud~0_combout\ & (\relBas|Minutos|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|Add0~2_combout\,
	datab => \relBas|Minutos|Add1~2_combout\,
	datac => \FSMrel|ud~0_combout\,
	datad => \relBas|Minutos|LessThan0~4_combout\,
	combout => \relBas|Minutos|s_cont~4_combout\);

-- Location: FF_X67_Y69_N31
\relBas|Minutos|s_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \relBas|Minutos|s_cont~4_combout\,
	ena => \relBas|muxMin|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relBas|Minutos|s_cont\(1));

-- Location: LCCOMB_X66_Y69_N14
\relBas|Minutos|contFim~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|contFim~5_combout\ = (\relBas|Minutos|s_cont\(1) & (!\relBas|Minutos|s_cont\(0) & (!\relBas|Minutos|s_cont\(2) & \relBas|Minutos|contFim~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(1),
	datab => \relBas|Minutos|s_cont\(0),
	datac => \relBas|Minutos|s_cont\(2),
	datad => \relBas|Minutos|contFim~2_combout\,
	combout => \relBas|Minutos|contFim~5_combout\);

-- Location: LCCOMB_X66_Y69_N18
\relBas|Minutos|contFim~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|contFim~3_combout\ = (\relBas|muxMin|yout~1_combout\ & ((\FSMrel|ud~0_combout\ & ((!\relBas|Minutos|s_cont\(0)))) # (!\FSMrel|ud~0_combout\ & (\relBas|Minutos|contFim~q\)))) # (!\relBas|muxMin|yout~1_combout\ & 
-- (\relBas|Minutos|contFim~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|contFim~q\,
	datab => \relBas|muxMin|yout~1_combout\,
	datac => \relBas|Minutos|s_cont\(0),
	datad => \FSMrel|ud~0_combout\,
	combout => \relBas|Minutos|contFim~3_combout\);

-- Location: LCCOMB_X66_Y69_N26
\relBas|Minutos|contFim~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Minutos|contFim~4_combout\ = (\relBas|Minutos|contFim~3_combout\ & (((\relBas|Minutos|contFim~5_combout\) # (!\relBas|muxMin|yout~1_combout\)) # (!\FSMrel|ud~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMrel|ud~0_combout\,
	datab => \relBas|muxMin|yout~1_combout\,
	datac => \relBas|Minutos|contFim~5_combout\,
	datad => \relBas|Minutos|contFim~3_combout\,
	combout => \relBas|Minutos|contFim~4_combout\);

-- Location: FF_X66_Y69_N27
\relBas|Minutos|contFim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \relBas|Minutos|contFim~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relBas|Minutos|contFim~q\);

-- Location: LCCOMB_X62_Y69_N12
\relBas|muxHrs|yout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|muxHrs|yout~0_combout\ = (\FSMrel|pS.NORMAL~q\ & ((\dw~input_o\) # ((\up~input_o\)))) # (!\FSMrel|pS.NORMAL~q\ & (((\pulso~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw~input_o\,
	datab => \up~input_o\,
	datac => \FSMrel|pS.NORMAL~q\,
	datad => \pulso~input_o\,
	combout => \relBas|muxHrs|yout~0_combout\);

-- Location: LCCOMB_X62_Y69_N10
\relBas|muxHrs|yout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|muxHrs|yout~1_combout\ = (\relBas|muxHrs|yout~0_combout\ & ((\FSMrel|pS.NORMAL~q\ & ((\FSMrel|pS.HORAS~q\))) # (!\FSMrel|pS.NORMAL~q\ & (\relBas|Minutos|contFim~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|contFim~q\,
	datab => \FSMrel|pS.HORAS~q\,
	datac => \FSMrel|pS.NORMAL~q\,
	datad => \relBas|muxHrs|yout~0_combout\,
	combout => \relBas|muxHrs|yout~1_combout\);

-- Location: FF_X61_Y69_N31
\relBas|Horas|s_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \relBas|Horas|s_cont~4_combout\,
	ena => \relBas|muxHrs|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relBas|Horas|s_cont\(1));

-- Location: LCCOMB_X61_Y69_N24
\relBas|Horas|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|Add0~4_combout\ = (\relBas|Horas|s_cont\(2) & ((GND) # (!\relBas|Horas|Add0~3\))) # (!\relBas|Horas|s_cont\(2) & (\relBas|Horas|Add0~3\ $ (GND)))
-- \relBas|Horas|Add0~5\ = CARRY((\relBas|Horas|s_cont\(2)) # (!\relBas|Horas|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Horas|s_cont\(2),
	datad => VCC,
	cin => \relBas|Horas|Add0~3\,
	combout => \relBas|Horas|Add0~4_combout\,
	cout => \relBas|Horas|Add0~5\);

-- Location: LCCOMB_X61_Y69_N14
\relBas|Horas|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|Add1~4_combout\ = (\relBas|Horas|s_cont\(2) & (\relBas|Horas|Add1~3\ $ (GND))) # (!\relBas|Horas|s_cont\(2) & (!\relBas|Horas|Add1~3\ & VCC))
-- \relBas|Horas|Add1~5\ = CARRY((\relBas|Horas|s_cont\(2) & !\relBas|Horas|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Horas|s_cont\(2),
	datad => VCC,
	cin => \relBas|Horas|Add1~3\,
	combout => \relBas|Horas|Add1~4_combout\,
	cout => \relBas|Horas|Add1~5\);

-- Location: LCCOMB_X61_Y69_N4
\relBas|Horas|s_cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|s_cont~5_combout\ = (\FSMrel|ud~0_combout\ & (((\relBas|Horas|Add1~4_combout\ & \relBas|Horas|s_cont~8_combout\)))) # (!\FSMrel|ud~0_combout\ & ((\relBas|Horas|Add0~4_combout\) # ((\relBas|Horas|Add1~4_combout\ & 
-- \relBas|Horas|s_cont~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMrel|ud~0_combout\,
	datab => \relBas|Horas|Add0~4_combout\,
	datac => \relBas|Horas|Add1~4_combout\,
	datad => \relBas|Horas|s_cont~8_combout\,
	combout => \relBas|Horas|s_cont~5_combout\);

-- Location: FF_X61_Y69_N5
\relBas|Horas|s_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \relBas|Horas|s_cont~5_combout\,
	ena => \relBas|muxHrs|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relBas|Horas|s_cont\(2));

-- Location: LCCOMB_X61_Y69_N26
\relBas|Horas|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|Add0~6_combout\ = (\relBas|Horas|s_cont\(3) & (\relBas|Horas|Add0~5\ & VCC)) # (!\relBas|Horas|s_cont\(3) & (!\relBas|Horas|Add0~5\))
-- \relBas|Horas|Add0~7\ = CARRY((!\relBas|Horas|s_cont\(3) & !\relBas|Horas|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Horas|s_cont\(3),
	datad => VCC,
	cin => \relBas|Horas|Add0~5\,
	combout => \relBas|Horas|Add0~6_combout\,
	cout => \relBas|Horas|Add0~7\);

-- Location: LCCOMB_X61_Y69_N16
\relBas|Horas|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|Add1~6_combout\ = (\relBas|Horas|s_cont\(3) & (!\relBas|Horas|Add1~5\)) # (!\relBas|Horas|s_cont\(3) & ((\relBas|Horas|Add1~5\) # (GND)))
-- \relBas|Horas|Add1~7\ = CARRY((!\relBas|Horas|Add1~5\) # (!\relBas|Horas|s_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Horas|s_cont\(3),
	datad => VCC,
	cin => \relBas|Horas|Add1~5\,
	combout => \relBas|Horas|Add1~6_combout\,
	cout => \relBas|Horas|Add1~7\);

-- Location: LCCOMB_X61_Y69_N2
\relBas|Horas|s_cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|s_cont~6_combout\ = (\relBas|Horas|Add0~6_combout\ & (((\relBas|Horas|Add1~6_combout\ & \relBas|Horas|s_cont~8_combout\)) # (!\FSMrel|ud~0_combout\))) # (!\relBas|Horas|Add0~6_combout\ & (\relBas|Horas|Add1~6_combout\ & 
-- ((\relBas|Horas|s_cont~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Horas|Add0~6_combout\,
	datab => \relBas|Horas|Add1~6_combout\,
	datac => \FSMrel|ud~0_combout\,
	datad => \relBas|Horas|s_cont~8_combout\,
	combout => \relBas|Horas|s_cont~6_combout\);

-- Location: FF_X61_Y69_N3
\relBas|Horas|s_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \relBas|Horas|s_cont~6_combout\,
	ena => \relBas|muxHrs|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relBas|Horas|s_cont\(3));

-- Location: LCCOMB_X61_Y69_N18
\relBas|Horas|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|Add1~8_combout\ = \relBas|Horas|Add1~7\ $ (!\relBas|Horas|s_cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \relBas|Horas|s_cont\(4),
	cin => \relBas|Horas|Add1~7\,
	combout => \relBas|Horas|Add1~8_combout\);

-- Location: LCCOMB_X61_Y69_N28
\relBas|Horas|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|Add0~8_combout\ = \relBas|Horas|Add0~7\ $ (\relBas|Horas|s_cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \relBas|Horas|s_cont\(4),
	cin => \relBas|Horas|Add0~7\,
	combout => \relBas|Horas|Add0~8_combout\);

-- Location: LCCOMB_X61_Y69_N0
\relBas|Horas|s_cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|s_cont~7_combout\ = (\FSMrel|ud~0_combout\ & (\relBas|Horas|Add1~8_combout\ & ((\relBas|Horas|s_cont~8_combout\)))) # (!\FSMrel|ud~0_combout\ & ((\relBas|Horas|Add0~8_combout\) # ((\relBas|Horas|Add1~8_combout\ & 
-- \relBas|Horas|s_cont~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMrel|ud~0_combout\,
	datab => \relBas|Horas|Add1~8_combout\,
	datac => \relBas|Horas|Add0~8_combout\,
	datad => \relBas|Horas|s_cont~8_combout\,
	combout => \relBas|Horas|s_cont~7_combout\);

-- Location: FF_X61_Y69_N1
\relBas|Horas|s_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \relBas|Horas|s_cont~7_combout\,
	ena => \relBas|muxHrs|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relBas|Horas|s_cont\(4));

-- Location: LCCOMB_X60_Y69_N24
\relBas|Horas|s_cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|s_cont~2_combout\ = (!\relBas|Horas|s_cont\(3) & (((!\relBas|Horas|s_cont\(2)) # (!\relBas|Horas|s_cont\(0))) # (!\relBas|Horas|s_cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Horas|s_cont\(1),
	datab => \relBas|Horas|s_cont\(3),
	datac => \relBas|Horas|s_cont\(0),
	datad => \relBas|Horas|s_cont\(2),
	combout => \relBas|Horas|s_cont~2_combout\);

-- Location: LCCOMB_X61_Y69_N6
\relBas|Horas|s_cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|s_cont~8_combout\ = (\up~input_o\ & (((\relBas|Horas|s_cont~2_combout\)) # (!\relBas|Horas|s_cont\(4)))) # (!\up~input_o\ & (!\FSMrel|pS.NORMAL~q\ & ((\relBas|Horas|s_cont~2_combout\) # (!\relBas|Horas|s_cont\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~input_o\,
	datab => \relBas|Horas|s_cont\(4),
	datac => \FSMrel|pS.NORMAL~q\,
	datad => \relBas|Horas|s_cont~2_combout\,
	combout => \relBas|Horas|s_cont~8_combout\);

-- Location: LCCOMB_X61_Y69_N8
\relBas|Horas|s_cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \relBas|Horas|s_cont~3_combout\ = (\relBas|Horas|Add1~0_combout\ & ((\relBas|Horas|s_cont~8_combout\) # ((\relBas|Horas|Add0~0_combout\ & !\FSMrel|ud~0_combout\)))) # (!\relBas|Horas|Add1~0_combout\ & (\relBas|Horas|Add0~0_combout\ & 
-- (!\FSMrel|ud~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Horas|Add1~0_combout\,
	datab => \relBas|Horas|Add0~0_combout\,
	datac => \FSMrel|ud~0_combout\,
	datad => \relBas|Horas|s_cont~8_combout\,
	combout => \relBas|Horas|s_cont~3_combout\);

-- Location: FF_X61_Y69_N9
\relBas|Horas|s_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \relBas|Horas|s_cont~3_combout\,
	ena => \relBas|muxHrs|yout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relBas|Horas|s_cont\(0));

-- Location: LCCOMB_X60_Y68_N6
\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = \relBas|Horas|s_cont\(2) $ (VCC)
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY(\relBas|Horas|s_cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Horas|s_cont\(2),
	datad => VCC,
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X60_Y68_N8
\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\relBas|Horas|s_cont\(3) & (\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & VCC)) # (!\relBas|Horas|s_cont\(3) & 
-- (!\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\))
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\relBas|Horas|s_cont\(3) & !\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Horas|s_cont\(3),
	datad => VCC,
	cin => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X60_Y68_N10
\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\relBas|Horas|s_cont\(4) & (\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ $ (GND))) # (!\relBas|Horas|s_cont\(4) & 
-- (!\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & VCC))
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((\relBas|Horas|s_cont\(4) & !\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Horas|s_cont\(4),
	datad => VCC,
	cin => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X60_Y68_N12
\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ = !\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ = CARRY(!\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	cout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\);

-- Location: LCCOMB_X60_Y68_N14
\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ = CARRY(!\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\,
	cout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\);

-- Location: LCCOMB_X60_Y68_N16
\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ = !\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\,
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\);

-- Location: LCCOMB_X60_Y68_N24
\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\ = (\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ & 
-- !\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	datad => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\);

-- Location: LCCOMB_X60_Y68_N26
\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\ = (\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \relBas|Horas|s_cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \relBas|Horas|s_cont\(4),
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\);

-- Location: LCCOMB_X60_Y68_N4
\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\ = (\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ & 
-- !\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	datad => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\);

-- Location: LCCOMB_X60_Y68_N2
\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\ = (\relBas|Horas|s_cont\(3) & \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relBas|Horas|s_cont\(3),
	datad => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\);

-- Location: LCCOMB_X60_Y68_N20
\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\ = (\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ & 
-- !\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	datad => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\);

-- Location: LCCOMB_X60_Y68_N0
\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\ = (\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ & 
-- !\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	datad => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\);

-- Location: LCCOMB_X60_Y68_N22
\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\ = (\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \relBas|Horas|s_cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \relBas|Horas|s_cont\(2),
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\);

-- Location: LCCOMB_X61_Y68_N12
\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\ = (\relBas|Horas|s_cont\(1) & \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relBas|Horas|s_cont\(1),
	datad => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\);

-- Location: LCCOMB_X61_Y68_N2
\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\ = (\relBas|Horas|s_cont\(1) & !\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relBas|Horas|s_cont\(1),
	datad => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\);

-- Location: LCCOMB_X61_Y68_N14
\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ = CARRY((\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\) # (\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\,
	datab => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\,
	datad => VCC,
	cout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\);

-- Location: LCCOMB_X61_Y68_N16
\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\ & (!\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\ & 
-- !\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\,
	datab => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X61_Y68_N18
\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ = CARRY((!\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ & 
-- ((\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\) # (\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\,
	datab => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\,
	cout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\);

-- Location: LCCOMB_X61_Y68_N20
\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY((!\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\ & (!\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\ & 
-- !\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\,
	datab => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X61_Y68_N22
\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ = CARRY((\convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\) # 
-- (!\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\,
	cout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\);

-- Location: LCCOMB_X61_Y68_N24
\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ = !\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\,
	combout => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\);

-- Location: IOIBUF_X79_Y73_N1
\divF~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divF,
	o => \divF~input_o\);

-- Location: LCCOMB_X62_Y69_N24
\convRel|convHx|outPort3[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort3[0]~11_combout\ = (\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & (\FSMrel|pS.HORAS~q\ & (!\divF~input_o\))) # 
-- (!\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & ((\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\) # ((\FSMrel|pS.HORAS~q\ & !\divF~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \FSMrel|pS.HORAS~q\,
	datac => \divF~input_o\,
	datad => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|convHx|outPort3[0]~11_combout\);

-- Location: LCCOMB_X59_Y69_N0
\convRel|pulsos|yout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|pulsos|yout[1]~0_combout\ = (\divF~input_o\) # (!\FSMrel|pS.HORAS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSMrel|pS.HORAS~q\,
	datad => \divF~input_o\,
	combout => \convRel|pulsos|yout[1]~0_combout\);

-- Location: LCCOMB_X62_Y69_N2
\convRel|convHx|outPort3[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort3[2]~12_combout\ = (\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & (((\FSMrel|pS.HORAS~q\ & !\divF~input_o\)) # 
-- (!\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\))) # (!\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & (\FSMrel|pS.HORAS~q\ & (!\divF~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \FSMrel|pS.HORAS~q\,
	datac => \divF~input_o\,
	datad => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|convHx|outPort3[2]~12_combout\);

-- Location: LCCOMB_X59_Y70_N0
\convRel|convHx|outPort3[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort3[6]~8_combout\ = (\convRel|pulsos|yout[1]~0_combout\ & (\relBas|Horas|s_cont\(4) & ((\relBas|Horas|s_cont\(3)) # (\relBas|Horas|s_cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Horas|s_cont\(3),
	datab => \relBas|Horas|s_cont\(2),
	datac => \convRel|pulsos|yout[1]~0_combout\,
	datad => \relBas|Horas|s_cont\(4),
	combout => \convRel|convHx|outPort3[6]~8_combout\);

-- Location: LCCOMB_X59_Y70_N6
\convRel|convHx|outPort3[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort3[4]~9_combout\ = (\relBas|Horas|s_cont\(3) & ((\convRel|convHx|outPort3[6]~8_combout\ & (\relBas|Horas|s_cont\(2) & \relBas|Horas|s_cont\(1))) # (!\convRel|convHx|outPort3[6]~8_combout\ & ((\relBas|Horas|s_cont\(2)) # 
-- (\relBas|Horas|s_cont\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Horas|s_cont\(3),
	datab => \convRel|convHx|outPort3[6]~8_combout\,
	datac => \relBas|Horas|s_cont\(2),
	datad => \relBas|Horas|s_cont\(1),
	combout => \convRel|convHx|outPort3[4]~9_combout\);

-- Location: LCCOMB_X59_Y70_N24
\convRel|convHx|outPort3[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort3[4]~10_combout\ = (\convRel|convHx|outPort3[4]~9_combout\) # ((!\convRel|convHx|outPort3[6]~8_combout\ & ((\relBas|Horas|s_cont\(4)) # (!\convRel|pulsos|yout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|outPort3[4]~9_combout\,
	datab => \convRel|convHx|outPort3[6]~8_combout\,
	datac => \convRel|pulsos|yout[1]~0_combout\,
	datad => \relBas|Horas|s_cont\(4),
	combout => \convRel|convHx|outPort3[4]~10_combout\);

-- Location: LCCOMB_X62_Y69_N16
\convRel|convHx|outPort3[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort3[5]~13_combout\ = (\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & (\convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\divF~input_o\) # 
-- (!\FSMrel|pS.HORAS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \FSMrel|pS.HORAS~q\,
	datac => \divF~input_o\,
	datad => \convRel|conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|convHx|outPort3[5]~13_combout\);

-- Location: LCCOMB_X61_Y70_N6
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\ = \relBas|Horas|s_cont\(2) $ (VCC)
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~1\ = CARRY(\relBas|Horas|s_cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Horas|s_cont\(2),
	datad => VCC,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~1\);

-- Location: LCCOMB_X61_Y70_N8
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\ = (\relBas|Horas|s_cont\(3) & (\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~1\ & VCC)) # (!\relBas|Horas|s_cont\(3) & 
-- (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~1\))
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~3\ = CARRY((!\relBas|Horas|s_cont\(3) & !\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Horas|s_cont\(3),
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~1\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~3\);

-- Location: LCCOMB_X61_Y70_N10
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\ = (\relBas|Horas|s_cont\(4) & (\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~3\ $ (GND))) # (!\relBas|Horas|s_cont\(4) & 
-- (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~3\ & VCC))
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~5\ = CARRY((\relBas|Horas|s_cont\(4) & !\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Horas|s_cont\(4),
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~3\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~5\);

-- Location: LCCOMB_X61_Y70_N12
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\ = !\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~5\
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~7\ = CARRY(!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~5\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~7\);

-- Location: LCCOMB_X61_Y70_N14
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\ = \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~7\ $ (GND)
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~9\ = CARRY(!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~7\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~9\);

-- Location: LCCOMB_X61_Y70_N16
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\ = !\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~9\
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~11\ = CARRY(!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~9\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~11\);

-- Location: LCCOMB_X61_Y70_N18
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\ = \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~11\ $ (GND)
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~13\ = CARRY(!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~11\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~13\);

-- Location: LCCOMB_X61_Y70_N20
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\ = !\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~13\
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~15\ = CARRY(!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~13\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~15\);

-- Location: LCCOMB_X61_Y70_N22
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ = \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~15\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\);

-- Location: LCCOMB_X61_Y70_N26
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\ = (\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\ & !\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\,
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\);

-- Location: LCCOMB_X59_Y70_N18
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\ = (\relBas|Horas|s_cont\(3) & \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Horas|s_cont\(3),
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\);

-- Location: LCCOMB_X59_Y70_N2
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\ = (\relBas|Horas|s_cont\(2) & \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Horas|s_cont\(2),
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\);

-- Location: LCCOMB_X61_Y70_N28
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\ = (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\);

-- Location: LCCOMB_X60_Y70_N26
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\ = (\relBas|Horas|s_cont\(1) & !\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Horas|s_cont\(1),
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\);

-- Location: LCCOMB_X60_Y70_N0
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\ = (\relBas|Horas|s_cont\(1) & \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Horas|s_cont\(1),
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\);

-- Location: LCCOMB_X60_Y70_N6
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\ = (((\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\) # (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\)))
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~1\ = CARRY((\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\) # (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\,
	datad => VCC,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~1\);

-- Location: LCCOMB_X60_Y70_N8
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\ = (\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~1\ & (((\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\) # 
-- (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\)))) # (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~1\ & (!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\ & 
-- (!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\)))
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~3\ = CARRY((!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\ & (!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\ & 
-- !\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~1\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~3\);

-- Location: LCCOMB_X60_Y70_N10
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\ = (\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~3\ & (((\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\) # 
-- (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\)))) # (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~3\ & ((((\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\) # 
-- (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\)))))
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~5\ = CARRY((!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~3\ & ((\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\) # 
-- (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~3\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~5\);

-- Location: LCCOMB_X61_Y70_N2
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\ = (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\);

-- Location: LCCOMB_X61_Y70_N24
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\ = (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\);

-- Location: LCCOMB_X61_Y70_N4
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\ = (\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\ & !\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\,
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\);

-- Location: LCCOMB_X61_Y70_N30
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\ = (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\);

-- Location: LCCOMB_X59_Y70_N16
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\ = (\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \relBas|Horas|s_cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => \relBas|Horas|s_cont\(4),
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\);

-- Location: LCCOMB_X61_Y70_N0
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\ = (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\);

-- Location: LCCOMB_X60_Y70_N12
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\ = CARRY((!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\ & (!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\ & 
-- !\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~5\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\);

-- Location: LCCOMB_X60_Y70_N14
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\ = CARRY((\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\) # (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\);

-- Location: LCCOMB_X60_Y70_N16
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\ = CARRY((!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\ & !\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\);

-- Location: LCCOMB_X60_Y70_N18
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\ = CARRY((\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\) # (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\);

-- Location: LCCOMB_X60_Y70_N20
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\ = CARRY((!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\ & !\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\);

-- Location: LCCOMB_X60_Y70_N22
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\ = CARRY(((\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\ & !\convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)) # 
-- (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\,
	cout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\);

-- Location: LCCOMB_X60_Y70_N24
\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ = !\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\);

-- Location: LCCOMB_X60_Y70_N30
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ = (\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & (((\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\) # 
-- (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\)))) # (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & (\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\,
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\,
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\);

-- Location: LCCOMB_X60_Y70_N28
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ = (\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & (((\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\) # 
-- (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\)))) # (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & (\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\,
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\,
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\,
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\);

-- Location: LCCOMB_X60_Y70_N4
\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ = (\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & ((\relBas|Horas|s_cont\(1)))) # 
-- (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & (\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\,
	datad => \relBas|Horas|s_cont\(1),
	combout => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\);

-- Location: LCCOMB_X59_Y69_N22
\convRel|convHx|outPort2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[0]~6_combout\ = (!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & (!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ & 
-- (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ $ (\relBas|Horas|s_cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datac => \relBas|Horas|s_cont\(0),
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	combout => \convRel|convHx|outPort2[0]~6_combout\);

-- Location: LCCOMB_X59_Y69_N6
\convRel|convHx|outPort2[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[0]~21_combout\ = (\convRel|convHx|outPort2[0]~6_combout\) # ((\FSMrel|pS.HORAS~q\ & !\divF~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMrel|pS.HORAS~q\,
	datac => \convRel|convHx|outPort2[0]~6_combout\,
	datad => \divF~input_o\,
	combout => \convRel|convHx|outPort2[0]~21_combout\);

-- Location: LCCOMB_X62_Y69_N6
\convRel|convHx|outPort2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2~7_combout\ = (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ & (!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & 
-- (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ $ (\relBas|Horas|s_cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datac => \relBas|Horas|s_cont\(0),
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	combout => \convRel|convHx|outPort2~7_combout\);

-- Location: LCCOMB_X62_Y69_N26
\convRel|convHx|outPort2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2~22_combout\ = (\convRel|convHx|outPort2~7_combout\) # ((!\divF~input_o\ & \FSMrel|pS.HORAS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|outPort2~7_combout\,
	datab => \divF~input_o\,
	datac => \FSMrel|pS.HORAS~q\,
	combout => \convRel|convHx|outPort2~22_combout\);

-- Location: LCCOMB_X62_Y69_N28
\convRel|convHx|Equal25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|Equal25~0_combout\ = (!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ & (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ & (!\relBas|Horas|s_cont\(0) & 
-- !\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datac => \relBas|Horas|s_cont\(0),
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	combout => \convRel|convHx|Equal25~0_combout\);

-- Location: LCCOMB_X62_Y69_N20
\convRel|convHx|outPort2[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[2]~23_combout\ = (\convRel|convHx|Equal25~0_combout\) # ((\FSMrel|pS.HORAS~q\ & !\divF~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMrel|pS.HORAS~q\,
	datac => \divF~input_o\,
	datad => \convRel|convHx|Equal25~0_combout\,
	combout => \convRel|convHx|outPort2[2]~23_combout\);

-- Location: LCCOMB_X59_Y69_N12
\convRel|convHx|outPort2[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[5]~10_combout\ = \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ $ (((!\relBas|Horas|s_cont\(0) & !\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datac => \relBas|Horas|s_cont\(0),
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	combout => \convRel|convHx|outPort2[5]~10_combout\);

-- Location: LCCOMB_X59_Y69_N30
\convRel|convHx|outPort2[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[5]~11_combout\ = (\convRel|convHx|outPort2[5]~10_combout\ & (((\divF~input_o\)) # (!\FSMrel|pS.HORAS~q\))) # (!\convRel|convHx|outPort2[5]~10_combout\ & 
-- (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & ((\divF~input_o\) # (!\FSMrel|pS.HORAS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|outPort2[5]~10_combout\,
	datab => \FSMrel|pS.HORAS~q\,
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \divF~input_o\,
	combout => \convRel|convHx|outPort2[5]~11_combout\);

-- Location: LCCOMB_X59_Y69_N8
\convRel|convHx|outPort2[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[5]~8_combout\ = (!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ & (\relBas|Horas|s_cont\(0) & 
-- \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datac => \relBas|Horas|s_cont\(0),
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	combout => \convRel|convHx|outPort2[5]~8_combout\);

-- Location: LCCOMB_X59_Y69_N14
\convRel|convHx|outPort2[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[3]~9_combout\ = ((\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\) # ((!\divF~input_o\ & \FSMrel|pS.HORAS~q\))) # (!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divF~input_o\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datac => \FSMrel|pS.HORAS~q\,
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	combout => \convRel|convHx|outPort2[3]~9_combout\);

-- Location: LCCOMB_X59_Y69_N20
\convRel|convHx|outPort2[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[3]~12_combout\ = (\convRel|convHx|outPort2[5]~8_combout\) # ((!\convRel|convHx|outPort2[5]~11_combout\ & \convRel|convHx|outPort2[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|outPort2[5]~11_combout\,
	datab => \convRel|convHx|outPort2[5]~8_combout\,
	datac => \convRel|convHx|outPort2[3]~9_combout\,
	combout => \convRel|convHx|outPort2[3]~12_combout\);

-- Location: LCCOMB_X60_Y70_N2
\convRel|convHx|Equal18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|Equal18~2_combout\ = (!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ & ((\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & ((!\relBas|Horas|s_cont\(1)))) # 
-- (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & (!\convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\,
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datad => \relBas|Horas|s_cont\(1),
	combout => \convRel|convHx|Equal18~2_combout\);

-- Location: LCCOMB_X59_Y69_N10
\convRel|convHx|outPort2[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[6]~13_combout\ = (\convRel|pulsos|yout[1]~0_combout\ & (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ $ (((\convRel|convHx|Equal18~2_combout\ & !\relBas|Horas|s_cont\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|Equal18~2_combout\,
	datab => \relBas|Horas|s_cont\(0),
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \convRel|pulsos|yout[1]~0_combout\,
	combout => \convRel|convHx|outPort2[6]~13_combout\);

-- Location: LCCOMB_X59_Y69_N4
\convRel|convHx|outPort2[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[4]~14_combout\ = ((!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & ((\relBas|Horas|s_cont\(0)) # (!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\)))) # 
-- (!\convRel|pulsos|yout[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datab => \convRel|pulsos|yout[1]~0_combout\,
	datac => \relBas|Horas|s_cont\(0),
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	combout => \convRel|convHx|outPort2[4]~14_combout\);

-- Location: LCCOMB_X59_Y69_N18
\convRel|convHx|outPort2[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[6]~15_combout\ = (\convRel|pulsos|yout[1]~0_combout\ & ((\convRel|convHx|Equal18~2_combout\ & (!\relBas|Horas|s_cont\(0) & !\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\)) # 
-- (!\convRel|convHx|Equal18~2_combout\ & ((\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|Equal18~2_combout\,
	datab => \relBas|Horas|s_cont\(0),
	datac => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \convRel|pulsos|yout[1]~0_combout\,
	combout => \convRel|convHx|outPort2[6]~15_combout\);

-- Location: LCCOMB_X59_Y69_N16
\convRel|convHx|outPort2[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[4]~16_combout\ = (!\convRel|convHx|outPort2[6]~15_combout\ & ((\convRel|convHx|outPort2[6]~13_combout\) # (\convRel|convHx|outPort2[4]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|outPort2[6]~13_combout\,
	datac => \convRel|convHx|outPort2[4]~14_combout\,
	datad => \convRel|convHx|outPort2[6]~15_combout\,
	combout => \convRel|convHx|outPort2[4]~16_combout\);

-- Location: LCCOMB_X59_Y69_N2
\convRel|convHx|outPort2[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[5]~17_combout\ = ((!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ & ((\relBas|Horas|s_cont\(0)) # (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\)))) # 
-- (!\convRel|pulsos|yout[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|pulsos|yout[1]~0_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datac => \relBas|Horas|s_cont\(0),
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	combout => \convRel|convHx|outPort2[5]~17_combout\);

-- Location: LCCOMB_X59_Y69_N24
\convRel|convHx|outPort2[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[5]~18_combout\ = (\convRel|convHx|outPort2[5]~11_combout\ & (\convRel|convHx|outPort2[5]~8_combout\)) # (!\convRel|convHx|outPort2[5]~11_combout\ & ((\convRel|convHx|outPort2[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|outPort2[5]~11_combout\,
	datac => \convRel|convHx|outPort2[5]~8_combout\,
	datad => \convRel|convHx|outPort2[5]~17_combout\,
	combout => \convRel|convHx|outPort2[5]~18_combout\);

-- Location: LCCOMB_X59_Y69_N26
\convRel|convHx|outPort2[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[6]~19_combout\ = (!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & (\relBas|Horas|s_cont\(0) & (\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ $ 
-- (!\convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datab => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datac => \relBas|Horas|s_cont\(0),
	datad => \convRel|conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	combout => \convRel|convHx|outPort2[6]~19_combout\);

-- Location: LCCOMB_X59_Y69_N28
\convRel|convHx|outPort2[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort2[6]~20_combout\ = (\convRel|convHx|outPort2[6]~15_combout\) # ((!\convRel|convHx|outPort2[6]~13_combout\ & ((\convRel|convHx|outPort2[6]~19_combout\) # (!\convRel|pulsos|yout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|outPort2[6]~13_combout\,
	datab => \convRel|convHx|outPort2[6]~15_combout\,
	datac => \convRel|convHx|outPort2[6]~19_combout\,
	datad => \convRel|pulsos|yout[1]~0_combout\,
	combout => \convRel|convHx|outPort2[6]~20_combout\);

-- Location: LCCOMB_X68_Y70_N12
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ = \relBas|Minutos|s_cont\(3) $ (VCC)
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ = CARRY(\relBas|Minutos|s_cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(3),
	datad => VCC,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\);

-- Location: LCCOMB_X68_Y70_N14
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ = (\relBas|Minutos|s_cont\(4) & (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & VCC)) # (!\relBas|Minutos|s_cont\(4) & 
-- (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\))
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ = CARRY((!\relBas|Minutos|s_cont\(4) & !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(4),
	datad => VCC,
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\);

-- Location: LCCOMB_X68_Y70_N16
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\relBas|Minutos|s_cont\(5) & (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ $ (GND))) # (!\relBas|Minutos|s_cont\(5) & 
-- (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & VCC))
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((\relBas|Minutos|s_cont\(5) & !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Minutos|s_cont\(5),
	datad => VCC,
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

-- Location: LCCOMB_X68_Y70_N18
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ = !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ = CARRY(!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\);

-- Location: LCCOMB_X68_Y70_N20
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ = CARRY(!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\);

-- Location: LCCOMB_X68_Y70_N22
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ = !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\);

-- Location: LCCOMB_X68_Y70_N8
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\ = (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\);

-- Location: LCCOMB_X68_Y70_N2
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\ = (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \relBas|Minutos|s_cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \relBas|Minutos|s_cont\(5),
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\);

-- Location: LCCOMB_X68_Y70_N0
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\ = (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\);

-- Location: LCCOMB_X68_Y70_N30
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\ = (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \relBas|Minutos|s_cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \relBas|Minutos|s_cont\(4),
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\);

-- Location: LCCOMB_X68_Y70_N28
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\ = (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & 
-- !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datac => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\);

-- Location: LCCOMB_X68_Y70_N26
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\ = (\relBas|Minutos|s_cont\(3) & \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(3),
	datac => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\);

-- Location: LCCOMB_X68_Y70_N24
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\ = (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\);

-- Location: LCCOMB_X70_Y70_N2
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\ = (\relBas|Minutos|s_cont\(2) & !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Minutos|s_cont\(2),
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\);

-- Location: LCCOMB_X70_Y70_N28
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\ = (\relBas|Minutos|s_cont\(2) & \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Minutos|s_cont\(2),
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\);

-- Location: LCCOMB_X69_Y70_N20
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = (((\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\) # (\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\)))
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY((\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\) # (\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\,
	datad => VCC,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X69_Y70_N22
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (((\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\) 
-- # (\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\)))) # (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (!\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\ & 
-- (!\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\)))
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\ & (!\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\ & 
-- !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X69_Y70_N24
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & (((\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\) 
-- # (\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\)))) # (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((((\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\) # 
-- (\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\)))))
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\) # 
-- (\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X69_Y70_N26
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ = (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (((\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\) 
-- # (\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\)))) # (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (!\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\ & 
-- (!\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\)))
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ = CARRY((!\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\ & (!\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\ & 
-- !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\);

-- Location: LCCOMB_X69_Y70_N28
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ = CARRY((\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\) # 
-- (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\);

-- Location: LCCOMB_X69_Y70_N30
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ = !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\);

-- Location: LCCOMB_X68_Y70_N6
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\ = (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- ((\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\relBas|Minutos|s_cont\(5))) # (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- ((\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \relBas|Minutos|s_cont\(5),
	datac => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\);

-- Location: LCCOMB_X69_Y70_N0
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\ = (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ & 
-- !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	datac => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\);

-- Location: LCCOMB_X69_Y70_N6
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\ = (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\);

-- Location: LCCOMB_X68_Y70_N4
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\ = (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- ((\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\relBas|Minutos|s_cont\(4)))) # (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datac => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \relBas|Minutos|s_cont\(4),
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\);

-- Location: LCCOMB_X68_Y70_N10
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\ = (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- ((\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\relBas|Minutos|s_cont\(3))) # (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- ((\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(3),
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\);

-- Location: LCCOMB_X69_Y70_N4
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\ = (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ & 
-- !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	datac => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\);

-- Location: LCCOMB_X70_Y70_N4
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\ = (\relBas|Minutos|s_cont\(2) & \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \relBas|Minutos|s_cont\(2),
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\);

-- Location: LCCOMB_X69_Y70_N2
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\ = (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & 
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\);

-- Location: LCCOMB_X70_Y70_N22
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\ = (\relBas|Minutos|s_cont\(1) & \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(1),
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\);

-- Location: LCCOMB_X70_Y70_N8
\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\ = (\relBas|Minutos|s_cont\(1) & !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(1),
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\);

-- Location: LCCOMB_X69_Y70_N8
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ = CARRY((\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\) # (\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\,
	datad => VCC,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\);

-- Location: LCCOMB_X69_Y70_N10
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\ & (!\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\ 
-- & !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X69_Y70_N12
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ = CARRY((!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ & 
-- ((\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\) # (\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\);

-- Location: LCCOMB_X69_Y70_N14
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY((!\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\ & (!\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\ 
-- & !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X69_Y70_N16
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ = CARRY((\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\) # ((\convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\) 
-- # (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\,
	cout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\);

-- Location: LCCOMB_X69_Y70_N18
\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ = !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\,
	combout => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\);

-- Location: LCCOMB_X74_Y69_N0
\convRel|pulsos|yout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|pulsos|yout~1_combout\ = (\divF~input_o\) # (!\FSMrel|pS.MINUTOS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMrel|pS.MINUTOS~q\,
	datad => \divF~input_o\,
	combout => \convRel|pulsos|yout~1_combout\);

-- Location: LCCOMB_X70_Y70_N26
\convRel|convHx|outPort1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort1[0]~0_combout\ = ((\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ $ 
-- (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)))) # (!\convRel|pulsos|yout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \convRel|pulsos|yout~1_combout\,
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|convHx|outPort1[0]~0_combout\);

-- Location: LCCOMB_X70_Y70_N16
\convRel|convHx|outPort1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort1~1_combout\ = ((!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ $ 
-- (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)))) # (!\convRel|pulsos|yout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \convRel|pulsos|yout~1_combout\,
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|convHx|outPort1~1_combout\);

-- Location: LCCOMB_X70_Y70_N6
\convRel|convHx|outPort1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort1[2]~2_combout\ = ((\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\))) # (!\convRel|pulsos|yout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \convRel|pulsos|yout~1_combout\,
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|convHx|outPort1[2]~2_combout\);

-- Location: LCCOMB_X70_Y70_N20
\convRel|convHx|outPort1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort1[3]~3_combout\ = ((\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)) # (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & 
-- (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ $ (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)))) # (!\convRel|pulsos|yout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \convRel|pulsos|yout~1_combout\,
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|convHx|outPort1[3]~3_combout\);

-- Location: LCCOMB_X70_Y70_N18
\convRel|convHx|outPort1[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort1[4]~4_combout\ = (\relBas|Minutos|s_cont\(3) & ((\relBas|Minutos|s_cont\(2) & ((\relBas|Minutos|s_cont\(5)) # (!\relBas|Minutos|s_cont\(1)))) # (!\relBas|Minutos|s_cont\(2) & (!\relBas|Minutos|s_cont\(5))))) # 
-- (!\relBas|Minutos|s_cont\(3) & (\relBas|Minutos|s_cont\(2) & (!\relBas|Minutos|s_cont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(3),
	datab => \relBas|Minutos|s_cont\(2),
	datac => \relBas|Minutos|s_cont\(5),
	datad => \relBas|Minutos|s_cont\(1),
	combout => \convRel|convHx|outPort1[4]~4_combout\);

-- Location: LCCOMB_X70_Y70_N12
\convRel|convHx|outPort1[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort1[6]~5_combout\ = (!\relBas|Minutos|s_cont\(4) & (((!\relBas|Minutos|s_cont\(2) & !\relBas|Minutos|s_cont\(1))) # (!\relBas|Minutos|s_cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(3),
	datab => \relBas|Minutos|s_cont\(2),
	datac => \relBas|Minutos|s_cont\(4),
	datad => \relBas|Minutos|s_cont\(1),
	combout => \convRel|convHx|outPort1[6]~5_combout\);

-- Location: LCCOMB_X70_Y70_N10
\convRel|convHx|outPort1[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort1[4]~6_combout\ = (!\relBas|Minutos|s_cont\(5) & \convRel|convHx|outPort1[6]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relBas|Minutos|s_cont\(5),
	datad => \convRel|convHx|outPort1[6]~5_combout\,
	combout => \convRel|convHx|outPort1[4]~6_combout\);

-- Location: LCCOMB_X70_Y70_N0
\convRel|convHx|outPort1[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort1[4]~7_combout\ = ((!\convRel|convHx|outPort1[4]~6_combout\ & ((!\convRel|convHx|outPort1[4]~4_combout\) # (!\relBas|Minutos|s_cont\(4))))) # (!\convRel|pulsos|yout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(4),
	datab => \convRel|convHx|outPort1[4]~4_combout\,
	datac => \convRel|pulsos|yout~1_combout\,
	datad => \convRel|convHx|outPort1[4]~6_combout\,
	combout => \convRel|convHx|outPort1[4]~7_combout\);

-- Location: LCCOMB_X70_Y70_N14
\convRel|convHx|outPort1[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort1[5]~8_combout\ = ((\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & (\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- !\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)) # (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & 
-- ((\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\) # (!\convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)))) # (!\convRel|pulsos|yout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \convRel|pulsos|yout~1_combout\,
	datad => \convRel|conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convRel|convHx|outPort1[5]~8_combout\);

-- Location: LCCOMB_X70_Y70_N24
\convRel|convHx|outPort1[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort1[6]~9_combout\ = (!\relBas|Minutos|s_cont\(5) & (((!\relBas|Minutos|s_cont\(3) & !\relBas|Minutos|s_cont\(2))) # (!\relBas|Minutos|s_cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(3),
	datab => \relBas|Minutos|s_cont\(2),
	datac => \relBas|Minutos|s_cont\(5),
	datad => \relBas|Minutos|s_cont\(4),
	combout => \convRel|convHx|outPort1[6]~9_combout\);

-- Location: LCCOMB_X70_Y70_N30
\convRel|convHx|outPort1[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort1[6]~10_combout\ = ((\convRel|convHx|outPort1[6]~9_combout\) # ((!\relBas|Minutos|s_cont\(5) & \convRel|convHx|outPort1[6]~5_combout\))) # (!\convRel|pulsos|yout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|pulsos|yout~1_combout\,
	datab => \convRel|convHx|outPort1[6]~9_combout\,
	datac => \relBas|Minutos|s_cont\(5),
	datad => \convRel|convHx|outPort1[6]~5_combout\,
	combout => \convRel|convHx|outPort1[6]~10_combout\);

-- Location: LCCOMB_X65_Y68_N2
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\ = \relBas|Minutos|s_cont\(3) $ (VCC)
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~1\ = CARRY(\relBas|Minutos|s_cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(3),
	datad => VCC,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~1\);

-- Location: LCCOMB_X65_Y68_N4
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\ = (\relBas|Minutos|s_cont\(4) & (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~1\ & VCC)) # (!\relBas|Minutos|s_cont\(4) & 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~1\))
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~3\ = CARRY((!\relBas|Minutos|s_cont\(4) & !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(4),
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~1\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~3\);

-- Location: LCCOMB_X65_Y68_N6
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\ = (\relBas|Minutos|s_cont\(5) & (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~3\ $ (GND))) # (!\relBas|Minutos|s_cont\(5) & 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~3\ & VCC))
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~5\ = CARRY((\relBas|Minutos|s_cont\(5) & !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(5),
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~3\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~5\);

-- Location: LCCOMB_X65_Y68_N8
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\ = !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~5\
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~7\ = CARRY(!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~5\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~7\);

-- Location: LCCOMB_X65_Y68_N10
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\ = \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~7\ $ (GND)
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~9\ = CARRY(!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~7\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~9\);

-- Location: LCCOMB_X65_Y68_N12
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\ = !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~9\
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~11\ = CARRY(!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~9\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~11\);

-- Location: LCCOMB_X65_Y68_N14
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\ = \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~11\ $ (GND)
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~13\ = CARRY(!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~11\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~13\);

-- Location: LCCOMB_X65_Y68_N16
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ = !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~13\
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~15\ = CARRY(!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~13\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~15\);

-- Location: LCCOMB_X65_Y68_N18
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ = \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~15\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\);

-- Location: LCCOMB_X67_Y68_N0
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\ & !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\);

-- Location: LCCOMB_X66_Y68_N0
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\ & !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\);

-- Location: LCCOMB_X67_Y68_N30
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\);

-- Location: LCCOMB_X67_Y68_N4
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\);

-- Location: LCCOMB_X65_Y68_N20
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\ & !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\);

-- Location: LCCOMB_X65_Y68_N28
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & \relBas|Minutos|s_cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datac => \relBas|Minutos|s_cont\(5),
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\);

-- Location: LCCOMB_X65_Y68_N30
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\ = (\relBas|Minutos|s_cont\(4) & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relBas|Minutos|s_cont\(4),
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\);

-- Location: LCCOMB_X66_Y68_N2
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\ & !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\);

-- Location: LCCOMB_X66_Y68_N4
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\);

-- Location: LCCOMB_X65_Y68_N24
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\ = (\relBas|Minutos|s_cont\(3) & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(3),
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\);

-- Location: LCCOMB_X66_Y68_N30
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\ = (\relBas|Minutos|s_cont\(2) & !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(2),
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\);

-- Location: LCCOMB_X66_Y68_N28
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\ = (\relBas|Minutos|s_cont\(2) & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(2),
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\);

-- Location: LCCOMB_X66_Y68_N6
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\ = (((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\) # (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\)))
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~1\ = CARRY((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\) # (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\,
	datad => VCC,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~1\);

-- Location: LCCOMB_X66_Y68_N8
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~1\ & (((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\) # 
-- (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\)))) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~1\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\ & 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\)))
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~3\ = CARRY((!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\ & 
-- !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~1\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~3\);

-- Location: LCCOMB_X66_Y68_N10
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~3\ & (((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\) # 
-- (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\)))) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~3\ & ((((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\) # 
-- (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\)))))
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~5\ = CARRY((!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~3\ & ((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\) # 
-- (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~3\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~5\);

-- Location: LCCOMB_X66_Y68_N12
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~5\ & (((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\) # 
-- (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\)))) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~5\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\ & 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\)))
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~7\ = CARRY((!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\ & 
-- !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~5\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~7\);

-- Location: LCCOMB_X66_Y68_N14
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\ & ((GND) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~7\))) # 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~7\ $ (GND)))
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~9\ = CARRY((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~7\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~9\);

-- Location: LCCOMB_X66_Y68_N16
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~9\ & VCC)) # 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~9\))
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~11\ = CARRY((!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ & !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~9\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~11\);

-- Location: LCCOMB_X66_Y68_N18
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\ & ((GND) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~11\))) # 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~11\ $ (GND)))
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~13\ = CARRY((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~11\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~13\);

-- Location: LCCOMB_X66_Y68_N20
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~13\ & VCC)) # 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~13\))
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~15\ = CARRY((!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ & !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~13\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~15\);

-- Location: LCCOMB_X66_Y68_N22
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~15\ & ((((\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ & 
-- !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\))))) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~15\ & (((\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ & 
-- !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)) # (GND)))
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~17\ = CARRY(((\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ & !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)) # 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~15\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~17\);

-- Location: LCCOMB_X66_Y68_N24
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\ = !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~17\
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~19\ = CARRY(!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~17\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~19\);

-- Location: LCCOMB_X66_Y68_N26
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ = \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~19\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\);

-- Location: LCCOMB_X65_Y68_N26
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & ((\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & 
-- (\relBas|Minutos|s_cont\(3))) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & ((\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(3),
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\);

-- Location: LCCOMB_X67_Y68_N22
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\);

-- Location: LCCOMB_X69_Y68_N2
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\ & !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\);

-- Location: LCCOMB_X69_Y68_N28
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\ = (\relBas|Minutos|s_cont\(2) & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relBas|Minutos|s_cont\(2),
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\);

-- Location: LCCOMB_X69_Y68_N30
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\ = (\relBas|Minutos|s_cont\(1) & !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relBas|Minutos|s_cont\(1),
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\);

-- Location: LCCOMB_X69_Y68_N0
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\ = (\relBas|Minutos|s_cont\(1) & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \relBas|Minutos|s_cont\(1),
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\);

-- Location: LCCOMB_X68_Y68_N4
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\ = (((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\) # (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\)))
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~1\ = CARRY((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\) # (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\,
	datad => VCC,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~1\);

-- Location: LCCOMB_X68_Y68_N6
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~1\ & (((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\) # 
-- (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\)))) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~1\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\ & 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\)))
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~3\ = CARRY((!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\ & 
-- !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~1\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~3\);

-- Location: LCCOMB_X68_Y68_N8
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~3\ & (((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\) # 
-- (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\)))) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~3\ & ((((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\) # 
-- (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\)))))
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~5\ = CARRY((!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~3\ & ((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\) # 
-- (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~3\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~5\);

-- Location: LCCOMB_X67_Y68_N8
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\);

-- Location: LCCOMB_X67_Y68_N6
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ & 
-- !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\);

-- Location: LCCOMB_X67_Y68_N2
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\);

-- Location: LCCOMB_X67_Y68_N20
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\ & 
-- !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\);

-- Location: LCCOMB_X67_Y68_N26
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\ & 
-- !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\);

-- Location: LCCOMB_X67_Y68_N24
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\);

-- Location: LCCOMB_X67_Y68_N10
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\ & !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\);

-- Location: LCCOMB_X67_Y68_N12
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & 
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\);

-- Location: LCCOMB_X67_Y68_N14
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & 
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\);

-- Location: LCCOMB_X67_Y68_N28
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\);

-- Location: LCCOMB_X65_Y68_N22
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & ((\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & 
-- ((\relBas|Minutos|s_cont\(5)))) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datac => \relBas|Minutos|s_cont\(5),
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\);

-- Location: LCCOMB_X67_Y68_N18
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\);

-- Location: LCCOMB_X67_Y68_N16
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\);

-- Location: LCCOMB_X65_Y68_N0
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & ((\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & 
-- ((\relBas|Minutos|s_cont\(4)))) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datac => \relBas|Minutos|s_cont\(4),
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\);

-- Location: LCCOMB_X68_Y68_N10
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\ = CARRY((!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\ & 
-- !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~5\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\);

-- Location: LCCOMB_X68_Y68_N12
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\ = CARRY((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\) # ((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\) # 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\);

-- Location: LCCOMB_X68_Y68_N14
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\ = CARRY((!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\ & 
-- !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\);

-- Location: LCCOMB_X68_Y68_N16
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\ = CARRY((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\) # ((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\) # 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\);

-- Location: LCCOMB_X68_Y68_N18
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\ = CARRY((!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\ & 
-- !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\);

-- Location: LCCOMB_X68_Y68_N20
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\ = CARRY((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\) # ((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\) # 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\);

-- Location: LCCOMB_X68_Y68_N22
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\ = CARRY((!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\ & 
-- !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\);

-- Location: LCCOMB_X68_Y68_N24
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\ = CARRY(((\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\ & !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)) # 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => VCC,
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\,
	cout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\);

-- Location: LCCOMB_X68_Y68_N26
\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ = !\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\);

-- Location: LCCOMB_X68_Y68_N30
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & ((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\) # 
-- ((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\)))) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & (((\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\,
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\);

-- Location: LCCOMB_X68_Y68_N28
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & ((\relBas|Minutos|s_cont\(1)))) # 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\,
	datac => \relBas|Minutos|s_cont\(1),
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\);

-- Location: LCCOMB_X68_Y68_N0
\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & (((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\) # 
-- (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\)))) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\,
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\,
	combout => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\);

-- Location: LCCOMB_X66_Y69_N24
\convRel|convHx|outPort0[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[0]~10_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ & (\relBas|Minutos|s_cont\(0) $ 
-- (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(0),
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	combout => \convRel|convHx|outPort0[0]~10_combout\);

-- Location: LCCOMB_X66_Y69_N4
\convRel|convHx|outPort0[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[0]~23_combout\ = (\convRel|convHx|outPort0[0]~10_combout\) # ((\FSMrel|pS.MINUTOS~q\ & !\divF~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convRel|convHx|outPort0[0]~10_combout\,
	datac => \FSMrel|pS.MINUTOS~q\,
	datad => \divF~input_o\,
	combout => \convRel|convHx|outPort0[0]~23_combout\);

-- Location: LCCOMB_X74_Y69_N14
\convRel|convHx|outPort0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0~11_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ & 
-- (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ $ (\relBas|Minutos|s_cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datac => \relBas|Minutos|s_cont\(0),
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	combout => \convRel|convHx|outPort0~11_combout\);

-- Location: LCCOMB_X74_Y69_N30
\convRel|convHx|outPort0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0~24_combout\ = (\convRel|convHx|outPort0~11_combout\) # ((\FSMrel|pS.MINUTOS~q\ & !\divF~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMrel|pS.MINUTOS~q\,
	datab => \convRel|convHx|outPort0~11_combout\,
	datad => \divF~input_o\,
	combout => \convRel|convHx|outPort0~24_combout\);

-- Location: LCCOMB_X66_Y69_N22
\convRel|convHx|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|Equal7~0_combout\ = (!\relBas|Minutos|s_cont\(0) & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ & 
-- !\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \relBas|Minutos|s_cont\(0),
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	combout => \convRel|convHx|Equal7~0_combout\);

-- Location: LCCOMB_X66_Y69_N10
\convRel|convHx|outPort0[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[2]~25_combout\ = (\convRel|convHx|Equal7~0_combout\) # ((\FSMrel|pS.MINUTOS~q\ & !\divF~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|Equal7~0_combout\,
	datac => \FSMrel|pS.MINUTOS~q\,
	datad => \divF~input_o\,
	combout => \convRel|convHx|outPort0[2]~25_combout\);

-- Location: LCCOMB_X74_Y69_N2
\convRel|convHx|outPort0[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[3]~13_combout\ = (\convRel|pulsos|yout~1_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ $ (((!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ & 
-- !\relBas|Minutos|s_cont\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	datac => \relBas|Minutos|s_cont\(0),
	datad => \convRel|pulsos|yout~1_combout\,
	combout => \convRel|convHx|outPort0[3]~13_combout\);

-- Location: LCCOMB_X74_Y69_N10
\convRel|convHx|outPort0[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[3]~27_combout\ = (\convRel|convHx|outPort0[3]~13_combout\) # ((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & ((\divF~input_o\) # (!\FSMrel|pS.MINUTOS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divF~input_o\,
	datab => \convRel|convHx|outPort0[3]~13_combout\,
	datac => \FSMrel|pS.MINUTOS~q\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	combout => \convRel|convHx|outPort0[3]~27_combout\);

-- Location: LCCOMB_X74_Y69_N4
\convRel|convHx|outPort0[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[5]~12_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (\relBas|Minutos|s_cont\(0) & 
-- \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datac => \relBas|Minutos|s_cont\(0),
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	combout => \convRel|convHx|outPort0[5]~12_combout\);

-- Location: LCCOMB_X74_Y69_N16
\convRel|convHx|outPort0[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[3]~26_combout\ = (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\) # (((\FSMrel|pS.MINUTOS~q\ & !\divF~input_o\)) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMrel|pS.MINUTOS~q\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datad => \divF~input_o\,
	combout => \convRel|convHx|outPort0[3]~26_combout\);

-- Location: LCCOMB_X74_Y69_N12
\convRel|convHx|outPort0[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[3]~14_combout\ = (\convRel|convHx|outPort0[5]~12_combout\) # ((!\convRel|convHx|outPort0[3]~27_combout\ & \convRel|convHx|outPort0[3]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|outPort0[3]~27_combout\,
	datac => \convRel|convHx|outPort0[5]~12_combout\,
	datad => \convRel|convHx|outPort0[3]~26_combout\,
	combout => \convRel|convHx|outPort0[3]~14_combout\);

-- Location: LCCOMB_X68_Y68_N2
\convRel|convHx|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|Equal0~2_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ & ((\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & (!\relBas|Minutos|s_cont\(1))) # 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & ((!\convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\,
	datab => \relBas|Minutos|s_cont\(1),
	datac => \convRel|conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\,
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	combout => \convRel|convHx|Equal0~2_combout\);

-- Location: LCCOMB_X74_Y69_N22
\convRel|convHx|outPort0[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[6]~17_combout\ = (\convRel|pulsos|yout~1_combout\ & ((\convRel|convHx|Equal0~2_combout\ & (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & !\relBas|Minutos|s_cont\(0))) # 
-- (!\convRel|convHx|Equal0~2_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|Equal0~2_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datac => \relBas|Minutos|s_cont\(0),
	datad => \convRel|pulsos|yout~1_combout\,
	combout => \convRel|convHx|outPort0[6]~17_combout\);

-- Location: LCCOMB_X74_Y69_N8
\convRel|convHx|outPort0[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[4]~16_combout\ = ((!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & ((\relBas|Minutos|s_cont\(0)) # (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\)))) # 
-- (!\convRel|pulsos|yout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datac => \relBas|Minutos|s_cont\(0),
	datad => \convRel|pulsos|yout~1_combout\,
	combout => \convRel|convHx|outPort0[4]~16_combout\);

-- Location: LCCOMB_X74_Y69_N18
\convRel|convHx|outPort0[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[6]~15_combout\ = (\convRel|pulsos|yout~1_combout\ & (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ $ (((\convRel|convHx|Equal0~2_combout\ & !\relBas|Minutos|s_cont\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|Equal0~2_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datac => \relBas|Minutos|s_cont\(0),
	datad => \convRel|pulsos|yout~1_combout\,
	combout => \convRel|convHx|outPort0[6]~15_combout\);

-- Location: LCCOMB_X74_Y69_N28
\convRel|convHx|outPort0[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[4]~18_combout\ = (!\convRel|convHx|outPort0[6]~17_combout\ & ((\convRel|convHx|outPort0[4]~16_combout\) # (\convRel|convHx|outPort0[6]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|outPort0[6]~17_combout\,
	datac => \convRel|convHx|outPort0[4]~16_combout\,
	datad => \convRel|convHx|outPort0[6]~15_combout\,
	combout => \convRel|convHx|outPort0[4]~18_combout\);

-- Location: LCCOMB_X74_Y69_N6
\convRel|convHx|outPort0[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[5]~19_combout\ = ((!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ & ((\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\) # (\relBas|Minutos|s_cont\(0))))) # 
-- (!\convRel|pulsos|yout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	datac => \relBas|Minutos|s_cont\(0),
	datad => \convRel|pulsos|yout~1_combout\,
	combout => \convRel|convHx|outPort0[5]~19_combout\);

-- Location: LCCOMB_X74_Y69_N20
\convRel|convHx|outPort0[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[5]~20_combout\ = (\convRel|convHx|outPort0[3]~27_combout\ & (\convRel|convHx|outPort0[5]~12_combout\)) # (!\convRel|convHx|outPort0[3]~27_combout\ & ((\convRel|convHx|outPort0[5]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|outPort0[3]~27_combout\,
	datac => \convRel|convHx|outPort0[5]~12_combout\,
	datad => \convRel|convHx|outPort0[5]~19_combout\,
	combout => \convRel|convHx|outPort0[5]~20_combout\);

-- Location: LCCOMB_X74_Y69_N26
\convRel|convHx|outPort0[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[6]~21_combout\ = (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (\relBas|Minutos|s_cont\(0) & (\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ $ 
-- (!\convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datab => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datac => \relBas|Minutos|s_cont\(0),
	datad => \convRel|conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	combout => \convRel|convHx|outPort0[6]~21_combout\);

-- Location: LCCOMB_X74_Y69_N24
\convRel|convHx|outPort0[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \convRel|convHx|outPort0[6]~22_combout\ = (\convRel|convHx|outPort0[6]~17_combout\) # ((!\convRel|convHx|outPort0[6]~15_combout\ & ((\convRel|convHx|outPort0[6]~21_combout\) # (!\convRel|pulsos|yout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convRel|convHx|outPort0[6]~17_combout\,
	datab => \convRel|convHx|outPort0[6]~15_combout\,
	datac => \convRel|convHx|outPort0[6]~21_combout\,
	datad => \convRel|pulsos|yout~1_combout\,
	combout => \convRel|convHx|outPort0[6]~22_combout\);

ww_horaRom(0) <= \horaRom[0]~output_o\;

ww_horaRom(1) <= \horaRom[1]~output_o\;

ww_horaRom(2) <= \horaRom[2]~output_o\;

ww_horaRom(3) <= \horaRom[3]~output_o\;

ww_horaRom(4) <= \horaRom[4]~output_o\;

ww_hD(0) <= \hD[0]~output_o\;

ww_hD(1) <= \hD[1]~output_o\;

ww_hD(2) <= \hD[2]~output_o\;

ww_hD(3) <= \hD[3]~output_o\;

ww_hD(4) <= \hD[4]~output_o\;

ww_hD(5) <= \hD[5]~output_o\;

ww_hD(6) <= \hD[6]~output_o\;

ww_hU(0) <= \hU[0]~output_o\;

ww_hU(1) <= \hU[1]~output_o\;

ww_hU(2) <= \hU[2]~output_o\;

ww_hU(3) <= \hU[3]~output_o\;

ww_hU(4) <= \hU[4]~output_o\;

ww_hU(5) <= \hU[5]~output_o\;

ww_hU(6) <= \hU[6]~output_o\;

ww_mD(0) <= \mD[0]~output_o\;

ww_mD(1) <= \mD[1]~output_o\;

ww_mD(2) <= \mD[2]~output_o\;

ww_mD(3) <= \mD[3]~output_o\;

ww_mD(4) <= \mD[4]~output_o\;

ww_mD(5) <= \mD[5]~output_o\;

ww_mD(6) <= \mD[6]~output_o\;

ww_mU(0) <= \mU[0]~output_o\;

ww_mU(1) <= \mU[1]~output_o\;

ww_mU(2) <= \mU[2]~output_o\;

ww_mU(3) <= \mU[3]~output_o\;

ww_mU(4) <= \mU[4]~output_o\;

ww_mU(5) <= \mU[5]~output_o\;

ww_mU(6) <= \mU[6]~output_o\;
END structure;


