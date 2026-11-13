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

-- DATE "06/01/2023 10:48:31"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ConversorRelogio IS
    PORT (
	pulseIn : IN std_logic;
	modo : IN std_logic;
	mmH : IN std_logic;
	minuIn : IN std_logic_vector(5 DOWNTO 0);
	horaIn : IN std_logic_vector(4 DOWNTO 0);
	horaD : OUT std_logic_vector(6 DOWNTO 0);
	horaU : OUT std_logic_vector(6 DOWNTO 0);
	minuD : OUT std_logic_vector(6 DOWNTO 0);
	minuU : OUT std_logic_vector(6 DOWNTO 0)
	);
END ConversorRelogio;

-- Design Ports Information
-- horaD[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaD[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaD[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaD[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaD[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaD[5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaD[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaU[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaU[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaU[2]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaU[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaU[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaU[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaU[6]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuD[0]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuD[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuD[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuD[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuD[4]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuD[5]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuD[6]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuU[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuU[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuU[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuU[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuU[4]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuU[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuU[6]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaIn[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaIn[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaIn[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaIn[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulseIn	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mmH	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modo	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horaIn[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuIn[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuIn[4]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuIn[3]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuIn[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuIn[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minuIn[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ConversorRelogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pulseIn : std_logic;
SIGNAL ww_modo : std_logic;
SIGNAL ww_mmH : std_logic;
SIGNAL ww_minuIn : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_horaIn : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_horaD : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_horaU : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_minuD : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_minuU : std_logic_vector(6 DOWNTO 0);
SIGNAL \horaD[0]~output_o\ : std_logic;
SIGNAL \horaD[1]~output_o\ : std_logic;
SIGNAL \horaD[2]~output_o\ : std_logic;
SIGNAL \horaD[3]~output_o\ : std_logic;
SIGNAL \horaD[4]~output_o\ : std_logic;
SIGNAL \horaD[5]~output_o\ : std_logic;
SIGNAL \horaD[6]~output_o\ : std_logic;
SIGNAL \horaU[0]~output_o\ : std_logic;
SIGNAL \horaU[1]~output_o\ : std_logic;
SIGNAL \horaU[2]~output_o\ : std_logic;
SIGNAL \horaU[3]~output_o\ : std_logic;
SIGNAL \horaU[4]~output_o\ : std_logic;
SIGNAL \horaU[5]~output_o\ : std_logic;
SIGNAL \horaU[6]~output_o\ : std_logic;
SIGNAL \minuD[0]~output_o\ : std_logic;
SIGNAL \minuD[1]~output_o\ : std_logic;
SIGNAL \minuD[2]~output_o\ : std_logic;
SIGNAL \minuD[3]~output_o\ : std_logic;
SIGNAL \minuD[4]~output_o\ : std_logic;
SIGNAL \minuD[5]~output_o\ : std_logic;
SIGNAL \minuD[6]~output_o\ : std_logic;
SIGNAL \minuU[0]~output_o\ : std_logic;
SIGNAL \minuU[1]~output_o\ : std_logic;
SIGNAL \minuU[2]~output_o\ : std_logic;
SIGNAL \minuU[3]~output_o\ : std_logic;
SIGNAL \minuU[4]~output_o\ : std_logic;
SIGNAL \minuU[5]~output_o\ : std_logic;
SIGNAL \minuU[6]~output_o\ : std_logic;
SIGNAL \horaIn[4]~input_o\ : std_logic;
SIGNAL \horaIn[3]~input_o\ : std_logic;
SIGNAL \horaIn[2]~input_o\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\ : std_logic;
SIGNAL \horaIn[1]~input_o\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ : std_logic;
SIGNAL \modo~input_o\ : std_logic;
SIGNAL \mmH~input_o\ : std_logic;
SIGNAL \pulseIn~input_o\ : std_logic;
SIGNAL \pulsos|yout[1]~0_combout\ : std_logic;
SIGNAL \convHx|outPort3[0]~0_combout\ : std_logic;
SIGNAL \convHx|outPort3[2]~1_combout\ : std_logic;
SIGNAL \convHx|outPort3[6]~2_combout\ : std_logic;
SIGNAL \convHx|outPort3[4]~3_combout\ : std_logic;
SIGNAL \convHx|outPort3[4]~4_combout\ : std_logic;
SIGNAL \convHx|outPort3[3]~5_combout\ : std_logic;
SIGNAL \horaIn[0]~input_o\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~1\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~3\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~5\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~7\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~9\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~11\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~13\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~15\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_25~1\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_25~3\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_25~5\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\ : std_logic;
SIGNAL \conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ : std_logic;
SIGNAL \convHx|outPort2[0]~6_combout\ : std_logic;
SIGNAL \convHx|outPort2[0]~21_combout\ : std_logic;
SIGNAL \convHx|outPort2~7_combout\ : std_logic;
SIGNAL \convHx|outPort2~22_combout\ : std_logic;
SIGNAL \convHx|Equal25~0_combout\ : std_logic;
SIGNAL \convHx|outPort2[2]~23_combout\ : std_logic;
SIGNAL \convHx|outPort2[5]~8_combout\ : std_logic;
SIGNAL \convHx|outPort2[3]~10_combout\ : std_logic;
SIGNAL \convHx|outPort2[3]~11_combout\ : std_logic;
SIGNAL \convHx|outPort2[3]~9_combout\ : std_logic;
SIGNAL \convHx|outPort2[3]~12_combout\ : std_logic;
SIGNAL \convHx|Equal18~2_combout\ : std_logic;
SIGNAL \convHx|outPort2[6]~15_combout\ : std_logic;
SIGNAL \convHx|outPort2[6]~13_combout\ : std_logic;
SIGNAL \convHx|outPort2[4]~14_combout\ : std_logic;
SIGNAL \convHx|outPort2[4]~16_combout\ : std_logic;
SIGNAL \convHx|outPort2[5]~17_combout\ : std_logic;
SIGNAL \convHx|outPort2[5]~18_combout\ : std_logic;
SIGNAL \convHx|outPort2[6]~19_combout\ : std_logic;
SIGNAL \convHx|outPort2[6]~20_combout\ : std_logic;
SIGNAL \minuIn[5]~input_o\ : std_logic;
SIGNAL \minuIn[4]~input_o\ : std_logic;
SIGNAL \minuIn[3]~input_o\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\ : std_logic;
SIGNAL \minuIn[2]~input_o\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\ : std_logic;
SIGNAL \minuIn[1]~input_o\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ : std_logic;
SIGNAL \pulsos|yout[0]~1_combout\ : std_logic;
SIGNAL \convHx|outPort1[0]~0_combout\ : std_logic;
SIGNAL \convHx|outPort1~1_combout\ : std_logic;
SIGNAL \convHx|outPort1[2]~2_combout\ : std_logic;
SIGNAL \convHx|outPort1[3]~3_combout\ : std_logic;
SIGNAL \convHx|outPort1[4]~5_combout\ : std_logic;
SIGNAL \convHx|outPort1[4]~4_combout\ : std_logic;
SIGNAL \convHx|outPort1[4]~6_combout\ : std_logic;
SIGNAL \convHx|outPort1[5]~7_combout\ : std_logic;
SIGNAL \convHx|outPort1[6]~8_combout\ : std_logic;
SIGNAL \convHx|outPort1[6]~9_combout\ : std_logic;
SIGNAL \minuIn[0]~input_o\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~1\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~3\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~5\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~7\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~9\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~11\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~13\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~15\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~1\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~3\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~5\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~7\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~9\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~11\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~13\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~15\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~17\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~19\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~1\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~3\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~5\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\ : std_logic;
SIGNAL \conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ : std_logic;
SIGNAL \convHx|outPort0~6_combout\ : std_logic;
SIGNAL \convHx|outPort0[0]~21_combout\ : std_logic;
SIGNAL \convHx|outPort0~7_combout\ : std_logic;
SIGNAL \convHx|outPort0~22_combout\ : std_logic;
SIGNAL \convHx|Equal7~0_combout\ : std_logic;
SIGNAL \convHx|outPort0[2]~23_combout\ : std_logic;
SIGNAL \convHx|outPort0[3]~9_combout\ : std_logic;
SIGNAL \convHx|outPort0[5]~8_combout\ : std_logic;
SIGNAL \convHx|outPort0[3]~10_combout\ : std_logic;
SIGNAL \convHx|outPort0[3]~11_combout\ : std_logic;
SIGNAL \convHx|outPort0[3]~12_combout\ : std_logic;
SIGNAL \convHx|outPort0[4]~14_combout\ : std_logic;
SIGNAL \convHx|Equal0~2_combout\ : std_logic;
SIGNAL \convHx|outPort0[4]~13_combout\ : std_logic;
SIGNAL \convHx|outPort0[6]~15_combout\ : std_logic;
SIGNAL \convHx|outPort0[4]~16_combout\ : std_logic;
SIGNAL \convHx|outPort0[5]~17_combout\ : std_logic;
SIGNAL \convHx|outPort0[5]~18_combout\ : std_logic;
SIGNAL \convHx|outPort0[6]~19_combout\ : std_logic;
SIGNAL \convHx|outPort0[6]~20_combout\ : std_logic;
SIGNAL \convHx|ALT_INV_outPort3[3]~5_combout\ : std_logic;
SIGNAL \convHx|ALT_INV_outPort3[6]~2_combout\ : std_logic;
SIGNAL \pulsos|ALT_INV_yout[1]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_pulseIn <= pulseIn;
ww_modo <= modo;
ww_mmH <= mmH;
ww_minuIn <= minuIn;
ww_horaIn <= horaIn;
horaD <= ww_horaD;
horaU <= ww_horaU;
minuD <= ww_minuD;
minuU <= ww_minuU;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\convHx|ALT_INV_outPort3[3]~5_combout\ <= NOT \convHx|outPort3[3]~5_combout\;
\convHx|ALT_INV_outPort3[6]~2_combout\ <= NOT \convHx|outPort3[6]~2_combout\;
\pulsos|ALT_INV_yout[1]~0_combout\ <= NOT \pulsos|yout[1]~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y73_N9
\horaD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort3[0]~0_combout\,
	devoe => ww_devoe,
	o => \horaD[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\horaD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pulsos|ALT_INV_yout[1]~0_combout\,
	devoe => ww_devoe,
	o => \horaD[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\horaD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort3[2]~1_combout\,
	devoe => ww_devoe,
	o => \horaD[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\horaD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort3[0]~0_combout\,
	devoe => ww_devoe,
	o => \horaD[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\horaD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort3[4]~4_combout\,
	devoe => ww_devoe,
	o => \horaD[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\horaD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|ALT_INV_outPort3[3]~5_combout\,
	devoe => ww_devoe,
	o => \horaD[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\horaD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|ALT_INV_outPort3[6]~2_combout\,
	devoe => ww_devoe,
	o => \horaD[6]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\horaU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort2[0]~21_combout\,
	devoe => ww_devoe,
	o => \horaU[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\horaU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort2~22_combout\,
	devoe => ww_devoe,
	o => \horaU[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\horaU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort2[2]~23_combout\,
	devoe => ww_devoe,
	o => \horaU[2]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\horaU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort2[3]~12_combout\,
	devoe => ww_devoe,
	o => \horaU[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\horaU[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort2[4]~16_combout\,
	devoe => ww_devoe,
	o => \horaU[4]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\horaU[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort2[5]~18_combout\,
	devoe => ww_devoe,
	o => \horaU[5]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\horaU[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort2[6]~20_combout\,
	devoe => ww_devoe,
	o => \horaU[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\minuD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort1[0]~0_combout\,
	devoe => ww_devoe,
	o => \minuD[0]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\minuD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort1~1_combout\,
	devoe => ww_devoe,
	o => \minuD[1]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\minuD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort1[2]~2_combout\,
	devoe => ww_devoe,
	o => \minuD[2]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\minuD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort1[3]~3_combout\,
	devoe => ww_devoe,
	o => \minuD[3]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\minuD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort1[4]~6_combout\,
	devoe => ww_devoe,
	o => \minuD[4]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\minuD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort1[5]~7_combout\,
	devoe => ww_devoe,
	o => \minuD[5]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\minuD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort1[6]~9_combout\,
	devoe => ww_devoe,
	o => \minuD[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\minuU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort0[0]~21_combout\,
	devoe => ww_devoe,
	o => \minuU[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\minuU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort0~22_combout\,
	devoe => ww_devoe,
	o => \minuU[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\minuU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort0[2]~23_combout\,
	devoe => ww_devoe,
	o => \minuU[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\minuU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort0[3]~12_combout\,
	devoe => ww_devoe,
	o => \minuU[3]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\minuU[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort0[4]~16_combout\,
	devoe => ww_devoe,
	o => \minuU[4]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\minuU[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort0[5]~18_combout\,
	devoe => ww_devoe,
	o => \minuU[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\minuU[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \convHx|outPort0[6]~20_combout\,
	devoe => ww_devoe,
	o => \minuU[6]~output_o\);

-- Location: IOIBUF_X52_Y73_N15
\horaIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_horaIn(4),
	o => \horaIn[4]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\horaIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_horaIn(3),
	o => \horaIn[3]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\horaIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_horaIn(2),
	o => \horaIn[2]~input_o\);

-- Location: LCCOMB_X61_Y72_N18
\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = \horaIn[2]~input_o\ $ (VCC)
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY(\horaIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horaIn[2]~input_o\,
	datad => VCC,
	combout => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X61_Y72_N20
\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\horaIn[3]~input_o\ & (\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & VCC)) # (!\horaIn[3]~input_o\ & 
-- (!\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\))
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\horaIn[3]~input_o\ & !\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \horaIn[3]~input_o\,
	datad => VCC,
	cin => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X61_Y72_N22
\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\horaIn[4]~input_o\ & (\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ $ (GND))) # (!\horaIn[4]~input_o\ & 
-- (!\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & VCC))
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((\horaIn[4]~input_o\ & !\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[4]~input_o\,
	datad => VCC,
	cin => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X61_Y72_N24
\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ = !\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ = CARRY(!\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	combout => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	cout => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\);

-- Location: LCCOMB_X61_Y72_N26
\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ = CARRY(!\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\,
	cout => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\);

-- Location: LCCOMB_X61_Y72_N28
\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ = !\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\,
	combout => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\);

-- Location: LCCOMB_X60_Y72_N24
\conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\ = (\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ & !\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	datad => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\);

-- Location: LCCOMB_X60_Y72_N26
\conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\ = (\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ & !\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	datad => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\);

-- Location: LCCOMB_X61_Y72_N0
\conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\ = (\horaIn[4]~input_o\ & \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[4]~input_o\,
	datad => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\);

-- Location: LCCOMB_X60_Y72_N28
\conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\ = (\horaIn[3]~input_o\ & \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horaIn[3]~input_o\,
	datad => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\);

-- Location: LCCOMB_X60_Y72_N18
\conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\ = (\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ & !\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	datad => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\);

-- Location: LCCOMB_X60_Y72_N30
\conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\ = (!\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	combout => \conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\);

-- Location: LCCOMB_X60_Y72_N20
\conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\ = (\horaIn[2]~input_o\ & \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horaIn[2]~input_o\,
	datad => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\);

-- Location: IOIBUF_X60_Y73_N22
\horaIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_horaIn(1),
	o => \horaIn[1]~input_o\);

-- Location: LCCOMB_X60_Y72_N0
\conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\ = (\horaIn[1]~input_o\ & \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horaIn[1]~input_o\,
	datad => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\);

-- Location: LCCOMB_X60_Y72_N2
\conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\ = (\horaIn[1]~input_o\ & !\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horaIn[1]~input_o\,
	datad => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\);

-- Location: LCCOMB_X60_Y72_N6
\conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ = CARRY((\conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\) # (\conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div1|auto_generated|divider|divider|StageOut[180]~7_combout\,
	datab => \conv2D|Div1|auto_generated|divider|divider|StageOut[180]~8_combout\,
	datad => VCC,
	cout => \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\);

-- Location: LCCOMB_X60_Y72_N8
\conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\ & (!\conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\ & 
-- !\conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div1|auto_generated|divider|divider|StageOut[181]~6_combout\,
	datab => \conv2D|Div1|auto_generated|divider|divider|StageOut[181]~5_combout\,
	datad => VCC,
	cin => \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X60_Y72_N10
\conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ = CARRY((!\conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ & ((\conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\) # 
-- (\conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div1|auto_generated|divider|divider|StageOut[182]~3_combout\,
	datab => \conv2D|Div1|auto_generated|divider|divider|StageOut[182]~4_combout\,
	datad => VCC,
	cin => \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\,
	cout => \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\);

-- Location: LCCOMB_X60_Y72_N12
\conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY((!\conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\ & (!\conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\ & 
-- !\conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div1|auto_generated|divider|divider|StageOut[183]~2_combout\,
	datab => \conv2D|Div1|auto_generated|divider|divider|StageOut[183]~1_combout\,
	datad => VCC,
	cin => \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X60_Y72_N14
\conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ = CARRY((\conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\) # (!\conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Div1|auto_generated|divider|divider|StageOut[184]~0_combout\,
	datad => VCC,
	cin => \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\,
	cout => \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\);

-- Location: LCCOMB_X60_Y72_N16
\conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ = !\conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\,
	combout => \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\);

-- Location: IOIBUF_X69_Y73_N22
\modo~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modo,
	o => \modo~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\mmH~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mmH,
	o => \mmH~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\pulseIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulseIn,
	o => \pulseIn~input_o\);

-- Location: LCCOMB_X72_Y70_N24
\pulsos|yout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|yout[1]~0_combout\ = ((\pulseIn~input_o\) # (!\mmH~input_o\)) # (!\modo~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo~input_o\,
	datab => \mmH~input_o\,
	datac => \pulseIn~input_o\,
	combout => \pulsos|yout[1]~0_combout\);

-- Location: LCCOMB_X61_Y72_N2
\convHx|outPort3[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort3[0]~0_combout\ = ((\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & !\conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\)) # (!\pulsos|yout[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datac => \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datad => \pulsos|yout[1]~0_combout\,
	combout => \convHx|outPort3[0]~0_combout\);

-- Location: LCCOMB_X61_Y72_N12
\convHx|outPort3[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort3[2]~1_combout\ = ((!\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\)) # (!\pulsos|yout[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datac => \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datad => \pulsos|yout[1]~0_combout\,
	combout => \convHx|outPort3[2]~1_combout\);

-- Location: LCCOMB_X59_Y70_N0
\convHx|outPort3[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort3[6]~2_combout\ = (\horaIn[4]~input_o\ & (\pulsos|yout[1]~0_combout\ & ((\horaIn[3]~input_o\) # (\horaIn[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[4]~input_o\,
	datab => \horaIn[3]~input_o\,
	datac => \horaIn[2]~input_o\,
	datad => \pulsos|yout[1]~0_combout\,
	combout => \convHx|outPort3[6]~2_combout\);

-- Location: LCCOMB_X59_Y70_N10
\convHx|outPort3[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort3[4]~3_combout\ = (\horaIn[3]~input_o\ & ((\convHx|outPort3[6]~2_combout\ & (\horaIn[2]~input_o\ & \horaIn[1]~input_o\)) # (!\convHx|outPort3[6]~2_combout\ & ((\horaIn[2]~input_o\) # (\horaIn[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convHx|outPort3[6]~2_combout\,
	datab => \horaIn[3]~input_o\,
	datac => \horaIn[2]~input_o\,
	datad => \horaIn[1]~input_o\,
	combout => \convHx|outPort3[4]~3_combout\);

-- Location: LCCOMB_X59_Y70_N4
\convHx|outPort3[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort3[4]~4_combout\ = (\convHx|outPort3[4]~3_combout\) # ((!\convHx|outPort3[6]~2_combout\ & ((\horaIn[4]~input_o\) # (!\pulsos|yout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convHx|outPort3[4]~3_combout\,
	datab => \pulsos|yout[1]~0_combout\,
	datac => \convHx|outPort3[6]~2_combout\,
	datad => \horaIn[4]~input_o\,
	combout => \convHx|outPort3[4]~4_combout\);

-- Location: LCCOMB_X61_Y72_N6
\convHx|outPort3[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort3[3]~5_combout\ = (\conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & (\conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & \pulsos|yout[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datac => \conv2D|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datad => \pulsos|yout[1]~0_combout\,
	combout => \convHx|outPort3[3]~5_combout\);

-- Location: IOIBUF_X65_Y73_N8
\horaIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_horaIn(0),
	o => \horaIn[0]~input_o\);

-- Location: LCCOMB_X61_Y70_N10
\conv2D|Mod1|auto_generated|divider|divider|op_24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\ = \horaIn[2]~input_o\ $ (VCC)
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~1\ = CARRY(\horaIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[2]~input_o\,
	datad => VCC,
	combout => \conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_24~1\);

-- Location: LCCOMB_X61_Y70_N12
\conv2D|Mod1|auto_generated|divider|divider|op_24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\ = (\horaIn[3]~input_o\ & (\conv2D|Mod1|auto_generated|divider|divider|op_24~1\ & VCC)) # (!\horaIn[3]~input_o\ & (!\conv2D|Mod1|auto_generated|divider|divider|op_24~1\))
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~3\ = CARRY((!\horaIn[3]~input_o\ & !\conv2D|Mod1|auto_generated|divider|divider|op_24~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \horaIn[3]~input_o\,
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_24~1\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_24~3\);

-- Location: LCCOMB_X61_Y70_N14
\conv2D|Mod1|auto_generated|divider|divider|op_24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\ = (\horaIn[4]~input_o\ & (\conv2D|Mod1|auto_generated|divider|divider|op_24~3\ $ (GND))) # (!\horaIn[4]~input_o\ & (!\conv2D|Mod1|auto_generated|divider|divider|op_24~3\ & VCC))
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~5\ = CARRY((\horaIn[4]~input_o\ & !\conv2D|Mod1|auto_generated|divider|divider|op_24~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[4]~input_o\,
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_24~3\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_24~5\);

-- Location: LCCOMB_X61_Y70_N16
\conv2D|Mod1|auto_generated|divider|divider|op_24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\ = !\conv2D|Mod1|auto_generated|divider|divider|op_24~5\
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~7\ = CARRY(!\conv2D|Mod1|auto_generated|divider|divider|op_24~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_24~5\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_24~7\);

-- Location: LCCOMB_X61_Y70_N18
\conv2D|Mod1|auto_generated|divider|divider|op_24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\ = \conv2D|Mod1|auto_generated|divider|divider|op_24~7\ $ (GND)
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~9\ = CARRY(!\conv2D|Mod1|auto_generated|divider|divider|op_24~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_24~7\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_24~9\);

-- Location: LCCOMB_X61_Y70_N20
\conv2D|Mod1|auto_generated|divider|divider|op_24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\ = !\conv2D|Mod1|auto_generated|divider|divider|op_24~9\
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~11\ = CARRY(!\conv2D|Mod1|auto_generated|divider|divider|op_24~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_24~9\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_24~11\);

-- Location: LCCOMB_X61_Y70_N22
\conv2D|Mod1|auto_generated|divider|divider|op_24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\ = \conv2D|Mod1|auto_generated|divider|divider|op_24~11\ $ (GND)
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~13\ = CARRY(!\conv2D|Mod1|auto_generated|divider|divider|op_24~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_24~11\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_24~13\);

-- Location: LCCOMB_X61_Y70_N24
\conv2D|Mod1|auto_generated|divider|divider|op_24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\ = !\conv2D|Mod1|auto_generated|divider|divider|op_24~13\
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~15\ = CARRY(!\conv2D|Mod1|auto_generated|divider|divider|op_24~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_24~13\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_24~15\);

-- Location: LCCOMB_X61_Y70_N26
\conv2D|Mod1|auto_generated|divider|divider|op_24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ = \conv2D|Mod1|auto_generated|divider|divider|op_24~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_24~15\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\);

-- Location: LCCOMB_X59_Y70_N14
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\ = (\conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \horaIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datac => \horaIn[2]~input_o\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\);

-- Location: LCCOMB_X60_Y70_N0
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\ = (\conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\ & !\conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv2D|Mod1|auto_generated|divider|divider|op_24~0_combout\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\);

-- Location: LCCOMB_X59_Y70_N16
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\ = (\horaIn[1]~input_o\ & \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[1]~input_o\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\);

-- Location: LCCOMB_X61_Y70_N8
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\ = (\horaIn[1]~input_o\ & !\conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horaIn[1]~input_o\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\);

-- Location: LCCOMB_X60_Y70_N6
\conv2D|Mod1|auto_generated|divider|divider|op_25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\ = (((\conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\) # (\conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\)))
-- \conv2D|Mod1|auto_generated|divider|divider|op_25~1\ = CARRY((\conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\) # (\conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~2_combout\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1023]~3_combout\,
	datad => VCC,
	combout => \conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_25~1\);

-- Location: LCCOMB_X60_Y70_N8
\conv2D|Mod1|auto_generated|divider|divider|op_25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\ = (\conv2D|Mod1|auto_generated|divider|divider|op_25~1\ & (((\conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\) # 
-- (\conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\)))) # (!\conv2D|Mod1|auto_generated|divider|divider|op_25~1\ & (!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\ & 
-- (!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\)))
-- \conv2D|Mod1|auto_generated|divider|divider|op_25~3\ = CARRY((!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\ & (!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\ & 
-- !\conv2D|Mod1|auto_generated|divider|divider|op_25~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\,
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_25~1\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_25~3\);

-- Location: LCCOMB_X61_Y70_N2
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\ = (\conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\ & !\conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|op_24~12_combout\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\);

-- Location: LCCOMB_X60_Y70_N26
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\ = (\conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\ & !\conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv2D|Mod1|auto_generated|divider|divider|op_24~10_combout\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\);

-- Location: LCCOMB_X61_Y70_N4
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\ = (!\conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|op_24~8_combout\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\);

-- Location: LCCOMB_X61_Y70_N30
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\ = (!\conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|op_24~6_combout\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\);

-- Location: LCCOMB_X59_Y70_N2
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\ = (\horaIn[4]~input_o\ & \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[4]~input_o\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\);

-- Location: LCCOMB_X60_Y70_N28
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\ = (\conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\ & !\conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv2D|Mod1|auto_generated|divider|divider|op_24~4_combout\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\);

-- Location: LCCOMB_X59_Y70_N12
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\ = (\conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \horaIn[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datac => \horaIn[3]~input_o\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\);

-- Location: LCCOMB_X61_Y70_N0
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\ = (!\conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\ & \conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|op_24~2_combout\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\);

-- Location: LCCOMB_X60_Y70_N10
\conv2D|Mod1|auto_generated|divider|divider|op_25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\ = (\conv2D|Mod1|auto_generated|divider|divider|op_25~3\ & (((\conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\) # 
-- (\conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\)))) # (!\conv2D|Mod1|auto_generated|divider|divider|op_25~3\ & ((((\conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\) # 
-- (\conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\)))))
-- \conv2D|Mod1|auto_generated|divider|divider|op_25~5\ = CARRY((!\conv2D|Mod1|auto_generated|divider|divider|op_25~3\ & ((\conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\) # 
-- (\conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\,
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_25~3\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_25~5\);

-- Location: LCCOMB_X60_Y70_N12
\conv2D|Mod1|auto_generated|divider|divider|op_25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\ = CARRY((!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\ & (!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\ & 
-- !\conv2D|Mod1|auto_generated|divider|divider|op_25~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~8_combout\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1026]~9_combout\,
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_25~5\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\);

-- Location: LCCOMB_X60_Y70_N14
\conv2D|Mod1|auto_generated|divider|divider|op_25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\ = CARRY((\conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\) # (!\conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1027]~7_combout\,
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_25~7_cout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\);

-- Location: LCCOMB_X60_Y70_N16
\conv2D|Mod1|auto_generated|divider|divider|op_25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\ = CARRY((!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\ & !\conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1028]~6_combout\,
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_25~9_cout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\);

-- Location: LCCOMB_X60_Y70_N18
\conv2D|Mod1|auto_generated|divider|divider|op_25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\ = CARRY((\conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\) # (!\conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1029]~5_combout\,
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_25~11_cout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\);

-- Location: LCCOMB_X60_Y70_N20
\conv2D|Mod1|auto_generated|divider|divider|op_25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\ = CARRY((!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\ & !\conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1030]~4_combout\,
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_25~13_cout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\);

-- Location: LCCOMB_X60_Y70_N22
\conv2D|Mod1|auto_generated|divider|divider|op_25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\ = CARRY(((\conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\ & !\conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\)) # 
-- (!\conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|op_24~14_combout\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datad => VCC,
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_25~15_cout\,
	cout => \conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\);

-- Location: LCCOMB_X60_Y70_N24
\conv2D|Mod1|auto_generated|divider|divider|op_25~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ = !\conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv2D|Mod1|auto_generated|divider|divider|op_25~17_cout\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\);

-- Location: LCCOMB_X60_Y70_N2
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ = (\conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & ((\conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\) # 
-- ((\conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\)))) # (!\conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & (((\conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~0_combout\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1024]~1_combout\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|op_25~2_combout\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\);

-- Location: LCCOMB_X60_Y70_N4
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ = (\conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & ((\conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\) # 
-- ((\conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\)))) # (!\conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & (((\conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~10_combout\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1025]~11_combout\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|op_25~4_combout\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\);

-- Location: LCCOMB_X61_Y70_N28
\conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ = (\conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & ((\horaIn[1]~input_o\))) # (!\conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & 
-- (\conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\,
	datac => \horaIn[1]~input_o\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\,
	combout => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\);

-- Location: LCCOMB_X62_Y70_N24
\convHx|outPort2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[0]~6_combout\ = (!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & (!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ & (\horaIn[0]~input_o\ $ 
-- (\conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[0]~input_o\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	combout => \convHx|outPort2[0]~6_combout\);

-- Location: LCCOMB_X72_Y70_N28
\convHx|outPort2[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[0]~21_combout\ = (\convHx|outPort2[0]~6_combout\) # ((\modo~input_o\ & (\mmH~input_o\ & !\pulseIn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo~input_o\,
	datab => \mmH~input_o\,
	datac => \pulseIn~input_o\,
	datad => \convHx|outPort2[0]~6_combout\,
	combout => \convHx|outPort2[0]~21_combout\);

-- Location: LCCOMB_X62_Y70_N2
\convHx|outPort2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2~7_combout\ = (\conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ & (!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & (\horaIn[0]~input_o\ $ 
-- (\conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[0]~input_o\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	combout => \convHx|outPort2~7_combout\);

-- Location: LCCOMB_X72_Y70_N30
\convHx|outPort2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2~22_combout\ = (\convHx|outPort2~7_combout\) # ((\modo~input_o\ & (\mmH~input_o\ & !\pulseIn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo~input_o\,
	datab => \mmH~input_o\,
	datac => \pulseIn~input_o\,
	datad => \convHx|outPort2~7_combout\,
	combout => \convHx|outPort2~22_combout\);

-- Location: LCCOMB_X62_Y70_N4
\convHx|Equal25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|Equal25~0_combout\ = (!\horaIn[0]~input_o\ & (!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ & (!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & 
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[0]~input_o\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	combout => \convHx|Equal25~0_combout\);

-- Location: LCCOMB_X72_Y70_N0
\convHx|outPort2[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[2]~23_combout\ = (\convHx|Equal25~0_combout\) # ((\modo~input_o\ & (\mmH~input_o\ & !\pulseIn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo~input_o\,
	datab => \mmH~input_o\,
	datac => \pulseIn~input_o\,
	datad => \convHx|Equal25~0_combout\,
	combout => \convHx|outPort2[2]~23_combout\);

-- Location: LCCOMB_X62_Y70_N30
\convHx|outPort2[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[5]~8_combout\ = (\horaIn[0]~input_o\ & (\conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ & (!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & 
-- \conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[0]~input_o\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	combout => \convHx|outPort2[5]~8_combout\);

-- Location: LCCOMB_X62_Y70_N8
\convHx|outPort2[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[3]~10_combout\ = \conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ $ (((!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\ & !\horaIn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datad => \horaIn[0]~input_o\,
	combout => \convHx|outPort2[3]~10_combout\);

-- Location: LCCOMB_X62_Y70_N26
\convHx|outPort2[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[3]~11_combout\ = (\pulsos|yout[1]~0_combout\ & ((\convHx|outPort2[3]~10_combout\) # (\conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convHx|outPort2[3]~10_combout\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \pulsos|yout[1]~0_combout\,
	combout => \convHx|outPort2[3]~11_combout\);

-- Location: LCCOMB_X61_Y70_N6
\convHx|outPort2[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[3]~9_combout\ = ((\conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & ((!\horaIn[1]~input_o\))) # (!\conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & 
-- (!\conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\))) # (!\pulsos|yout[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|yout[1]~0_combout\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\,
	datac => \horaIn[1]~input_o\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\,
	combout => \convHx|outPort2[3]~9_combout\);

-- Location: LCCOMB_X62_Y70_N28
\convHx|outPort2[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[3]~12_combout\ = (\convHx|outPort2[5]~8_combout\) # ((!\convHx|outPort2[3]~11_combout\ & ((\conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\) # (\convHx|outPort2[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convHx|outPort2[5]~8_combout\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datac => \convHx|outPort2[3]~11_combout\,
	datad => \convHx|outPort2[3]~9_combout\,
	combout => \convHx|outPort2[3]~12_combout\);

-- Location: LCCOMB_X60_Y70_N30
\convHx|Equal18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|Equal18~2_combout\ = (!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ & ((\conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & ((!\horaIn[1]~input_o\))) # 
-- (!\conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\ & (!\conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod1|auto_generated|divider|divider|op_25~0_combout\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datac => \horaIn[1]~input_o\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|op_25~18_combout\,
	combout => \convHx|Equal18~2_combout\);

-- Location: LCCOMB_X62_Y70_N18
\convHx|outPort2[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[6]~15_combout\ = (\pulsos|yout[1]~0_combout\ & ((\convHx|Equal18~2_combout\ & (!\horaIn[0]~input_o\ & !\conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\)) # (!\convHx|Equal18~2_combout\ & 
-- ((\conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[0]~input_o\,
	datab => \convHx|Equal18~2_combout\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \pulsos|yout[1]~0_combout\,
	combout => \convHx|outPort2[6]~15_combout\);

-- Location: LCCOMB_X62_Y70_N22
\convHx|outPort2[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[6]~13_combout\ = (\pulsos|yout[1]~0_combout\ & (\conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ $ (((!\horaIn[0]~input_o\ & \convHx|Equal18~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[0]~input_o\,
	datab => \convHx|Equal18~2_combout\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \pulsos|yout[1]~0_combout\,
	combout => \convHx|outPort2[6]~13_combout\);

-- Location: LCCOMB_X62_Y70_N0
\convHx|outPort2[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[4]~14_combout\ = ((!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & ((\horaIn[0]~input_o\) # (!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\)))) # (!\pulsos|yout[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[0]~input_o\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \pulsos|yout[1]~0_combout\,
	combout => \convHx|outPort2[4]~14_combout\);

-- Location: LCCOMB_X62_Y70_N20
\convHx|outPort2[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[4]~16_combout\ = (!\convHx|outPort2[6]~15_combout\ & ((\convHx|outPort2[6]~13_combout\) # (\convHx|outPort2[4]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convHx|outPort2[6]~15_combout\,
	datac => \convHx|outPort2[6]~13_combout\,
	datad => \convHx|outPort2[4]~14_combout\,
	combout => \convHx|outPort2[4]~16_combout\);

-- Location: LCCOMB_X62_Y70_N6
\convHx|outPort2[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[5]~17_combout\ = ((!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ & ((\horaIn[0]~input_o\) # (\conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\)))) # (!\pulsos|yout[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[0]~input_o\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datad => \pulsos|yout[1]~0_combout\,
	combout => \convHx|outPort2[5]~17_combout\);

-- Location: LCCOMB_X62_Y70_N16
\convHx|outPort2[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[5]~18_combout\ = (\convHx|outPort2[3]~11_combout\ & (\convHx|outPort2[5]~8_combout\)) # (!\convHx|outPort2[3]~11_combout\ & ((\convHx|outPort2[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convHx|outPort2[5]~8_combout\,
	datac => \convHx|outPort2[3]~11_combout\,
	datad => \convHx|outPort2[5]~17_combout\,
	combout => \convHx|outPort2[5]~18_combout\);

-- Location: LCCOMB_X62_Y70_N10
\convHx|outPort2[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[6]~19_combout\ = (\horaIn[0]~input_o\ & (!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\ & (\conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\ $ 
-- (!\conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horaIn[0]~input_o\,
	datab => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1058]~12_combout\,
	datac => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1059]~13_combout\,
	datad => \conv2D|Mod1|auto_generated|divider|divider|StageOut[1057]~14_combout\,
	combout => \convHx|outPort2[6]~19_combout\);

-- Location: LCCOMB_X62_Y70_N12
\convHx|outPort2[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort2[6]~20_combout\ = (\convHx|outPort2[6]~15_combout\) # ((!\convHx|outPort2[6]~13_combout\ & ((\convHx|outPort2[6]~19_combout\) # (!\pulsos|yout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convHx|outPort2[6]~19_combout\,
	datab => \convHx|outPort2[6]~15_combout\,
	datac => \convHx|outPort2[6]~13_combout\,
	datad => \pulsos|yout[1]~0_combout\,
	combout => \convHx|outPort2[6]~20_combout\);

-- Location: IOIBUF_X81_Y73_N1
\minuIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_minuIn(5),
	o => \minuIn[5]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\minuIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_minuIn(4),
	o => \minuIn[4]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\minuIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_minuIn(3),
	o => \minuIn[3]~input_o\);

-- Location: LCCOMB_X76_Y72_N10
\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ = \minuIn[3]~input_o\ $ (VCC)
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ = CARRY(\minuIn[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[3]~input_o\,
	datad => VCC,
	combout => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\);

-- Location: LCCOMB_X76_Y72_N12
\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ = (\minuIn[4]~input_o\ & (\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & VCC)) # (!\minuIn[4]~input_o\ & 
-- (!\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\))
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ = CARRY((!\minuIn[4]~input_o\ & !\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minuIn[4]~input_o\,
	datad => VCC,
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\,
	combout => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\);

-- Location: LCCOMB_X76_Y72_N14
\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\minuIn[5]~input_o\ & (\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ $ (GND))) # (!\minuIn[5]~input_o\ & 
-- (!\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & VCC))
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((\minuIn[5]~input_o\ & !\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[5]~input_o\,
	datad => VCC,
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

-- Location: LCCOMB_X76_Y72_N16
\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ = !\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ = CARRY(!\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	combout => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\);

-- Location: LCCOMB_X76_Y72_N18
\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ = CARRY(!\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\);

-- Location: LCCOMB_X76_Y72_N20
\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ = !\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\);

-- Location: LCCOMB_X76_Y72_N8
\conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ & !\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\);

-- Location: LCCOMB_X76_Y72_N26
\conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \minuIn[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \minuIn[5]~input_o\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\);

-- Location: LCCOMB_X76_Y72_N4
\conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ & !\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\);

-- Location: LCCOMB_X76_Y72_N24
\conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & !\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\);

-- Location: LCCOMB_X76_Y72_N6
\conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\ = (\minuIn[4]~input_o\ & \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minuIn[4]~input_o\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\);

-- Location: LCCOMB_X76_Y72_N0
\conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ & !\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\);

-- Location: LCCOMB_X76_Y72_N30
\conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\ = (\minuIn[3]~input_o\ & \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \minuIn[3]~input_o\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\);

-- Location: IOIBUF_X79_Y73_N1
\minuIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_minuIn(2),
	o => \minuIn[2]~input_o\);

-- Location: LCCOMB_X80_Y70_N2
\conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\ = (!\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \minuIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \minuIn[2]~input_o\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\);

-- Location: LCCOMB_X80_Y70_N16
\conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \minuIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \minuIn[2]~input_o\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\);

-- Location: LCCOMB_X77_Y72_N14
\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = (((\conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\) # (\conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\)))
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY((\conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\) # (\conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|StageOut[174]~32_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|StageOut[174]~31_combout\,
	datad => VCC,
	combout => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X77_Y72_N16
\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (((\conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\) # 
-- (\conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\)))) # (!\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (!\conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\ & 
-- (!\conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\)))
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\ & (!\conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\ & 
-- !\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|StageOut[175]~30_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|StageOut[175]~29_combout\,
	datad => VCC,
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X77_Y72_N18
\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & (((\conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\) # 
-- (\conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\)))) # (!\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((((\conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\) # 
-- (\conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\)))))
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((!\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((\conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\) # 
-- (\conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|StageOut[176]~28_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|StageOut[176]~27_combout\,
	datad => VCC,
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X77_Y72_N20
\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (((\conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\) # 
-- (\conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\)))) # (!\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (!\conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\ & 
-- (!\conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\)))
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ = CARRY((!\conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\ & (!\conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\ & 
-- !\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|StageOut[177]~25_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|StageOut[177]~26_combout\,
	datad => VCC,
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	combout => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\);

-- Location: LCCOMB_X77_Y72_N22
\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ = CARRY((\conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\) # (!\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|StageOut[178]~24_combout\,
	datad => VCC,
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\);

-- Location: LCCOMB_X77_Y72_N24
\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ = !\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\);

-- Location: LCCOMB_X76_Y72_N2
\conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- (\minuIn[5]~input_o\)) # (!\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[5]~input_o\,
	datab => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\);

-- Location: LCCOMB_X77_Y72_N0
\conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ & !\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\);

-- Location: LCCOMB_X77_Y72_N26
\conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ & !\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\);

-- Location: LCCOMB_X76_Y72_N28
\conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- ((\minuIn[4]~input_o\))) # (!\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \minuIn[4]~input_o\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\);

-- Location: LCCOMB_X76_Y72_N22
\conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- ((\minuIn[3]~input_o\))) # (!\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \minuIn[3]~input_o\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\);

-- Location: LCCOMB_X77_Y72_N28
\conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ & !\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\);

-- Location: LCCOMB_X77_Y72_N30
\conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ & !\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\);

-- Location: LCCOMB_X80_Y70_N20
\conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \minuIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \minuIn[2]~input_o\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\);

-- Location: IOIBUF_X81_Y73_N8
\minuIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_minuIn(1),
	o => \minuIn[1]~input_o\);

-- Location: LCCOMB_X80_Y70_N24
\conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\ = (!\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \minuIn[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \minuIn[1]~input_o\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\);

-- Location: LCCOMB_X80_Y70_N6
\conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\ = (\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \minuIn[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \minuIn[1]~input_o\,
	combout => \conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\);

-- Location: LCCOMB_X77_Y72_N2
\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ = CARRY((\conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\) # (\conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|StageOut[180]~39_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|StageOut[180]~38_combout\,
	datad => VCC,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\);

-- Location: LCCOMB_X77_Y72_N4
\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\ & (!\conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\ & 
-- !\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|StageOut[181]~37_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|StageOut[181]~36_combout\,
	datad => VCC,
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X77_Y72_N6
\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ = CARRY((!\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ & ((\conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\) # 
-- (\conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|StageOut[182]~42_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|StageOut[182]~35_combout\,
	datad => VCC,
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\);

-- Location: LCCOMB_X77_Y72_N8
\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY((!\conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\ & (!\conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\ & 
-- !\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|StageOut[183]~34_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|StageOut[183]~41_combout\,
	datad => VCC,
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X77_Y72_N10
\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ = CARRY((\conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\) # ((\conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\) # 
-- (!\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|StageOut[184]~40_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|StageOut[184]~33_combout\,
	datad => VCC,
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\,
	cout => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\);

-- Location: LCCOMB_X77_Y72_N12
\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ = !\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\,
	combout => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\);

-- Location: LCCOMB_X72_Y70_N10
\pulsos|yout[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsos|yout[0]~1_combout\ = ((\mmH~input_o\) # (\pulseIn~input_o\)) # (!\modo~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo~input_o\,
	datab => \mmH~input_o\,
	datac => \pulseIn~input_o\,
	combout => \pulsos|yout[0]~1_combout\);

-- Location: LCCOMB_X80_Y70_N10
\convHx|outPort1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort1[0]~0_combout\ = ((\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & (\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ $ 
-- (\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\)))) # (!\pulsos|yout[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datac => \pulsos|yout[0]~1_combout\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convHx|outPort1[0]~0_combout\);

-- Location: LCCOMB_X80_Y70_N12
\convHx|outPort1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort1~1_combout\ = ((!\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ $ 
-- (\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)))) # (!\pulsos|yout[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datac => \pulsos|yout[0]~1_combout\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convHx|outPort1~1_combout\);

-- Location: LCCOMB_X80_Y70_N30
\convHx|outPort1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort1[2]~2_combout\ = ((\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & 
-- !\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\))) # (!\pulsos|yout[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datac => \pulsos|yout[0]~1_combout\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convHx|outPort1[2]~2_combout\);

-- Location: LCCOMB_X80_Y70_N0
\convHx|outPort1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort1[3]~3_combout\ = ((\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (!\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ & 
-- \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)) # (!\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ $ 
-- (!\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)))) # (!\pulsos|yout[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datac => \pulsos|yout[0]~1_combout\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convHx|outPort1[3]~3_combout\);

-- Location: LCCOMB_X77_Y70_N18
\convHx|outPort1[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort1[4]~5_combout\ = (\minuIn[3]~input_o\ & ((\minuIn[5]~input_o\ & (\minuIn[2]~input_o\)) # (!\minuIn[5]~input_o\ & ((!\minuIn[1]~input_o\) # (!\minuIn[2]~input_o\))))) # (!\minuIn[3]~input_o\ & (!\minuIn[5]~input_o\ & (\minuIn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[3]~input_o\,
	datab => \minuIn[5]~input_o\,
	datac => \minuIn[2]~input_o\,
	datad => \minuIn[1]~input_o\,
	combout => \convHx|outPort1[4]~5_combout\);

-- Location: LCCOMB_X77_Y70_N24
\convHx|outPort1[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort1[4]~4_combout\ = (!\minuIn[5]~input_o\ & (((!\minuIn[2]~input_o\ & !\minuIn[1]~input_o\)) # (!\minuIn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[3]~input_o\,
	datab => \minuIn[5]~input_o\,
	datac => \minuIn[2]~input_o\,
	datad => \minuIn[1]~input_o\,
	combout => \convHx|outPort1[4]~4_combout\);

-- Location: LCCOMB_X77_Y70_N28
\convHx|outPort1[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort1[4]~6_combout\ = ((\minuIn[4]~input_o\ & (!\convHx|outPort1[4]~5_combout\)) # (!\minuIn[4]~input_o\ & ((!\convHx|outPort1[4]~4_combout\)))) # (!\pulsos|yout[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[4]~input_o\,
	datab => \convHx|outPort1[4]~5_combout\,
	datac => \pulsos|yout[0]~1_combout\,
	datad => \convHx|outPort1[4]~4_combout\,
	combout => \convHx|outPort1[4]~6_combout\);

-- Location: LCCOMB_X80_Y70_N26
\convHx|outPort1[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort1[5]~7_combout\ = ((\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((!\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\) # 
-- (!\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\))) # (!\conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (!\conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ 
-- & !\conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\))) # (!\pulsos|yout[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \conv2D|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datac => \pulsos|yout[0]~1_combout\,
	datad => \conv2D|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \convHx|outPort1[5]~7_combout\);

-- Location: LCCOMB_X77_Y70_N30
\convHx|outPort1[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort1[6]~8_combout\ = (!\minuIn[5]~input_o\ & (((!\minuIn[2]~input_o\ & !\minuIn[3]~input_o\)) # (!\minuIn[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[4]~input_o\,
	datab => \minuIn[5]~input_o\,
	datac => \minuIn[2]~input_o\,
	datad => \minuIn[3]~input_o\,
	combout => \convHx|outPort1[6]~8_combout\);

-- Location: LCCOMB_X77_Y70_N8
\convHx|outPort1[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort1[6]~9_combout\ = ((\convHx|outPort1[6]~8_combout\) # ((\convHx|outPort1[4]~4_combout\ & !\minuIn[4]~input_o\))) # (!\pulsos|yout[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|yout[0]~1_combout\,
	datab => \convHx|outPort1[4]~4_combout\,
	datac => \convHx|outPort1[6]~8_combout\,
	datad => \minuIn[4]~input_o\,
	combout => \convHx|outPort1[6]~9_combout\);

-- Location: IOIBUF_X69_Y73_N15
\minuIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_minuIn(0),
	o => \minuIn[0]~input_o\);

-- Location: LCCOMB_X74_Y70_N14
\conv2D|Mod0|auto_generated|divider|divider|op_23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\ = \minuIn[3]~input_o\ $ (VCC)
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~1\ = CARRY(\minuIn[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[3]~input_o\,
	datad => VCC,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_23~1\);

-- Location: LCCOMB_X74_Y70_N16
\conv2D|Mod0|auto_generated|divider|divider|op_23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\ = (\minuIn[4]~input_o\ & (\conv2D|Mod0|auto_generated|divider|divider|op_23~1\ & VCC)) # (!\minuIn[4]~input_o\ & (!\conv2D|Mod0|auto_generated|divider|divider|op_23~1\))
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~3\ = CARRY((!\minuIn[4]~input_o\ & !\conv2D|Mod0|auto_generated|divider|divider|op_23~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minuIn[4]~input_o\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_23~1\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_23~3\);

-- Location: LCCOMB_X74_Y70_N18
\conv2D|Mod0|auto_generated|divider|divider|op_23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\ = (\minuIn[5]~input_o\ & (\conv2D|Mod0|auto_generated|divider|divider|op_23~3\ $ (GND))) # (!\minuIn[5]~input_o\ & (!\conv2D|Mod0|auto_generated|divider|divider|op_23~3\ & VCC))
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~5\ = CARRY((\minuIn[5]~input_o\ & !\conv2D|Mod0|auto_generated|divider|divider|op_23~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[5]~input_o\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_23~3\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_23~5\);

-- Location: LCCOMB_X74_Y70_N20
\conv2D|Mod0|auto_generated|divider|divider|op_23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\ = !\conv2D|Mod0|auto_generated|divider|divider|op_23~5\
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~7\ = CARRY(!\conv2D|Mod0|auto_generated|divider|divider|op_23~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_23~5\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_23~7\);

-- Location: LCCOMB_X74_Y70_N22
\conv2D|Mod0|auto_generated|divider|divider|op_23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\ = \conv2D|Mod0|auto_generated|divider|divider|op_23~7\ $ (GND)
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~9\ = CARRY(!\conv2D|Mod0|auto_generated|divider|divider|op_23~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_23~7\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_23~9\);

-- Location: LCCOMB_X74_Y70_N24
\conv2D|Mod0|auto_generated|divider|divider|op_23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\ = !\conv2D|Mod0|auto_generated|divider|divider|op_23~9\
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~11\ = CARRY(!\conv2D|Mod0|auto_generated|divider|divider|op_23~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_23~9\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_23~11\);

-- Location: LCCOMB_X74_Y70_N26
\conv2D|Mod0|auto_generated|divider|divider|op_23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\ = \conv2D|Mod0|auto_generated|divider|divider|op_23~11\ $ (GND)
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~13\ = CARRY(!\conv2D|Mod0|auto_generated|divider|divider|op_23~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_23~11\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_23~13\);

-- Location: LCCOMB_X74_Y70_N28
\conv2D|Mod0|auto_generated|divider|divider|op_23~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ = !\conv2D|Mod0|auto_generated|divider|divider|op_23~13\
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~15\ = CARRY(!\conv2D|Mod0|auto_generated|divider|divider|op_23~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_23~13\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_23~15\);

-- Location: LCCOMB_X74_Y70_N30
\conv2D|Mod0|auto_generated|divider|divider|op_23~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ = \conv2D|Mod0|auto_generated|divider|divider|op_23~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_23~15\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\);

-- Location: LCCOMB_X77_Y70_N26
\conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\);

-- Location: LCCOMB_X74_Y70_N8
\conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\ = (!\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & \conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\);

-- Location: LCCOMB_X77_Y70_N12
\conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\);

-- Location: LCCOMB_X77_Y70_N6
\conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\);

-- Location: LCCOMB_X74_Y70_N2
\conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\ = (!\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & \conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\);

-- Location: LCCOMB_X77_Y70_N16
\conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & \minuIn[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \minuIn[5]~input_o\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\);

-- Location: LCCOMB_X76_Y70_N24
\conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & \minuIn[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datac => \minuIn[4]~input_o\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\);

-- Location: LCCOMB_X77_Y70_N10
\conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\);

-- Location: LCCOMB_X77_Y70_N20
\conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\ = (\minuIn[3]~input_o\ & \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[3]~input_o\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\);

-- Location: LCCOMB_X74_Y70_N4
\conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\);

-- Location: LCCOMB_X80_Y70_N28
\conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & \minuIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \minuIn[2]~input_o\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\);

-- Location: LCCOMB_X80_Y70_N22
\conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\ = (!\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & \minuIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \minuIn[2]~input_o\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\);

-- Location: LCCOMB_X76_Y70_N2
\conv2D|Mod0|auto_generated|divider|divider|op_24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\ = (((\conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\) # (\conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\)))
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~1\ = CARRY((\conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\) # (\conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~42_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[990]~43_combout\,
	datad => VCC,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_24~1\);

-- Location: LCCOMB_X76_Y70_N4
\conv2D|Mod0|auto_generated|divider|divider|op_24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~1\ & (((\conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\) # 
-- (\conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\)))) # (!\conv2D|Mod0|auto_generated|divider|divider|op_24~1\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\ & 
-- (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\)))
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~3\ = CARRY((!\conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\ & 
-- !\conv2D|Mod0|auto_generated|divider|divider|op_24~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~40_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[991]~41_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_24~1\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_24~3\);

-- Location: LCCOMB_X76_Y70_N6
\conv2D|Mod0|auto_generated|divider|divider|op_24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~3\ & (((\conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\) # 
-- (\conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\)))) # (!\conv2D|Mod0|auto_generated|divider|divider|op_24~3\ & ((((\conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\) # 
-- (\conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\)))))
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~5\ = CARRY((!\conv2D|Mod0|auto_generated|divider|divider|op_24~3\ & ((\conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\) # 
-- (\conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~38_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[992]~39_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_24~3\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_24~5\);

-- Location: LCCOMB_X76_Y70_N8
\conv2D|Mod0|auto_generated|divider|divider|op_24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~5\ & (((\conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\) # 
-- (\conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\)))) # (!\conv2D|Mod0|auto_generated|divider|divider|op_24~5\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\ & 
-- (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\)))
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~7\ = CARRY((!\conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\ & 
-- !\conv2D|Mod0|auto_generated|divider|divider|op_24~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~37_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[993]~36_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_24~5\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_24~7\);

-- Location: LCCOMB_X76_Y70_N10
\conv2D|Mod0|auto_generated|divider|divider|op_24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\ & ((GND) # (!\conv2D|Mod0|auto_generated|divider|divider|op_24~7\))) # 
-- (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\ & (\conv2D|Mod0|auto_generated|divider|divider|op_24~7\ $ (GND)))
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~9\ = CARRY((\conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\) # (!\conv2D|Mod0|auto_generated|divider|divider|op_24~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[994]~35_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_24~7\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_24~9\);

-- Location: LCCOMB_X76_Y70_N12
\conv2D|Mod0|auto_generated|divider|divider|op_24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ & (\conv2D|Mod0|auto_generated|divider|divider|op_24~9\ & VCC)) # 
-- (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|op_24~9\))
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~11\ = CARRY((!\conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_24~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[995]~34_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_24~9\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_24~11\);

-- Location: LCCOMB_X76_Y70_N14
\conv2D|Mod0|auto_generated|divider|divider|op_24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\ & ((GND) # (!\conv2D|Mod0|auto_generated|divider|divider|op_24~11\))) # 
-- (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\ & (\conv2D|Mod0|auto_generated|divider|divider|op_24~11\ $ (GND)))
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~13\ = CARRY((\conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\) # (!\conv2D|Mod0|auto_generated|divider|divider|op_24~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[996]~33_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_24~11\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_24~13\);

-- Location: LCCOMB_X76_Y70_N16
\conv2D|Mod0|auto_generated|divider|divider|op_24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ & (\conv2D|Mod0|auto_generated|divider|divider|op_24~13\ & VCC)) # 
-- (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|op_24~13\))
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~15\ = CARRY((!\conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_24~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[997]~32_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_24~13\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_24~15\);

-- Location: LCCOMB_X76_Y70_N18
\conv2D|Mod0|auto_generated|divider|divider|op_24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~15\ & ((((\conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ & 
-- !\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\))))) # (!\conv2D|Mod0|auto_generated|divider|divider|op_24~15\ & (((\conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ & 
-- !\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)) # (GND)))
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~17\ = CARRY(((\conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\)) # (!\conv2D|Mod0|auto_generated|divider|divider|op_24~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_24~15\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_24~17\);

-- Location: LCCOMB_X76_Y70_N20
\conv2D|Mod0|auto_generated|divider|divider|op_24~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\ = !\conv2D|Mod0|auto_generated|divider|divider|op_24~17\
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~19\ = CARRY(!\conv2D|Mod0|auto_generated|divider|divider|op_24~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_24~17\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_24~19\);

-- Location: LCCOMB_X76_Y70_N22
\conv2D|Mod0|auto_generated|divider|divider|op_24~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ = \conv2D|Mod0|auto_generated|divider|divider|op_24~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_24~19\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\);

-- Location: LCCOMB_X74_Y70_N12
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & ((\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & (\minuIn[3]~input_o\)) # 
-- (!\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & ((\conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[3]~input_o\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\);

-- Location: LCCOMB_X74_Y70_N6
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & 
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\);

-- Location: LCCOMB_X77_Y70_N14
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\);

-- Location: LCCOMB_X77_Y70_N2
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\ & (\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & 
-- !\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\);

-- Location: LCCOMB_X75_Y69_N2
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\);

-- Location: LCCOMB_X74_Y70_N0
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & 
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\);

-- Location: LCCOMB_X76_Y70_N0
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\);

-- Location: LCCOMB_X77_Y70_N4
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\ & (\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & 
-- !\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\);

-- Location: LCCOMB_X76_Y70_N26
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\ = (!\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & \conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\);

-- Location: LCCOMB_X75_Y69_N14
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & 
-- \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\);

-- Location: LCCOMB_X76_Y70_N28
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\ = (!\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & \conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\);

-- Location: LCCOMB_X76_Y70_N30
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\);

-- Location: LCCOMB_X74_Y70_N10
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & ((\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & ((\minuIn[5]~input_o\))) # 
-- (!\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & (\conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	datac => \minuIn[5]~input_o\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\);

-- Location: LCCOMB_X77_Y70_N22
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & ((\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & (\minuIn[4]~input_o\)) # 
-- (!\conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\ & ((\conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[4]~input_o\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\);

-- Location: LCCOMB_X77_Y70_N0
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\ = (!\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & \conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\);

-- Location: LCCOMB_X75_Y69_N4
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\);

-- Location: LCCOMB_X80_Y70_N8
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & \minuIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \minuIn[2]~input_o\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\);

-- Location: LCCOMB_X75_Y69_N0
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\);

-- Location: LCCOMB_X79_Y70_N24
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & \minuIn[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datac => \minuIn[1]~input_o\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\);

-- Location: LCCOMB_X80_Y70_N18
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\ = (!\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\ & \minuIn[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => \minuIn[1]~input_o\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\);

-- Location: LCCOMB_X75_Y70_N6
\conv2D|Mod0|auto_generated|divider|divider|op_25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\ = (((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\) # (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\)))
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~1\ = CARRY((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\) # (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~46_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1023]~47_combout\,
	datad => VCC,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_25~1\);

-- Location: LCCOMB_X75_Y70_N8
\conv2D|Mod0|auto_generated|divider|divider|op_25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_25~1\ & (((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\) # 
-- (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\)))) # (!\conv2D|Mod0|auto_generated|divider|divider|op_25~1\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\ & 
-- (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\)))
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~3\ = CARRY((!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\ & 
-- !\conv2D|Mod0|auto_generated|divider|divider|op_25~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_25~1\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_25~3\);

-- Location: LCCOMB_X75_Y70_N10
\conv2D|Mod0|auto_generated|divider|divider|op_25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_25~3\ & (((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\) # 
-- (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\)))) # (!\conv2D|Mod0|auto_generated|divider|divider|op_25~3\ & ((((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\) # 
-- (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\)))))
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~5\ = CARRY((!\conv2D|Mod0|auto_generated|divider|divider|op_25~3\ & ((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\) # 
-- (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_25~3\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_25~5\);

-- Location: LCCOMB_X75_Y70_N12
\conv2D|Mod0|auto_generated|divider|divider|op_25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\ = CARRY((!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\ & 
-- !\conv2D|Mod0|auto_generated|divider|divider|op_25~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~65_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1026]~55_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_25~5\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\);

-- Location: LCCOMB_X75_Y70_N14
\conv2D|Mod0|auto_generated|divider|divider|op_25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\ = CARRY((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\) # ((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\) # 
-- (!\conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~54_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1027]~64_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_25~7_cout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\);

-- Location: LCCOMB_X75_Y70_N16
\conv2D|Mod0|auto_generated|divider|divider|op_25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\ = CARRY((!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\ & 
-- !\conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~63_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1028]~53_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_25~9_cout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\);

-- Location: LCCOMB_X75_Y70_N18
\conv2D|Mod0|auto_generated|divider|divider|op_25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\ = CARRY((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\) # ((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\) # 
-- (!\conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~62_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1029]~52_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_25~11_cout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\);

-- Location: LCCOMB_X75_Y70_N20
\conv2D|Mod0|auto_generated|divider|divider|op_25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\ = CARRY((!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\ & 
-- !\conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~61_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1030]~51_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_25~13_cout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\);

-- Location: LCCOMB_X75_Y70_N22
\conv2D|Mod0|auto_generated|divider|divider|op_25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\ = CARRY((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\) # ((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\) # 
-- (!\conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~60_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1031]~50_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_25~15_cout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\);

-- Location: LCCOMB_X75_Y70_N24
\conv2D|Mod0|auto_generated|divider|divider|op_25~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\ = CARRY((!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\ & 
-- !\conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~48_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1032]~49_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_25~17_cout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\);

-- Location: LCCOMB_X75_Y70_N26
\conv2D|Mod0|auto_generated|divider|divider|op_25~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\ = CARRY(((\conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\ & !\conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\)) # 
-- (!\conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|op_24~18_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datad => VCC,
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_25~19_cout\,
	cout => \conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\);

-- Location: LCCOMB_X75_Y70_N28
\conv2D|Mod0|auto_generated|divider|divider|op_25~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ = !\conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv2D|Mod0|auto_generated|divider|divider|op_25~21_cout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\);

-- Location: LCCOMB_X75_Y70_N2
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & ((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\) # 
-- ((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\)))) # (!\conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & (((\conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~66_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1025]~56_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_25~4_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\);

-- Location: LCCOMB_X75_Y70_N0
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & ((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\) # 
-- ((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\)))) # (!\conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & (((\conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~44_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1024]~45_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|op_25~2_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\);

-- Location: LCCOMB_X75_Y70_N4
\conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ = (\conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & ((\minuIn[1]~input_o\))) # (!\conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & 
-- (\conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\,
	datad => \minuIn[1]~input_o\,
	combout => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\);

-- Location: LCCOMB_X73_Y70_N24
\convHx|outPort0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0~6_combout\ = (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\ & (\minuIn[0]~input_o\ $ 
-- (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[0]~input_o\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	combout => \convHx|outPort0~6_combout\);

-- Location: LCCOMB_X72_Y70_N2
\convHx|outPort0[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[0]~21_combout\ = (\convHx|outPort0~6_combout\) # ((\modo~input_o\ & (!\mmH~input_o\ & !\pulseIn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo~input_o\,
	datab => \mmH~input_o\,
	datac => \pulseIn~input_o\,
	datad => \convHx|outPort0~6_combout\,
	combout => \convHx|outPort0[0]~21_combout\);

-- Location: LCCOMB_X73_Y70_N18
\convHx|outPort0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0~7_combout\ = (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ & (\minuIn[0]~input_o\ $ 
-- (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[0]~input_o\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	combout => \convHx|outPort0~7_combout\);

-- Location: LCCOMB_X72_Y70_N12
\convHx|outPort0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0~22_combout\ = (\convHx|outPort0~7_combout\) # ((\modo~input_o\ & (!\mmH~input_o\ & !\pulseIn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo~input_o\,
	datab => \mmH~input_o\,
	datac => \pulseIn~input_o\,
	datad => \convHx|outPort0~7_combout\,
	combout => \convHx|outPort0~22_combout\);

-- Location: LCCOMB_X73_Y70_N4
\convHx|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|Equal7~0_combout\ = (!\minuIn[0]~input_o\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ & 
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[0]~input_o\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	combout => \convHx|Equal7~0_combout\);

-- Location: LCCOMB_X72_Y70_N22
\convHx|outPort0[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[2]~23_combout\ = (\convHx|Equal7~0_combout\) # ((\modo~input_o\ & (!\mmH~input_o\ & !\pulseIn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo~input_o\,
	datab => \mmH~input_o\,
	datac => \pulseIn~input_o\,
	datad => \convHx|Equal7~0_combout\,
	combout => \convHx|outPort0[2]~23_combout\);

-- Location: LCCOMB_X73_Y70_N16
\convHx|outPort0[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[3]~9_combout\ = ((\conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\) # (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\)) # (!\pulsos|yout[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|yout[0]~1_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	combout => \convHx|outPort0[3]~9_combout\);

-- Location: LCCOMB_X73_Y70_N22
\convHx|outPort0[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[5]~8_combout\ = (\minuIn[0]~input_o\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ & 
-- \conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[0]~input_o\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	combout => \convHx|outPort0[5]~8_combout\);

-- Location: LCCOMB_X73_Y70_N26
\convHx|outPort0[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[3]~10_combout\ = (\pulsos|yout[0]~1_combout\ & (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ $ (((!\minuIn[0]~input_o\ & !\conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|yout[0]~1_combout\,
	datab => \minuIn[0]~input_o\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	combout => \convHx|outPort0[3]~10_combout\);

-- Location: LCCOMB_X73_Y70_N20
\convHx|outPort0[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[3]~11_combout\ = (\convHx|outPort0[3]~10_combout\) # ((\pulsos|yout[0]~1_combout\ & \conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|yout[0]~1_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datac => \convHx|outPort0[3]~10_combout\,
	combout => \convHx|outPort0[3]~11_combout\);

-- Location: LCCOMB_X73_Y70_N30
\convHx|outPort0[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[3]~12_combout\ = (\convHx|outPort0[5]~8_combout\) # ((\convHx|outPort0[3]~9_combout\ & !\convHx|outPort0[3]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \convHx|outPort0[3]~9_combout\,
	datac => \convHx|outPort0[5]~8_combout\,
	datad => \convHx|outPort0[3]~11_combout\,
	combout => \convHx|outPort0[3]~12_combout\);

-- Location: LCCOMB_X73_Y70_N10
\convHx|outPort0[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[4]~14_combout\ = ((!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & ((\minuIn[0]~input_o\) # (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\)))) # (!\pulsos|yout[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|yout[0]~1_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datad => \minuIn[0]~input_o\,
	combout => \convHx|outPort0[4]~14_combout\);

-- Location: LCCOMB_X75_Y70_N30
\convHx|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|Equal0~2_combout\ = (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ & ((\conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & ((!\minuIn[1]~input_o\))) # 
-- (!\conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv2D|Mod0|auto_generated|divider|divider|op_25~0_combout\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|op_25~22_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	datad => \minuIn[1]~input_o\,
	combout => \convHx|Equal0~2_combout\);

-- Location: LCCOMB_X73_Y70_N0
\convHx|outPort0[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[4]~13_combout\ = (\pulsos|yout[0]~1_combout\ & (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ $ (((\convHx|Equal0~2_combout\ & !\minuIn[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|yout[0]~1_combout\,
	datab => \convHx|Equal0~2_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datad => \minuIn[0]~input_o\,
	combout => \convHx|outPort0[4]~13_combout\);

-- Location: LCCOMB_X73_Y70_N28
\convHx|outPort0[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[6]~15_combout\ = (\pulsos|yout[0]~1_combout\ & ((\convHx|Equal0~2_combout\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & !\minuIn[0]~input_o\)) # (!\convHx|Equal0~2_combout\ & 
-- (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|yout[0]~1_combout\,
	datab => \convHx|Equal0~2_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datad => \minuIn[0]~input_o\,
	combout => \convHx|outPort0[6]~15_combout\);

-- Location: LCCOMB_X73_Y70_N6
\convHx|outPort0[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[4]~16_combout\ = (!\convHx|outPort0[6]~15_combout\ & ((\convHx|outPort0[4]~14_combout\) # (\convHx|outPort0[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convHx|outPort0[4]~14_combout\,
	datab => \convHx|outPort0[4]~13_combout\,
	datad => \convHx|outPort0[6]~15_combout\,
	combout => \convHx|outPort0[4]~16_combout\);

-- Location: LCCOMB_X73_Y70_N8
\convHx|outPort0[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[5]~17_combout\ = ((!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ & ((\minuIn[0]~input_o\) # (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\)))) # (!\pulsos|yout[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|yout[0]~1_combout\,
	datab => \minuIn[0]~input_o\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	combout => \convHx|outPort0[5]~17_combout\);

-- Location: LCCOMB_X73_Y70_N2
\convHx|outPort0[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[5]~18_combout\ = (\convHx|outPort0[3]~11_combout\ & (\convHx|outPort0[5]~8_combout\)) # (!\convHx|outPort0[3]~11_combout\ & ((\convHx|outPort0[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \convHx|outPort0[5]~8_combout\,
	datab => \convHx|outPort0[3]~11_combout\,
	datac => \convHx|outPort0[5]~17_combout\,
	combout => \convHx|outPort0[5]~18_combout\);

-- Location: LCCOMB_X73_Y70_N12
\convHx|outPort0[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[6]~19_combout\ = (\minuIn[0]~input_o\ & (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\ & (\conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\ $ 
-- (!\conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuIn[0]~input_o\,
	datab => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1059]~58_combout\,
	datac => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1058]~57_combout\,
	datad => \conv2D|Mod0|auto_generated|divider|divider|StageOut[1057]~59_combout\,
	combout => \convHx|outPort0[6]~19_combout\);

-- Location: LCCOMB_X73_Y70_N14
\convHx|outPort0[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \convHx|outPort0[6]~20_combout\ = (\convHx|outPort0[6]~15_combout\) # ((!\convHx|outPort0[4]~13_combout\ & ((\convHx|outPort0[6]~19_combout\) # (!\pulsos|yout[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsos|yout[0]~1_combout\,
	datab => \convHx|outPort0[6]~15_combout\,
	datac => \convHx|outPort0[4]~13_combout\,
	datad => \convHx|outPort0[6]~19_combout\,
	combout => \convHx|outPort0[6]~20_combout\);

ww_horaD(0) <= \horaD[0]~output_o\;

ww_horaD(1) <= \horaD[1]~output_o\;

ww_horaD(2) <= \horaD[2]~output_o\;

ww_horaD(3) <= \horaD[3]~output_o\;

ww_horaD(4) <= \horaD[4]~output_o\;

ww_horaD(5) <= \horaD[5]~output_o\;

ww_horaD(6) <= \horaD[6]~output_o\;

ww_horaU(0) <= \horaU[0]~output_o\;

ww_horaU(1) <= \horaU[1]~output_o\;

ww_horaU(2) <= \horaU[2]~output_o\;

ww_horaU(3) <= \horaU[3]~output_o\;

ww_horaU(4) <= \horaU[4]~output_o\;

ww_horaU(5) <= \horaU[5]~output_o\;

ww_horaU(6) <= \horaU[6]~output_o\;

ww_minuD(0) <= \minuD[0]~output_o\;

ww_minuD(1) <= \minuD[1]~output_o\;

ww_minuD(2) <= \minuD[2]~output_o\;

ww_minuD(3) <= \minuD[3]~output_o\;

ww_minuD(4) <= \minuD[4]~output_o\;

ww_minuD(5) <= \minuD[5]~output_o\;

ww_minuD(6) <= \minuD[6]~output_o\;

ww_minuU(0) <= \minuU[0]~output_o\;

ww_minuU(1) <= \minuU[1]~output_o\;

ww_minuU(2) <= \minuU[2]~output_o\;

ww_minuU(3) <= \minuU[3]~output_o\;

ww_minuU(4) <= \minuU[4]~output_o\;

ww_minuU(5) <= \minuU[5]~output_o\;

ww_minuU(6) <= \minuU[6]~output_o\;
END structure;


