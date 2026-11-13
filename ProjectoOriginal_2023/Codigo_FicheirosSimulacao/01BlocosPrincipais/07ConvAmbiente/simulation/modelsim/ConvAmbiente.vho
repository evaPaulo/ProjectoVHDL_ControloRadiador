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

-- DATE "06/01/2023 11:33:27"

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

ENTITY 	ConvAmbiente IS
    PORT (
	pulso : IN std_logic;
	modo : IN std_logic;
	estado : IN std_logic_vector(1 DOWNTO 0);
	tNormal : IN std_logic_vector(8 DOWNTO 0);
	tGel : IN std_logic_vector(8 DOWNTO 0);
	tLua : IN std_logic_vector(8 DOWNTO 0);
	tSol : IN std_logic_vector(8 DOWNTO 0);
	temp2 : OUT std_logic_vector(6 DOWNTO 0);
	temp1 : OUT std_logic_vector(6 DOWNTO 0);
	temp0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END ConvAmbiente;

-- Design Ports Information
-- temp2[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp2[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp2[2]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp2[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp2[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp2[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp2[6]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp1[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp1[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp1[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp1[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp1[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp1[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp0[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp0[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp0[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp0[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp0[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp0[5]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp0[6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[8]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[1]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tNormal[8]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[8]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[7]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[7]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tNormal[7]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[7]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[6]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tNormal[6]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[6]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[5]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[5]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tNormal[5]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[5]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[4]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tNormal[4]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[4]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tNormal[3]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[3]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tNormal[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modo	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[1]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tNormal[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[0]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tNormal[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[0]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ConvAmbiente IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pulso : std_logic;
SIGNAL ww_modo : std_logic;
SIGNAL ww_estado : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_tNormal : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_tGel : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_tLua : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_tSol : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_temp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_temp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_temp0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \temp2[0]~output_o\ : std_logic;
SIGNAL \temp2[1]~output_o\ : std_logic;
SIGNAL \temp2[2]~output_o\ : std_logic;
SIGNAL \temp2[3]~output_o\ : std_logic;
SIGNAL \temp2[4]~output_o\ : std_logic;
SIGNAL \temp2[5]~output_o\ : std_logic;
SIGNAL \temp2[6]~output_o\ : std_logic;
SIGNAL \temp1[0]~output_o\ : std_logic;
SIGNAL \temp1[1]~output_o\ : std_logic;
SIGNAL \temp1[2]~output_o\ : std_logic;
SIGNAL \temp1[3]~output_o\ : std_logic;
SIGNAL \temp1[4]~output_o\ : std_logic;
SIGNAL \temp1[5]~output_o\ : std_logic;
SIGNAL \temp1[6]~output_o\ : std_logic;
SIGNAL \temp0[0]~output_o\ : std_logic;
SIGNAL \temp0[1]~output_o\ : std_logic;
SIGNAL \temp0[2]~output_o\ : std_logic;
SIGNAL \temp0[3]~output_o\ : std_logic;
SIGNAL \temp0[4]~output_o\ : std_logic;
SIGNAL \temp0[5]~output_o\ : std_logic;
SIGNAL \temp0[6]~output_o\ : std_logic;
SIGNAL \modo~input_o\ : std_logic;
SIGNAL \pulso~input_o\ : std_logic;
SIGNAL \enableConv|yout~0_combout\ : std_logic;
SIGNAL \tGel[8]~input_o\ : std_logic;
SIGNAL \estado[1]~input_o\ : std_logic;
SIGNAL \tLua[8]~input_o\ : std_logic;
SIGNAL \tNormal[8]~input_o\ : std_logic;
SIGNAL \estado[0]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[8]~0_combout\ : std_logic;
SIGNAL \tSol[8]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[8]~1_combout\ : std_logic;
SIGNAL \tLua[7]~input_o\ : std_logic;
SIGNAL \tGel[7]~input_o\ : std_logic;
SIGNAL \tNormal[7]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[7]~2_combout\ : std_logic;
SIGNAL \tSol[7]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[7]~3_combout\ : std_logic;
SIGNAL \tSol[6]~input_o\ : std_logic;
SIGNAL \tGel[6]~input_o\ : std_logic;
SIGNAL \tNormal[6]~input_o\ : std_logic;
SIGNAL \tLua[6]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[6]~4_combout\ : std_logic;
SIGNAL \inRefConv|tRef[6]~5_combout\ : std_logic;
SIGNAL \tGel[5]~input_o\ : std_logic;
SIGNAL \tNormal[5]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[5]~6_combout\ : std_logic;
SIGNAL \tSol[5]~input_o\ : std_logic;
SIGNAL \tLua[5]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[5]~7_combout\ : std_logic;
SIGNAL \tNormal[4]~input_o\ : std_logic;
SIGNAL \tLua[4]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[4]~8_combout\ : std_logic;
SIGNAL \tSol[4]~input_o\ : std_logic;
SIGNAL \tGel[4]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[4]~9_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~1\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~3\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~5\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~9\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~10_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~11\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[8]~13_cout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[268]~48_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58_combout\ : std_logic;
SIGNAL \tLua[3]~input_o\ : std_logic;
SIGNAL \tGel[3]~input_o\ : std_logic;
SIGNAL \tNormal[3]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[3]~10_combout\ : std_logic;
SIGNAL \tSol[3]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[3]~11_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~60_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~59_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~9\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~11\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[8]~13_cout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~71_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~10_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~61_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~72_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~62_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~63_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~73_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~74_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~64_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~65_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~75_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~76_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~66_combout\ : std_logic;
SIGNAL \tLua[2]~input_o\ : std_logic;
SIGNAL \tNormal[2]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[2]~12_combout\ : std_logic;
SIGNAL \tGel[2]~input_o\ : std_logic;
SIGNAL \tSol[2]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[2]~13_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~69_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~68_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~16_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~70_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~67_combout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~1_cout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~3_cout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~5_cout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~7_cout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~9_cout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[7]~11_cout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[8]~13_cout\ : std_logic;
SIGNAL \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\ : std_logic;
SIGNAL \conv7seg|outPort2[0]~0_combout\ : std_logic;
SIGNAL \conv7seg|outPort2~1_combout\ : std_logic;
SIGNAL \conv7seg|outPort2[2]~2_combout\ : std_logic;
SIGNAL \conv7seg|outPort2[3]~3_combout\ : std_logic;
SIGNAL \conv7seg|outPort2[4]~4_combout\ : std_logic;
SIGNAL \conv7seg|outPort2[5]~5_combout\ : std_logic;
SIGNAL \conv7seg|outPort2[6]~6_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[160]~60_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~68_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~67_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~69_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~103_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~75_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~74_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~1\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~3\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~5\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~7\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~9\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~11\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~13\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~15\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~17\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~19\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~21\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~23\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~20_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~18_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~16_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~14_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~12_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~10_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~8_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~6_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~4_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~2_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~0_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~76_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~97_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~82_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~81_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~62_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_23~26_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~63_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~1\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~3\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~5\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~7\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~9\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~11\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~13\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~15\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~17\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~19\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~21\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~23\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~25\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~26_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~27\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~64_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~24_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~65_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~84_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~22_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~66_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~20_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~67_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~85_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~86_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~18_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~68_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~16_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~69_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~87_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~88_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~14_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~70_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~12_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~71_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~89_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~90_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~10_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~72_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~8_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~73_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~91_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~6_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~74_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~92_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~93_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~75_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~2_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~0_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~83_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~99_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~89_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~88_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_24~30_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~3\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~5\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~7\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~9_cout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~11_cout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~13_cout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~15_cout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~17_cout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~19_cout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~21_cout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~23_cout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~25_cout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~27_cout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~29_cout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~31_cout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~90_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~101_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~91_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~102_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~108_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~92_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~94_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~93_combout\ : std_logic;
SIGNAL \tLua[1]~input_o\ : std_logic;
SIGNAL \tNormal[1]~input_o\ : std_logic;
SIGNAL \tGel[1]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[1]~14_combout\ : std_logic;
SIGNAL \tSol[1]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[1]~15_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~95_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~96_combout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ : std_logic;
SIGNAL \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~0_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~6_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~2_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|op_25~4_combout\ : std_logic;
SIGNAL \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[0]~8_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[0]~22_combout\ : std_logic;
SIGNAL \conv7seg|outPort1~9_combout\ : std_logic;
SIGNAL \conv7seg|outPort1~23_combout\ : std_logic;
SIGNAL \conv7seg|Equal16~0_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[2]~24_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[4]~11_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[3]~12_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[5]~10_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[3]~25_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[3]~13_combout\ : std_logic;
SIGNAL \conv7seg|Equal9~0_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[4]~14_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[6]~16_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[4]~15_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[4]~17_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[5]~18_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[5]~19_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[6]~20_combout\ : std_logic;
SIGNAL \conv7seg|outPort1[6]~21_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~1\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~3\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~5\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~7\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~9\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~11\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~13\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~15\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~12_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~10_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~8_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~6_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~4_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~2_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_19~0_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~127_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~126_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~1\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~3\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~5\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~7\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~9\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~11\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~13\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~15\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~17\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~19\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~16_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~195_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~14_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~12_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~196_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~197_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~10_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~198_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~8_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~229_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~6_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~230_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~4_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~231_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~2_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_20~0_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~140_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~139_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~1\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~3\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~5\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~7\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~9\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~11\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~13\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~15\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~17\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~19\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~21\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~23\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~20_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~18_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~199_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~16_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~200_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~201_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~14_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~202_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~12_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~10_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~203_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~8_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~204_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~6_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~205_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~206_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~4_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~232_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~2_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_21~0_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~154_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~155_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~1\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~3\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~5\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~7\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~9\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~11\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~13\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~15\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~17\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~19\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~21\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~23\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~25\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~27\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~24_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~207_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~22_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~208_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~20_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~18_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~209_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~210_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~16_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~14_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~211_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~212_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~12_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~213_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~10_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~8_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~214_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~215_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~6_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~216_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~4_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~2_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~233_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_23~0_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~172_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~171_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~1\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~3\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~5\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~7\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~9\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~11\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~13\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~15\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~17\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~19\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~21\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~23\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~25\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~27\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~29\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~31\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~30_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~28_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~178_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~177_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~26_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~179_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~217_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~24_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~180_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~218_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~219_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~22_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~181_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~20_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~182_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~220_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~221_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~18_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~183_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~16_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~184_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~222_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~14_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~185_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~223_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~12_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~186_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~224_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~10_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~187_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~225_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~8_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~188_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~226_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~6_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~189_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~227_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~228_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~190_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~234_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~2_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~191_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~173_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_24~0_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~174_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~176_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~175_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~1\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~3\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~5\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~7_cout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~9_cout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~11_cout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~13_cout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~15_cout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~17_cout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~19_cout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~21_cout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~23_cout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~25_cout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~27_cout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~29_cout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~31_cout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~33_cout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~2_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~0_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|op_25~4_combout\ : std_logic;
SIGNAL \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\ : std_logic;
SIGNAL \tGel[0]~input_o\ : std_logic;
SIGNAL \tLua[0]~input_o\ : std_logic;
SIGNAL \tNormal[0]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[0]~16_combout\ : std_logic;
SIGNAL \tSol[0]~input_o\ : std_logic;
SIGNAL \inRefConv|tRef[0]~17_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[0]~10_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[0]~23_combout\ : std_logic;
SIGNAL \conv7seg|outPort0~11_combout\ : std_logic;
SIGNAL \conv7seg|outPort0~24_combout\ : std_logic;
SIGNAL \conv7seg|Equal7~0_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[2]~25_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[3]~26_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[5]~12_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[3]~13_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[3]~27_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[3]~14_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[4]~16_combout\ : std_logic;
SIGNAL \conv7seg|Equal0~2_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[6]~17_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[4]~15_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[4]~18_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[5]~19_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[5]~20_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[6]~21_combout\ : std_logic;
SIGNAL \conv7seg|outPort0[6]~22_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_pulso <= pulso;
ww_modo <= modo;
ww_estado <= estado;
ww_tNormal <= tNormal;
ww_tGel <= tGel;
ww_tLua <= tLua;
ww_tSol <= tSol;
temp2 <= ww_temp2;
temp1 <= ww_temp1;
temp0 <= ww_temp0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X58_Y73_N2
\temp2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort2[0]~0_combout\,
	devoe => ww_devoe,
	o => \temp2[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\temp2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort2~1_combout\,
	devoe => ww_devoe,
	o => \temp2[1]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\temp2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort2[2]~2_combout\,
	devoe => ww_devoe,
	o => \temp2[2]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\temp2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort2[3]~3_combout\,
	devoe => ww_devoe,
	o => \temp2[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\temp2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort2[4]~4_combout\,
	devoe => ww_devoe,
	o => \temp2[4]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\temp2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort2[5]~5_combout\,
	devoe => ww_devoe,
	o => \temp2[5]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\temp2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort2[6]~6_combout\,
	devoe => ww_devoe,
	o => \temp2[6]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\temp1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort1[0]~22_combout\,
	devoe => ww_devoe,
	o => \temp1[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\temp1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort1~23_combout\,
	devoe => ww_devoe,
	o => \temp1[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\temp1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort1[2]~24_combout\,
	devoe => ww_devoe,
	o => \temp1[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\temp1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort1[3]~13_combout\,
	devoe => ww_devoe,
	o => \temp1[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\temp1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort1[4]~17_combout\,
	devoe => ww_devoe,
	o => \temp1[4]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\temp1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort1[5]~19_combout\,
	devoe => ww_devoe,
	o => \temp1[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\temp1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort1[6]~21_combout\,
	devoe => ww_devoe,
	o => \temp1[6]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\temp0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort0[0]~23_combout\,
	devoe => ww_devoe,
	o => \temp0[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\temp0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort0~24_combout\,
	devoe => ww_devoe,
	o => \temp0[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\temp0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort0[2]~25_combout\,
	devoe => ww_devoe,
	o => \temp0[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\temp0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort0[3]~14_combout\,
	devoe => ww_devoe,
	o => \temp0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\temp0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort0[4]~18_combout\,
	devoe => ww_devoe,
	o => \temp0[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\temp0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort0[5]~20_combout\,
	devoe => ww_devoe,
	o => \temp0[5]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\temp0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg|outPort0[6]~22_combout\,
	devoe => ww_devoe,
	o => \temp0[6]~output_o\);

-- Location: IOIBUF_X54_Y73_N1
\modo~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modo,
	o => \modo~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\pulso~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso,
	o => \pulso~input_o\);

-- Location: LCCOMB_X62_Y69_N8
\enableConv|yout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \enableConv|yout~0_combout\ = (\pulso~input_o\) # (!\modo~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \modo~input_o\,
	datad => \pulso~input_o\,
	combout => \enableConv|yout~0_combout\);

-- Location: IOIBUF_X52_Y73_N15
\tGel[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(8),
	o => \tGel[8]~input_o\);

-- Location: IOIBUF_X100_Y73_N22
\estado[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado(1),
	o => \estado[1]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\tLua[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(8),
	o => \tLua[8]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\tNormal[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tNormal(8),
	o => \tNormal[8]~input_o\);

-- Location: IOIBUF_X96_Y73_N22
\estado[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado(0),
	o => \estado[0]~input_o\);

-- Location: LCCOMB_X72_Y69_N0
\inRefConv|tRef[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[8]~0_combout\ = (\estado[1]~input_o\ & ((\tLua[8]~input_o\) # ((\estado[0]~input_o\)))) # (!\estado[1]~input_o\ & (((\tNormal[8]~input_o\ & !\estado[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado[1]~input_o\,
	datab => \tLua[8]~input_o\,
	datac => \tNormal[8]~input_o\,
	datad => \estado[0]~input_o\,
	combout => \inRefConv|tRef[8]~0_combout\);

-- Location: IOIBUF_X72_Y73_N15
\tSol[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(8),
	o => \tSol[8]~input_o\);

-- Location: LCCOMB_X72_Y69_N10
\inRefConv|tRef[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[8]~1_combout\ = (\inRefConv|tRef[8]~0_combout\ & (((\tSol[8]~input_o\) # (!\estado[0]~input_o\)))) # (!\inRefConv|tRef[8]~0_combout\ & (\tGel[8]~input_o\ & ((\estado[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tGel[8]~input_o\,
	datab => \inRefConv|tRef[8]~0_combout\,
	datac => \tSol[8]~input_o\,
	datad => \estado[0]~input_o\,
	combout => \inRefConv|tRef[8]~1_combout\);

-- Location: IOIBUF_X72_Y73_N22
\tLua[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(7),
	o => \tLua[7]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\tGel[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(7),
	o => \tGel[7]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\tNormal[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tNormal(7),
	o => \tNormal[7]~input_o\);

-- Location: LCCOMB_X72_Y69_N4
\inRefConv|tRef[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[7]~2_combout\ = (\estado[0]~input_o\ & ((\tGel[7]~input_o\) # ((\estado[1]~input_o\)))) # (!\estado[0]~input_o\ & (((\tNormal[7]~input_o\ & !\estado[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tGel[7]~input_o\,
	datab => \estado[0]~input_o\,
	datac => \tNormal[7]~input_o\,
	datad => \estado[1]~input_o\,
	combout => \inRefConv|tRef[7]~2_combout\);

-- Location: IOIBUF_X79_Y73_N8
\tSol[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(7),
	o => \tSol[7]~input_o\);

-- Location: LCCOMB_X72_Y69_N6
\inRefConv|tRef[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[7]~3_combout\ = (\inRefConv|tRef[7]~2_combout\ & (((\tSol[7]~input_o\) # (!\estado[1]~input_o\)))) # (!\inRefConv|tRef[7]~2_combout\ & (\tLua[7]~input_o\ & ((\estado[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tLua[7]~input_o\,
	datab => \inRefConv|tRef[7]~2_combout\,
	datac => \tSol[7]~input_o\,
	datad => \estado[1]~input_o\,
	combout => \inRefConv|tRef[7]~3_combout\);

-- Location: IOIBUF_X69_Y73_N1
\tSol[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(6),
	o => \tSol[6]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\tGel[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(6),
	o => \tGel[6]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\tNormal[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tNormal(6),
	o => \tNormal[6]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\tLua[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(6),
	o => \tLua[6]~input_o\);

-- Location: LCCOMB_X72_Y69_N8
\inRefConv|tRef[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[6]~4_combout\ = (\estado[1]~input_o\ & (((\tLua[6]~input_o\) # (\estado[0]~input_o\)))) # (!\estado[1]~input_o\ & (\tNormal[6]~input_o\ & ((!\estado[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado[1]~input_o\,
	datab => \tNormal[6]~input_o\,
	datac => \tLua[6]~input_o\,
	datad => \estado[0]~input_o\,
	combout => \inRefConv|tRef[6]~4_combout\);

-- Location: LCCOMB_X72_Y69_N26
\inRefConv|tRef[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[6]~5_combout\ = (\inRefConv|tRef[6]~4_combout\ & ((\tSol[6]~input_o\) # ((!\estado[0]~input_o\)))) # (!\inRefConv|tRef[6]~4_combout\ & (((\tGel[6]~input_o\ & \estado[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSol[6]~input_o\,
	datab => \tGel[6]~input_o\,
	datac => \inRefConv|tRef[6]~4_combout\,
	datad => \estado[0]~input_o\,
	combout => \inRefConv|tRef[6]~5_combout\);

-- Location: IOIBUF_X83_Y73_N8
\tGel[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(5),
	o => \tGel[5]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\tNormal[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tNormal(5),
	o => \tNormal[5]~input_o\);

-- Location: LCCOMB_X81_Y70_N10
\inRefConv|tRef[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[5]~6_combout\ = (\estado[1]~input_o\ & (((\estado[0]~input_o\)))) # (!\estado[1]~input_o\ & ((\estado[0]~input_o\ & (\tGel[5]~input_o\)) # (!\estado[0]~input_o\ & ((\tNormal[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tGel[5]~input_o\,
	datab => \tNormal[5]~input_o\,
	datac => \estado[1]~input_o\,
	datad => \estado[0]~input_o\,
	combout => \inRefConv|tRef[5]~6_combout\);

-- Location: IOIBUF_X81_Y73_N15
\tSol[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(5),
	o => \tSol[5]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\tLua[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(5),
	o => \tLua[5]~input_o\);

-- Location: LCCOMB_X81_Y70_N4
\inRefConv|tRef[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[5]~7_combout\ = (\inRefConv|tRef[5]~6_combout\ & ((\tSol[5]~input_o\) # ((!\estado[1]~input_o\)))) # (!\inRefConv|tRef[5]~6_combout\ & (((\estado[1]~input_o\ & \tLua[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[5]~6_combout\,
	datab => \tSol[5]~input_o\,
	datac => \estado[1]~input_o\,
	datad => \tLua[5]~input_o\,
	combout => \inRefConv|tRef[5]~7_combout\);

-- Location: IOIBUF_X83_Y73_N1
\tNormal[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tNormal(4),
	o => \tNormal[4]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\tLua[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(4),
	o => \tLua[4]~input_o\);

-- Location: LCCOMB_X81_Y70_N30
\inRefConv|tRef[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[4]~8_combout\ = (\estado[1]~input_o\ & (((\tLua[4]~input_o\) # (\estado[0]~input_o\)))) # (!\estado[1]~input_o\ & (\tNormal[4]~input_o\ & ((!\estado[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tNormal[4]~input_o\,
	datab => \tLua[4]~input_o\,
	datac => \estado[1]~input_o\,
	datad => \estado[0]~input_o\,
	combout => \inRefConv|tRef[4]~8_combout\);

-- Location: IOIBUF_X69_Y73_N22
\tSol[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(4),
	o => \tSol[4]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\tGel[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(4),
	o => \tGel[4]~input_o\);

-- Location: LCCOMB_X69_Y69_N24
\inRefConv|tRef[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[4]~9_combout\ = (\inRefConv|tRef[4]~8_combout\ & ((\tSol[4]~input_o\) # ((!\estado[0]~input_o\)))) # (!\inRefConv|tRef[4]~8_combout\ & (((\tGel[4]~input_o\ & \estado[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[4]~8_combout\,
	datab => \tSol[4]~input_o\,
	datac => \tGel[4]~input_o\,
	datad => \estado[0]~input_o\,
	combout => \inRefConv|tRef[4]~9_combout\);

-- Location: LCCOMB_X75_Y68_N14
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\ = \inRefConv|tRef[4]~9_combout\ $ (VCC)
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~1\ = CARRY(\inRefConv|tRef[4]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inRefConv|tRef[4]~9_combout\,
	datad => VCC,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~1\);

-- Location: LCCOMB_X75_Y68_N16
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\ = (\inRefConv|tRef[5]~7_combout\ & (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~1\ & VCC)) # (!\inRefConv|tRef[5]~7_combout\ & 
-- (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~1\))
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~3\ = CARRY((!\inRefConv|tRef[5]~7_combout\ & !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[5]~7_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~1\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~3\);

-- Location: LCCOMB_X75_Y68_N18
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\ = (\inRefConv|tRef[6]~5_combout\ & ((GND) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~3\))) # (!\inRefConv|tRef[6]~5_combout\ & 
-- (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~3\ $ (GND)))
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~5\ = CARRY((\inRefConv|tRef[6]~5_combout\) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inRefConv|tRef[6]~5_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~3\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~5\);

-- Location: LCCOMB_X75_Y68_N20
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\ = (\inRefConv|tRef[7]~3_combout\ & (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~5\)) # (!\inRefConv|tRef[7]~3_combout\ & 
-- ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~5\) # (GND)))
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ = CARRY((!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~5\) # (!\inRefConv|tRef[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[7]~3_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~5\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~7\);

-- Location: LCCOMB_X75_Y68_N22
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\ = (\inRefConv|tRef[8]~1_combout\ & (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ $ (GND))) # (!\inRefConv|tRef[8]~1_combout\ & 
-- (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ & VCC))
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~9\ = CARRY((\inRefConv|tRef[8]~1_combout\ & !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inRefConv|tRef[8]~1_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~7\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~9\);

-- Location: LCCOMB_X75_Y68_N24
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~10_combout\ = !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~9\
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~11\ = CARRY(!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~9\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~10_combout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~11\);

-- Location: LCCOMB_X75_Y68_N26
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[8]~13_cout\ = CARRY(!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~11\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[8]~13_cout\);

-- Location: LCCOMB_X75_Y68_N28
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ = !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[8]~13_cout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\);

-- Location: LCCOMB_X75_Y68_N8
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[268]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[268]~48_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~10_combout\ & !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[7]~10_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[268]~48_combout\);

-- Location: LCCOMB_X75_Y68_N2
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\ & !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50_combout\);

-- Location: LCCOMB_X74_Y68_N8
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49_combout\ = (\inRefConv|tRef[8]~1_combout\ & \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inRefConv|tRef[8]~1_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49_combout\);

-- Location: LCCOMB_X74_Y68_N10
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51_combout\ = (\inRefConv|tRef[7]~3_combout\ & \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inRefConv|tRef[7]~3_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51_combout\);

-- Location: LCCOMB_X75_Y68_N12
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\ & !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52_combout\);

-- Location: LCCOMB_X75_Y68_N6
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53_combout\ = (\inRefConv|tRef[6]~5_combout\ & \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inRefConv|tRef[6]~5_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53_combout\);

-- Location: LCCOMB_X75_Y68_N0
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\ & !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54_combout\);

-- Location: LCCOMB_X73_Y68_N0
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56_combout\ = (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56_combout\);

-- Location: LCCOMB_X74_Y68_N28
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & \inRefConv|tRef[5]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datad => \inRefConv|tRef[5]~7_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55_combout\);

-- Location: LCCOMB_X73_Y68_N2
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57_combout\ = (\inRefConv|tRef[4]~9_combout\ & \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[4]~9_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57_combout\);

-- Location: LCCOMB_X73_Y68_N4
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58_combout\ = (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58_combout\);

-- Location: IOIBUF_X89_Y73_N22
\tLua[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(3),
	o => \tLua[3]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\tGel[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(3),
	o => \tGel[3]~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\tNormal[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tNormal(3),
	o => \tNormal[3]~input_o\);

-- Location: LCCOMB_X81_Y70_N24
\inRefConv|tRef[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[3]~10_combout\ = (\estado[1]~input_o\ & (((\estado[0]~input_o\)))) # (!\estado[1]~input_o\ & ((\estado[0]~input_o\ & (\tGel[3]~input_o\)) # (!\estado[0]~input_o\ & ((\tNormal[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tGel[3]~input_o\,
	datab => \tNormal[3]~input_o\,
	datac => \estado[1]~input_o\,
	datad => \estado[0]~input_o\,
	combout => \inRefConv|tRef[3]~10_combout\);

-- Location: IOIBUF_X87_Y73_N22
\tSol[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(3),
	o => \tSol[3]~input_o\);

-- Location: LCCOMB_X81_Y70_N18
\inRefConv|tRef[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[3]~11_combout\ = (\inRefConv|tRef[3]~10_combout\ & (((\tSol[3]~input_o\) # (!\estado[1]~input_o\)))) # (!\inRefConv|tRef[3]~10_combout\ & (\tLua[3]~input_o\ & (\estado[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tLua[3]~input_o\,
	datab => \inRefConv|tRef[3]~10_combout\,
	datac => \estado[1]~input_o\,
	datad => \tSol[3]~input_o\,
	combout => \inRefConv|tRef[3]~11_combout\);

-- Location: LCCOMB_X81_Y70_N8
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16_combout\ = \inRefConv|tRef[3]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inRefConv|tRef[3]~11_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16_combout\);

-- Location: LCCOMB_X74_Y68_N30
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~60_combout\ = (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~60_combout\);

-- Location: LCCOMB_X73_Y68_N6
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~59_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & \inRefConv|tRef[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datac => \inRefConv|tRef[3]~11_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~59_combout\);

-- Location: LCCOMB_X74_Y68_N12
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\ = (((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~60_combout\) # (\conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~59_combout\)))
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ = CARRY((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~60_combout\) # (\conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~60_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[262]~59_combout\,
	datad => VCC,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~1\);

-- Location: LCCOMB_X74_Y68_N14
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ & (((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57_combout\) # 
-- (\conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58_combout\)))) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ & (!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57_combout\ & 
-- (!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58_combout\)))
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ = CARRY((!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57_combout\ & (!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58_combout\ & 
-- !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~57_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[263]~58_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~1\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~3\);

-- Location: LCCOMB_X74_Y68_N16
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ & ((((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56_combout\) # 
-- (\conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55_combout\))))) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ & ((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56_combout\) # 
-- ((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55_combout\) # (GND))))
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\ = CARRY((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56_combout\) # ((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55_combout\) # 
-- (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~56_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[264]~55_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~3\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\);

-- Location: LCCOMB_X74_Y68_N18
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53_combout\ & (((!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\)))) # 
-- (!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53_combout\ & ((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54_combout\ & (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\)) # 
-- (!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54_combout\ & ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\) # (GND)))))
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ = CARRY(((!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53_combout\ & !\conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54_combout\)) # 
-- (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~53_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[265]~54_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~5\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~7\);

-- Location: LCCOMB_X74_Y68_N20
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ & (((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51_combout\) # 
-- (\conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52_combout\)))) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ & ((((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51_combout\) # 
-- (\conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52_combout\)))))
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~9\ = CARRY((!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ & ((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51_combout\) # 
-- (\conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~51_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[266]~52_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~7\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~9\);

-- Location: LCCOMB_X74_Y68_N22
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~10_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~9\ & (((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50_combout\) # 
-- (\conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49_combout\)))) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~9\ & (!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50_combout\ & 
-- (!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49_combout\)))
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~11\ = CARRY((!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50_combout\ & (!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49_combout\ & 
-- !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~50_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[267]~49_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~9\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~10_combout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~11\);

-- Location: LCCOMB_X74_Y68_N24
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[8]~13_cout\ = CARRY((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[268]~48_combout\) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[268]~48_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~11\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[8]~13_cout\);

-- Location: LCCOMB_X74_Y68_N26
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ = !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[8]~13_cout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\);

-- Location: LCCOMB_X75_Y68_N10
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~71_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- (\inRefConv|tRef[8]~1_combout\)) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datab => \inRefConv|tRef[8]~1_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~71_combout\);

-- Location: LCCOMB_X73_Y68_N24
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~61_combout\ = (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[7]~10_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~61_combout\);

-- Location: LCCOMB_X74_Y68_N2
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~72_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- ((\inRefConv|tRef[7]~3_combout\))) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\,
	datac => \inRefConv|tRef[7]~3_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~72_combout\);

-- Location: LCCOMB_X73_Y69_N16
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~62_combout\ = (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~62_combout\);

-- Location: LCCOMB_X73_Y68_N26
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~63_combout\ = (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~63_combout\);

-- Location: LCCOMB_X75_Y68_N4
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~73_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- ((\inRefConv|tRef[6]~5_combout\))) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\,
	datac => \inRefConv|tRef[6]~5_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~73_combout\);

-- Location: LCCOMB_X74_Y68_N4
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~74_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- ((\inRefConv|tRef[5]~7_combout\))) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \inRefConv|tRef[5]~7_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~74_combout\);

-- Location: LCCOMB_X73_Y68_N28
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~64_combout\ = (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~64_combout\);

-- Location: LCCOMB_X73_Y68_N30
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~65_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\ & !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~65_combout\);

-- Location: LCCOMB_X75_Y68_N30
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~75_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- (\inRefConv|tRef[4]~9_combout\)) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datab => \inRefConv|tRef[4]~9_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~75_combout\);

-- Location: LCCOMB_X74_Y68_N6
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~76_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & 
-- ((\inRefConv|tRef[3]~11_combout\))) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~16_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \inRefConv|tRef[3]~11_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~76_combout\);

-- Location: LCCOMB_X74_Y68_N0
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~66_combout\ = (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~66_combout\);

-- Location: IOIBUF_X81_Y73_N22
\tLua[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(2),
	o => \tLua[2]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\tNormal[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tNormal(2),
	o => \tNormal[2]~input_o\);

-- Location: LCCOMB_X81_Y70_N12
\inRefConv|tRef[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[2]~12_combout\ = (\estado[1]~input_o\ & ((\tLua[2]~input_o\) # ((\estado[0]~input_o\)))) # (!\estado[1]~input_o\ & (((\tNormal[2]~input_o\ & !\estado[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tLua[2]~input_o\,
	datab => \tNormal[2]~input_o\,
	datac => \estado[1]~input_o\,
	datad => \estado[0]~input_o\,
	combout => \inRefConv|tRef[2]~12_combout\);

-- Location: IOIBUF_X79_Y73_N1
\tGel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(2),
	o => \tGel[2]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\tSol[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(2),
	o => \tSol[2]~input_o\);

-- Location: LCCOMB_X81_Y70_N6
\inRefConv|tRef[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[2]~13_combout\ = (\inRefConv|tRef[2]~12_combout\ & (((\tSol[2]~input_o\) # (!\estado[0]~input_o\)))) # (!\inRefConv|tRef[2]~12_combout\ & (\tGel[2]~input_o\ & ((\estado[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[2]~12_combout\,
	datab => \tGel[2]~input_o\,
	datac => \tSol[2]~input_o\,
	datad => \estado[0]~input_o\,
	combout => \inRefConv|tRef[2]~13_combout\);

-- Location: LCCOMB_X70_Y68_N22
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~69_combout\ = (\inRefConv|tRef[2]~13_combout\ & !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[2]~13_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~69_combout\);

-- Location: LCCOMB_X70_Y68_N28
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~68_combout\ = (\inRefConv|tRef[2]~13_combout\ & \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[2]~13_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~68_combout\);

-- Location: LCCOMB_X70_Y68_N0
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~16_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~69_combout\) # (\conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~69_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[261]~68_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~16_combout\);

-- Location: LCCOMB_X70_Y68_N24
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~70_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~16_combout\ & !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~16_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~70_combout\);

-- Location: LCCOMB_X70_Y68_N2
\conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~67_combout\ = (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & \inRefConv|tRef[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datac => \inRefConv|tRef[2]~13_combout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~67_combout\);

-- Location: LCCOMB_X73_Y68_N8
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~1_cout\ = CARRY((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~70_combout\) # (\conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~70_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[271]~67_combout\,
	datad => VCC,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~1_cout\);

-- Location: LCCOMB_X73_Y68_N10
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~3_cout\ = CARRY((!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~76_combout\ & (!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~66_combout\ & 
-- !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~76_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[272]~66_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~1_cout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~3_cout\);

-- Location: LCCOMB_X73_Y68_N12
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~5_cout\ = CARRY((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~65_combout\) # ((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~75_combout\) # 
-- (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~65_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[273]~75_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~3_cout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~5_cout\);

-- Location: LCCOMB_X73_Y68_N14
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~7_cout\ = CARRY(((!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~74_combout\ & !\conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~64_combout\)) # 
-- (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~74_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[274]~64_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~5_cout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~7_cout\);

-- Location: LCCOMB_X73_Y68_N16
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~9_cout\ = CARRY((!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~7_cout\ & ((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~63_combout\) # 
-- (\conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~63_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[275]~73_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~7_cout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~9_cout\);

-- Location: LCCOMB_X73_Y68_N18
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[7]~11_cout\ = CARRY((!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~72_combout\ & (!\conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~62_combout\ & 
-- !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~72_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[276]~62_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[6]~9_cout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[7]~11_cout\);

-- Location: LCCOMB_X73_Y68_N20
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[8]~13_cout\ = CARRY((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~71_combout\) # ((\conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~61_combout\) # 
-- (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[7]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~71_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|StageOut[277]~61_combout\,
	datad => VCC,
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[7]~11_cout\,
	cout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[8]~13_cout\);

-- Location: LCCOMB_X73_Y68_N22
\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\ = !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[8]~13_cout\,
	combout => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\);

-- Location: LCCOMB_X66_Y72_N16
\conv7seg|outPort2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort2[0]~0_combout\ = ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\ $ 
-- (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)))) # (!\enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableConv|yout~0_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv7seg|outPort2[0]~0_combout\);

-- Location: LCCOMB_X66_Y72_N2
\conv7seg|outPort2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort2~1_combout\ = ((!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\ & (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\ $ 
-- (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\)))) # (!\enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableConv|yout~0_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv7seg|outPort2~1_combout\);

-- Location: LCCOMB_X66_Y72_N4
\conv7seg|outPort2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort2[2]~2_combout\ = ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\ & (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\))) # (!\enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableConv|yout~0_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv7seg|outPort2[2]~2_combout\);

-- Location: LCCOMB_X66_Y72_N22
\conv7seg|outPort2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort2[3]~3_combout\ = ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\ & (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\ & 
-- (\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ $ (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)))) # (!\enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableConv|yout~0_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv7seg|outPort2[3]~3_combout\);

-- Location: LCCOMB_X66_Y72_N0
\conv7seg|outPort2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort2[4]~4_combout\ = (((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)) # 
-- (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\)) # (!\enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableConv|yout~0_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv7seg|outPort2[4]~4_combout\);

-- Location: LCCOMB_X66_Y72_N18
\conv7seg|outPort2[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort2[5]~5_combout\ = ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\ & (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & 
-- \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\)) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\ & 
-- ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\) # (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\)))) # (!\enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableConv|yout~0_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv7seg|outPort2[5]~5_combout\);

-- Location: LCCOMB_X66_Y72_N12
\conv7seg|outPort2[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort2[6]~6_combout\ = ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & ((\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\))) # 
-- (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\ & (!\conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\ & 
-- !\conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\))) # (!\enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableConv|yout~0_combout\,
	datab => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_31_result_int[9]~14_combout\,
	datac => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_30_result_int[9]~14_combout\,
	datad => \conv3Dig|Div1|auto_generated|divider|divider|add_sub_29_result_int[9]~14_combout\,
	combout => \conv7seg|outPort2[6]~6_combout\);

-- Location: LCCOMB_X72_Y69_N12
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ = \inRefConv|tRef[6]~5_combout\ $ (VCC)
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ = CARRY(\inRefConv|tRef[6]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[6]~5_combout\,
	datad => VCC,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\);

-- Location: LCCOMB_X72_Y69_N14
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ = (\inRefConv|tRef[7]~3_combout\ & (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ & VCC)) # (!\inRefConv|tRef[7]~3_combout\ & 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ = CARRY((!\inRefConv|tRef[7]~3_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[7]~3_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\);

-- Location: LCCOMB_X72_Y69_N16
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ = (\inRefConv|tRef[8]~1_combout\ & (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ $ (GND))) # (!\inRefConv|tRef[8]~1_combout\ & 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ & VCC))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ = CARRY((\inRefConv|tRef[8]~1_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[8]~1_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\);

-- Location: LCCOMB_X72_Y69_N18
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\ = !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\ = CARRY(!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\);

-- Location: LCCOMB_X72_Y69_N20
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\ = CARRY(!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\);

-- Location: LCCOMB_X72_Y69_N22
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ = !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\);

-- Location: LCCOMB_X72_Y69_N24
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[160]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[160]~60_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[160]~60_combout\);

-- Location: LCCOMB_X72_Y65_N10
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62_combout\);

-- Location: LCCOMB_X72_Y65_N16
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & \inRefConv|tRef[8]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \inRefConv|tRef[8]~1_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61_combout\);

-- Location: LCCOMB_X72_Y65_N14
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64_combout\);

-- Location: LCCOMB_X72_Y65_N4
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & \inRefConv|tRef[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \inRefConv|tRef[7]~3_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63_combout\);

-- Location: LCCOMB_X72_Y65_N8
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & \inRefConv|tRef[6]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \inRefConv|tRef[6]~5_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65_combout\);

-- Location: LCCOMB_X72_Y69_N2
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66_combout\);

-- Location: LCCOMB_X75_Y61_N2
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~68_combout\ = (\inRefConv|tRef[5]~7_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inRefConv|tRef[5]~7_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~68_combout\);

-- Location: LCCOMB_X75_Y61_N0
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~67_combout\ = (\inRefConv|tRef[5]~7_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inRefConv|tRef[5]~7_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~67_combout\);

-- Location: LCCOMB_X72_Y65_N20
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ = (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~68_combout\) # (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~67_combout\)))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ = CARRY((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~68_combout\) # (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~68_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[156]~67_combout\,
	datad => VCC,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\);

-- Location: LCCOMB_X72_Y65_N22
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66_combout\)))) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65_combout\ & 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66_combout\)))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65_combout\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66_combout\ & 
-- !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~65_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[157]~66_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\);

-- Location: LCCOMB_X72_Y65_N24
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63_combout\)))) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & ((((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63_combout\)))))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~64_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[158]~63_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\);

-- Location: LCCOMB_X72_Y65_N26
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ & (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61_combout\)))) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62_combout\ & 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61_combout\)))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62_combout\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61_combout\ & 
-- !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~62_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[159]~61_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\);

-- Location: LCCOMB_X72_Y65_N28
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\ = CARRY((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[160]~60_combout\) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[160]~60_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\);

-- Location: LCCOMB_X72_Y65_N30
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ = !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\);

-- Location: LCCOMB_X72_Y65_N18
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~69_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~69_combout\);

-- Location: LCCOMB_X72_Y65_N0
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~103_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & 
-- (\inRefConv|tRef[8]~1_combout\)) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[8]~1_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~103_combout\);

-- Location: LCCOMB_X72_Y65_N2
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & 
-- (\inRefConv|tRef[7]~3_combout\)) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[7]~3_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\);

-- Location: LCCOMB_X72_Y65_N12
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70_combout\);

-- Location: LCCOMB_X70_Y69_N24
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71_combout\);

-- Location: LCCOMB_X72_Y69_N28
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & 
-- (\inRefConv|tRef[6]~5_combout\)) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datac => \inRefConv|tRef[6]~5_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\);

-- Location: LCCOMB_X70_Y69_N26
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \inRefConv|tRef[5]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \inRefConv|tRef[5]~7_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72_combout\);

-- Location: LCCOMB_X70_Y69_N16
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73_combout\);

-- Location: LCCOMB_X70_Y69_N20
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~75_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \inRefConv|tRef[4]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \inRefConv|tRef[4]~9_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~75_combout\);

-- Location: LCCOMB_X70_Y69_N18
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~74_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \inRefConv|tRef[4]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \inRefConv|tRef[4]~9_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~74_combout\);

-- Location: LCCOMB_X70_Y69_N4
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ = (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~75_combout\) # (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~74_combout\)))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ = CARRY((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~75_combout\) # (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~75_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[162]~74_combout\,
	datad => VCC,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\);

-- Location: LCCOMB_X70_Y69_N6
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73_combout\)))) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72_combout\ & 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73_combout\)))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72_combout\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73_combout\ & 
-- !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~72_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[163]~73_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\);

-- Location: LCCOMB_X70_Y69_N8
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\)))) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\)))))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~71_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\);

-- Location: LCCOMB_X70_Y69_N10
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ & (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70_combout\)))) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\ & 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70_combout\)))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70_combout\ & 
-- !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~70_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\);

-- Location: LCCOMB_X70_Y69_N12
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\ = CARRY((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~69_combout\) # ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~103_combout\) # 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~69_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[166]~103_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\);

-- Location: LCCOMB_X70_Y69_N14
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ = !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\);

-- Location: LCCOMB_X70_Y64_N6
\conv3Dig|Mod1|auto_generated|divider|divider|op_23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~0_combout\ = \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ $ (GND)
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~1\ = CARRY(!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => VCC,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~0_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~1\);

-- Location: LCCOMB_X70_Y64_N8
\conv3Dig|Mod1|auto_generated|divider|divider|op_23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~2_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~1\)) # 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~1\ & VCC))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~3\ = CARRY((\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~1\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~2_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~3\);

-- Location: LCCOMB_X70_Y64_N10
\conv3Dig|Mod1|auto_generated|divider|divider|op_23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~4_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~3\ & VCC)) # 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~3\ $ (GND)))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~5\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~3\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~4_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~5\);

-- Location: LCCOMB_X70_Y64_N12
\conv3Dig|Mod1|auto_generated|divider|divider|op_23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~6_combout\ = !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~5\
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~7\ = CARRY(!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~5\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~6_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~7\);

-- Location: LCCOMB_X70_Y64_N14
\conv3Dig|Mod1|auto_generated|divider|divider|op_23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~8_combout\ = \conv3Dig|Mod1|auto_generated|divider|divider|op_23~7\ $ (GND)
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~9\ = CARRY(!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~7\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~8_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~9\);

-- Location: LCCOMB_X70_Y64_N16
\conv3Dig|Mod1|auto_generated|divider|divider|op_23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~10_combout\ = !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~9\
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~11\ = CARRY(!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~9\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~10_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~11\);

-- Location: LCCOMB_X70_Y64_N18
\conv3Dig|Mod1|auto_generated|divider|divider|op_23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~12_combout\ = \conv3Dig|Mod1|auto_generated|divider|divider|op_23~11\ $ (GND)
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~13\ = CARRY(!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~11\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~12_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~13\);

-- Location: LCCOMB_X70_Y64_N20
\conv3Dig|Mod1|auto_generated|divider|divider|op_23~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~14_combout\ = !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~13\
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~15\ = CARRY(!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~13\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~14_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~15\);

-- Location: LCCOMB_X70_Y64_N22
\conv3Dig|Mod1|auto_generated|divider|divider|op_23~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~16_combout\ = \conv3Dig|Mod1|auto_generated|divider|divider|op_23~15\ $ (GND)
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~17\ = CARRY(!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~15\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~16_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~17\);

-- Location: LCCOMB_X70_Y64_N24
\conv3Dig|Mod1|auto_generated|divider|divider|op_23~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~18_combout\ = !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~17\
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~19\ = CARRY(!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~17\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~18_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~19\);

-- Location: LCCOMB_X70_Y64_N26
\conv3Dig|Mod1|auto_generated|divider|divider|op_23~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~20_combout\ = \conv3Dig|Mod1|auto_generated|divider|divider|op_23~19\ $ (GND)
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~21\ = CARRY(!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~19\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~20_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~21\);

-- Location: LCCOMB_X70_Y64_N28
\conv3Dig|Mod1|auto_generated|divider|divider|op_23~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\ = !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~21\
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~23\ = CARRY(!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~21\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~23\);

-- Location: LCCOMB_X70_Y64_N30
\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ = \conv3Dig|Mod1|auto_generated|divider|divider|op_23~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~23\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\);

-- Location: LCCOMB_X69_Y64_N8
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~20_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~20_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48_combout\);

-- Location: LCCOMB_X67_Y64_N16
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_23~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~18_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49_combout\);

-- Location: LCCOMB_X69_Y64_N18
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~16_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50_combout\);

-- Location: LCCOMB_X67_Y64_N26
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~14_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~14_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51_combout\);

-- Location: LCCOMB_X67_Y64_N4
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~12_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~12_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52_combout\);

-- Location: LCCOMB_X69_Y64_N12
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_23~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~10_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53_combout\);

-- Location: LCCOMB_X69_Y64_N14
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~8_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~8_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54_combout\);

-- Location: LCCOMB_X69_Y64_N24
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_23~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~6_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55_combout\);

-- Location: LCCOMB_X69_Y64_N20
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_23~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~4_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57_combout\);

-- Location: LCCOMB_X69_Y64_N26
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56_combout\);

-- Location: LCCOMB_X69_Y64_N6
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_23~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~2_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59_combout\);

-- Location: LCCOMB_X68_Y64_N30
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58_combout\);

-- Location: LCCOMB_X69_Y64_N2
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~0_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61_combout\);

-- Location: LCCOMB_X69_Y64_N16
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60_combout\);

-- Location: LCCOMB_X69_Y69_N10
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~76_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~76_combout\);

-- Location: LCCOMB_X72_Y65_N6
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~97_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\) # 
-- ((\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[165]~104_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~97_combout\);

-- Location: LCCOMB_X70_Y69_N2
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\) # 
-- ((!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[164]~105_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\);

-- Location: LCCOMB_X70_Y69_N30
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77_combout\);

-- Location: LCCOMB_X69_Y69_N28
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78_combout\);

-- Location: LCCOMB_X70_Y69_N22
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & 
-- ((\inRefConv|tRef[5]~7_combout\))) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \inRefConv|tRef[5]~7_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\);

-- Location: LCCOMB_X69_Y69_N6
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \inRefConv|tRef[4]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \inRefConv|tRef[4]~9_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79_combout\);

-- Location: LCCOMB_X69_Y69_N8
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80_combout\);

-- Location: LCCOMB_X69_Y69_N0
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~82_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \inRefConv|tRef[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datac => \inRefConv|tRef[3]~11_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~82_combout\);

-- Location: LCCOMB_X69_Y69_N2
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~81_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \inRefConv|tRef[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datac => \inRefConv|tRef[3]~11_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~81_combout\);

-- Location: LCCOMB_X69_Y69_N12
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ = (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~82_combout\) # (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~81_combout\)))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ = CARRY((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~82_combout\) # (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~82_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[168]~81_combout\,
	datad => VCC,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\);

-- Location: LCCOMB_X69_Y69_N14
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80_combout\)))) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79_combout\ & 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80_combout\)))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79_combout\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80_combout\ & 
-- !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~79_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[169]~80_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\);

-- Location: LCCOMB_X69_Y69_N16
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\)))) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\)))))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~78_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

-- Location: LCCOMB_X69_Y69_N18
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ & (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77_combout\)))) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\ & 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77_combout\)))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77_combout\ & 
-- !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~77_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\);

-- Location: LCCOMB_X69_Y69_N20
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ = CARRY((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~76_combout\) # ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~97_combout\) # 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~76_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[172]~97_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\);

-- Location: LCCOMB_X69_Y69_N22
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ = !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\);

-- Location: LCCOMB_X69_Y65_N2
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~62_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~62_combout\);

-- Location: LCCOMB_X69_Y65_N24
\conv3Dig|Mod1|auto_generated|divider|divider|op_23~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~26_combout\ = !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~26_combout\);

-- Location: LCCOMB_X69_Y65_N28
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~63_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~26_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~26_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~63_combout\);

-- Location: LCCOMB_X68_Y64_N0
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~0_combout\ = (((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~62_combout\) # (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~63_combout\)))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~1\ = CARRY((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~62_combout\) # (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~62_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[990]~63_combout\,
	datad => VCC,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~0_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~1\);

-- Location: LCCOMB_X68_Y64_N2
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~2_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~1\ & (((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61_combout\) # 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60_combout\)))) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~1\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61_combout\ & 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60_combout\)))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~3\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60_combout\ & 
-- !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~61_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[991]~60_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~1\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~2_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~3\);

-- Location: LCCOMB_X68_Y64_N4
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~4_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~3\ & (((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59_combout\) # 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58_combout\)))) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~3\ & ((((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59_combout\) # 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58_combout\)))))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~5\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~3\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59_combout\) # 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~59_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[992]~58_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~3\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~4_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~5\);

-- Location: LCCOMB_X68_Y64_N6
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~6_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~5\ & (((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57_combout\) # 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56_combout\)))) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~5\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57_combout\ & 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56_combout\)))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~7\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56_combout\ & 
-- !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~57_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[993]~56_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~5\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~6_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~7\);

-- Location: LCCOMB_X68_Y64_N8
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~8_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55_combout\ & ((GND) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~7\))) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~7\ $ (GND)))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~9\ = CARRY((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55_combout\) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[994]~55_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~7\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~8_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~9\);

-- Location: LCCOMB_X68_Y64_N10
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~10_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~9\ & VCC)) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~9\))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~11\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[995]~54_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~9\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~10_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~11\);

-- Location: LCCOMB_X68_Y64_N12
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~12_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53_combout\ & ((GND) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~11\))) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~11\ $ (GND)))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~13\ = CARRY((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53_combout\) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[996]~53_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~11\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~12_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~13\);

-- Location: LCCOMB_X68_Y64_N14
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~14_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~13\ & VCC)) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~13\))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~15\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[997]~52_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~13\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~14_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~15\);

-- Location: LCCOMB_X68_Y64_N16
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~16_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51_combout\ & ((GND) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~15\))) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~15\ $ (GND)))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~17\ = CARRY((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51_combout\) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[998]~51_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~15\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~17\);

-- Location: LCCOMB_X68_Y64_N18
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~18_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~17\ & VCC)) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~17\))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~19\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[999]~50_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~17\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~18_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~19\);

-- Location: LCCOMB_X68_Y64_N20
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~20_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49_combout\ & ((GND) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~19\))) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~19\ $ (GND)))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~21\ = CARRY((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49_combout\) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1000]~49_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~19\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~20_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~21\);

-- Location: LCCOMB_X68_Y64_N22
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~22_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~21\ & VCC)) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~21\))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~23\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1001]~48_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~21\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~22_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~23\);

-- Location: LCCOMB_X68_Y64_N24
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~24_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~23\ & ((((\conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\ & 
-- !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\))))) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~23\ & (((\conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\ & 
-- !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\)) # (GND)))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~25\ = CARRY(((\conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\)) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~23\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~24_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~25\);

-- Location: LCCOMB_X68_Y64_N26
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~26_combout\ = !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~25\
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~27\ = CARRY(!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~25\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~26_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~27\);

-- Location: LCCOMB_X68_Y64_N28
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ = \conv3Dig|Mod1|auto_generated|divider|divider|op_24~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~27\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\);

-- Location: LCCOMB_X70_Y64_N0
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~64_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~22_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~64_combout\);

-- Location: LCCOMB_X67_Y64_N6
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~65_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_24~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~24_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~65_combout\);

-- Location: LCCOMB_X69_Y64_N22
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~84_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~20_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & 
-- !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~20_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~84_combout\);

-- Location: LCCOMB_X67_Y64_N0
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~66_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_24~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~22_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~66_combout\);

-- Location: LCCOMB_X67_Y63_N0
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~67_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~20_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~20_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~67_combout\);

-- Location: LCCOMB_X67_Y64_N8
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~85_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~18_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~18_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~85_combout\);

-- Location: LCCOMB_X70_Y64_N2
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~86_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~16_combout\ & 
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~16_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~86_combout\);

-- Location: LCCOMB_X67_Y64_N10
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~68_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~18_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~18_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~68_combout\);

-- Location: LCCOMB_X67_Y64_N28
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~69_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~16_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~16_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~69_combout\);

-- Location: LCCOMB_X67_Y64_N18
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~87_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~14_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & 
-- !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~14_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~87_combout\);

-- Location: LCCOMB_X67_Y64_N12
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~88_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~12_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & 
-- !\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~12_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~88_combout\);

-- Location: LCCOMB_X69_Y64_N28
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~70_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~14_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~14_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~70_combout\);

-- Location: LCCOMB_X67_Y64_N22
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~71_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_24~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~12_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~71_combout\);

-- Location: LCCOMB_X69_Y64_N0
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~89_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~10_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~89_combout\);

-- Location: LCCOMB_X69_Y64_N10
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~90_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~8_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~8_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~90_combout\);

-- Location: LCCOMB_X67_Y64_N24
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~72_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_24~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~10_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~72_combout\);

-- Location: LCCOMB_X67_Y64_N2
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~73_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_24~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~8_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~73_combout\);

-- Location: LCCOMB_X67_Y64_N14
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~91_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & 
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_23~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~6_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~91_combout\);

-- Location: LCCOMB_X67_Y64_N20
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~74_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_24~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~6_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~74_combout\);

-- Location: LCCOMB_X69_Y64_N4
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~92_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- ((!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\))) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~4_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~92_combout\);

-- Location: LCCOMB_X70_Y64_N4
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~93_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|op_23~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~2_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~93_combout\);

-- Location: LCCOMB_X67_Y64_N30
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~75_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~4_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~4_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~75_combout\);

-- Location: LCCOMB_X66_Y65_N26
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~2_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~2_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\);

-- Location: LCCOMB_X69_Y64_N30
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- ((!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\))) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|op_23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~0_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\);

-- Location: LCCOMB_X66_Y65_N12
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|op_24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~0_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\);

-- Location: LCCOMB_X69_Y65_N30
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|op_23~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~26_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\);

-- Location: LCCOMB_X70_Y69_N0
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~83_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~83_combout\);

-- Location: LCCOMB_X70_Y69_N28
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~99_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\) # 
-- ((\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[171]~98_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~99_combout\);

-- Location: LCCOMB_X69_Y69_N4
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\) # 
-- ((!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[170]~106_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\);

-- Location: LCCOMB_X69_Y69_N26
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84_combout\);

-- Location: LCCOMB_X69_Y68_N0
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85_combout\);

-- Location: LCCOMB_X69_Y69_N30
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & 
-- (\inRefConv|tRef[4]~9_combout\)) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \inRefConv|tRef[4]~9_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\);

-- Location: LCCOMB_X70_Y68_N30
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \inRefConv|tRef[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \inRefConv|tRef[3]~11_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86_combout\);

-- Location: LCCOMB_X69_Y68_N2
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87_combout\);

-- Location: LCCOMB_X70_Y68_N26
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~89_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \inRefConv|tRef[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \inRefConv|tRef[2]~13_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~89_combout\);

-- Location: LCCOMB_X70_Y68_N8
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~88_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \inRefConv|tRef[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datac => \inRefConv|tRef[2]~13_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~88_combout\);

-- Location: LCCOMB_X70_Y68_N10
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~89_combout\) # (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~88_combout\)))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~89_combout\) # (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~89_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[174]~88_combout\,
	datad => VCC,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X70_Y68_N12
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87_combout\)))) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86_combout\ & 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87_combout\)))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86_combout\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87_combout\ & 
-- !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~86_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[175]~87_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X70_Y68_N14
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\)))) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\)))))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~85_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X70_Y68_N16
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84_combout\)))) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\ & 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84_combout\)))
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84_combout\ & 
-- !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~84_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\);

-- Location: LCCOMB_X70_Y68_N18
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ = CARRY((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~83_combout\) # ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~99_combout\) # 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~83_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[178]~99_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\);

-- Location: LCCOMB_X70_Y68_N20
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ = !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\);

-- Location: LCCOMB_X67_Y65_N24
\conv3Dig|Mod1|auto_generated|divider|divider|op_24~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_24~30_combout\ = !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~30_combout\);

-- Location: LCCOMB_X67_Y65_N4
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~30_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~30_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\);

-- Location: LCCOMB_X67_Y65_N2
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\);

-- Location: LCCOMB_X66_Y64_N0
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~2_combout\ = (((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\) # (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\)))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~3\ = CARRY((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\) # (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\,
	datad => VCC,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~2_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~3\);

-- Location: LCCOMB_X66_Y64_N2
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~4_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_25~3\ & (((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\) # 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\)))) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~3\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\ & 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\)))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~5\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\ & 
-- !\conv3Dig|Mod1|auto_generated|divider|divider|op_25~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~3\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~4_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~5\);

-- Location: LCCOMB_X66_Y64_N4
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~6_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_25~5\ & (((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\) # 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\)))) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~5\ & ((((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\) # 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\)))))
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~7\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~5\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\) # 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~5\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~6_combout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~7\);

-- Location: LCCOMB_X66_Y64_N6
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~9_cout\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~93_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~75_combout\ & 
-- !\conv3Dig|Mod1|auto_generated|divider|divider|op_25~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~93_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1026]~75_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~7\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~9_cout\);

-- Location: LCCOMB_X66_Y64_N8
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~11_cout\ = CARRY((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~74_combout\) # ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~92_combout\) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~74_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1027]~92_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~9_cout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~11_cout\);

-- Location: LCCOMB_X66_Y64_N10
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~13_cout\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~73_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~91_combout\ & 
-- !\conv3Dig|Mod1|auto_generated|divider|divider|op_25~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~73_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1028]~91_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~11_cout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~13_cout\);

-- Location: LCCOMB_X66_Y64_N12
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~15_cout\ = CARRY((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~90_combout\) # ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~72_combout\) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~90_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1029]~72_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~13_cout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~15_cout\);

-- Location: LCCOMB_X66_Y64_N14
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~17_cout\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~71_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~89_combout\ & 
-- !\conv3Dig|Mod1|auto_generated|divider|divider|op_25~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~71_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1030]~89_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~15_cout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~17_cout\);

-- Location: LCCOMB_X66_Y64_N16
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~19_cout\ = CARRY((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~88_combout\) # ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~70_combout\) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~88_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1031]~70_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~17_cout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~19_cout\);

-- Location: LCCOMB_X66_Y64_N18
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~21_cout\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~69_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~87_combout\ & 
-- !\conv3Dig|Mod1|auto_generated|divider|divider|op_25~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~69_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1032]~87_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~19_cout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~21_cout\);

-- Location: LCCOMB_X66_Y64_N20
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~23_cout\ = CARRY((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~86_combout\) # ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~68_combout\) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~86_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1033]~68_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~21_cout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~23_cout\);

-- Location: LCCOMB_X66_Y64_N22
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~25_cout\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~67_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~85_combout\ & 
-- !\conv3Dig|Mod1|auto_generated|divider|divider|op_25~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~67_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1034]~85_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~23_cout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~25_cout\);

-- Location: LCCOMB_X66_Y64_N24
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~27_cout\ = CARRY((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~84_combout\) # ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~66_combout\) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~84_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1035]~66_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~25_cout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~27_cout\);

-- Location: LCCOMB_X66_Y64_N26
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~29_cout\ = CARRY((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~64_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~65_combout\ & 
-- !\conv3Dig|Mod1|auto_generated|divider|divider|op_25~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~64_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1036]~65_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~27_cout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~29_cout\);

-- Location: LCCOMB_X66_Y64_N28
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~31_cout\ = CARRY(((\conv3Dig|Mod1|auto_generated|divider|divider|op_24~26_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\)) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~29_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~26_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_24~28_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~29_cout\,
	cout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~31_cout\);

-- Location: LCCOMB_X66_Y64_N30
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ = !\conv3Dig|Mod1|auto_generated|divider|divider|op_25~31_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~31_cout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\);

-- Location: LCCOMB_X70_Y68_N4
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~90_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~90_combout\);

-- Location: LCCOMB_X69_Y68_N26
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~101_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\) # 
-- ((!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[177]~100_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~101_combout\);

-- Location: LCCOMB_X69_Y68_N4
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~91_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~91_combout\);

-- Location: LCCOMB_X69_Y68_N28
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~102_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\) # 
-- ((\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[176]~107_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~102_combout\);

-- Location: LCCOMB_X69_Y68_N30
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~108_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- ((\inRefConv|tRef[3]~11_combout\))) # (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datac => \inRefConv|tRef[3]~11_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~108_combout\);

-- Location: LCCOMB_X69_Y68_N22
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~92_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~92_combout\);

-- Location: LCCOMB_X70_Y68_N6
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~94_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ & !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~94_combout\);

-- Location: LCCOMB_X69_Y68_N8
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~93_combout\ = (\inRefConv|tRef[2]~13_combout\ & \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inRefConv|tRef[2]~13_combout\,
	datad => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~93_combout\);

-- Location: IOIBUF_X83_Y73_N22
\tLua[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(1),
	o => \tLua[1]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\tNormal[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tNormal(1),
	o => \tNormal[1]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\tGel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(1),
	o => \tGel[1]~input_o\);

-- Location: LCCOMB_X81_Y70_N16
\inRefConv|tRef[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[1]~14_combout\ = (\estado[1]~input_o\ & (((\estado[0]~input_o\)))) # (!\estado[1]~input_o\ & ((\estado[0]~input_o\ & ((\tGel[1]~input_o\))) # (!\estado[0]~input_o\ & (\tNormal[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tNormal[1]~input_o\,
	datab => \tGel[1]~input_o\,
	datac => \estado[1]~input_o\,
	datad => \estado[0]~input_o\,
	combout => \inRefConv|tRef[1]~14_combout\);

-- Location: IOIBUF_X85_Y73_N1
\tSol[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(1),
	o => \tSol[1]~input_o\);

-- Location: LCCOMB_X81_Y70_N26
\inRefConv|tRef[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[1]~15_combout\ = (\inRefConv|tRef[1]~14_combout\ & (((\tSol[1]~input_o\) # (!\estado[1]~input_o\)))) # (!\inRefConv|tRef[1]~14_combout\ & (\tLua[1]~input_o\ & (\estado[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tLua[1]~input_o\,
	datab => \inRefConv|tRef[1]~14_combout\,
	datac => \estado[1]~input_o\,
	datad => \tSol[1]~input_o\,
	combout => \inRefConv|tRef[1]~15_combout\);

-- Location: LCCOMB_X69_Y68_N6
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~95_combout\ = (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \inRefConv|tRef[1]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datac => \inRefConv|tRef[1]~15_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~95_combout\);

-- Location: LCCOMB_X69_Y68_N24
\conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~96_combout\ = (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ & \inRefConv|tRef[1]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datac => \inRefConv|tRef[1]~15_combout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~96_combout\);

-- Location: LCCOMB_X69_Y68_N10
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ = CARRY((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~95_combout\) # (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~95_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[180]~96_combout\,
	datad => VCC,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\);

-- Location: LCCOMB_X69_Y68_N12
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~94_combout\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~93_combout\ & 
-- !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~94_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[181]~93_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X69_Y68_N14
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ & ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~108_combout\) # 
-- (\conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~108_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[182]~92_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\);

-- Location: LCCOMB_X69_Y68_N16
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY((!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~91_combout\ & (!\conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~102_combout\ & 
-- !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~91_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[183]~102_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X69_Y68_N18
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ = CARRY((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~90_combout\) # ((\conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~101_combout\) # 
-- (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~90_combout\,
	datab => \conv3Dig|Div0|auto_generated|divider|divider|StageOut[184]~101_combout\,
	datad => VCC,
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\,
	cout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\);

-- Location: LCCOMB_X69_Y68_N20
\conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ = !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\,
	combout => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\);

-- Location: LCCOMB_X66_Y65_N16
\conv3Dig|Mod1|auto_generated|divider|divider|op_25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|op_25~0_combout\ = !\conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~0_combout\);

-- Location: LCCOMB_X66_Y65_N22
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & (!\conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\)) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|op_25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\,
	datac => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~0_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\);

-- Location: LCCOMB_X66_Y65_N10
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\) # 
-- ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\)))) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & (((\conv3Dig|Mod1|auto_generated|divider|divider|op_25~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~76_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~6_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1025]~94_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\);

-- Location: LCCOMB_X66_Y65_N28
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\) # 
-- ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\)))) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & (((\conv3Dig|Mod1|auto_generated|divider|divider|op_25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~79_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1023]~78_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~2_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\);

-- Location: LCCOMB_X66_Y65_N24
\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\) # 
-- ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\)))) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & (((\conv3Dig|Mod1|auto_generated|divider|divider|op_25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~77_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~4_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1024]~95_combout\,
	combout => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\);

-- Location: LCCOMB_X62_Y69_N18
\conv7seg|outPort1[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[0]~8_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ & 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ $ (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv7seg|outPort1[0]~8_combout\);

-- Location: LCCOMB_X62_Y69_N2
\conv7seg|outPort1[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[0]~22_combout\ = (\conv7seg|outPort1[0]~8_combout\) # ((\modo~input_o\ & !\pulso~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv7seg|outPort1[0]~8_combout\,
	datac => \modo~input_o\,
	datad => \pulso~input_o\,
	combout => \conv7seg|outPort1[0]~22_combout\);

-- Location: LCCOMB_X62_Y69_N20
\conv7seg|outPort1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1~9_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\ & 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ $ (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv7seg|outPort1~9_combout\);

-- Location: LCCOMB_X62_Y69_N12
\conv7seg|outPort1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1~23_combout\ = (\conv7seg|outPort1~9_combout\) # ((\modo~input_o\ & !\pulso~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv7seg|outPort1~9_combout\,
	datac => \modo~input_o\,
	datad => \pulso~input_o\,
	combout => \conv7seg|outPort1~23_combout\);

-- Location: LCCOMB_X62_Y69_N30
\conv7seg|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|Equal16~0_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ & 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv7seg|Equal16~0_combout\);

-- Location: LCCOMB_X62_Y69_N22
\conv7seg|outPort1[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[2]~24_combout\ = (\conv7seg|Equal16~0_combout\) # ((\modo~input_o\ & !\pulso~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv7seg|Equal16~0_combout\,
	datac => \modo~input_o\,
	datad => \pulso~input_o\,
	combout => \conv7seg|outPort1[2]~24_combout\);

-- Location: LCCOMB_X66_Y65_N6
\conv7seg|outPort1[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[4]~11_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & 
-- (\conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\)) # (!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\ & ((!\conv3Dig|Mod1|auto_generated|divider|divider|op_25~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~0_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|op_25~32_combout\,
	combout => \conv7seg|outPort1[4]~11_combout\);

-- Location: LCCOMB_X62_Y69_N10
\conv7seg|outPort1[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[3]~12_combout\ = (\enableConv|yout~0_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\) # (\conv7seg|outPort1[4]~11_combout\ $ 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv7seg|outPort1[4]~11_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datac => \enableConv|yout~0_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv7seg|outPort1[3]~12_combout\);

-- Location: LCCOMB_X62_Y69_N16
\conv7seg|outPort1[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[5]~10_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ & 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ & \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv7seg|outPort1[5]~10_combout\);

-- Location: LCCOMB_X62_Y69_N24
\conv7seg|outPort1[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[3]~25_combout\ = ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\) # ((!\pulso~input_o\ & \modo~input_o\))) # (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso~input_o\,
	datab => \modo~input_o\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv7seg|outPort1[3]~25_combout\);

-- Location: LCCOMB_X62_Y69_N28
\conv7seg|outPort1[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[3]~13_combout\ = (\conv7seg|outPort1[5]~10_combout\) # ((!\conv7seg|outPort1[3]~12_combout\ & \conv7seg|outPort1[3]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv7seg|outPort1[3]~12_combout\,
	datab => \conv7seg|outPort1[5]~10_combout\,
	datad => \conv7seg|outPort1[3]~25_combout\,
	combout => \conv7seg|outPort1[3]~13_combout\);

-- Location: LCCOMB_X66_Y65_N0
\conv7seg|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|Equal9~0_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ & !\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv7seg|Equal9~0_combout\);

-- Location: LCCOMB_X66_Y65_N2
\conv7seg|outPort1[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[4]~14_combout\ = (\enableConv|yout~0_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ $ (((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ & \conv7seg|Equal9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datab => \enableConv|yout~0_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datad => \conv7seg|Equal9~0_combout\,
	combout => \conv7seg|outPort1[4]~14_combout\);

-- Location: LCCOMB_X66_Y65_N14
\conv7seg|outPort1[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[6]~16_combout\ = (\enableConv|yout~0_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ & ((!\conv7seg|Equal9~0_combout\))) # (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ 
-- & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ & \conv7seg|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datab => \enableConv|yout~0_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datad => \conv7seg|Equal9~0_combout\,
	combout => \conv7seg|outPort1[6]~16_combout\);

-- Location: LCCOMB_X66_Y65_N20
\conv7seg|outPort1[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[4]~15_combout\ = (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ & (((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\)))) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ & (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\)) # 
-- (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv7seg|outPort1[4]~15_combout\);

-- Location: LCCOMB_X66_Y65_N8
\conv7seg|outPort1[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[4]~17_combout\ = (!\conv7seg|outPort1[6]~16_combout\ & (((\conv7seg|outPort1[4]~14_combout\) # (\conv7seg|outPort1[4]~15_combout\)) # (!\enableConv|yout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableConv|yout~0_combout\,
	datab => \conv7seg|outPort1[4]~14_combout\,
	datac => \conv7seg|outPort1[6]~16_combout\,
	datad => \conv7seg|outPort1[4]~15_combout\,
	combout => \conv7seg|outPort1[4]~17_combout\);

-- Location: LCCOMB_X62_Y69_N14
\conv7seg|outPort1[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[5]~18_combout\ = ((!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\ & ((\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\) # 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\)))) # (!\enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datab => \enableConv|yout~0_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv7seg|outPort1[5]~18_combout\);

-- Location: LCCOMB_X62_Y69_N0
\conv7seg|outPort1[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[5]~19_combout\ = (\conv7seg|outPort1[3]~12_combout\ & (\conv7seg|outPort1[5]~10_combout\)) # (!\conv7seg|outPort1[3]~12_combout\ & ((\conv7seg|outPort1[5]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv7seg|outPort1[5]~10_combout\,
	datac => \conv7seg|outPort1[5]~18_combout\,
	datad => \conv7seg|outPort1[3]~12_combout\,
	combout => \conv7seg|outPort1[5]~19_combout\);

-- Location: LCCOMB_X66_Y65_N18
\conv7seg|outPort1[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[6]~20_combout\ = (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\ & (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\ & 
-- (\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\ $ (!\conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1057]~83_combout\,
	datab => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1059]~82_combout\,
	datac => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1056]~80_combout\,
	datad => \conv3Dig|Mod1|auto_generated|divider|divider|StageOut[1058]~81_combout\,
	combout => \conv7seg|outPort1[6]~20_combout\);

-- Location: LCCOMB_X66_Y65_N4
\conv7seg|outPort1[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort1[6]~21_combout\ = (\conv7seg|outPort1[6]~16_combout\) # ((!\conv7seg|outPort1[4]~14_combout\ & ((\conv7seg|outPort1[6]~20_combout\) # (!\enableConv|yout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableConv|yout~0_combout\,
	datab => \conv7seg|outPort1[6]~20_combout\,
	datac => \conv7seg|outPort1[6]~16_combout\,
	datad => \conv7seg|outPort1[4]~14_combout\,
	combout => \conv7seg|outPort1[6]~21_combout\);

-- Location: LCCOMB_X75_Y54_N12
\conv3Dig|Mod0|auto_generated|divider|divider|op_19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~0_combout\ = \inRefConv|tRef[6]~5_combout\ $ (VCC)
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~1\ = CARRY(\inRefConv|tRef[6]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inRefConv|tRef[6]~5_combout\,
	datad => VCC,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~0_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~1\);

-- Location: LCCOMB_X75_Y54_N14
\conv3Dig|Mod0|auto_generated|divider|divider|op_19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~2_combout\ = (\inRefConv|tRef[7]~3_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~1\ & VCC)) # (!\inRefConv|tRef[7]~3_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~1\))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~3\ = CARRY((!\inRefConv|tRef[7]~3_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inRefConv|tRef[7]~3_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~1\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~2_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~3\);

-- Location: LCCOMB_X75_Y54_N16
\conv3Dig|Mod0|auto_generated|divider|divider|op_19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~4_combout\ = (\inRefConv|tRef[8]~1_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~3\ $ (GND))) # (!\inRefConv|tRef[8]~1_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~3\ & VCC))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~5\ = CARRY((\inRefConv|tRef[8]~1_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inRefConv|tRef[8]~1_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~3\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~4_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~5\);

-- Location: LCCOMB_X75_Y54_N18
\conv3Dig|Mod0|auto_generated|divider|divider|op_19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~6_combout\ = !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~5\
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~7\ = CARRY(!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~5\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~6_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~7\);

-- Location: LCCOMB_X75_Y54_N20
\conv3Dig|Mod0|auto_generated|divider|divider|op_19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~8_combout\ = \conv3Dig|Mod0|auto_generated|divider|divider|op_19~7\ $ (GND)
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~9\ = CARRY(!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~7\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~8_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~9\);

-- Location: LCCOMB_X75_Y54_N22
\conv3Dig|Mod0|auto_generated|divider|divider|op_19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~10_combout\ = !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~9\
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~11\ = CARRY(!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~9\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~10_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~11\);

-- Location: LCCOMB_X75_Y54_N24
\conv3Dig|Mod0|auto_generated|divider|divider|op_19~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~12_combout\ = \conv3Dig|Mod0|auto_generated|divider|divider|op_19~11\ $ (GND)
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~13\ = CARRY(!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~11\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~12_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~13\);

-- Location: LCCOMB_X75_Y54_N26
\conv3Dig|Mod0|auto_generated|divider|divider|op_19~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\ = !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~13\
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~15\ = CARRY(!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~13\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~15\);

-- Location: LCCOMB_X75_Y54_N28
\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ = \conv3Dig|Mod0|auto_generated|divider|divider|op_19~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~15\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\);

-- Location: LCCOMB_X76_Y51_N16
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~12_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~12_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116_combout\);

-- Location: LCCOMB_X76_Y51_N2
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~10_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~10_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117_combout\);

-- Location: LCCOMB_X76_Y51_N4
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~8_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~8_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118_combout\);

-- Location: LCCOMB_X79_Y50_N0
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~6_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~6_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119_combout\);

-- Location: LCCOMB_X75_Y54_N0
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~4_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~4_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121_combout\);

-- Location: LCCOMB_X76_Y54_N0
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120_combout\ = (\inRefConv|tRef[8]~1_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[8]~1_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120_combout\);

-- Location: LCCOMB_X75_Y54_N10
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122_combout\ = (\inRefConv|tRef[7]~3_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inRefConv|tRef[7]~3_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122_combout\);

-- Location: LCCOMB_X76_Y54_N2
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~2_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~2_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123_combout\);

-- Location: LCCOMB_X75_Y54_N6
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~0_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~0_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125_combout\);

-- Location: LCCOMB_X75_Y54_N4
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124_combout\ = (\inRefConv|tRef[6]~5_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inRefConv|tRef[6]~5_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124_combout\);

-- Location: LCCOMB_X75_Y61_N6
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~127_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & \inRefConv|tRef[5]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datad => \inRefConv|tRef[5]~7_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~127_combout\);

-- Location: LCCOMB_X75_Y61_N4
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~126_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & \inRefConv|tRef[5]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datad => \inRefConv|tRef[5]~7_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~126_combout\);

-- Location: LCCOMB_X76_Y54_N4
\conv3Dig|Mod0|auto_generated|divider|divider|op_20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~0_combout\ = (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~127_combout\) # (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~126_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~1\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~127_combout\) # (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~127_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[891]~126_combout\,
	datad => VCC,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~0_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~1\);

-- Location: LCCOMB_X76_Y54_N6
\conv3Dig|Mod0|auto_generated|divider|divider|op_20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~2_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~1\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~1\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~3\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~125_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[892]~124_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~1\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~2_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~3\);

-- Location: LCCOMB_X76_Y54_N8
\conv3Dig|Mod0|auto_generated|divider|divider|op_20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~4_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~3\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~3\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123_combout\)))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~5\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~3\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~122_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[893]~123_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~3\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~4_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~5\);

-- Location: LCCOMB_X76_Y54_N10
\conv3Dig|Mod0|auto_generated|divider|divider|op_20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~6_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~5\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~5\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~7\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~121_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[894]~120_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~5\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~6_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~7\);

-- Location: LCCOMB_X76_Y54_N12
\conv3Dig|Mod0|auto_generated|divider|divider|op_20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~8_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119_combout\ & ((GND) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~7\))) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~7\ $ (GND)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~9\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119_combout\) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[895]~119_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~7\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~8_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~9\);

-- Location: LCCOMB_X76_Y54_N14
\conv3Dig|Mod0|auto_generated|divider|divider|op_20~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~10_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~9\ & VCC)) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~9\))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~11\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[896]~118_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~9\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~10_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~11\);

-- Location: LCCOMB_X76_Y54_N16
\conv3Dig|Mod0|auto_generated|divider|divider|op_20~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~12_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117_combout\ & ((GND) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~11\))) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~11\ $ (GND)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~13\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117_combout\) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[897]~117_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~11\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~12_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~13\);

-- Location: LCCOMB_X76_Y54_N18
\conv3Dig|Mod0|auto_generated|divider|divider|op_20~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~14_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~13\ & VCC)) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~13\))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~15\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[898]~116_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~13\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~14_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~15\);

-- Location: LCCOMB_X76_Y54_N20
\conv3Dig|Mod0|auto_generated|divider|divider|op_20~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~16_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~15\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~15\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)) # (GND)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~17\ = CARRY(((\conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\)) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~15\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~16_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~17\);

-- Location: LCCOMB_X76_Y54_N22
\conv3Dig|Mod0|auto_generated|divider|divider|op_20~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\ = !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~17\
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~19\ = CARRY(!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~17\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~19\);

-- Location: LCCOMB_X76_Y54_N24
\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ = \conv3Dig|Mod0|auto_generated|divider|divider|op_20~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~19\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\);

-- Location: LCCOMB_X76_Y54_N26
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\ & 
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~14_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\);

-- Location: LCCOMB_X76_Y54_N28
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~16_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~16_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129_combout\);

-- Location: LCCOMB_X76_Y51_N18
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~195_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~12_combout\ & 
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~12_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~195_combout\);

-- Location: LCCOMB_X76_Y51_N6
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~14_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~14_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130_combout\);

-- Location: LCCOMB_X76_Y51_N24
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~12_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~12_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131_combout\);

-- Location: LCCOMB_X76_Y51_N20
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~196_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~10_combout\ & 
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~10_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~196_combout\);

-- Location: LCCOMB_X76_Y51_N30
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~197_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~8_combout\ & 
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~8_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~197_combout\);

-- Location: LCCOMB_X76_Y51_N26
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~10_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~10_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132_combout\);

-- Location: LCCOMB_X79_Y50_N4
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~198_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~6_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & 
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~6_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~198_combout\);

-- Location: LCCOMB_X79_Y50_N10
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_20~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~8_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133_combout\);

-- Location: LCCOMB_X75_Y54_N8
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~229_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & ((\inRefConv|tRef[8]~1_combout\))) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~4_combout\,
	datac => \inRefConv|tRef[8]~1_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~229_combout\);

-- Location: LCCOMB_X76_Y50_N0
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~6_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~6_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134_combout\);

-- Location: LCCOMB_X75_Y54_N2
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~230_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & (\inRefConv|tRef[7]~3_combout\)) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|op_19~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datab => \inRefConv|tRef[7]~3_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~2_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~230_combout\);

-- Location: LCCOMB_X79_Y50_N28
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~4_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~4_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135_combout\);

-- Location: LCCOMB_X75_Y54_N30
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~231_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & ((\inRefConv|tRef[6]~5_combout\))) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~0_combout\,
	datab => \inRefConv|tRef[6]~5_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_19~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~231_combout\);

-- Location: LCCOMB_X77_Y50_N0
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~2_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~2_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136_combout\);

-- Location: LCCOMB_X77_Y50_N2
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137_combout\ = (\inRefConv|tRef[5]~7_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inRefConv|tRef[5]~7_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137_combout\);

-- Location: LCCOMB_X77_Y50_N20
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~0_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138_combout\);

-- Location: LCCOMB_X76_Y51_N28
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~140_combout\ = (\inRefConv|tRef[4]~9_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inRefConv|tRef[4]~9_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~140_combout\);

-- Location: LCCOMB_X76_Y50_N2
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~139_combout\ = (\inRefConv|tRef[4]~9_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inRefConv|tRef[4]~9_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~139_combout\);

-- Location: LCCOMB_X76_Y50_N6
\conv3Dig|Mod0|auto_generated|divider|divider|op_21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~0_combout\ = (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~140_combout\) # (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~139_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~1\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~140_combout\) # (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~140_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[924]~139_combout\,
	datad => VCC,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~0_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~1\);

-- Location: LCCOMB_X76_Y50_N8
\conv3Dig|Mod0|auto_generated|divider|divider|op_21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~2_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~1\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~1\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~3\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~137_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[925]~138_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~1\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~2_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~3\);

-- Location: LCCOMB_X76_Y50_N10
\conv3Dig|Mod0|auto_generated|divider|divider|op_21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~4_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~3\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~231_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~3\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~231_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136_combout\)))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~5\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~3\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~231_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~231_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~136_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~3\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~4_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~5\);

-- Location: LCCOMB_X76_Y50_N12
\conv3Dig|Mod0|auto_generated|divider|divider|op_21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~6_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~5\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~230_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~5\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~230_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~7\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~230_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~230_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~135_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~5\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~6_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~7\);

-- Location: LCCOMB_X76_Y50_N14
\conv3Dig|Mod0|auto_generated|divider|divider|op_21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~8_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~7\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~229_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~7\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~229_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134_combout\) # (GND))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~9\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~229_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~229_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~134_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~7\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~8_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~9\);

-- Location: LCCOMB_X76_Y50_N16
\conv3Dig|Mod0|auto_generated|divider|divider|op_21~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~10_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~9\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~198_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~9\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~198_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~11\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~198_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~198_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~133_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~9\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~10_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~11\);

-- Location: LCCOMB_X76_Y50_N18
\conv3Dig|Mod0|auto_generated|divider|divider|op_21~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~12_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~11\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~197_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~11\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~197_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132_combout\) # (GND))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~13\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~197_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~197_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~132_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~11\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~12_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~13\);

-- Location: LCCOMB_X76_Y50_N20
\conv3Dig|Mod0|auto_generated|divider|divider|op_21~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~14_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~13\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~196_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~13\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~196_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~15\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~196_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~131_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~196_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~13\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~14_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~15\);

-- Location: LCCOMB_X76_Y50_N22
\conv3Dig|Mod0|auto_generated|divider|divider|op_21~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~16_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~15\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~195_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~15\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~195_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130_combout\) # (GND))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~17\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~195_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~195_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~130_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~15\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~16_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~17\);

-- Location: LCCOMB_X76_Y50_N24
\conv3Dig|Mod0|auto_generated|divider|divider|op_21~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~18_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~17\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~17\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~19\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~129_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~17\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~18_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~19\);

-- Location: LCCOMB_X76_Y50_N26
\conv3Dig|Mod0|auto_generated|divider|divider|op_21~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~20_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~19\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~19\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)) # (GND)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~21\ = CARRY(((\conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\)) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~19\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~20_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~21\);

-- Location: LCCOMB_X76_Y50_N28
\conv3Dig|Mod0|auto_generated|divider|divider|op_21~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\ = !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~21\
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~23\ = CARRY(!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~21\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~23\);

-- Location: LCCOMB_X76_Y50_N30
\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ = \conv3Dig|Mod0|auto_generated|divider|divider|op_21~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~23\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\);

-- Location: LCCOMB_X77_Y50_N6
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & 
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~18_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\);

-- Location: LCCOMB_X77_Y50_N8
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~20_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~20_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142_combout\);

-- Location: LCCOMB_X79_Y49_N8
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~18_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~18_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143_combout\);

-- Location: LCCOMB_X76_Y54_N30
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~199_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_20~16_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[933]~128_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~16_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~199_combout\);

-- Location: LCCOMB_X76_Y51_N14
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144_combout\);

-- Location: LCCOMB_X76_Y51_N0
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~200_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~195_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_20~14_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[932]~195_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~14_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~200_combout\);

-- Location: LCCOMB_X76_Y51_N10
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~201_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~196_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_20~12_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[931]~196_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~12_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~201_combout\);

-- Location: LCCOMB_X79_Y50_N14
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~14_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~14_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145_combout\);

-- Location: LCCOMB_X76_Y51_N12
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~202_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~197_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_20~10_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[930]~197_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~10_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~202_combout\);

-- Location: LCCOMB_X79_Y49_N2
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~12_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~12_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146_combout\);

-- Location: LCCOMB_X77_Y50_N26
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~10_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~10_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147_combout\);

-- Location: LCCOMB_X79_Y50_N30
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~203_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~198_combout\) # 
-- ((!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~8_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[929]~198_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~203_combout\);

-- Location: LCCOMB_X79_Y49_N4
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~8_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~8_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148_combout\);

-- Location: LCCOMB_X76_Y50_N4
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~204_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~229_combout\) # 
-- ((!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[928]~229_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~6_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~204_combout\);

-- Location: LCCOMB_X77_Y49_N30
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~6_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~6_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149_combout\);

-- Location: LCCOMB_X79_Y50_N16
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~205_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~230_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_20~4_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~4_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[927]~230_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~205_combout\);

-- Location: LCCOMB_X77_Y50_N18
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~206_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~231_combout\) # 
-- ((!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[926]~231_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~2_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~206_combout\);

-- Location: LCCOMB_X77_Y50_N28
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~4_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~4_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150_combout\);

-- Location: LCCOMB_X77_Y50_N30
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~232_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & (\inRefConv|tRef[5]~7_combout\)) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|op_20~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~20_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \inRefConv|tRef[5]~7_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_20~0_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~232_combout\);

-- Location: LCCOMB_X77_Y50_N22
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~2_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~2_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151_combout\);

-- Location: LCCOMB_X76_Y51_N8
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \inRefConv|tRef[4]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \inRefConv|tRef[4]~9_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152_combout\);

-- Location: LCCOMB_X79_Y49_N6
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~0_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~0_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153_combout\);

-- Location: LCCOMB_X77_Y55_N8
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~154_combout\ = (\inRefConv|tRef[3]~11_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inRefConv|tRef[3]~11_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~154_combout\);

-- Location: LCCOMB_X79_Y58_N24
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~155_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \inRefConv|tRef[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \inRefConv|tRef[3]~11_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~155_combout\);

-- Location: LCCOMB_X77_Y49_N0
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~0_combout\ = (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~154_combout\) # (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~155_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~1\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~154_combout\) # (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~154_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[957]~155_combout\,
	datad => VCC,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~1\);

-- Location: LCCOMB_X77_Y49_N2
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~2_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~1\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~1\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~3\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~152_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[958]~153_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~1\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~3\);

-- Location: LCCOMB_X77_Y49_N4
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~4_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~3\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~232_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~3\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~232_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151_combout\)))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~5\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~3\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~232_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~232_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~151_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~3\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~5\);

-- Location: LCCOMB_X77_Y49_N6
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~6_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~5\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~206_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~5\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~206_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~7\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~206_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~206_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~150_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~5\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~7\);

-- Location: LCCOMB_X77_Y49_N8
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~8_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~7\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~205_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~7\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~205_combout\) # (GND))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~9\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~205_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~149_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~205_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~7\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~9\);

-- Location: LCCOMB_X77_Y49_N10
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~10_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~9\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~204_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~9\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~204_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~11\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~204_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~148_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~204_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~9\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~11\);

-- Location: LCCOMB_X77_Y49_N12
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~12_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~11\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~203_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~11\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~203_combout\) # (GND))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~13\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~203_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~147_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~203_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~11\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~13\);

-- Location: LCCOMB_X77_Y49_N14
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~14_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~13\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~202_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~13\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~202_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~15\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~202_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~202_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~146_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~13\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~15\);

-- Location: LCCOMB_X77_Y49_N16
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~16_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~15\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~201_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~15\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~201_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145_combout\) # (GND))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~17\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~201_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~201_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~145_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~15\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~17\);

-- Location: LCCOMB_X77_Y49_N18
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~18_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~17\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~200_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~17\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~200_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~19\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~200_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~144_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~200_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~17\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~18_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~19\);

-- Location: LCCOMB_X77_Y49_N20
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~20_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~19\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~199_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~19\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~199_combout\) # (GND))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~21\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~199_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~143_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~199_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~19\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~20_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~21\);

-- Location: LCCOMB_X77_Y49_N22
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~22_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~21\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~21\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~23\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~142_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~21\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~22_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~23\);

-- Location: LCCOMB_X77_Y49_N24
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~24_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~23\ & ((((!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & 
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~23\ & (((!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & 
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\)) # (GND)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~25\ = CARRY(((!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\)) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~23\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~24_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~25\);

-- Location: LCCOMB_X77_Y49_N26
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\ = !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~25\
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~27\ = CARRY(!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~25\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~27\);

-- Location: LCCOMB_X77_Y49_N28
\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ = \conv3Dig|Mod0|auto_generated|divider|divider|op_23~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~27\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\);

-- Location: LCCOMB_X80_Y49_N26
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~24_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157_combout\);

-- Location: LCCOMB_X79_Y49_N0
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & 
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~22_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\);

-- Location: LCCOMB_X77_Y50_N12
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~207_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\) # 
-- ((!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_21~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~20_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[968]~141_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~207_combout\);

-- Location: LCCOMB_X80_Y49_N28
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~22_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~22_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158_combout\);

-- Location: LCCOMB_X79_Y49_N16
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~208_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~199_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_21~18_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~18_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[967]~199_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~208_combout\);

-- Location: LCCOMB_X79_Y49_N18
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~20_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159_combout\);

-- Location: LCCOMB_X80_Y49_N30
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~18_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160_combout\);

-- Location: LCCOMB_X76_Y51_N22
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~209_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~200_combout\) # 
-- ((!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_21~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~16_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[966]~200_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~209_combout\);

-- Location: LCCOMB_X79_Y50_N26
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~210_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~201_combout\) # 
-- ((!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_21~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[965]~201_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~14_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~210_combout\);

-- Location: LCCOMB_X80_Y49_N24
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161_combout\);

-- Location: LCCOMB_X79_Y49_N28
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162_combout\);

-- Location: LCCOMB_X79_Y49_N26
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~211_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~202_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_21~12_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[964]~202_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~12_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~211_combout\);

-- Location: LCCOMB_X79_Y50_N12
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~212_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~203_combout\) # 
-- ((!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_21~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[963]~203_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~10_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~212_combout\);

-- Location: LCCOMB_X79_Y50_N24
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163_combout\);

-- Location: LCCOMB_X79_Y49_N12
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~213_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~204_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_21~8_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[962]~204_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~8_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~213_combout\);

-- Location: LCCOMB_X80_Y50_N0
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164_combout\);

-- Location: LCCOMB_X79_Y50_N2
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165_combout\);

-- Location: LCCOMB_X79_Y50_N22
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~214_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~205_combout\) # 
-- ((!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~6_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[961]~205_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~214_combout\);

-- Location: LCCOMB_X77_Y50_N14
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~215_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~206_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_21~4_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~4_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[960]~206_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~215_combout\);

-- Location: LCCOMB_X80_Y50_N2
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166_combout\);

-- Location: LCCOMB_X77_Y50_N24
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~216_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~232_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_21~2_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~2_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[959]~232_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~216_combout\);

-- Location: LCCOMB_X77_Y50_N16
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167_combout\);

-- Location: LCCOMB_X80_Y50_N12
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168_combout\);

-- Location: LCCOMB_X79_Y49_N20
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~233_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & ((\inRefConv|tRef[4]~9_combout\))) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~0_combout\,
	datab => \inRefConv|tRef[4]~9_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_21~24_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~233_combout\);

-- Location: LCCOMB_X79_Y49_N14
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170_combout\);

-- Location: LCCOMB_X80_Y50_N14
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \inRefConv|tRef[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \inRefConv|tRef[3]~11_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169_combout\);

-- Location: LCCOMB_X80_Y50_N10
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~172_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \inRefConv|tRef[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \inRefConv|tRef[2]~13_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~172_combout\);

-- Location: LCCOMB_X80_Y50_N8
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~171_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \inRefConv|tRef[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \inRefConv|tRef[2]~13_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~171_combout\);

-- Location: LCCOMB_X80_Y50_N16
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~0_combout\ = (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~172_combout\) # (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~171_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~1\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~172_combout\) # (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~172_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[990]~171_combout\,
	datad => VCC,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~1\);

-- Location: LCCOMB_X80_Y50_N18
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~2_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~1\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~1\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~3\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~170_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[991]~169_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~1\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~3\);

-- Location: LCCOMB_X80_Y50_N20
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~4_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~3\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~233_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~3\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~233_combout\)))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~5\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~3\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~168_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~233_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~3\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~5\);

-- Location: LCCOMB_X80_Y50_N22
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~6_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~5\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~216_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~5\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~216_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~7\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~216_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~216_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~167_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~5\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~7\);

-- Location: LCCOMB_X80_Y50_N24
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~8_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~7\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~215_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~7\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~215_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166_combout\) # (GND))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~9\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~215_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~215_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~166_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~7\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~9\);

-- Location: LCCOMB_X80_Y50_N26
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~10_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~9\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~214_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~9\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~214_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~11\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~214_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~165_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~214_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~9\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~11\);

-- Location: LCCOMB_X80_Y50_N28
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~12_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~11\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~213_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~11\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~213_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164_combout\) # (GND))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~13\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~213_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~213_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~164_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~11\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~13\);

-- Location: LCCOMB_X80_Y50_N30
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~14_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~13\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~212_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~13\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~212_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~15\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~212_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~212_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~163_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~13\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~15\);

-- Location: LCCOMB_X80_Y49_N0
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~16_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~15\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~211_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~15\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~211_combout\) # (GND))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~17\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~211_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~162_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~211_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~15\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~17\);

-- Location: LCCOMB_X80_Y49_N2
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~18_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~17\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~210_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~17\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~210_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~19\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~210_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~210_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~161_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~17\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~18_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~19\);

-- Location: LCCOMB_X80_Y49_N4
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~20_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~19\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~209_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~19\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~209_combout\) # (GND))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~21\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~209_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~160_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~209_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~19\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~21\);

-- Location: LCCOMB_X80_Y49_N6
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~22_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~21\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~208_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~21\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~208_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~23\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~208_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~208_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~159_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~21\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~22_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~23\);

-- Location: LCCOMB_X80_Y49_N8
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~24_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~23\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~207_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~23\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~207_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158_combout\) # (GND))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~25\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~207_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~207_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~158_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~23\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~24_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~25\);

-- Location: LCCOMB_X80_Y49_N10
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~26_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~25\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~25\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~27\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~157_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~25\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~26_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~27\);

-- Location: LCCOMB_X80_Y49_N12
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~28_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~27\ & ((((!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & 
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\))))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~27\ & (((!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & 
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\)) # (GND)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~29\ = CARRY(((!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\)) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~27\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~28_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~29\);

-- Location: LCCOMB_X80_Y49_N14
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~30_combout\ = !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~29\
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~31\ = CARRY(!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~29\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~30_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~31\);

-- Location: LCCOMB_X80_Y49_N16
\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ = \conv3Dig|Mod0|auto_generated|divider|divider|op_24~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~31\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\);

-- Location: LCCOMB_X81_Y49_N28
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~178_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_24~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~28_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~178_combout\);

-- Location: LCCOMB_X81_Y49_N18
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~177_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~26_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~177_combout\);

-- Location: LCCOMB_X81_Y49_N22
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~179_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_24~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~26_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~179_combout\);

-- Location: LCCOMB_X80_Y49_N18
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~217_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\) # 
-- ((!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1003]~156_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~24_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~217_combout\);

-- Location: LCCOMB_X82_Y50_N16
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~180_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~24_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~24_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~180_combout\);

-- Location: LCCOMB_X80_Y49_N20
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~218_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~207_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_23~22_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~22_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1002]~207_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~218_combout\);

-- Location: LCCOMB_X79_Y49_N30
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~219_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~208_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_23~20_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~20_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1001]~208_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~219_combout\);

-- Location: LCCOMB_X81_Y49_N24
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~181_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_24~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~22_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~181_combout\);

-- Location: LCCOMB_X81_Y49_N26
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~182_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~20_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~20_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~182_combout\);

-- Location: LCCOMB_X80_Y49_N22
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~220_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~209_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_23~18_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~18_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1000]~209_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~220_combout\);

-- Location: LCCOMB_X79_Y50_N8
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~221_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~210_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_23~16_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~16_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[999]~210_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~221_combout\);

-- Location: LCCOMB_X81_Y49_N20
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~183_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_24~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~18_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~183_combout\);

-- Location: LCCOMB_X81_Y49_N30
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~184_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~16_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~184_combout\);

-- Location: LCCOMB_X79_Y49_N24
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~222_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~211_combout\) # 
-- ((!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[998]~211_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~14_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~222_combout\);

-- Location: LCCOMB_X81_Y50_N10
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~185_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_24~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~185_combout\);

-- Location: LCCOMB_X79_Y50_N18
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~223_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~212_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_23~12_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~12_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[997]~212_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~223_combout\);

-- Location: LCCOMB_X82_Y50_N2
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~186_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_24~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~186_combout\);

-- Location: LCCOMB_X79_Y49_N10
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~224_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~213_combout\) # 
-- ((!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[996]~213_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~10_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~224_combout\);

-- Location: LCCOMB_X82_Y50_N20
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~187_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_24~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~187_combout\);

-- Location: LCCOMB_X79_Y50_N20
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~225_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~214_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|op_23~8_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~8_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[995]~214_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~225_combout\);

-- Location: LCCOMB_X82_Y50_N6
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~188_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~8_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~188_combout\);

-- Location: LCCOMB_X77_Y50_N10
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~226_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~215_combout\) # 
-- ((!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~6_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[994]~215_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~226_combout\);

-- Location: LCCOMB_X80_Y50_N4
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~189_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~6_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~189_combout\);

-- Location: LCCOMB_X77_Y50_N4
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~227_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~216_combout\) # 
-- ((!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[993]~216_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~4_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~227_combout\);

-- Location: LCCOMB_X80_Y50_N6
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~228_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~233_combout\) # 
-- ((!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[992]~233_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~2_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~228_combout\);

-- Location: LCCOMB_X81_Y50_N4
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~190_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_24~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~190_combout\);

-- Location: LCCOMB_X79_Y49_N22
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~234_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & ((\inRefConv|tRef[3]~11_combout\))) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~0_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_23~28_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \inRefConv|tRef[3]~11_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~234_combout\);

-- Location: LCCOMB_X82_Y50_N24
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~191_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_24~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~191_combout\);

-- Location: LCCOMB_X81_Y70_N0
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~173_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \inRefConv|tRef[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datad => \inRefConv|tRef[2]~13_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~173_combout\);

-- Location: LCCOMB_X81_Y50_N0
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~174_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_24~0_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~174_combout\);

-- Location: LCCOMB_X81_Y70_N28
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~176_combout\ = (\inRefConv|tRef[1]~15_combout\ & !\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[1]~15_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~176_combout\);

-- Location: LCCOMB_X81_Y70_N2
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~175_combout\ = (\inRefConv|tRef[1]~15_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inRefConv|tRef[1]~15_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~175_combout\);

-- Location: LCCOMB_X81_Y50_N14
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~0_combout\ = (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~176_combout\) # (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~175_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~1\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~176_combout\) # (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~176_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1023]~175_combout\,
	datad => VCC,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~0_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~1\);

-- Location: LCCOMB_X81_Y50_N16
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~2_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_25~1\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~173_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~174_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~1\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~173_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~174_combout\)))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~3\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~173_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~174_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_25~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~173_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~174_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~1\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~2_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~3\);

-- Location: LCCOMB_X81_Y50_N18
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~4_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_25~3\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~234_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~191_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~3\ & ((((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~234_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~191_combout\)))))
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~5\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~3\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~234_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~234_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~191_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~3\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~4_combout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~5\);

-- Location: LCCOMB_X81_Y50_N20
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~7_cout\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~228_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~190_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_25~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~228_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1026]~190_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~5\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~7_cout\);

-- Location: LCCOMB_X81_Y50_N22
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~9_cout\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~189_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~227_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~189_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1027]~227_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~7_cout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~9_cout\);

-- Location: LCCOMB_X81_Y50_N24
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~11_cout\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~188_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~226_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_25~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~188_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1028]~226_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~9_cout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~11_cout\);

-- Location: LCCOMB_X81_Y50_N26
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~13_cout\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~187_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~225_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~187_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1029]~225_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~11_cout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~13_cout\);

-- Location: LCCOMB_X81_Y50_N28
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~15_cout\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~186_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~224_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_25~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~186_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1030]~224_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~13_cout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~15_cout\);

-- Location: LCCOMB_X81_Y50_N30
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~17_cout\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~185_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~223_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~185_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1031]~223_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~15_cout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~17_cout\);

-- Location: LCCOMB_X81_Y49_N0
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~19_cout\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~184_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~222_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_25~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~184_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1032]~222_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~17_cout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~19_cout\);

-- Location: LCCOMB_X81_Y49_N2
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~21_cout\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~221_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~183_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~221_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1033]~183_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~19_cout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~21_cout\);

-- Location: LCCOMB_X81_Y49_N4
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~23_cout\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~182_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~220_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_25~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~182_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1034]~220_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~21_cout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~23_cout\);

-- Location: LCCOMB_X81_Y49_N6
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~25_cout\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~219_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~181_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~219_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1035]~181_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~23_cout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~25_cout\);

-- Location: LCCOMB_X81_Y49_N8
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~27_cout\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~180_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~218_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_25~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~180_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1036]~218_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~25_cout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~27_cout\);

-- Location: LCCOMB_X81_Y49_N10
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~29_cout\ = CARRY((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~179_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~217_combout\) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~179_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1037]~217_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~27_cout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~29_cout\);

-- Location: LCCOMB_X81_Y49_N12
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~31_cout\ = CARRY((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~178_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~177_combout\ & 
-- !\conv3Dig|Mod0|auto_generated|divider|divider|op_25~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~178_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1038]~177_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~29_cout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~31_cout\);

-- Location: LCCOMB_X81_Y49_N14
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~33_cout\ = CARRY(((!\conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\ & \conv3Dig|Mod0|auto_generated|divider|divider|op_24~30_combout\)) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~31_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~32_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_24~30_combout\,
	datad => VCC,
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~31_cout\,
	cout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~33_cout\);

-- Location: LCCOMB_X81_Y49_N16
\conv3Dig|Mod0|auto_generated|divider|divider|op_25~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\ = !\conv3Dig|Mod0|auto_generated|divider|divider|op_25~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~33_cout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\);

-- Location: LCCOMB_X81_Y50_N6
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~174_combout\) # 
-- ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~173_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|op_25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~174_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1024]~173_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~2_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\);

-- Location: LCCOMB_X81_Y50_N2
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\ & ((\inRefConv|tRef[1]~15_combout\))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\ & 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|op_25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~0_combout\,
	datad => \inRefConv|tRef[1]~15_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\);

-- Location: LCCOMB_X81_Y50_N8
\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\ & (((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~234_combout\) # 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~191_combout\)))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|op_25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~4_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~234_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1025]~191_combout\,
	combout => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\);

-- Location: IOIBUF_X94_Y73_N1
\tGel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(0),
	o => \tGel[0]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\tLua[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(0),
	o => \tLua[0]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\tNormal[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tNormal(0),
	o => \tNormal[0]~input_o\);

-- Location: LCCOMB_X81_Y70_N20
\inRefConv|tRef[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[0]~16_combout\ = (\estado[1]~input_o\ & ((\tLua[0]~input_o\) # ((\estado[0]~input_o\)))) # (!\estado[1]~input_o\ & (((\tNormal[0]~input_o\ & !\estado[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tLua[0]~input_o\,
	datab => \tNormal[0]~input_o\,
	datac => \estado[1]~input_o\,
	datad => \estado[0]~input_o\,
	combout => \inRefConv|tRef[0]~16_combout\);

-- Location: IOIBUF_X85_Y73_N8
\tSol[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(0),
	o => \tSol[0]~input_o\);

-- Location: LCCOMB_X81_Y70_N22
\inRefConv|tRef[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inRefConv|tRef[0]~17_combout\ = (\inRefConv|tRef[0]~16_combout\ & (((\tSol[0]~input_o\) # (!\estado[0]~input_o\)))) # (!\inRefConv|tRef[0]~16_combout\ & (\tGel[0]~input_o\ & ((\estado[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tGel[0]~input_o\,
	datab => \inRefConv|tRef[0]~16_combout\,
	datac => \tSol[0]~input_o\,
	datad => \estado[0]~input_o\,
	combout => \inRefConv|tRef[0]~17_combout\);

-- Location: LCCOMB_X68_Y69_N24
\conv7seg|outPort0[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[0]~10_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\ & 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\ $ (\inRefConv|tRef[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\,
	datad => \inRefConv|tRef[0]~17_combout\,
	combout => \conv7seg|outPort0[0]~10_combout\);

-- Location: LCCOMB_X62_Y69_N26
\conv7seg|outPort0[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[0]~23_combout\ = (\conv7seg|outPort0[0]~10_combout\) # ((!\pulso~input_o\ & \modo~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso~input_o\,
	datac => \modo~input_o\,
	datad => \conv7seg|outPort0[0]~10_combout\,
	combout => \conv7seg|outPort0[0]~23_combout\);

-- Location: LCCOMB_X68_Y69_N18
\conv7seg|outPort0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0~11_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\ & 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\ $ (\inRefConv|tRef[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\,
	datad => \inRefConv|tRef[0]~17_combout\,
	combout => \conv7seg|outPort0~11_combout\);

-- Location: LCCOMB_X62_Y69_N4
\conv7seg|outPort0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0~24_combout\ = (\conv7seg|outPort0~11_combout\) # ((!\pulso~input_o\ & \modo~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso~input_o\,
	datac => \modo~input_o\,
	datad => \conv7seg|outPort0~11_combout\,
	combout => \conv7seg|outPort0~24_combout\);

-- Location: LCCOMB_X68_Y69_N28
\conv7seg|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|Equal7~0_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\ & !\inRefConv|tRef[0]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\,
	datad => \inRefConv|tRef[0]~17_combout\,
	combout => \conv7seg|Equal7~0_combout\);

-- Location: LCCOMB_X62_Y69_N6
\conv7seg|outPort0[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[2]~25_combout\ = (\conv7seg|Equal7~0_combout\) # ((!\pulso~input_o\ & \modo~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso~input_o\,
	datac => \modo~input_o\,
	datad => \conv7seg|Equal7~0_combout\,
	combout => \conv7seg|outPort0[2]~25_combout\);

-- Location: LCCOMB_X68_Y69_N20
\conv7seg|outPort0[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[3]~26_combout\ = ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\) # ((!\pulso~input_o\ & \modo~input_o\))) # (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso~input_o\,
	datab => \modo~input_o\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datad => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\,
	combout => \conv7seg|outPort0[3]~26_combout\);

-- Location: LCCOMB_X68_Y69_N30
\conv7seg|outPort0[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[5]~12_combout\ = (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\ & 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\ & \inRefConv|tRef[0]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\,
	datad => \inRefConv|tRef[0]~17_combout\,
	combout => \conv7seg|outPort0[5]~12_combout\);

-- Location: LCCOMB_X68_Y69_N16
\conv7seg|outPort0[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[3]~13_combout\ = (\enableConv|yout~0_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\ $ (((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\ & 
-- !\inRefConv|tRef[0]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \inRefConv|tRef[0]~17_combout\,
	datad => \enableConv|yout~0_combout\,
	combout => \conv7seg|outPort0[3]~13_combout\);

-- Location: LCCOMB_X68_Y69_N6
\conv7seg|outPort0[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[3]~27_combout\ = (\conv7seg|outPort0[3]~13_combout\) # ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\ & ((\pulso~input_o\) # (!\modo~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso~input_o\,
	datab => \modo~input_o\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\,
	datad => \conv7seg|outPort0[3]~13_combout\,
	combout => \conv7seg|outPort0[3]~27_combout\);

-- Location: LCCOMB_X68_Y69_N10
\conv7seg|outPort0[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[3]~14_combout\ = (\conv7seg|outPort0[5]~12_combout\) # ((\conv7seg|outPort0[3]~26_combout\ & !\conv7seg|outPort0[3]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conv7seg|outPort0[3]~26_combout\,
	datac => \conv7seg|outPort0[5]~12_combout\,
	datad => \conv7seg|outPort0[3]~27_combout\,
	combout => \conv7seg|outPort0[3]~14_combout\);

-- Location: LCCOMB_X68_Y69_N22
\conv7seg|outPort0[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[4]~16_combout\ = ((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\ & ((\inRefConv|tRef[0]~17_combout\) # (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\)))) # 
-- (!\enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableConv|yout~0_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\,
	datad => \inRefConv|tRef[0]~17_combout\,
	combout => \conv7seg|outPort0[4]~16_combout\);

-- Location: LCCOMB_X81_Y50_N12
\conv7seg|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|Equal0~2_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\ & ((!\inRefConv|tRef[1]~15_combout\))) # 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|op_25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~34_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|op_25~0_combout\,
	datad => \inRefConv|tRef[1]~15_combout\,
	combout => \conv7seg|Equal0~2_combout\);

-- Location: LCCOMB_X68_Y69_N8
\conv7seg|outPort0[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[6]~17_combout\ = (\enableConv|yout~0_combout\ & ((\conv7seg|Equal0~2_combout\ & (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\ & !\inRefConv|tRef[0]~17_combout\)) # (!\conv7seg|Equal0~2_combout\ & 
-- (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableConv|yout~0_combout\,
	datab => \conv7seg|Equal0~2_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\,
	datad => \inRefConv|tRef[0]~17_combout\,
	combout => \conv7seg|outPort0[6]~17_combout\);

-- Location: LCCOMB_X68_Y69_N4
\conv7seg|outPort0[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[4]~15_combout\ = (\enableConv|yout~0_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\ $ (((\conv7seg|Equal0~2_combout\ & !\inRefConv|tRef[0]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableConv|yout~0_combout\,
	datab => \conv7seg|Equal0~2_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\,
	datad => \inRefConv|tRef[0]~17_combout\,
	combout => \conv7seg|outPort0[4]~15_combout\);

-- Location: LCCOMB_X68_Y69_N2
\conv7seg|outPort0[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[4]~18_combout\ = (!\conv7seg|outPort0[6]~17_combout\ & ((\conv7seg|outPort0[4]~16_combout\) # (\conv7seg|outPort0[4]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv7seg|outPort0[4]~16_combout\,
	datab => \conv7seg|outPort0[6]~17_combout\,
	datac => \conv7seg|outPort0[4]~15_combout\,
	combout => \conv7seg|outPort0[4]~18_combout\);

-- Location: LCCOMB_X68_Y69_N12
\conv7seg|outPort0[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[5]~19_combout\ = ((!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\ & ((\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\) # (\inRefConv|tRef[0]~17_combout\)))) # 
-- (!\enableConv|yout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \inRefConv|tRef[0]~17_combout\,
	datad => \enableConv|yout~0_combout\,
	combout => \conv7seg|outPort0[5]~19_combout\);

-- Location: LCCOMB_X68_Y69_N14
\conv7seg|outPort0[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[5]~20_combout\ = (\conv7seg|outPort0[3]~27_combout\ & (\conv7seg|outPort0[5]~12_combout\)) # (!\conv7seg|outPort0[3]~27_combout\ & ((\conv7seg|outPort0[5]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv7seg|outPort0[3]~27_combout\,
	datac => \conv7seg|outPort0[5]~12_combout\,
	datad => \conv7seg|outPort0[5]~19_combout\,
	combout => \conv7seg|outPort0[5]~20_combout\);

-- Location: LCCOMB_X68_Y69_N0
\conv7seg|outPort0[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[6]~21_combout\ = (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\ & (\inRefConv|tRef[0]~17_combout\ & (\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\ $ 
-- (!\conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1058]~192_combout\,
	datab => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1057]~194_combout\,
	datac => \conv3Dig|Mod0|auto_generated|divider|divider|StageOut[1059]~193_combout\,
	datad => \inRefConv|tRef[0]~17_combout\,
	combout => \conv7seg|outPort0[6]~21_combout\);

-- Location: LCCOMB_X68_Y69_N26
\conv7seg|outPort0[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg|outPort0[6]~22_combout\ = (\conv7seg|outPort0[6]~17_combout\) # ((!\conv7seg|outPort0[4]~15_combout\ & ((\conv7seg|outPort0[6]~21_combout\) # (!\enableConv|yout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableConv|yout~0_combout\,
	datab => \conv7seg|outPort0[4]~15_combout\,
	datac => \conv7seg|outPort0[6]~17_combout\,
	datad => \conv7seg|outPort0[6]~21_combout\,
	combout => \conv7seg|outPort0[6]~22_combout\);

ww_temp2(0) <= \temp2[0]~output_o\;

ww_temp2(1) <= \temp2[1]~output_o\;

ww_temp2(2) <= \temp2[2]~output_o\;

ww_temp2(3) <= \temp2[3]~output_o\;

ww_temp2(4) <= \temp2[4]~output_o\;

ww_temp2(5) <= \temp2[5]~output_o\;

ww_temp2(6) <= \temp2[6]~output_o\;

ww_temp1(0) <= \temp1[0]~output_o\;

ww_temp1(1) <= \temp1[1]~output_o\;

ww_temp1(2) <= \temp1[2]~output_o\;

ww_temp1(3) <= \temp1[3]~output_o\;

ww_temp1(4) <= \temp1[4]~output_o\;

ww_temp1(5) <= \temp1[5]~output_o\;

ww_temp1(6) <= \temp1[6]~output_o\;

ww_temp0(0) <= \temp0[0]~output_o\;

ww_temp0(1) <= \temp0[1]~output_o\;

ww_temp0(2) <= \temp0[2]~output_o\;

ww_temp0(3) <= \temp0[3]~output_o\;

ww_temp0(4) <= \temp0[4]~output_o\;

ww_temp0(5) <= \temp0[5]~output_o\;

ww_temp0(6) <= \temp0[6]~output_o\;
END structure;


