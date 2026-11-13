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

-- DATE "06/01/2023 10:36:12"

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

ENTITY 	PulseGen IS
    PORT (
	clockIn : IN std_logic;
	acel : IN std_logic_vector(1 DOWNTO 0);
	pulseHex : OUT std_logic;
	pulseOut : OUT std_logic
	);
END PulseGen;

-- Design Ports Information
-- pulseHex	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulseOut	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acel[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acel[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clockIn	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PulseGen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clockIn : std_logic;
SIGNAL ww_acel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_pulseHex : std_logic;
SIGNAL ww_pulseOut : std_logic;
SIGNAL \clockIn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pulseHex~output_o\ : std_logic;
SIGNAL \pulseOut~output_o\ : std_logic;
SIGNAL \clockIn~input_o\ : std_logic;
SIGNAL \clockIn~inputclkctrl_outclk\ : std_logic;
SIGNAL \saida2|Add0~0_combout\ : std_logic;
SIGNAL \saida2|Add0~1\ : std_logic;
SIGNAL \saida2|Add0~2_combout\ : std_logic;
SIGNAL \saida2|Add0~3\ : std_logic;
SIGNAL \saida2|Add0~4_combout\ : std_logic;
SIGNAL \saida2|Add0~5\ : std_logic;
SIGNAL \saida2|Add0~6_combout\ : std_logic;
SIGNAL \saida2|Add0~7\ : std_logic;
SIGNAL \saida2|Add0~8_combout\ : std_logic;
SIGNAL \saida2|Add0~9\ : std_logic;
SIGNAL \saida2|Add0~10_combout\ : std_logic;
SIGNAL \saida2|Add0~11\ : std_logic;
SIGNAL \saida2|Add0~12_combout\ : std_logic;
SIGNAL \saida2|Add0~13\ : std_logic;
SIGNAL \saida2|Add0~14_combout\ : std_logic;
SIGNAL \saida2|s_divCounter~7_combout\ : std_logic;
SIGNAL \saida2|Add0~15\ : std_logic;
SIGNAL \saida2|Add0~16_combout\ : std_logic;
SIGNAL \saida2|Add0~17\ : std_logic;
SIGNAL \saida2|Add0~18_combout\ : std_logic;
SIGNAL \saida2|Add0~19\ : std_logic;
SIGNAL \saida2|Add0~20_combout\ : std_logic;
SIGNAL \saida2|Add0~21\ : std_logic;
SIGNAL \saida2|Add0~22_combout\ : std_logic;
SIGNAL \saida2|Add0~23\ : std_logic;
SIGNAL \saida2|Add0~24_combout\ : std_logic;
SIGNAL \saida2|s_divCounter~6_combout\ : std_logic;
SIGNAL \saida2|Add0~25\ : std_logic;
SIGNAL \saida2|Add0~26_combout\ : std_logic;
SIGNAL \saida2|s_divCounter~5_combout\ : std_logic;
SIGNAL \saida2|Add0~27\ : std_logic;
SIGNAL \saida2|Add0~28_combout\ : std_logic;
SIGNAL \saida2|s_divCounter~4_combout\ : std_logic;
SIGNAL \saida2|Add0~29\ : std_logic;
SIGNAL \saida2|Add0~30_combout\ : std_logic;
SIGNAL \saida2|s_divCounter~11_combout\ : std_logic;
SIGNAL \saida2|Add0~31\ : std_logic;
SIGNAL \saida2|Add0~32_combout\ : std_logic;
SIGNAL \saida2|Add0~33\ : std_logic;
SIGNAL \saida2|Add0~34_combout\ : std_logic;
SIGNAL \saida2|s_divCounter~10_combout\ : std_logic;
SIGNAL \saida2|Add0~35\ : std_logic;
SIGNAL \saida2|Add0~36_combout\ : std_logic;
SIGNAL \saida2|Add0~37\ : std_logic;
SIGNAL \saida2|Add0~38_combout\ : std_logic;
SIGNAL \saida2|s_divCounter~3_combout\ : std_logic;
SIGNAL \saida2|Add0~39\ : std_logic;
SIGNAL \saida2|Add0~40_combout\ : std_logic;
SIGNAL \saida2|s_divCounter~2_combout\ : std_logic;
SIGNAL \saida2|Add0~41\ : std_logic;
SIGNAL \saida2|Add0~42_combout\ : std_logic;
SIGNAL \saida2|s_divCounter~1_combout\ : std_logic;
SIGNAL \saida2|Add0~43\ : std_logic;
SIGNAL \saida2|Add0~44_combout\ : std_logic;
SIGNAL \saida2|s_divCounter~0_combout\ : std_logic;
SIGNAL \saida2|Add0~45\ : std_logic;
SIGNAL \saida2|Add0~46_combout\ : std_logic;
SIGNAL \saida2|s_divCounter~9_combout\ : std_logic;
SIGNAL \saida2|Add0~47\ : std_logic;
SIGNAL \saida2|Add0~48_combout\ : std_logic;
SIGNAL \saida2|Add0~49\ : std_logic;
SIGNAL \saida2|Add0~50_combout\ : std_logic;
SIGNAL \saida2|s_divCounter~8_combout\ : std_logic;
SIGNAL \saida2|Equal0~7_combout\ : std_logic;
SIGNAL \saida2|Equal0~5_combout\ : std_logic;
SIGNAL \saida2|Add0~51\ : std_logic;
SIGNAL \saida2|Add0~52_combout\ : std_logic;
SIGNAL \saida2|Add0~53\ : std_logic;
SIGNAL \saida2|Add0~54_combout\ : std_logic;
SIGNAL \saida2|Add0~55\ : std_logic;
SIGNAL \saida2|Add0~56_combout\ : std_logic;
SIGNAL \saida2|Equal0~1_combout\ : std_logic;
SIGNAL \saida2|Equal0~2_combout\ : std_logic;
SIGNAL \saida2|Add0~57\ : std_logic;
SIGNAL \saida2|Add0~58_combout\ : std_logic;
SIGNAL \saida2|Add0~59\ : std_logic;
SIGNAL \saida2|Add0~60_combout\ : std_logic;
SIGNAL \saida2|Equal0~0_combout\ : std_logic;
SIGNAL \saida2|Equal0~3_combout\ : std_logic;
SIGNAL \saida2|Equal0~4_combout\ : std_logic;
SIGNAL \saida2|Equal0~6_combout\ : std_logic;
SIGNAL \saida2|Equal0~8_combout\ : std_logic;
SIGNAL \saida2|Equal0~9_combout\ : std_logic;
SIGNAL \saida2|clkOut~1_combout\ : std_logic;
SIGNAL \saida2|clkOut~0_combout\ : std_logic;
SIGNAL \saida2|clkOut~2_combout\ : std_logic;
SIGNAL \saida2|clkOut~3_combout\ : std_logic;
SIGNAL \saida2|clkOut~q\ : std_logic;
SIGNAL \acel10|Add0~1_cout\ : std_logic;
SIGNAL \acel10|Add0~2_combout\ : std_logic;
SIGNAL \acel10|Add0~3\ : std_logic;
SIGNAL \acel10|Add0~4_combout\ : std_logic;
SIGNAL \acel10|Add0~5\ : std_logic;
SIGNAL \acel10|Add0~6_combout\ : std_logic;
SIGNAL \acel10|Add0~7\ : std_logic;
SIGNAL \acel10|Add0~8_combout\ : std_logic;
SIGNAL \acel10|Add0~9\ : std_logic;
SIGNAL \acel10|Add0~10_combout\ : std_logic;
SIGNAL \acel10|s_divCounter~0_combout\ : std_logic;
SIGNAL \acel10|Add0~11\ : std_logic;
SIGNAL \acel10|Add0~12_combout\ : std_logic;
SIGNAL \acel10|Add0~13\ : std_logic;
SIGNAL \acel10|Add0~14_combout\ : std_logic;
SIGNAL \acel10|s_divCounter~1_combout\ : std_logic;
SIGNAL \acel10|Add0~15\ : std_logic;
SIGNAL \acel10|Add0~16_combout\ : std_logic;
SIGNAL \acel10|s_divCounter~2_combout\ : std_logic;
SIGNAL \acel10|Add0~17\ : std_logic;
SIGNAL \acel10|Add0~18_combout\ : std_logic;
SIGNAL \acel10|Add0~19\ : std_logic;
SIGNAL \acel10|Add0~20_combout\ : std_logic;
SIGNAL \acel10|s_divCounter~3_combout\ : std_logic;
SIGNAL \acel10|Add0~21\ : std_logic;
SIGNAL \acel10|Add0~22_combout\ : std_logic;
SIGNAL \acel10|Add0~23\ : std_logic;
SIGNAL \acel10|Add0~24_combout\ : std_logic;
SIGNAL \acel10|Add0~25\ : std_logic;
SIGNAL \acel10|Add0~26_combout\ : std_logic;
SIGNAL \acel10|s_divCounter~4_combout\ : std_logic;
SIGNAL \acel10|Add0~27\ : std_logic;
SIGNAL \acel10|Add0~28_combout\ : std_logic;
SIGNAL \acel10|Add0~29\ : std_logic;
SIGNAL \acel10|Add0~30_combout\ : std_logic;
SIGNAL \acel10|Add0~31\ : std_logic;
SIGNAL \acel10|Add0~32_combout\ : std_logic;
SIGNAL \acel10|Add0~33\ : std_logic;
SIGNAL \acel10|Add0~34_combout\ : std_logic;
SIGNAL \acel10|s_divCounter~5_combout\ : std_logic;
SIGNAL \acel10|Add0~35\ : std_logic;
SIGNAL \acel10|Add0~36_combout\ : std_logic;
SIGNAL \acel10|s_divCounter~6_combout\ : std_logic;
SIGNAL \acel10|Add0~37\ : std_logic;
SIGNAL \acel10|Add0~38_combout\ : std_logic;
SIGNAL \acel10|Add0~39\ : std_logic;
SIGNAL \acel10|Add0~40_combout\ : std_logic;
SIGNAL \acel10|Add0~41\ : std_logic;
SIGNAL \acel10|Add0~42_combout\ : std_logic;
SIGNAL \acel10|s_divCounter~7_combout\ : std_logic;
SIGNAL \acel10|Add0~43\ : std_logic;
SIGNAL \acel10|Add0~44_combout\ : std_logic;
SIGNAL \acel10|Equal0~6_combout\ : std_logic;
SIGNAL \acel10|Equal0~5_combout\ : std_logic;
SIGNAL \acel10|Add0~45\ : std_logic;
SIGNAL \acel10|Add0~46_combout\ : std_logic;
SIGNAL \acel10|Add0~47\ : std_logic;
SIGNAL \acel10|Add0~48_combout\ : std_logic;
SIGNAL \acel10|Add0~49\ : std_logic;
SIGNAL \acel10|Add0~50_combout\ : std_logic;
SIGNAL \acel10|Add0~51\ : std_logic;
SIGNAL \acel10|Add0~52_combout\ : std_logic;
SIGNAL \acel10|Add0~53\ : std_logic;
SIGNAL \acel10|Add0~54_combout\ : std_logic;
SIGNAL \acel10|Add0~55\ : std_logic;
SIGNAL \acel10|Add0~56_combout\ : std_logic;
SIGNAL \acel10|Equal0~7_combout\ : std_logic;
SIGNAL \acel10|Add0~57\ : std_logic;
SIGNAL \acel10|Add0~58_combout\ : std_logic;
SIGNAL \acel10|Equal0~8_combout\ : std_logic;
SIGNAL \acel10|Equal0~2_combout\ : std_logic;
SIGNAL \acel10|Equal0~0_combout\ : std_logic;
SIGNAL \acel10|Equal0~1_combout\ : std_logic;
SIGNAL \acel10|Equal0~3_combout\ : std_logic;
SIGNAL \acel10|Equal0~4_combout\ : std_logic;
SIGNAL \acel10|Equal0~9_combout\ : std_logic;
SIGNAL \acel10|clkOut~q\ : std_logic;
SIGNAL \acel01|clkOut~q\ : std_logic;
SIGNAL \acel[0]~input_o\ : std_logic;
SIGNAL \Normal2|Add0~0_combout\ : std_logic;
SIGNAL \Normal1|Add0~0_combout\ : std_logic;
SIGNAL \Normal1|s_divCounter~0_combout\ : std_logic;
SIGNAL \Normal1|Add0~1\ : std_logic;
SIGNAL \Normal1|Add0~2_combout\ : std_logic;
SIGNAL \Normal1|Add0~3\ : std_logic;
SIGNAL \Normal1|Add0~4_combout\ : std_logic;
SIGNAL \Normal1|Add0~5\ : std_logic;
SIGNAL \Normal1|Add0~6_combout\ : std_logic;
SIGNAL \Normal1|Add0~7\ : std_logic;
SIGNAL \Normal1|Add0~8_combout\ : std_logic;
SIGNAL \Normal1|Add0~9\ : std_logic;
SIGNAL \Normal1|Add0~10_combout\ : std_logic;
SIGNAL \Normal1|Add0~11\ : std_logic;
SIGNAL \Normal1|Add0~12_combout\ : std_logic;
SIGNAL \Normal1|Add0~13\ : std_logic;
SIGNAL \Normal1|Add0~14_combout\ : std_logic;
SIGNAL \Normal1|Add0~15\ : std_logic;
SIGNAL \Normal1|Add0~16_combout\ : std_logic;
SIGNAL \Normal1|Add0~17\ : std_logic;
SIGNAL \Normal1|Add0~18_combout\ : std_logic;
SIGNAL \Normal1|Add0~19\ : std_logic;
SIGNAL \Normal1|Add0~20_combout\ : std_logic;
SIGNAL \Normal1|Add0~21\ : std_logic;
SIGNAL \Normal1|Add0~22_combout\ : std_logic;
SIGNAL \Normal1|Add0~23\ : std_logic;
SIGNAL \Normal1|Add0~24_combout\ : std_logic;
SIGNAL \Normal1|Add0~25\ : std_logic;
SIGNAL \Normal1|Add0~26_combout\ : std_logic;
SIGNAL \Normal1|Add0~27\ : std_logic;
SIGNAL \Normal1|Add0~28_combout\ : std_logic;
SIGNAL \Normal1|Add0~29\ : std_logic;
SIGNAL \Normal1|Add0~30_combout\ : std_logic;
SIGNAL \Normal1|Add0~31\ : std_logic;
SIGNAL \Normal1|Add0~32_combout\ : std_logic;
SIGNAL \Normal1|Add0~33\ : std_logic;
SIGNAL \Normal1|Add0~34_combout\ : std_logic;
SIGNAL \Normal1|Add0~35\ : std_logic;
SIGNAL \Normal1|Add0~36_combout\ : std_logic;
SIGNAL \Normal1|Add0~37\ : std_logic;
SIGNAL \Normal1|Add0~38_combout\ : std_logic;
SIGNAL \Normal1|Equal0~5_combout\ : std_logic;
SIGNAL \Normal1|Add0~39\ : std_logic;
SIGNAL \Normal1|Add0~40_combout\ : std_logic;
SIGNAL \Normal1|Add0~41\ : std_logic;
SIGNAL \Normal1|Add0~42_combout\ : std_logic;
SIGNAL \Normal1|Add0~43\ : std_logic;
SIGNAL \Normal1|Add0~44_combout\ : std_logic;
SIGNAL \Normal1|Add0~45\ : std_logic;
SIGNAL \Normal1|Add0~46_combout\ : std_logic;
SIGNAL \Normal1|Equal0~6_combout\ : std_logic;
SIGNAL \Normal1|Add0~47\ : std_logic;
SIGNAL \Normal1|Add0~48_combout\ : std_logic;
SIGNAL \Normal1|Add0~49\ : std_logic;
SIGNAL \Normal1|Add0~50_combout\ : std_logic;
SIGNAL \Normal1|Add0~51\ : std_logic;
SIGNAL \Normal1|Add0~52_combout\ : std_logic;
SIGNAL \Normal1|Add0~53\ : std_logic;
SIGNAL \Normal1|Add0~54_combout\ : std_logic;
SIGNAL \Normal1|Add0~55\ : std_logic;
SIGNAL \Normal1|Add0~56_combout\ : std_logic;
SIGNAL \Normal1|Add0~57\ : std_logic;
SIGNAL \Normal1|Add0~58_combout\ : std_logic;
SIGNAL \Normal1|Equal0~7_combout\ : std_logic;
SIGNAL \Normal1|Equal0~8_combout\ : std_logic;
SIGNAL \Normal1|Equal0~1_combout\ : std_logic;
SIGNAL \Normal1|Equal0~3_combout\ : std_logic;
SIGNAL \Normal1|Equal0~2_combout\ : std_logic;
SIGNAL \Normal1|Equal0~0_combout\ : std_logic;
SIGNAL \Normal1|Equal0~4_combout\ : std_logic;
SIGNAL \Normal1|Equal0~9_combout\ : std_logic;
SIGNAL \Normal1|clkOut~0_combout\ : std_logic;
SIGNAL \Normal1|clkOut~q\ : std_logic;
SIGNAL \Normal2|Add0~1\ : std_logic;
SIGNAL \Normal2|Add0~2_combout\ : std_logic;
SIGNAL \Normal2|Add0~3\ : std_logic;
SIGNAL \Normal2|Add0~4_combout\ : std_logic;
SIGNAL \Normal2|Add0~5\ : std_logic;
SIGNAL \Normal2|Add0~6_combout\ : std_logic;
SIGNAL \Normal2|Add0~7\ : std_logic;
SIGNAL \Normal2|Add0~8_combout\ : std_logic;
SIGNAL \Normal2|Add0~9\ : std_logic;
SIGNAL \Normal2|Add0~10_combout\ : std_logic;
SIGNAL \Normal2|Add0~11\ : std_logic;
SIGNAL \Normal2|Add0~12_combout\ : std_logic;
SIGNAL \Normal2|Add0~13\ : std_logic;
SIGNAL \Normal2|Add0~14_combout\ : std_logic;
SIGNAL \Normal2|Add0~15\ : std_logic;
SIGNAL \Normal2|Add0~16_combout\ : std_logic;
SIGNAL \Normal2|s_divCounter~1_combout\ : std_logic;
SIGNAL \Normal2|Add0~17\ : std_logic;
SIGNAL \Normal2|Add0~18_combout\ : std_logic;
SIGNAL \Normal2|s_divCounter~0_combout\ : std_logic;
SIGNAL \Normal2|Add0~19\ : std_logic;
SIGNAL \Normal2|Add0~20_combout\ : std_logic;
SIGNAL \Normal2|s_divCounter~2_combout\ : std_logic;
SIGNAL \Normal2|Add0~21\ : std_logic;
SIGNAL \Normal2|Add0~22_combout\ : std_logic;
SIGNAL \Normal2|s_divCounter~3_combout\ : std_logic;
SIGNAL \Normal2|Add0~23\ : std_logic;
SIGNAL \Normal2|Add0~24_combout\ : std_logic;
SIGNAL \Normal2|Add0~25\ : std_logic;
SIGNAL \Normal2|Add0~26_combout\ : std_logic;
SIGNAL \Normal2|s_divCounter~4_combout\ : std_logic;
SIGNAL \Normal2|Add0~27\ : std_logic;
SIGNAL \Normal2|Add0~28_combout\ : std_logic;
SIGNAL \Normal2|Add0~29\ : std_logic;
SIGNAL \Normal2|Add0~30_combout\ : std_logic;
SIGNAL \Normal2|Add0~31\ : std_logic;
SIGNAL \Normal2|Add0~32_combout\ : std_logic;
SIGNAL \Normal2|Add0~33\ : std_logic;
SIGNAL \Normal2|Add0~34_combout\ : std_logic;
SIGNAL \Normal2|Add0~35\ : std_logic;
SIGNAL \Normal2|Add0~36_combout\ : std_logic;
SIGNAL \Normal2|Add0~37\ : std_logic;
SIGNAL \Normal2|Add0~38_combout\ : std_logic;
SIGNAL \Normal2|s_divCounter~5_combout\ : std_logic;
SIGNAL \Normal2|Equal0~5_combout\ : std_logic;
SIGNAL \Normal2|Add0~39\ : std_logic;
SIGNAL \Normal2|Add0~40_combout\ : std_logic;
SIGNAL \Normal2|Add0~41\ : std_logic;
SIGNAL \Normal2|Add0~42_combout\ : std_logic;
SIGNAL \Normal2|s_divCounter~6_combout\ : std_logic;
SIGNAL \Normal2|Add0~43\ : std_logic;
SIGNAL \Normal2|Add0~44_combout\ : std_logic;
SIGNAL \Normal2|s_divCounter~7_combout\ : std_logic;
SIGNAL \Normal2|Add0~45\ : std_logic;
SIGNAL \Normal2|Add0~46_combout\ : std_logic;
SIGNAL \Normal2|Equal0~6_combout\ : std_logic;
SIGNAL \Normal2|Equal0~0_combout\ : std_logic;
SIGNAL \Normal2|Equal0~1_combout\ : std_logic;
SIGNAL \Normal2|Equal0~3_combout\ : std_logic;
SIGNAL \Normal2|Equal0~2_combout\ : std_logic;
SIGNAL \Normal2|Equal0~4_combout\ : std_logic;
SIGNAL \Normal2|Add0~47\ : std_logic;
SIGNAL \Normal2|Add0~48_combout\ : std_logic;
SIGNAL \Normal2|s_divCounter~8_combout\ : std_logic;
SIGNAL \Normal2|Add0~49\ : std_logic;
SIGNAL \Normal2|Add0~50_combout\ : std_logic;
SIGNAL \Normal2|Add0~51\ : std_logic;
SIGNAL \Normal2|Add0~52_combout\ : std_logic;
SIGNAL \Normal2|Add0~53\ : std_logic;
SIGNAL \Normal2|Add0~54_combout\ : std_logic;
SIGNAL \Normal2|s_divCounter~9_combout\ : std_logic;
SIGNAL \Normal2|Equal0~7_combout\ : std_logic;
SIGNAL \Normal2|Add0~55\ : std_logic;
SIGNAL \Normal2|Add0~56_combout\ : std_logic;
SIGNAL \Normal2|s_divCounter~10_combout\ : std_logic;
SIGNAL \Normal2|Add0~57\ : std_logic;
SIGNAL \Normal2|Add0~58_combout\ : std_logic;
SIGNAL \Normal2|Add0~59\ : std_logic;
SIGNAL \Normal2|Add0~60_combout\ : std_logic;
SIGNAL \Normal2|s_divCounter~11_combout\ : std_logic;
SIGNAL \Normal2|Equal0~8_combout\ : std_logic;
SIGNAL \Normal2|Equal0~9_combout\ : std_logic;
SIGNAL \Normal2|clkOut~q\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \acel[1]~input_o\ : std_logic;
SIGNAL \saida1|yout~0_combout\ : std_logic;
SIGNAL \acel11|Add0~0_combout\ : std_logic;
SIGNAL \acel11|s_divCounter~3_combout\ : std_logic;
SIGNAL \acel11|Add0~1\ : std_logic;
SIGNAL \acel11|Add0~2_combout\ : std_logic;
SIGNAL \acel11|Add0~3\ : std_logic;
SIGNAL \acel11|Add0~4_combout\ : std_logic;
SIGNAL \acel11|s_divCounter~2_combout\ : std_logic;
SIGNAL \acel11|Add0~5\ : std_logic;
SIGNAL \acel11|Add0~6_combout\ : std_logic;
SIGNAL \acel11|Add0~7\ : std_logic;
SIGNAL \acel11|Add0~8_combout\ : std_logic;
SIGNAL \acel11|s_divCounter~1_combout\ : std_logic;
SIGNAL \acel11|Add0~9\ : std_logic;
SIGNAL \acel11|Add0~10_combout\ : std_logic;
SIGNAL \acel11|s_divCounter~0_combout\ : std_logic;
SIGNAL \acel11|Add0~11\ : std_logic;
SIGNAL \acel11|Add0~12_combout\ : std_logic;
SIGNAL \acel11|Add0~13\ : std_logic;
SIGNAL \acel11|Add0~14_combout\ : std_logic;
SIGNAL \acel11|Add0~15\ : std_logic;
SIGNAL \acel11|Add0~16_combout\ : std_logic;
SIGNAL \acel11|s_divCounter~4_combout\ : std_logic;
SIGNAL \acel11|Add0~17\ : std_logic;
SIGNAL \acel11|Add0~18_combout\ : std_logic;
SIGNAL \acel11|s_divCounter~5_combout\ : std_logic;
SIGNAL \acel11|Add0~19\ : std_logic;
SIGNAL \acel11|Add0~20_combout\ : std_logic;
SIGNAL \acel11|s_divCounter~6_combout\ : std_logic;
SIGNAL \acel11|Add0~21\ : std_logic;
SIGNAL \acel11|Add0~22_combout\ : std_logic;
SIGNAL \acel11|Add0~23\ : std_logic;
SIGNAL \acel11|Add0~24_combout\ : std_logic;
SIGNAL \acel11|s_divCounter~7_combout\ : std_logic;
SIGNAL \acel11|Add0~25\ : std_logic;
SIGNAL \acel11|Add0~26_combout\ : std_logic;
SIGNAL \acel11|s_divCounter~8_combout\ : std_logic;
SIGNAL \acel11|Add0~27\ : std_logic;
SIGNAL \acel11|Add0~28_combout\ : std_logic;
SIGNAL \acel11|Add0~29\ : std_logic;
SIGNAL \acel11|Add0~30_combout\ : std_logic;
SIGNAL \acel11|s_divCounter~9_combout\ : std_logic;
SIGNAL \acel11|Add0~31\ : std_logic;
SIGNAL \acel11|Add0~32_combout\ : std_logic;
SIGNAL \acel11|Add0~33\ : std_logic;
SIGNAL \acel11|Add0~34_combout\ : std_logic;
SIGNAL \acel11|Add0~35\ : std_logic;
SIGNAL \acel11|Add0~36_combout\ : std_logic;
SIGNAL \acel11|s_divCounter~10_combout\ : std_logic;
SIGNAL \acel11|Add0~37\ : std_logic;
SIGNAL \acel11|Add0~38_combout\ : std_logic;
SIGNAL \acel11|s_divCounter~11_combout\ : std_logic;
SIGNAL \acel11|Equal0~5_combout\ : std_logic;
SIGNAL \acel11|Add0~39\ : std_logic;
SIGNAL \acel11|Add0~40_combout\ : std_logic;
SIGNAL \acel11|Add0~41\ : std_logic;
SIGNAL \acel11|Add0~42_combout\ : std_logic;
SIGNAL \acel11|Add0~43\ : std_logic;
SIGNAL \acel11|Add0~44_combout\ : std_logic;
SIGNAL \acel11|Add0~45\ : std_logic;
SIGNAL \acel11|Add0~46_combout\ : std_logic;
SIGNAL \acel11|Equal0~6_combout\ : std_logic;
SIGNAL \acel11|Equal0~1_combout\ : std_logic;
SIGNAL \acel11|Equal0~3_combout\ : std_logic;
SIGNAL \acel11|Equal0~0_combout\ : std_logic;
SIGNAL \acel11|Equal0~2_combout\ : std_logic;
SIGNAL \acel11|Equal0~4_combout\ : std_logic;
SIGNAL \acel11|Add0~47\ : std_logic;
SIGNAL \acel11|Add0~48_combout\ : std_logic;
SIGNAL \acel11|Add0~49\ : std_logic;
SIGNAL \acel11|Add0~50_combout\ : std_logic;
SIGNAL \acel11|Add0~51\ : std_logic;
SIGNAL \acel11|Add0~52_combout\ : std_logic;
SIGNAL \acel11|Add0~53\ : std_logic;
SIGNAL \acel11|Add0~54_combout\ : std_logic;
SIGNAL \acel11|Add0~55\ : std_logic;
SIGNAL \acel11|Add0~56_combout\ : std_logic;
SIGNAL \acel11|Add0~57\ : std_logic;
SIGNAL \acel11|Add0~58_combout\ : std_logic;
SIGNAL \acel11|Equal0~7_combout\ : std_logic;
SIGNAL \acel11|Add0~59\ : std_logic;
SIGNAL \acel11|Add0~60_combout\ : std_logic;
SIGNAL \acel11|Equal0~8_combout\ : std_logic;
SIGNAL \acel11|Equal0~9_combout\ : std_logic;
SIGNAL \acel11|clkOut~q\ : std_logic;
SIGNAL \saida1|yout~1_combout\ : std_logic;
SIGNAL \saida2|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \acel10|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \acel11|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \Normal1|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \Normal2|s_divCounter\ : std_logic_vector(30 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clockIn <= clockIn;
ww_acel <= acel;
pulseHex <= ww_pulseHex;
pulseOut <= ww_pulseOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clockIn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clockIn~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y73_N2
\pulseHex~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida2|clkOut~q\,
	devoe => ww_devoe,
	o => \pulseHex~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\pulseOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida1|yout~1_combout\,
	devoe => ww_devoe,
	o => \pulseOut~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clockIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clockIn,
	o => \clockIn~input_o\);

-- Location: CLKCTRL_G2
\clockIn~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clockIn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clockIn~inputclkctrl_outclk\);

-- Location: LCCOMB_X54_Y70_N2
\saida2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~0_combout\ = \saida2|s_divCounter\(0) $ (VCC)
-- \saida2|Add0~1\ = CARRY(\saida2|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(0),
	datad => VCC,
	combout => \saida2|Add0~0_combout\,
	cout => \saida2|Add0~1\);

-- Location: FF_X54_Y70_N3
\saida2|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(0));

-- Location: LCCOMB_X54_Y70_N4
\saida2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~2_combout\ = (\saida2|s_divCounter\(1) & (!\saida2|Add0~1\)) # (!\saida2|s_divCounter\(1) & ((\saida2|Add0~1\) # (GND)))
-- \saida2|Add0~3\ = CARRY((!\saida2|Add0~1\) # (!\saida2|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(1),
	datad => VCC,
	cin => \saida2|Add0~1\,
	combout => \saida2|Add0~2_combout\,
	cout => \saida2|Add0~3\);

-- Location: FF_X54_Y70_N5
\saida2|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(1));

-- Location: LCCOMB_X54_Y70_N6
\saida2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~4_combout\ = (\saida2|s_divCounter\(2) & (\saida2|Add0~3\ $ (GND))) # (!\saida2|s_divCounter\(2) & (!\saida2|Add0~3\ & VCC))
-- \saida2|Add0~5\ = CARRY((\saida2|s_divCounter\(2) & !\saida2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(2),
	datad => VCC,
	cin => \saida2|Add0~3\,
	combout => \saida2|Add0~4_combout\,
	cout => \saida2|Add0~5\);

-- Location: FF_X54_Y70_N7
\saida2|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(2));

-- Location: LCCOMB_X54_Y70_N8
\saida2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~6_combout\ = (\saida2|s_divCounter\(3) & (!\saida2|Add0~5\)) # (!\saida2|s_divCounter\(3) & ((\saida2|Add0~5\) # (GND)))
-- \saida2|Add0~7\ = CARRY((!\saida2|Add0~5\) # (!\saida2|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(3),
	datad => VCC,
	cin => \saida2|Add0~5\,
	combout => \saida2|Add0~6_combout\,
	cout => \saida2|Add0~7\);

-- Location: FF_X54_Y70_N9
\saida2|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(3));

-- Location: LCCOMB_X54_Y70_N10
\saida2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~8_combout\ = (\saida2|s_divCounter\(4) & (\saida2|Add0~7\ $ (GND))) # (!\saida2|s_divCounter\(4) & (!\saida2|Add0~7\ & VCC))
-- \saida2|Add0~9\ = CARRY((\saida2|s_divCounter\(4) & !\saida2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(4),
	datad => VCC,
	cin => \saida2|Add0~7\,
	combout => \saida2|Add0~8_combout\,
	cout => \saida2|Add0~9\);

-- Location: FF_X54_Y70_N11
\saida2|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(4));

-- Location: LCCOMB_X54_Y70_N12
\saida2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~10_combout\ = (\saida2|s_divCounter\(5) & (!\saida2|Add0~9\)) # (!\saida2|s_divCounter\(5) & ((\saida2|Add0~9\) # (GND)))
-- \saida2|Add0~11\ = CARRY((!\saida2|Add0~9\) # (!\saida2|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(5),
	datad => VCC,
	cin => \saida2|Add0~9\,
	combout => \saida2|Add0~10_combout\,
	cout => \saida2|Add0~11\);

-- Location: FF_X54_Y70_N13
\saida2|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(5));

-- Location: LCCOMB_X54_Y70_N14
\saida2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~12_combout\ = (\saida2|s_divCounter\(6) & (\saida2|Add0~11\ $ (GND))) # (!\saida2|s_divCounter\(6) & (!\saida2|Add0~11\ & VCC))
-- \saida2|Add0~13\ = CARRY((\saida2|s_divCounter\(6) & !\saida2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(6),
	datad => VCC,
	cin => \saida2|Add0~11\,
	combout => \saida2|Add0~12_combout\,
	cout => \saida2|Add0~13\);

-- Location: FF_X54_Y70_N15
\saida2|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(6));

-- Location: LCCOMB_X54_Y70_N16
\saida2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~14_combout\ = (\saida2|s_divCounter\(7) & (!\saida2|Add0~13\)) # (!\saida2|s_divCounter\(7) & ((\saida2|Add0~13\) # (GND)))
-- \saida2|Add0~15\ = CARRY((!\saida2|Add0~13\) # (!\saida2|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(7),
	datad => VCC,
	cin => \saida2|Add0~13\,
	combout => \saida2|Add0~14_combout\,
	cout => \saida2|Add0~15\);

-- Location: LCCOMB_X55_Y69_N14
\saida2|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|s_divCounter~7_combout\ = (!\saida2|Equal0~9_combout\ & \saida2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \saida2|Equal0~9_combout\,
	datad => \saida2|Add0~14_combout\,
	combout => \saida2|s_divCounter~7_combout\);

-- Location: FF_X55_Y69_N15
\saida2|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(7));

-- Location: LCCOMB_X54_Y70_N18
\saida2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~16_combout\ = (\saida2|s_divCounter\(8) & (\saida2|Add0~15\ $ (GND))) # (!\saida2|s_divCounter\(8) & (!\saida2|Add0~15\ & VCC))
-- \saida2|Add0~17\ = CARRY((\saida2|s_divCounter\(8) & !\saida2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(8),
	datad => VCC,
	cin => \saida2|Add0~15\,
	combout => \saida2|Add0~16_combout\,
	cout => \saida2|Add0~17\);

-- Location: FF_X54_Y70_N19
\saida2|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(8));

-- Location: LCCOMB_X54_Y70_N20
\saida2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~18_combout\ = (\saida2|s_divCounter\(9) & (!\saida2|Add0~17\)) # (!\saida2|s_divCounter\(9) & ((\saida2|Add0~17\) # (GND)))
-- \saida2|Add0~19\ = CARRY((!\saida2|Add0~17\) # (!\saida2|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(9),
	datad => VCC,
	cin => \saida2|Add0~17\,
	combout => \saida2|Add0~18_combout\,
	cout => \saida2|Add0~19\);

-- Location: FF_X54_Y70_N21
\saida2|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(9));

-- Location: LCCOMB_X54_Y70_N22
\saida2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~20_combout\ = (\saida2|s_divCounter\(10) & (\saida2|Add0~19\ $ (GND))) # (!\saida2|s_divCounter\(10) & (!\saida2|Add0~19\ & VCC))
-- \saida2|Add0~21\ = CARRY((\saida2|s_divCounter\(10) & !\saida2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(10),
	datad => VCC,
	cin => \saida2|Add0~19\,
	combout => \saida2|Add0~20_combout\,
	cout => \saida2|Add0~21\);

-- Location: FF_X54_Y70_N23
\saida2|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(10));

-- Location: LCCOMB_X54_Y70_N24
\saida2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~22_combout\ = (\saida2|s_divCounter\(11) & (!\saida2|Add0~21\)) # (!\saida2|s_divCounter\(11) & ((\saida2|Add0~21\) # (GND)))
-- \saida2|Add0~23\ = CARRY((!\saida2|Add0~21\) # (!\saida2|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(11),
	datad => VCC,
	cin => \saida2|Add0~21\,
	combout => \saida2|Add0~22_combout\,
	cout => \saida2|Add0~23\);

-- Location: FF_X54_Y70_N25
\saida2|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(11));

-- Location: LCCOMB_X54_Y70_N26
\saida2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~24_combout\ = (\saida2|s_divCounter\(12) & (\saida2|Add0~23\ $ (GND))) # (!\saida2|s_divCounter\(12) & (!\saida2|Add0~23\ & VCC))
-- \saida2|Add0~25\ = CARRY((\saida2|s_divCounter\(12) & !\saida2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(12),
	datad => VCC,
	cin => \saida2|Add0~23\,
	combout => \saida2|Add0~24_combout\,
	cout => \saida2|Add0~25\);

-- Location: LCCOMB_X55_Y69_N0
\saida2|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|s_divCounter~6_combout\ = (!\saida2|Equal0~9_combout\ & \saida2|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|Equal0~9_combout\,
	datac => \saida2|Add0~24_combout\,
	combout => \saida2|s_divCounter~6_combout\);

-- Location: FF_X55_Y69_N1
\saida2|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(12));

-- Location: LCCOMB_X54_Y70_N28
\saida2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~26_combout\ = (\saida2|s_divCounter\(13) & (!\saida2|Add0~25\)) # (!\saida2|s_divCounter\(13) & ((\saida2|Add0~25\) # (GND)))
-- \saida2|Add0~27\ = CARRY((!\saida2|Add0~25\) # (!\saida2|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(13),
	datad => VCC,
	cin => \saida2|Add0~25\,
	combout => \saida2|Add0~26_combout\,
	cout => \saida2|Add0~27\);

-- Location: LCCOMB_X55_Y69_N10
\saida2|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|s_divCounter~5_combout\ = (\saida2|Add0~26_combout\ & !\saida2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|Add0~26_combout\,
	datac => \saida2|Equal0~9_combout\,
	combout => \saida2|s_divCounter~5_combout\);

-- Location: FF_X55_Y69_N11
\saida2|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(13));

-- Location: LCCOMB_X54_Y70_N30
\saida2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~28_combout\ = (\saida2|s_divCounter\(14) & (\saida2|Add0~27\ $ (GND))) # (!\saida2|s_divCounter\(14) & (!\saida2|Add0~27\ & VCC))
-- \saida2|Add0~29\ = CARRY((\saida2|s_divCounter\(14) & !\saida2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(14),
	datad => VCC,
	cin => \saida2|Add0~27\,
	combout => \saida2|Add0~28_combout\,
	cout => \saida2|Add0~29\);

-- Location: LCCOMB_X53_Y69_N14
\saida2|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|s_divCounter~4_combout\ = (\saida2|Add0~28_combout\ & !\saida2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \saida2|Add0~28_combout\,
	datad => \saida2|Equal0~9_combout\,
	combout => \saida2|s_divCounter~4_combout\);

-- Location: FF_X53_Y69_N15
\saida2|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(14));

-- Location: LCCOMB_X54_Y69_N0
\saida2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~30_combout\ = (\saida2|s_divCounter\(15) & (!\saida2|Add0~29\)) # (!\saida2|s_divCounter\(15) & ((\saida2|Add0~29\) # (GND)))
-- \saida2|Add0~31\ = CARRY((!\saida2|Add0~29\) # (!\saida2|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(15),
	datad => VCC,
	cin => \saida2|Add0~29\,
	combout => \saida2|Add0~30_combout\,
	cout => \saida2|Add0~31\);

-- Location: LCCOMB_X55_Y69_N20
\saida2|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|s_divCounter~11_combout\ = (\saida2|Add0~30_combout\ & !\saida2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|Add0~30_combout\,
	datac => \saida2|Equal0~9_combout\,
	combout => \saida2|s_divCounter~11_combout\);

-- Location: FF_X55_Y69_N21
\saida2|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(15));

-- Location: LCCOMB_X54_Y69_N2
\saida2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~32_combout\ = (\saida2|s_divCounter\(16) & (\saida2|Add0~31\ $ (GND))) # (!\saida2|s_divCounter\(16) & (!\saida2|Add0~31\ & VCC))
-- \saida2|Add0~33\ = CARRY((\saida2|s_divCounter\(16) & !\saida2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(16),
	datad => VCC,
	cin => \saida2|Add0~31\,
	combout => \saida2|Add0~32_combout\,
	cout => \saida2|Add0~33\);

-- Location: FF_X54_Y69_N3
\saida2|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(16));

-- Location: LCCOMB_X54_Y69_N4
\saida2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~34_combout\ = (\saida2|s_divCounter\(17) & (!\saida2|Add0~33\)) # (!\saida2|s_divCounter\(17) & ((\saida2|Add0~33\) # (GND)))
-- \saida2|Add0~35\ = CARRY((!\saida2|Add0~33\) # (!\saida2|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(17),
	datad => VCC,
	cin => \saida2|Add0~33\,
	combout => \saida2|Add0~34_combout\,
	cout => \saida2|Add0~35\);

-- Location: LCCOMB_X55_Y69_N6
\saida2|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|s_divCounter~10_combout\ = (!\saida2|Equal0~9_combout\ & \saida2|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \saida2|Equal0~9_combout\,
	datad => \saida2|Add0~34_combout\,
	combout => \saida2|s_divCounter~10_combout\);

-- Location: FF_X55_Y69_N7
\saida2|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(17));

-- Location: LCCOMB_X54_Y69_N6
\saida2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~36_combout\ = (\saida2|s_divCounter\(18) & (\saida2|Add0~35\ $ (GND))) # (!\saida2|s_divCounter\(18) & (!\saida2|Add0~35\ & VCC))
-- \saida2|Add0~37\ = CARRY((\saida2|s_divCounter\(18) & !\saida2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(18),
	datad => VCC,
	cin => \saida2|Add0~35\,
	combout => \saida2|Add0~36_combout\,
	cout => \saida2|Add0~37\);

-- Location: FF_X54_Y69_N7
\saida2|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(18));

-- Location: LCCOMB_X54_Y69_N8
\saida2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~38_combout\ = (\saida2|s_divCounter\(19) & (!\saida2|Add0~37\)) # (!\saida2|s_divCounter\(19) & ((\saida2|Add0~37\) # (GND)))
-- \saida2|Add0~39\ = CARRY((!\saida2|Add0~37\) # (!\saida2|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(19),
	datad => VCC,
	cin => \saida2|Add0~37\,
	combout => \saida2|Add0~38_combout\,
	cout => \saida2|Add0~39\);

-- Location: LCCOMB_X53_Y69_N16
\saida2|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|s_divCounter~3_combout\ = (\saida2|Add0~38_combout\ & !\saida2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \saida2|Add0~38_combout\,
	datad => \saida2|Equal0~9_combout\,
	combout => \saida2|s_divCounter~3_combout\);

-- Location: FF_X53_Y69_N17
\saida2|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(19));

-- Location: LCCOMB_X54_Y69_N10
\saida2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~40_combout\ = (\saida2|s_divCounter\(20) & (\saida2|Add0~39\ $ (GND))) # (!\saida2|s_divCounter\(20) & (!\saida2|Add0~39\ & VCC))
-- \saida2|Add0~41\ = CARRY((\saida2|s_divCounter\(20) & !\saida2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(20),
	datad => VCC,
	cin => \saida2|Add0~39\,
	combout => \saida2|Add0~40_combout\,
	cout => \saida2|Add0~41\);

-- Location: LCCOMB_X53_Y69_N6
\saida2|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|s_divCounter~2_combout\ = (\saida2|Add0~40_combout\ & !\saida2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \saida2|Add0~40_combout\,
	datad => \saida2|Equal0~9_combout\,
	combout => \saida2|s_divCounter~2_combout\);

-- Location: FF_X53_Y69_N7
\saida2|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(20));

-- Location: LCCOMB_X54_Y69_N12
\saida2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~42_combout\ = (\saida2|s_divCounter\(21) & (!\saida2|Add0~41\)) # (!\saida2|s_divCounter\(21) & ((\saida2|Add0~41\) # (GND)))
-- \saida2|Add0~43\ = CARRY((!\saida2|Add0~41\) # (!\saida2|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(21),
	datad => VCC,
	cin => \saida2|Add0~41\,
	combout => \saida2|Add0~42_combout\,
	cout => \saida2|Add0~43\);

-- Location: LCCOMB_X53_Y69_N8
\saida2|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|s_divCounter~1_combout\ = (\saida2|Add0~42_combout\ & !\saida2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \saida2|Add0~42_combout\,
	datad => \saida2|Equal0~9_combout\,
	combout => \saida2|s_divCounter~1_combout\);

-- Location: FF_X53_Y69_N9
\saida2|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(21));

-- Location: LCCOMB_X54_Y69_N14
\saida2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~44_combout\ = (\saida2|s_divCounter\(22) & (\saida2|Add0~43\ $ (GND))) # (!\saida2|s_divCounter\(22) & (!\saida2|Add0~43\ & VCC))
-- \saida2|Add0~45\ = CARRY((\saida2|s_divCounter\(22) & !\saida2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(22),
	datad => VCC,
	cin => \saida2|Add0~43\,
	combout => \saida2|Add0~44_combout\,
	cout => \saida2|Add0~45\);

-- Location: LCCOMB_X55_Y69_N16
\saida2|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|s_divCounter~0_combout\ = (!\saida2|Equal0~9_combout\ & \saida2|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \saida2|Equal0~9_combout\,
	datad => \saida2|Add0~44_combout\,
	combout => \saida2|s_divCounter~0_combout\);

-- Location: FF_X55_Y69_N17
\saida2|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(22));

-- Location: LCCOMB_X54_Y69_N16
\saida2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~46_combout\ = (\saida2|s_divCounter\(23) & (!\saida2|Add0~45\)) # (!\saida2|s_divCounter\(23) & ((\saida2|Add0~45\) # (GND)))
-- \saida2|Add0~47\ = CARRY((!\saida2|Add0~45\) # (!\saida2|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(23),
	datad => VCC,
	cin => \saida2|Add0~45\,
	combout => \saida2|Add0~46_combout\,
	cout => \saida2|Add0~47\);

-- Location: LCCOMB_X55_Y69_N18
\saida2|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|s_divCounter~9_combout\ = (!\saida2|Equal0~9_combout\ & \saida2|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|Equal0~9_combout\,
	datac => \saida2|Add0~46_combout\,
	combout => \saida2|s_divCounter~9_combout\);

-- Location: FF_X55_Y69_N19
\saida2|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(23));

-- Location: LCCOMB_X54_Y69_N18
\saida2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~48_combout\ = (\saida2|s_divCounter\(24) & (\saida2|Add0~47\ $ (GND))) # (!\saida2|s_divCounter\(24) & (!\saida2|Add0~47\ & VCC))
-- \saida2|Add0~49\ = CARRY((\saida2|s_divCounter\(24) & !\saida2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(24),
	datad => VCC,
	cin => \saida2|Add0~47\,
	combout => \saida2|Add0~48_combout\,
	cout => \saida2|Add0~49\);

-- Location: FF_X54_Y69_N19
\saida2|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(24));

-- Location: LCCOMB_X54_Y69_N20
\saida2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~50_combout\ = (\saida2|s_divCounter\(25) & (!\saida2|Add0~49\)) # (!\saida2|s_divCounter\(25) & ((\saida2|Add0~49\) # (GND)))
-- \saida2|Add0~51\ = CARRY((!\saida2|Add0~49\) # (!\saida2|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(25),
	datad => VCC,
	cin => \saida2|Add0~49\,
	combout => \saida2|Add0~50_combout\,
	cout => \saida2|Add0~51\);

-- Location: LCCOMB_X55_Y69_N4
\saida2|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|s_divCounter~8_combout\ = (!\saida2|Equal0~9_combout\ & \saida2|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \saida2|Equal0~9_combout\,
	datad => \saida2|Add0~50_combout\,
	combout => \saida2|s_divCounter~8_combout\);

-- Location: FF_X55_Y69_N5
\saida2|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(25));

-- Location: LCCOMB_X55_Y69_N22
\saida2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Equal0~7_combout\ = (\saida2|s_divCounter\(25) & (\saida2|s_divCounter\(23) & (!\saida2|s_divCounter\(18) & !\saida2|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(25),
	datab => \saida2|s_divCounter\(23),
	datac => \saida2|s_divCounter\(18),
	datad => \saida2|s_divCounter\(24),
	combout => \saida2|Equal0~7_combout\);

-- Location: LCCOMB_X53_Y69_N30
\saida2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Equal0~5_combout\ = (!\saida2|s_divCounter\(8) & (\saida2|s_divCounter\(4) & (\saida2|s_divCounter\(5) & !\saida2|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(8),
	datab => \saida2|s_divCounter\(4),
	datac => \saida2|s_divCounter\(5),
	datad => \saida2|s_divCounter\(7),
	combout => \saida2|Equal0~5_combout\);

-- Location: LCCOMB_X54_Y69_N22
\saida2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~52_combout\ = (\saida2|s_divCounter\(26) & (\saida2|Add0~51\ $ (GND))) # (!\saida2|s_divCounter\(26) & (!\saida2|Add0~51\ & VCC))
-- \saida2|Add0~53\ = CARRY((\saida2|s_divCounter\(26) & !\saida2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(26),
	datad => VCC,
	cin => \saida2|Add0~51\,
	combout => \saida2|Add0~52_combout\,
	cout => \saida2|Add0~53\);

-- Location: FF_X54_Y69_N23
\saida2|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(26));

-- Location: LCCOMB_X54_Y69_N24
\saida2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~54_combout\ = (\saida2|s_divCounter\(27) & (!\saida2|Add0~53\)) # (!\saida2|s_divCounter\(27) & ((\saida2|Add0~53\) # (GND)))
-- \saida2|Add0~55\ = CARRY((!\saida2|Add0~53\) # (!\saida2|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(27),
	datad => VCC,
	cin => \saida2|Add0~53\,
	combout => \saida2|Add0~54_combout\,
	cout => \saida2|Add0~55\);

-- Location: FF_X54_Y69_N25
\saida2|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(27));

-- Location: LCCOMB_X54_Y69_N26
\saida2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~56_combout\ = (\saida2|s_divCounter\(28) & (\saida2|Add0~55\ $ (GND))) # (!\saida2|s_divCounter\(28) & (!\saida2|Add0~55\ & VCC))
-- \saida2|Add0~57\ = CARRY((\saida2|s_divCounter\(28) & !\saida2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(28),
	datad => VCC,
	cin => \saida2|Add0~55\,
	combout => \saida2|Add0~56_combout\,
	cout => \saida2|Add0~57\);

-- Location: FF_X54_Y69_N27
\saida2|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(28));

-- Location: LCCOMB_X53_Y69_N26
\saida2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Equal0~1_combout\ = (\saida2|s_divCounter\(22) & (!\saida2|s_divCounter\(26) & (!\saida2|s_divCounter\(28) & !\saida2|s_divCounter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(22),
	datab => \saida2|s_divCounter\(26),
	datac => \saida2|s_divCounter\(28),
	datad => \saida2|s_divCounter\(27),
	combout => \saida2|Equal0~1_combout\);

-- Location: LCCOMB_X53_Y69_N28
\saida2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Equal0~2_combout\ = (\saida2|s_divCounter\(20) & (\saida2|s_divCounter\(21) & (\saida2|s_divCounter\(14) & \saida2|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(20),
	datab => \saida2|s_divCounter\(21),
	datac => \saida2|s_divCounter\(14),
	datad => \saida2|s_divCounter\(19),
	combout => \saida2|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y69_N28
\saida2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~58_combout\ = (\saida2|s_divCounter\(29) & (!\saida2|Add0~57\)) # (!\saida2|s_divCounter\(29) & ((\saida2|Add0~57\) # (GND)))
-- \saida2|Add0~59\ = CARRY((!\saida2|Add0~57\) # (!\saida2|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(29),
	datad => VCC,
	cin => \saida2|Add0~57\,
	combout => \saida2|Add0~58_combout\,
	cout => \saida2|Add0~59\);

-- Location: FF_X54_Y69_N29
\saida2|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(29));

-- Location: LCCOMB_X54_Y69_N30
\saida2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Add0~60_combout\ = \saida2|s_divCounter\(30) $ (!\saida2|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(30),
	cin => \saida2|Add0~59\,
	combout => \saida2|Add0~60_combout\);

-- Location: FF_X54_Y69_N31
\saida2|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|s_divCounter\(30));

-- Location: LCCOMB_X53_Y69_N4
\saida2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Equal0~0_combout\ = (\saida2|s_divCounter\(1) & (!\saida2|s_divCounter\(29) & (!\saida2|s_divCounter\(30) & \saida2|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(1),
	datab => \saida2|s_divCounter\(29),
	datac => \saida2|s_divCounter\(30),
	datad => \saida2|s_divCounter\(0),
	combout => \saida2|Equal0~0_combout\);

-- Location: LCCOMB_X53_Y69_N2
\saida2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Equal0~3_combout\ = (!\saida2|s_divCounter\(10) & (\saida2|s_divCounter\(12) & (\saida2|s_divCounter\(13) & !\saida2|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(10),
	datab => \saida2|s_divCounter\(12),
	datac => \saida2|s_divCounter\(13),
	datad => \saida2|s_divCounter\(9),
	combout => \saida2|Equal0~3_combout\);

-- Location: LCCOMB_X53_Y69_N20
\saida2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Equal0~4_combout\ = (\saida2|Equal0~1_combout\ & (\saida2|Equal0~2_combout\ & (\saida2|Equal0~0_combout\ & \saida2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|Equal0~1_combout\,
	datab => \saida2|Equal0~2_combout\,
	datac => \saida2|Equal0~0_combout\,
	datad => \saida2|Equal0~3_combout\,
	combout => \saida2|Equal0~4_combout\);

-- Location: LCCOMB_X53_Y69_N24
\saida2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Equal0~6_combout\ = (\saida2|s_divCounter\(3) & (\saida2|s_divCounter\(2) & (\saida2|Equal0~5_combout\ & \saida2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(3),
	datab => \saida2|s_divCounter\(2),
	datac => \saida2|Equal0~5_combout\,
	datad => \saida2|Equal0~4_combout\,
	combout => \saida2|Equal0~6_combout\);

-- Location: LCCOMB_X55_Y69_N12
\saida2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Equal0~8_combout\ = (\saida2|s_divCounter\(17) & (\saida2|s_divCounter\(15) & (!\saida2|s_divCounter\(11) & !\saida2|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(17),
	datab => \saida2|s_divCounter\(15),
	datac => \saida2|s_divCounter\(11),
	datad => \saida2|s_divCounter\(16),
	combout => \saida2|Equal0~8_combout\);

-- Location: LCCOMB_X55_Y69_N30
\saida2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|Equal0~9_combout\ = (\saida2|Equal0~7_combout\ & (\saida2|s_divCounter\(6) & (\saida2|Equal0~6_combout\ & \saida2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|Equal0~7_combout\,
	datab => \saida2|s_divCounter\(6),
	datac => \saida2|Equal0~6_combout\,
	datad => \saida2|Equal0~8_combout\,
	combout => \saida2|Equal0~9_combout\);

-- Location: LCCOMB_X55_Y69_N26
\saida2|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|clkOut~1_combout\ = (\saida2|s_divCounter\(16) & (!\saida2|s_divCounter\(15) & (\saida2|s_divCounter\(11) & !\saida2|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(16),
	datab => \saida2|s_divCounter\(15),
	datac => \saida2|s_divCounter\(11),
	datad => \saida2|s_divCounter\(17),
	combout => \saida2|clkOut~1_combout\);

-- Location: LCCOMB_X55_Y69_N24
\saida2|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|clkOut~0_combout\ = (!\saida2|s_divCounter\(25) & (\saida2|s_divCounter\(24) & (\saida2|s_divCounter\(18) & !\saida2|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(25),
	datab => \saida2|s_divCounter\(24),
	datac => \saida2|s_divCounter\(18),
	datad => \saida2|s_divCounter\(23),
	combout => \saida2|clkOut~0_combout\);

-- Location: LCCOMB_X55_Y69_N28
\saida2|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|clkOut~2_combout\ = (\saida2|Equal0~6_combout\ & (!\saida2|s_divCounter\(6) & (\saida2|clkOut~1_combout\ & \saida2|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|Equal0~6_combout\,
	datab => \saida2|s_divCounter\(6),
	datac => \saida2|clkOut~1_combout\,
	datad => \saida2|clkOut~0_combout\,
	combout => \saida2|clkOut~2_combout\);

-- Location: LCCOMB_X55_Y69_N8
\saida2|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida2|clkOut~3_combout\ = (!\saida2|Equal0~9_combout\ & ((\saida2|clkOut~q\) # (\saida2|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|Equal0~9_combout\,
	datac => \saida2|clkOut~q\,
	datad => \saida2|clkOut~2_combout\,
	combout => \saida2|clkOut~3_combout\);

-- Location: FF_X55_Y69_N9
\saida2|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida2|clkOut~q\);

-- Location: LCCOMB_X57_Y70_N2
\acel10|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~1_cout\ = CARRY((\saida2|s_divCounter\(1) & \saida2|s_divCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(1),
	datab => \saida2|s_divCounter\(0),
	datad => VCC,
	cout => \acel10|Add0~1_cout\);

-- Location: LCCOMB_X57_Y70_N4
\acel10|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~2_combout\ = (\acel10|s_divCounter\(2) & (!\acel10|Add0~1_cout\)) # (!\acel10|s_divCounter\(2) & ((\acel10|Add0~1_cout\) # (GND)))
-- \acel10|Add0~3\ = CARRY((!\acel10|Add0~1_cout\) # (!\acel10|s_divCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(2),
	datad => VCC,
	cin => \acel10|Add0~1_cout\,
	combout => \acel10|Add0~2_combout\,
	cout => \acel10|Add0~3\);

-- Location: FF_X57_Y70_N5
\acel10|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(2));

-- Location: LCCOMB_X57_Y70_N6
\acel10|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~4_combout\ = (\acel10|s_divCounter\(3) & (\acel10|Add0~3\ $ (GND))) # (!\acel10|s_divCounter\(3) & (!\acel10|Add0~3\ & VCC))
-- \acel10|Add0~5\ = CARRY((\acel10|s_divCounter\(3) & !\acel10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(3),
	datad => VCC,
	cin => \acel10|Add0~3\,
	combout => \acel10|Add0~4_combout\,
	cout => \acel10|Add0~5\);

-- Location: FF_X57_Y70_N7
\acel10|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(3));

-- Location: LCCOMB_X57_Y70_N8
\acel10|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~6_combout\ = (\acel10|s_divCounter\(4) & (!\acel10|Add0~5\)) # (!\acel10|s_divCounter\(4) & ((\acel10|Add0~5\) # (GND)))
-- \acel10|Add0~7\ = CARRY((!\acel10|Add0~5\) # (!\acel10|s_divCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(4),
	datad => VCC,
	cin => \acel10|Add0~5\,
	combout => \acel10|Add0~6_combout\,
	cout => \acel10|Add0~7\);

-- Location: FF_X57_Y70_N9
\acel10|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(4));

-- Location: LCCOMB_X57_Y70_N10
\acel10|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~8_combout\ = (\acel10|s_divCounter\(5) & (\acel10|Add0~7\ $ (GND))) # (!\acel10|s_divCounter\(5) & (!\acel10|Add0~7\ & VCC))
-- \acel10|Add0~9\ = CARRY((\acel10|s_divCounter\(5) & !\acel10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(5),
	datad => VCC,
	cin => \acel10|Add0~7\,
	combout => \acel10|Add0~8_combout\,
	cout => \acel10|Add0~9\);

-- Location: FF_X57_Y70_N11
\acel10|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(5));

-- Location: LCCOMB_X57_Y70_N12
\acel10|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~10_combout\ = (\acel10|s_divCounter\(6) & (!\acel10|Add0~9\)) # (!\acel10|s_divCounter\(6) & ((\acel10|Add0~9\) # (GND)))
-- \acel10|Add0~11\ = CARRY((!\acel10|Add0~9\) # (!\acel10|s_divCounter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(6),
	datad => VCC,
	cin => \acel10|Add0~9\,
	combout => \acel10|Add0~10_combout\,
	cout => \acel10|Add0~11\);

-- Location: LCCOMB_X56_Y69_N14
\acel10|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|s_divCounter~0_combout\ = (\acel10|Add0~10_combout\ & !\acel10|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \acel10|Add0~10_combout\,
	datad => \acel10|Equal0~9_combout\,
	combout => \acel10|s_divCounter~0_combout\);

-- Location: FF_X56_Y69_N15
\acel10|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(6));

-- Location: LCCOMB_X57_Y70_N14
\acel10|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~12_combout\ = (\acel10|s_divCounter\(7) & (\acel10|Add0~11\ $ (GND))) # (!\acel10|s_divCounter\(7) & (!\acel10|Add0~11\ & VCC))
-- \acel10|Add0~13\ = CARRY((\acel10|s_divCounter\(7) & !\acel10|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(7),
	datad => VCC,
	cin => \acel10|Add0~11\,
	combout => \acel10|Add0~12_combout\,
	cout => \acel10|Add0~13\);

-- Location: FF_X57_Y70_N15
\acel10|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(7));

-- Location: LCCOMB_X57_Y70_N16
\acel10|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~14_combout\ = (\acel10|s_divCounter\(8) & (!\acel10|Add0~13\)) # (!\acel10|s_divCounter\(8) & ((\acel10|Add0~13\) # (GND)))
-- \acel10|Add0~15\ = CARRY((!\acel10|Add0~13\) # (!\acel10|s_divCounter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(8),
	datad => VCC,
	cin => \acel10|Add0~13\,
	combout => \acel10|Add0~14_combout\,
	cout => \acel10|Add0~15\);

-- Location: LCCOMB_X56_Y69_N10
\acel10|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|s_divCounter~1_combout\ = (\acel10|Add0~14_combout\ & !\acel10|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \acel10|Add0~14_combout\,
	datad => \acel10|Equal0~9_combout\,
	combout => \acel10|s_divCounter~1_combout\);

-- Location: FF_X56_Y69_N11
\acel10|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(8));

-- Location: LCCOMB_X57_Y70_N18
\acel10|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~16_combout\ = (\acel10|s_divCounter\(9) & (\acel10|Add0~15\ $ (GND))) # (!\acel10|s_divCounter\(9) & (!\acel10|Add0~15\ & VCC))
-- \acel10|Add0~17\ = CARRY((\acel10|s_divCounter\(9) & !\acel10|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(9),
	datad => VCC,
	cin => \acel10|Add0~15\,
	combout => \acel10|Add0~16_combout\,
	cout => \acel10|Add0~17\);

-- Location: LCCOMB_X56_Y69_N0
\acel10|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|s_divCounter~2_combout\ = (!\acel10|Equal0~9_combout\ & \acel10|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acel10|Equal0~9_combout\,
	datac => \acel10|Add0~16_combout\,
	combout => \acel10|s_divCounter~2_combout\);

-- Location: FF_X56_Y69_N1
\acel10|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(9));

-- Location: LCCOMB_X57_Y70_N20
\acel10|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~18_combout\ = (\acel10|s_divCounter\(10) & (!\acel10|Add0~17\)) # (!\acel10|s_divCounter\(10) & ((\acel10|Add0~17\) # (GND)))
-- \acel10|Add0~19\ = CARRY((!\acel10|Add0~17\) # (!\acel10|s_divCounter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(10),
	datad => VCC,
	cin => \acel10|Add0~17\,
	combout => \acel10|Add0~18_combout\,
	cout => \acel10|Add0~19\);

-- Location: FF_X57_Y70_N21
\acel10|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(10));

-- Location: LCCOMB_X57_Y70_N22
\acel10|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~20_combout\ = (\acel10|s_divCounter\(11) & (\acel10|Add0~19\ $ (GND))) # (!\acel10|s_divCounter\(11) & (!\acel10|Add0~19\ & VCC))
-- \acel10|Add0~21\ = CARRY((\acel10|s_divCounter\(11) & !\acel10|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(11),
	datad => VCC,
	cin => \acel10|Add0~19\,
	combout => \acel10|Add0~20_combout\,
	cout => \acel10|Add0~21\);

-- Location: LCCOMB_X56_Y69_N2
\acel10|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|s_divCounter~3_combout\ = (!\acel10|Equal0~9_combout\ & \acel10|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acel10|Equal0~9_combout\,
	datad => \acel10|Add0~20_combout\,
	combout => \acel10|s_divCounter~3_combout\);

-- Location: FF_X56_Y69_N3
\acel10|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(11));

-- Location: LCCOMB_X57_Y70_N24
\acel10|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~22_combout\ = (\acel10|s_divCounter\(12) & (!\acel10|Add0~21\)) # (!\acel10|s_divCounter\(12) & ((\acel10|Add0~21\) # (GND)))
-- \acel10|Add0~23\ = CARRY((!\acel10|Add0~21\) # (!\acel10|s_divCounter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(12),
	datad => VCC,
	cin => \acel10|Add0~21\,
	combout => \acel10|Add0~22_combout\,
	cout => \acel10|Add0~23\);

-- Location: FF_X57_Y70_N25
\acel10|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(12));

-- Location: LCCOMB_X57_Y70_N26
\acel10|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~24_combout\ = (\acel10|s_divCounter\(13) & (\acel10|Add0~23\ $ (GND))) # (!\acel10|s_divCounter\(13) & (!\acel10|Add0~23\ & VCC))
-- \acel10|Add0~25\ = CARRY((\acel10|s_divCounter\(13) & !\acel10|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(13),
	datad => VCC,
	cin => \acel10|Add0~23\,
	combout => \acel10|Add0~24_combout\,
	cout => \acel10|Add0~25\);

-- Location: FF_X57_Y70_N27
\acel10|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(13));

-- Location: LCCOMB_X57_Y70_N28
\acel10|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~26_combout\ = (\acel10|s_divCounter\(14) & (!\acel10|Add0~25\)) # (!\acel10|s_divCounter\(14) & ((\acel10|Add0~25\) # (GND)))
-- \acel10|Add0~27\ = CARRY((!\acel10|Add0~25\) # (!\acel10|s_divCounter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(14),
	datad => VCC,
	cin => \acel10|Add0~25\,
	combout => \acel10|Add0~26_combout\,
	cout => \acel10|Add0~27\);

-- Location: LCCOMB_X56_Y69_N26
\acel10|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|s_divCounter~4_combout\ = (!\acel10|Equal0~9_combout\ & \acel10|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acel10|Equal0~9_combout\,
	datad => \acel10|Add0~26_combout\,
	combout => \acel10|s_divCounter~4_combout\);

-- Location: FF_X56_Y69_N27
\acel10|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(14));

-- Location: LCCOMB_X57_Y70_N30
\acel10|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~28_combout\ = (\acel10|s_divCounter\(15) & (\acel10|Add0~27\ $ (GND))) # (!\acel10|s_divCounter\(15) & (!\acel10|Add0~27\ & VCC))
-- \acel10|Add0~29\ = CARRY((\acel10|s_divCounter\(15) & !\acel10|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(15),
	datad => VCC,
	cin => \acel10|Add0~27\,
	combout => \acel10|Add0~28_combout\,
	cout => \acel10|Add0~29\);

-- Location: FF_X57_Y70_N31
\acel10|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(15));

-- Location: LCCOMB_X57_Y69_N0
\acel10|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~30_combout\ = (\acel10|s_divCounter\(16) & (!\acel10|Add0~29\)) # (!\acel10|s_divCounter\(16) & ((\acel10|Add0~29\) # (GND)))
-- \acel10|Add0~31\ = CARRY((!\acel10|Add0~29\) # (!\acel10|s_divCounter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(16),
	datad => VCC,
	cin => \acel10|Add0~29\,
	combout => \acel10|Add0~30_combout\,
	cout => \acel10|Add0~31\);

-- Location: FF_X57_Y69_N1
\acel10|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(16));

-- Location: LCCOMB_X57_Y69_N2
\acel10|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~32_combout\ = (\acel10|s_divCounter\(17) & (\acel10|Add0~31\ $ (GND))) # (!\acel10|s_divCounter\(17) & (!\acel10|Add0~31\ & VCC))
-- \acel10|Add0~33\ = CARRY((\acel10|s_divCounter\(17) & !\acel10|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(17),
	datad => VCC,
	cin => \acel10|Add0~31\,
	combout => \acel10|Add0~32_combout\,
	cout => \acel10|Add0~33\);

-- Location: FF_X57_Y69_N3
\acel10|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(17));

-- Location: LCCOMB_X57_Y69_N4
\acel10|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~34_combout\ = (\acel10|s_divCounter\(18) & (!\acel10|Add0~33\)) # (!\acel10|s_divCounter\(18) & ((\acel10|Add0~33\) # (GND)))
-- \acel10|Add0~35\ = CARRY((!\acel10|Add0~33\) # (!\acel10|s_divCounter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(18),
	datad => VCC,
	cin => \acel10|Add0~33\,
	combout => \acel10|Add0~34_combout\,
	cout => \acel10|Add0~35\);

-- Location: LCCOMB_X56_Y69_N8
\acel10|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|s_divCounter~5_combout\ = (!\acel10|Equal0~9_combout\ & \acel10|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acel10|Equal0~9_combout\,
	datad => \acel10|Add0~34_combout\,
	combout => \acel10|s_divCounter~5_combout\);

-- Location: FF_X56_Y69_N9
\acel10|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(18));

-- Location: LCCOMB_X57_Y69_N6
\acel10|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~36_combout\ = (\acel10|s_divCounter\(19) & (\acel10|Add0~35\ $ (GND))) # (!\acel10|s_divCounter\(19) & (!\acel10|Add0~35\ & VCC))
-- \acel10|Add0~37\ = CARRY((\acel10|s_divCounter\(19) & !\acel10|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(19),
	datad => VCC,
	cin => \acel10|Add0~35\,
	combout => \acel10|Add0~36_combout\,
	cout => \acel10|Add0~37\);

-- Location: LCCOMB_X56_Y69_N6
\acel10|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|s_divCounter~6_combout\ = (!\acel10|Equal0~9_combout\ & \acel10|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acel10|Equal0~9_combout\,
	datad => \acel10|Add0~36_combout\,
	combout => \acel10|s_divCounter~6_combout\);

-- Location: FF_X56_Y69_N7
\acel10|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(19));

-- Location: LCCOMB_X57_Y69_N8
\acel10|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~38_combout\ = (\acel10|s_divCounter\(20) & (!\acel10|Add0~37\)) # (!\acel10|s_divCounter\(20) & ((\acel10|Add0~37\) # (GND)))
-- \acel10|Add0~39\ = CARRY((!\acel10|Add0~37\) # (!\acel10|s_divCounter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(20),
	datad => VCC,
	cin => \acel10|Add0~37\,
	combout => \acel10|Add0~38_combout\,
	cout => \acel10|Add0~39\);

-- Location: FF_X57_Y69_N9
\acel10|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(20));

-- Location: LCCOMB_X57_Y69_N10
\acel10|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~40_combout\ = (\acel10|s_divCounter\(21) & (\acel10|Add0~39\ $ (GND))) # (!\acel10|s_divCounter\(21) & (!\acel10|Add0~39\ & VCC))
-- \acel10|Add0~41\ = CARRY((\acel10|s_divCounter\(21) & !\acel10|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(21),
	datad => VCC,
	cin => \acel10|Add0~39\,
	combout => \acel10|Add0~40_combout\,
	cout => \acel10|Add0~41\);

-- Location: FF_X57_Y69_N11
\acel10|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(21));

-- Location: LCCOMB_X57_Y69_N12
\acel10|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~42_combout\ = (\acel10|s_divCounter\(22) & (!\acel10|Add0~41\)) # (!\acel10|s_divCounter\(22) & ((\acel10|Add0~41\) # (GND)))
-- \acel10|Add0~43\ = CARRY((!\acel10|Add0~41\) # (!\acel10|s_divCounter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(22),
	datad => VCC,
	cin => \acel10|Add0~41\,
	combout => \acel10|Add0~42_combout\,
	cout => \acel10|Add0~43\);

-- Location: LCCOMB_X57_Y69_N30
\acel10|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|s_divCounter~7_combout\ = (!\acel10|Equal0~9_combout\ & \acel10|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acel10|Equal0~9_combout\,
	datad => \acel10|Add0~42_combout\,
	combout => \acel10|s_divCounter~7_combout\);

-- Location: FF_X57_Y69_N31
\acel10|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(22));

-- Location: LCCOMB_X57_Y69_N14
\acel10|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~44_combout\ = (\acel10|s_divCounter\(23) & (\acel10|Add0~43\ $ (GND))) # (!\acel10|s_divCounter\(23) & (!\acel10|Add0~43\ & VCC))
-- \acel10|Add0~45\ = CARRY((\acel10|s_divCounter\(23) & !\acel10|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(23),
	datad => VCC,
	cin => \acel10|Add0~43\,
	combout => \acel10|Add0~44_combout\,
	cout => \acel10|Add0~45\);

-- Location: FF_X57_Y69_N15
\acel10|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(23));

-- Location: LCCOMB_X56_Y69_N30
\acel10|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Equal0~6_combout\ = (\acel10|s_divCounter\(22) & (!\acel10|s_divCounter\(23) & (!\acel10|s_divCounter\(20) & !\acel10|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(22),
	datab => \acel10|s_divCounter\(23),
	datac => \acel10|s_divCounter\(20),
	datad => \acel10|s_divCounter\(21),
	combout => \acel10|Equal0~6_combout\);

-- Location: LCCOMB_X56_Y69_N20
\acel10|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Equal0~5_combout\ = (\acel10|s_divCounter\(19) & (\acel10|s_divCounter\(18) & (!\acel10|s_divCounter\(16) & !\acel10|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(19),
	datab => \acel10|s_divCounter\(18),
	datac => \acel10|s_divCounter\(16),
	datad => \acel10|s_divCounter\(17),
	combout => \acel10|Equal0~5_combout\);

-- Location: LCCOMB_X57_Y69_N16
\acel10|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~46_combout\ = (\acel10|s_divCounter\(24) & (!\acel10|Add0~45\)) # (!\acel10|s_divCounter\(24) & ((\acel10|Add0~45\) # (GND)))
-- \acel10|Add0~47\ = CARRY((!\acel10|Add0~45\) # (!\acel10|s_divCounter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(24),
	datad => VCC,
	cin => \acel10|Add0~45\,
	combout => \acel10|Add0~46_combout\,
	cout => \acel10|Add0~47\);

-- Location: FF_X57_Y69_N17
\acel10|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(24));

-- Location: LCCOMB_X57_Y69_N18
\acel10|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~48_combout\ = (\acel10|s_divCounter\(25) & (\acel10|Add0~47\ $ (GND))) # (!\acel10|s_divCounter\(25) & (!\acel10|Add0~47\ & VCC))
-- \acel10|Add0~49\ = CARRY((\acel10|s_divCounter\(25) & !\acel10|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(25),
	datad => VCC,
	cin => \acel10|Add0~47\,
	combout => \acel10|Add0~48_combout\,
	cout => \acel10|Add0~49\);

-- Location: FF_X57_Y69_N19
\acel10|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(25));

-- Location: LCCOMB_X57_Y69_N20
\acel10|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~50_combout\ = (\acel10|s_divCounter\(26) & (!\acel10|Add0~49\)) # (!\acel10|s_divCounter\(26) & ((\acel10|Add0~49\) # (GND)))
-- \acel10|Add0~51\ = CARRY((!\acel10|Add0~49\) # (!\acel10|s_divCounter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(26),
	datad => VCC,
	cin => \acel10|Add0~49\,
	combout => \acel10|Add0~50_combout\,
	cout => \acel10|Add0~51\);

-- Location: FF_X57_Y69_N21
\acel10|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(26));

-- Location: LCCOMB_X57_Y69_N22
\acel10|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~52_combout\ = (\acel10|s_divCounter\(27) & (\acel10|Add0~51\ $ (GND))) # (!\acel10|s_divCounter\(27) & (!\acel10|Add0~51\ & VCC))
-- \acel10|Add0~53\ = CARRY((\acel10|s_divCounter\(27) & !\acel10|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(27),
	datad => VCC,
	cin => \acel10|Add0~51\,
	combout => \acel10|Add0~52_combout\,
	cout => \acel10|Add0~53\);

-- Location: FF_X57_Y69_N23
\acel10|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(27));

-- Location: LCCOMB_X57_Y69_N24
\acel10|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~54_combout\ = (\acel10|s_divCounter\(28) & (!\acel10|Add0~53\)) # (!\acel10|s_divCounter\(28) & ((\acel10|Add0~53\) # (GND)))
-- \acel10|Add0~55\ = CARRY((!\acel10|Add0~53\) # (!\acel10|s_divCounter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel10|s_divCounter\(28),
	datad => VCC,
	cin => \acel10|Add0~53\,
	combout => \acel10|Add0~54_combout\,
	cout => \acel10|Add0~55\);

-- Location: FF_X57_Y69_N25
\acel10|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(28));

-- Location: LCCOMB_X57_Y69_N26
\acel10|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~56_combout\ = (\acel10|s_divCounter\(29) & (\acel10|Add0~55\ $ (GND))) # (!\acel10|s_divCounter\(29) & (!\acel10|Add0~55\ & VCC))
-- \acel10|Add0~57\ = CARRY((\acel10|s_divCounter\(29) & !\acel10|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(29),
	datad => VCC,
	cin => \acel10|Add0~55\,
	combout => \acel10|Add0~56_combout\,
	cout => \acel10|Add0~57\);

-- Location: FF_X57_Y69_N27
\acel10|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(29));

-- Location: LCCOMB_X56_Y69_N4
\acel10|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Equal0~7_combout\ = (!\acel10|s_divCounter\(27) & (!\acel10|s_divCounter\(25) & (!\acel10|s_divCounter\(26) & !\acel10|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(27),
	datab => \acel10|s_divCounter\(25),
	datac => \acel10|s_divCounter\(26),
	datad => \acel10|s_divCounter\(24),
	combout => \acel10|Equal0~7_combout\);

-- Location: LCCOMB_X57_Y69_N28
\acel10|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Add0~58_combout\ = \acel10|Add0~57\ $ (\acel10|s_divCounter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \acel10|s_divCounter\(30),
	cin => \acel10|Add0~57\,
	combout => \acel10|Add0~58_combout\);

-- Location: FF_X57_Y69_N29
\acel10|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|s_divCounter\(30));

-- Location: LCCOMB_X56_Y69_N22
\acel10|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Equal0~8_combout\ = (!\acel10|s_divCounter\(28) & (!\acel10|s_divCounter\(29) & (\acel10|Equal0~7_combout\ & !\acel10|s_divCounter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(28),
	datab => \acel10|s_divCounter\(29),
	datac => \acel10|Equal0~7_combout\,
	datad => \acel10|s_divCounter\(30),
	combout => \acel10|Equal0~8_combout\);

-- Location: LCCOMB_X56_Y69_N12
\acel10|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Equal0~2_combout\ = (\acel10|s_divCounter\(8) & (\acel10|s_divCounter\(11) & (!\acel10|s_divCounter\(10) & \acel10|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(8),
	datab => \acel10|s_divCounter\(11),
	datac => \acel10|s_divCounter\(10),
	datad => \acel10|s_divCounter\(9),
	combout => \acel10|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y69_N28
\acel10|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Equal0~0_combout\ = (\saida2|s_divCounter\(1) & (\acel10|s_divCounter\(5) & (!\acel10|s_divCounter\(6) & \saida2|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(1),
	datab => \acel10|s_divCounter\(5),
	datac => \acel10|s_divCounter\(6),
	datad => \saida2|s_divCounter\(0),
	combout => \acel10|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y70_N0
\acel10|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Equal0~1_combout\ = (\acel10|s_divCounter\(3) & (\acel10|s_divCounter\(2) & (!\acel10|s_divCounter\(7) & \acel10|s_divCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(3),
	datab => \acel10|s_divCounter\(2),
	datac => \acel10|s_divCounter\(7),
	datad => \acel10|s_divCounter\(4),
	combout => \acel10|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y69_N16
\acel10|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Equal0~3_combout\ = (\acel10|s_divCounter\(14) & (!\acel10|s_divCounter\(13) & (!\acel10|s_divCounter\(15) & !\acel10|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|s_divCounter\(14),
	datab => \acel10|s_divCounter\(13),
	datac => \acel10|s_divCounter\(15),
	datad => \acel10|s_divCounter\(12),
	combout => \acel10|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y69_N18
\acel10|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Equal0~4_combout\ = (\acel10|Equal0~2_combout\ & (\acel10|Equal0~0_combout\ & (\acel10|Equal0~1_combout\ & \acel10|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|Equal0~2_combout\,
	datab => \acel10|Equal0~0_combout\,
	datac => \acel10|Equal0~1_combout\,
	datad => \acel10|Equal0~3_combout\,
	combout => \acel10|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y69_N24
\acel10|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel10|Equal0~9_combout\ = (\acel10|Equal0~6_combout\ & (\acel10|Equal0~5_combout\ & (\acel10|Equal0~8_combout\ & \acel10|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|Equal0~6_combout\,
	datab => \acel10|Equal0~5_combout\,
	datac => \acel10|Equal0~8_combout\,
	datad => \acel10|Equal0~4_combout\,
	combout => \acel10|Equal0~9_combout\);

-- Location: FF_X56_Y69_N25
\acel10|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel10|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel10|clkOut~q\);

-- Location: FF_X55_Y69_N31
\acel01|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \saida2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel01|clkOut~q\);

-- Location: IOIBUF_X58_Y73_N8
\acel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acel(0),
	o => \acel[0]~input_o\);

-- Location: LCCOMB_X56_Y66_N2
\Normal2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~0_combout\ = \Normal2|s_divCounter\(0) $ (VCC)
-- \Normal2|Add0~1\ = CARRY(\Normal2|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(0),
	datad => VCC,
	combout => \Normal2|Add0~0_combout\,
	cout => \Normal2|Add0~1\);

-- Location: LCCOMB_X52_Y70_N2
\Normal1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~0_combout\ = (\saida2|s_divCounter\(0) & (\Normal1|s_divCounter\(1) $ (VCC))) # (!\saida2|s_divCounter\(0) & (\Normal1|s_divCounter\(1) & VCC))
-- \Normal1|Add0~1\ = CARRY((\saida2|s_divCounter\(0) & \Normal1|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida2|s_divCounter\(0),
	datab => \Normal1|s_divCounter\(1),
	datad => VCC,
	combout => \Normal1|Add0~0_combout\,
	cout => \Normal1|Add0~1\);

-- Location: LCCOMB_X52_Y70_N0
\Normal1|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|s_divCounter~0_combout\ = (\Normal1|Add0~0_combout\ & ((!\Normal1|Equal0~9_combout\) # (!\saida2|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|Add0~0_combout\,
	datac => \saida2|s_divCounter\(0),
	datad => \Normal1|Equal0~9_combout\,
	combout => \Normal1|s_divCounter~0_combout\);

-- Location: FF_X52_Y70_N1
\Normal1|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(1));

-- Location: LCCOMB_X52_Y70_N4
\Normal1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~2_combout\ = (\Normal1|s_divCounter\(2) & (!\Normal1|Add0~1\)) # (!\Normal1|s_divCounter\(2) & ((\Normal1|Add0~1\) # (GND)))
-- \Normal1|Add0~3\ = CARRY((!\Normal1|Add0~1\) # (!\Normal1|s_divCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(2),
	datad => VCC,
	cin => \Normal1|Add0~1\,
	combout => \Normal1|Add0~2_combout\,
	cout => \Normal1|Add0~3\);

-- Location: FF_X52_Y70_N5
\Normal1|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(2));

-- Location: LCCOMB_X52_Y70_N6
\Normal1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~4_combout\ = (\Normal1|s_divCounter\(3) & (\Normal1|Add0~3\ $ (GND))) # (!\Normal1|s_divCounter\(3) & (!\Normal1|Add0~3\ & VCC))
-- \Normal1|Add0~5\ = CARRY((\Normal1|s_divCounter\(3) & !\Normal1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(3),
	datad => VCC,
	cin => \Normal1|Add0~3\,
	combout => \Normal1|Add0~4_combout\,
	cout => \Normal1|Add0~5\);

-- Location: FF_X52_Y70_N7
\Normal1|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(3));

-- Location: LCCOMB_X52_Y70_N8
\Normal1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~6_combout\ = (\Normal1|s_divCounter\(4) & (!\Normal1|Add0~5\)) # (!\Normal1|s_divCounter\(4) & ((\Normal1|Add0~5\) # (GND)))
-- \Normal1|Add0~7\ = CARRY((!\Normal1|Add0~5\) # (!\Normal1|s_divCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(4),
	datad => VCC,
	cin => \Normal1|Add0~5\,
	combout => \Normal1|Add0~6_combout\,
	cout => \Normal1|Add0~7\);

-- Location: FF_X52_Y70_N9
\Normal1|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(4));

-- Location: LCCOMB_X52_Y70_N10
\Normal1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~8_combout\ = (\Normal1|s_divCounter\(5) & (\Normal1|Add0~7\ $ (GND))) # (!\Normal1|s_divCounter\(5) & (!\Normal1|Add0~7\ & VCC))
-- \Normal1|Add0~9\ = CARRY((\Normal1|s_divCounter\(5) & !\Normal1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(5),
	datad => VCC,
	cin => \Normal1|Add0~7\,
	combout => \Normal1|Add0~8_combout\,
	cout => \Normal1|Add0~9\);

-- Location: FF_X52_Y70_N11
\Normal1|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(5));

-- Location: LCCOMB_X52_Y70_N12
\Normal1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~10_combout\ = (\Normal1|s_divCounter\(6) & (!\Normal1|Add0~9\)) # (!\Normal1|s_divCounter\(6) & ((\Normal1|Add0~9\) # (GND)))
-- \Normal1|Add0~11\ = CARRY((!\Normal1|Add0~9\) # (!\Normal1|s_divCounter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(6),
	datad => VCC,
	cin => \Normal1|Add0~9\,
	combout => \Normal1|Add0~10_combout\,
	cout => \Normal1|Add0~11\);

-- Location: FF_X52_Y70_N13
\Normal1|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(6));

-- Location: LCCOMB_X52_Y70_N14
\Normal1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~12_combout\ = (\Normal1|s_divCounter\(7) & (\Normal1|Add0~11\ $ (GND))) # (!\Normal1|s_divCounter\(7) & (!\Normal1|Add0~11\ & VCC))
-- \Normal1|Add0~13\ = CARRY((\Normal1|s_divCounter\(7) & !\Normal1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(7),
	datad => VCC,
	cin => \Normal1|Add0~11\,
	combout => \Normal1|Add0~12_combout\,
	cout => \Normal1|Add0~13\);

-- Location: FF_X52_Y70_N15
\Normal1|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(7));

-- Location: LCCOMB_X52_Y70_N16
\Normal1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~14_combout\ = (\Normal1|s_divCounter\(8) & (!\Normal1|Add0~13\)) # (!\Normal1|s_divCounter\(8) & ((\Normal1|Add0~13\) # (GND)))
-- \Normal1|Add0~15\ = CARRY((!\Normal1|Add0~13\) # (!\Normal1|s_divCounter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(8),
	datad => VCC,
	cin => \Normal1|Add0~13\,
	combout => \Normal1|Add0~14_combout\,
	cout => \Normal1|Add0~15\);

-- Location: FF_X52_Y70_N17
\Normal1|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(8));

-- Location: LCCOMB_X52_Y70_N18
\Normal1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~16_combout\ = (\Normal1|s_divCounter\(9) & (\Normal1|Add0~15\ $ (GND))) # (!\Normal1|s_divCounter\(9) & (!\Normal1|Add0~15\ & VCC))
-- \Normal1|Add0~17\ = CARRY((\Normal1|s_divCounter\(9) & !\Normal1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(9),
	datad => VCC,
	cin => \Normal1|Add0~15\,
	combout => \Normal1|Add0~16_combout\,
	cout => \Normal1|Add0~17\);

-- Location: FF_X52_Y70_N19
\Normal1|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(9));

-- Location: LCCOMB_X52_Y70_N20
\Normal1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~18_combout\ = (\Normal1|s_divCounter\(10) & (!\Normal1|Add0~17\)) # (!\Normal1|s_divCounter\(10) & ((\Normal1|Add0~17\) # (GND)))
-- \Normal1|Add0~19\ = CARRY((!\Normal1|Add0~17\) # (!\Normal1|s_divCounter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(10),
	datad => VCC,
	cin => \Normal1|Add0~17\,
	combout => \Normal1|Add0~18_combout\,
	cout => \Normal1|Add0~19\);

-- Location: FF_X52_Y70_N21
\Normal1|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(10));

-- Location: LCCOMB_X52_Y70_N22
\Normal1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~20_combout\ = (\Normal1|s_divCounter\(11) & (\Normal1|Add0~19\ $ (GND))) # (!\Normal1|s_divCounter\(11) & (!\Normal1|Add0~19\ & VCC))
-- \Normal1|Add0~21\ = CARRY((\Normal1|s_divCounter\(11) & !\Normal1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(11),
	datad => VCC,
	cin => \Normal1|Add0~19\,
	combout => \Normal1|Add0~20_combout\,
	cout => \Normal1|Add0~21\);

-- Location: FF_X52_Y70_N23
\Normal1|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(11));

-- Location: LCCOMB_X52_Y70_N24
\Normal1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~22_combout\ = (\Normal1|s_divCounter\(12) & (!\Normal1|Add0~21\)) # (!\Normal1|s_divCounter\(12) & ((\Normal1|Add0~21\) # (GND)))
-- \Normal1|Add0~23\ = CARRY((!\Normal1|Add0~21\) # (!\Normal1|s_divCounter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(12),
	datad => VCC,
	cin => \Normal1|Add0~21\,
	combout => \Normal1|Add0~22_combout\,
	cout => \Normal1|Add0~23\);

-- Location: FF_X52_Y70_N25
\Normal1|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(12));

-- Location: LCCOMB_X52_Y70_N26
\Normal1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~24_combout\ = (\Normal1|s_divCounter\(13) & (\Normal1|Add0~23\ $ (GND))) # (!\Normal1|s_divCounter\(13) & (!\Normal1|Add0~23\ & VCC))
-- \Normal1|Add0~25\ = CARRY((\Normal1|s_divCounter\(13) & !\Normal1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(13),
	datad => VCC,
	cin => \Normal1|Add0~23\,
	combout => \Normal1|Add0~24_combout\,
	cout => \Normal1|Add0~25\);

-- Location: FF_X52_Y70_N27
\Normal1|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(13));

-- Location: LCCOMB_X52_Y70_N28
\Normal1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~26_combout\ = (\Normal1|s_divCounter\(14) & (!\Normal1|Add0~25\)) # (!\Normal1|s_divCounter\(14) & ((\Normal1|Add0~25\) # (GND)))
-- \Normal1|Add0~27\ = CARRY((!\Normal1|Add0~25\) # (!\Normal1|s_divCounter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(14),
	datad => VCC,
	cin => \Normal1|Add0~25\,
	combout => \Normal1|Add0~26_combout\,
	cout => \Normal1|Add0~27\);

-- Location: FF_X52_Y70_N29
\Normal1|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(14));

-- Location: LCCOMB_X52_Y70_N30
\Normal1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~28_combout\ = (\Normal1|s_divCounter\(15) & (\Normal1|Add0~27\ $ (GND))) # (!\Normal1|s_divCounter\(15) & (!\Normal1|Add0~27\ & VCC))
-- \Normal1|Add0~29\ = CARRY((\Normal1|s_divCounter\(15) & !\Normal1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(15),
	datad => VCC,
	cin => \Normal1|Add0~27\,
	combout => \Normal1|Add0~28_combout\,
	cout => \Normal1|Add0~29\);

-- Location: FF_X52_Y70_N31
\Normal1|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(15));

-- Location: LCCOMB_X52_Y69_N0
\Normal1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~30_combout\ = (\Normal1|s_divCounter\(16) & (!\Normal1|Add0~29\)) # (!\Normal1|s_divCounter\(16) & ((\Normal1|Add0~29\) # (GND)))
-- \Normal1|Add0~31\ = CARRY((!\Normal1|Add0~29\) # (!\Normal1|s_divCounter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(16),
	datad => VCC,
	cin => \Normal1|Add0~29\,
	combout => \Normal1|Add0~30_combout\,
	cout => \Normal1|Add0~31\);

-- Location: FF_X52_Y69_N1
\Normal1|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(16));

-- Location: LCCOMB_X52_Y69_N2
\Normal1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~32_combout\ = (\Normal1|s_divCounter\(17) & (\Normal1|Add0~31\ $ (GND))) # (!\Normal1|s_divCounter\(17) & (!\Normal1|Add0~31\ & VCC))
-- \Normal1|Add0~33\ = CARRY((\Normal1|s_divCounter\(17) & !\Normal1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(17),
	datad => VCC,
	cin => \Normal1|Add0~31\,
	combout => \Normal1|Add0~32_combout\,
	cout => \Normal1|Add0~33\);

-- Location: FF_X52_Y69_N3
\Normal1|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(17));

-- Location: LCCOMB_X52_Y69_N4
\Normal1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~34_combout\ = (\Normal1|s_divCounter\(18) & (!\Normal1|Add0~33\)) # (!\Normal1|s_divCounter\(18) & ((\Normal1|Add0~33\) # (GND)))
-- \Normal1|Add0~35\ = CARRY((!\Normal1|Add0~33\) # (!\Normal1|s_divCounter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(18),
	datad => VCC,
	cin => \Normal1|Add0~33\,
	combout => \Normal1|Add0~34_combout\,
	cout => \Normal1|Add0~35\);

-- Location: FF_X52_Y69_N5
\Normal1|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(18));

-- Location: LCCOMB_X52_Y69_N6
\Normal1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~36_combout\ = (\Normal1|s_divCounter\(19) & (\Normal1|Add0~35\ $ (GND))) # (!\Normal1|s_divCounter\(19) & (!\Normal1|Add0~35\ & VCC))
-- \Normal1|Add0~37\ = CARRY((\Normal1|s_divCounter\(19) & !\Normal1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(19),
	datad => VCC,
	cin => \Normal1|Add0~35\,
	combout => \Normal1|Add0~36_combout\,
	cout => \Normal1|Add0~37\);

-- Location: FF_X52_Y69_N7
\Normal1|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(19));

-- Location: LCCOMB_X52_Y69_N8
\Normal1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~38_combout\ = (\Normal1|s_divCounter\(20) & (!\Normal1|Add0~37\)) # (!\Normal1|s_divCounter\(20) & ((\Normal1|Add0~37\) # (GND)))
-- \Normal1|Add0~39\ = CARRY((!\Normal1|Add0~37\) # (!\Normal1|s_divCounter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(20),
	datad => VCC,
	cin => \Normal1|Add0~37\,
	combout => \Normal1|Add0~38_combout\,
	cout => \Normal1|Add0~39\);

-- Location: FF_X52_Y69_N9
\Normal1|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(20));

-- Location: LCCOMB_X53_Y69_N22
\Normal1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Equal0~5_combout\ = (!\Normal1|s_divCounter\(20) & (!\Normal1|s_divCounter\(18) & (!\Normal1|s_divCounter\(19) & !\Normal1|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(20),
	datab => \Normal1|s_divCounter\(18),
	datac => \Normal1|s_divCounter\(19),
	datad => \Normal1|s_divCounter\(17),
	combout => \Normal1|Equal0~5_combout\);

-- Location: LCCOMB_X52_Y69_N10
\Normal1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~40_combout\ = (\Normal1|s_divCounter\(21) & (\Normal1|Add0~39\ $ (GND))) # (!\Normal1|s_divCounter\(21) & (!\Normal1|Add0~39\ & VCC))
-- \Normal1|Add0~41\ = CARRY((\Normal1|s_divCounter\(21) & !\Normal1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(21),
	datad => VCC,
	cin => \Normal1|Add0~39\,
	combout => \Normal1|Add0~40_combout\,
	cout => \Normal1|Add0~41\);

-- Location: FF_X52_Y69_N11
\Normal1|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(21));

-- Location: LCCOMB_X52_Y69_N12
\Normal1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~42_combout\ = (\Normal1|s_divCounter\(22) & (!\Normal1|Add0~41\)) # (!\Normal1|s_divCounter\(22) & ((\Normal1|Add0~41\) # (GND)))
-- \Normal1|Add0~43\ = CARRY((!\Normal1|Add0~41\) # (!\Normal1|s_divCounter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(22),
	datad => VCC,
	cin => \Normal1|Add0~41\,
	combout => \Normal1|Add0~42_combout\,
	cout => \Normal1|Add0~43\);

-- Location: FF_X52_Y69_N13
\Normal1|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(22));

-- Location: LCCOMB_X52_Y69_N14
\Normal1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~44_combout\ = (\Normal1|s_divCounter\(23) & (\Normal1|Add0~43\ $ (GND))) # (!\Normal1|s_divCounter\(23) & (!\Normal1|Add0~43\ & VCC))
-- \Normal1|Add0~45\ = CARRY((\Normal1|s_divCounter\(23) & !\Normal1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(23),
	datad => VCC,
	cin => \Normal1|Add0~43\,
	combout => \Normal1|Add0~44_combout\,
	cout => \Normal1|Add0~45\);

-- Location: FF_X52_Y69_N15
\Normal1|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(23));

-- Location: LCCOMB_X52_Y69_N16
\Normal1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~46_combout\ = (\Normal1|s_divCounter\(24) & (!\Normal1|Add0~45\)) # (!\Normal1|s_divCounter\(24) & ((\Normal1|Add0~45\) # (GND)))
-- \Normal1|Add0~47\ = CARRY((!\Normal1|Add0~45\) # (!\Normal1|s_divCounter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(24),
	datad => VCC,
	cin => \Normal1|Add0~45\,
	combout => \Normal1|Add0~46_combout\,
	cout => \Normal1|Add0~47\);

-- Location: FF_X52_Y69_N17
\Normal1|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(24));

-- Location: LCCOMB_X53_Y69_N0
\Normal1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Equal0~6_combout\ = (!\Normal1|s_divCounter\(22) & (!\Normal1|s_divCounter\(21) & (!\Normal1|s_divCounter\(24) & !\Normal1|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(22),
	datab => \Normal1|s_divCounter\(21),
	datac => \Normal1|s_divCounter\(24),
	datad => \Normal1|s_divCounter\(23),
	combout => \Normal1|Equal0~6_combout\);

-- Location: LCCOMB_X52_Y69_N18
\Normal1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~48_combout\ = (\Normal1|s_divCounter\(25) & (\Normal1|Add0~47\ $ (GND))) # (!\Normal1|s_divCounter\(25) & (!\Normal1|Add0~47\ & VCC))
-- \Normal1|Add0~49\ = CARRY((\Normal1|s_divCounter\(25) & !\Normal1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(25),
	datad => VCC,
	cin => \Normal1|Add0~47\,
	combout => \Normal1|Add0~48_combout\,
	cout => \Normal1|Add0~49\);

-- Location: FF_X52_Y69_N19
\Normal1|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(25));

-- Location: LCCOMB_X52_Y69_N20
\Normal1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~50_combout\ = (\Normal1|s_divCounter\(26) & (!\Normal1|Add0~49\)) # (!\Normal1|s_divCounter\(26) & ((\Normal1|Add0~49\) # (GND)))
-- \Normal1|Add0~51\ = CARRY((!\Normal1|Add0~49\) # (!\Normal1|s_divCounter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(26),
	datad => VCC,
	cin => \Normal1|Add0~49\,
	combout => \Normal1|Add0~50_combout\,
	cout => \Normal1|Add0~51\);

-- Location: FF_X52_Y69_N21
\Normal1|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(26));

-- Location: LCCOMB_X52_Y69_N22
\Normal1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~52_combout\ = (\Normal1|s_divCounter\(27) & (\Normal1|Add0~51\ $ (GND))) # (!\Normal1|s_divCounter\(27) & (!\Normal1|Add0~51\ & VCC))
-- \Normal1|Add0~53\ = CARRY((\Normal1|s_divCounter\(27) & !\Normal1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(27),
	datad => VCC,
	cin => \Normal1|Add0~51\,
	combout => \Normal1|Add0~52_combout\,
	cout => \Normal1|Add0~53\);

-- Location: FF_X52_Y69_N23
\Normal1|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(27));

-- Location: LCCOMB_X52_Y69_N24
\Normal1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~54_combout\ = (\Normal1|s_divCounter\(28) & (!\Normal1|Add0~53\)) # (!\Normal1|s_divCounter\(28) & ((\Normal1|Add0~53\) # (GND)))
-- \Normal1|Add0~55\ = CARRY((!\Normal1|Add0~53\) # (!\Normal1|s_divCounter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(28),
	datad => VCC,
	cin => \Normal1|Add0~53\,
	combout => \Normal1|Add0~54_combout\,
	cout => \Normal1|Add0~55\);

-- Location: FF_X52_Y69_N25
\Normal1|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(28));

-- Location: LCCOMB_X52_Y69_N26
\Normal1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~56_combout\ = (\Normal1|s_divCounter\(29) & (\Normal1|Add0~55\ $ (GND))) # (!\Normal1|s_divCounter\(29) & (!\Normal1|Add0~55\ & VCC))
-- \Normal1|Add0~57\ = CARRY((\Normal1|s_divCounter\(29) & !\Normal1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(29),
	datad => VCC,
	cin => \Normal1|Add0~55\,
	combout => \Normal1|Add0~56_combout\,
	cout => \Normal1|Add0~57\);

-- Location: FF_X52_Y69_N27
\Normal1|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(29));

-- Location: LCCOMB_X52_Y69_N28
\Normal1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Add0~58_combout\ = \Normal1|Add0~57\ $ (\Normal1|s_divCounter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Normal1|s_divCounter\(30),
	cin => \Normal1|Add0~57\,
	combout => \Normal1|Add0~58_combout\);

-- Location: FF_X52_Y69_N29
\Normal1|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|s_divCounter\(30));

-- Location: LCCOMB_X52_Y69_N30
\Normal1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Equal0~7_combout\ = (!\Normal1|s_divCounter\(27) & (!\Normal1|s_divCounter\(25) & (!\Normal1|s_divCounter\(28) & !\Normal1|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(27),
	datab => \Normal1|s_divCounter\(25),
	datac => \Normal1|s_divCounter\(28),
	datad => \Normal1|s_divCounter\(26),
	combout => \Normal1|Equal0~7_combout\);

-- Location: LCCOMB_X53_Y69_N10
\Normal1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Equal0~8_combout\ = (!\Normal1|s_divCounter\(30) & (!\Normal1|s_divCounter\(29) & \Normal1|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Normal1|s_divCounter\(30),
	datac => \Normal1|s_divCounter\(29),
	datad => \Normal1|Equal0~7_combout\,
	combout => \Normal1|Equal0~8_combout\);

-- Location: LCCOMB_X53_Y70_N30
\Normal1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Equal0~1_combout\ = (!\Normal1|s_divCounter\(6) & (!\Normal1|s_divCounter\(7) & (!\Normal1|s_divCounter\(8) & !\Normal1|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(6),
	datab => \Normal1|s_divCounter\(7),
	datac => \Normal1|s_divCounter\(8),
	datad => \Normal1|s_divCounter\(5),
	combout => \Normal1|Equal0~1_combout\);

-- Location: LCCOMB_X53_Y70_N18
\Normal1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Equal0~3_combout\ = (!\Normal1|s_divCounter\(15) & (!\Normal1|s_divCounter\(14) & (!\Normal1|s_divCounter\(13) & !\Normal1|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(15),
	datab => \Normal1|s_divCounter\(14),
	datac => \Normal1|s_divCounter\(13),
	datad => \Normal1|s_divCounter\(16),
	combout => \Normal1|Equal0~3_combout\);

-- Location: LCCOMB_X53_Y70_N4
\Normal1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Equal0~2_combout\ = (!\Normal1|s_divCounter\(9) & (!\Normal1|s_divCounter\(11) & (!\Normal1|s_divCounter\(12) & !\Normal1|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(9),
	datab => \Normal1|s_divCounter\(11),
	datac => \Normal1|s_divCounter\(12),
	datad => \Normal1|s_divCounter\(10),
	combout => \Normal1|Equal0~2_combout\);

-- Location: LCCOMB_X53_Y70_N28
\Normal1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Equal0~0_combout\ = (!\Normal1|s_divCounter\(1) & (!\Normal1|s_divCounter\(2) & (!\Normal1|s_divCounter\(3) & !\Normal1|s_divCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|s_divCounter\(1),
	datab => \Normal1|s_divCounter\(2),
	datac => \Normal1|s_divCounter\(3),
	datad => \Normal1|s_divCounter\(4),
	combout => \Normal1|Equal0~0_combout\);

-- Location: LCCOMB_X53_Y70_N16
\Normal1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Equal0~4_combout\ = (\Normal1|Equal0~1_combout\ & (\Normal1|Equal0~3_combout\ & (\Normal1|Equal0~2_combout\ & \Normal1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|Equal0~1_combout\,
	datab => \Normal1|Equal0~3_combout\,
	datac => \Normal1|Equal0~2_combout\,
	datad => \Normal1|Equal0~0_combout\,
	combout => \Normal1|Equal0~4_combout\);

-- Location: LCCOMB_X53_Y70_N26
\Normal1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|Equal0~9_combout\ = (\Normal1|Equal0~5_combout\ & (\Normal1|Equal0~6_combout\ & (\Normal1|Equal0~8_combout\ & \Normal1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal1|Equal0~5_combout\,
	datab => \Normal1|Equal0~6_combout\,
	datac => \Normal1|Equal0~8_combout\,
	datad => \Normal1|Equal0~4_combout\,
	combout => \Normal1|Equal0~9_combout\);

-- Location: LCCOMB_X54_Y70_N0
\Normal1|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal1|clkOut~0_combout\ = (\Normal1|Equal0~9_combout\ & (!\saida2|s_divCounter\(0))) # (!\Normal1|Equal0~9_combout\ & ((\Normal1|clkOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida2|s_divCounter\(0),
	datac => \Normal1|clkOut~q\,
	datad => \Normal1|Equal0~9_combout\,
	combout => \Normal1|clkOut~0_combout\);

-- Location: FF_X54_Y70_N1
\Normal1|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal1|clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal1|clkOut~q\);

-- Location: FF_X56_Y66_N3
\Normal2|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~0_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(0));

-- Location: LCCOMB_X56_Y66_N4
\Normal2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~2_combout\ = (\Normal2|s_divCounter\(1) & (!\Normal2|Add0~1\)) # (!\Normal2|s_divCounter\(1) & ((\Normal2|Add0~1\) # (GND)))
-- \Normal2|Add0~3\ = CARRY((!\Normal2|Add0~1\) # (!\Normal2|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(1),
	datad => VCC,
	cin => \Normal2|Add0~1\,
	combout => \Normal2|Add0~2_combout\,
	cout => \Normal2|Add0~3\);

-- Location: FF_X56_Y66_N5
\Normal2|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~2_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(1));

-- Location: LCCOMB_X56_Y66_N6
\Normal2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~4_combout\ = (\Normal2|s_divCounter\(2) & (\Normal2|Add0~3\ $ (GND))) # (!\Normal2|s_divCounter\(2) & (!\Normal2|Add0~3\ & VCC))
-- \Normal2|Add0~5\ = CARRY((\Normal2|s_divCounter\(2) & !\Normal2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(2),
	datad => VCC,
	cin => \Normal2|Add0~3\,
	combout => \Normal2|Add0~4_combout\,
	cout => \Normal2|Add0~5\);

-- Location: FF_X56_Y66_N7
\Normal2|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~4_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(2));

-- Location: LCCOMB_X56_Y66_N8
\Normal2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~6_combout\ = (\Normal2|s_divCounter\(3) & (!\Normal2|Add0~5\)) # (!\Normal2|s_divCounter\(3) & ((\Normal2|Add0~5\) # (GND)))
-- \Normal2|Add0~7\ = CARRY((!\Normal2|Add0~5\) # (!\Normal2|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(3),
	datad => VCC,
	cin => \Normal2|Add0~5\,
	combout => \Normal2|Add0~6_combout\,
	cout => \Normal2|Add0~7\);

-- Location: FF_X56_Y66_N9
\Normal2|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~6_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(3));

-- Location: LCCOMB_X56_Y66_N10
\Normal2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~8_combout\ = (\Normal2|s_divCounter\(4) & (\Normal2|Add0~7\ $ (GND))) # (!\Normal2|s_divCounter\(4) & (!\Normal2|Add0~7\ & VCC))
-- \Normal2|Add0~9\ = CARRY((\Normal2|s_divCounter\(4) & !\Normal2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(4),
	datad => VCC,
	cin => \Normal2|Add0~7\,
	combout => \Normal2|Add0~8_combout\,
	cout => \Normal2|Add0~9\);

-- Location: FF_X56_Y66_N11
\Normal2|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~8_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(4));

-- Location: LCCOMB_X56_Y66_N12
\Normal2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~10_combout\ = (\Normal2|s_divCounter\(5) & (!\Normal2|Add0~9\)) # (!\Normal2|s_divCounter\(5) & ((\Normal2|Add0~9\) # (GND)))
-- \Normal2|Add0~11\ = CARRY((!\Normal2|Add0~9\) # (!\Normal2|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(5),
	datad => VCC,
	cin => \Normal2|Add0~9\,
	combout => \Normal2|Add0~10_combout\,
	cout => \Normal2|Add0~11\);

-- Location: FF_X56_Y66_N13
\Normal2|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~10_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(5));

-- Location: LCCOMB_X56_Y66_N14
\Normal2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~12_combout\ = (\Normal2|s_divCounter\(6) & (\Normal2|Add0~11\ $ (GND))) # (!\Normal2|s_divCounter\(6) & (!\Normal2|Add0~11\ & VCC))
-- \Normal2|Add0~13\ = CARRY((\Normal2|s_divCounter\(6) & !\Normal2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(6),
	datad => VCC,
	cin => \Normal2|Add0~11\,
	combout => \Normal2|Add0~12_combout\,
	cout => \Normal2|Add0~13\);

-- Location: FF_X56_Y66_N15
\Normal2|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~12_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(6));

-- Location: LCCOMB_X56_Y66_N16
\Normal2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~14_combout\ = (\Normal2|s_divCounter\(7) & (!\Normal2|Add0~13\)) # (!\Normal2|s_divCounter\(7) & ((\Normal2|Add0~13\) # (GND)))
-- \Normal2|Add0~15\ = CARRY((!\Normal2|Add0~13\) # (!\Normal2|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(7),
	datad => VCC,
	cin => \Normal2|Add0~13\,
	combout => \Normal2|Add0~14_combout\,
	cout => \Normal2|Add0~15\);

-- Location: FF_X56_Y66_N17
\Normal2|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~14_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(7));

-- Location: LCCOMB_X56_Y66_N18
\Normal2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~16_combout\ = (\Normal2|s_divCounter\(8) & (\Normal2|Add0~15\ $ (GND))) # (!\Normal2|s_divCounter\(8) & (!\Normal2|Add0~15\ & VCC))
-- \Normal2|Add0~17\ = CARRY((\Normal2|s_divCounter\(8) & !\Normal2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(8),
	datad => VCC,
	cin => \Normal2|Add0~15\,
	combout => \Normal2|Add0~16_combout\,
	cout => \Normal2|Add0~17\);

-- Location: LCCOMB_X55_Y65_N10
\Normal2|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|s_divCounter~1_combout\ = (!\Normal2|Equal0~9_combout\ & \Normal2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Normal2|Equal0~9_combout\,
	datad => \Normal2|Add0~16_combout\,
	combout => \Normal2|s_divCounter~1_combout\);

-- Location: FF_X56_Y66_N29
\Normal2|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	asdata => \Normal2|s_divCounter~1_combout\,
	sload => VCC,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(8));

-- Location: LCCOMB_X56_Y66_N20
\Normal2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~18_combout\ = (\Normal2|s_divCounter\(9) & (!\Normal2|Add0~17\)) # (!\Normal2|s_divCounter\(9) & ((\Normal2|Add0~17\) # (GND)))
-- \Normal2|Add0~19\ = CARRY((!\Normal2|Add0~17\) # (!\Normal2|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(9),
	datad => VCC,
	cin => \Normal2|Add0~17\,
	combout => \Normal2|Add0~18_combout\,
	cout => \Normal2|Add0~19\);

-- Location: LCCOMB_X56_Y66_N0
\Normal2|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|s_divCounter~0_combout\ = (\Normal2|Add0~18_combout\ & !\Normal2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|Add0~18_combout\,
	datad => \Normal2|Equal0~9_combout\,
	combout => \Normal2|s_divCounter~0_combout\);

-- Location: FF_X56_Y66_N1
\Normal2|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|s_divCounter~0_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(9));

-- Location: LCCOMB_X56_Y66_N22
\Normal2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~20_combout\ = (\Normal2|s_divCounter\(10) & (\Normal2|Add0~19\ $ (GND))) # (!\Normal2|s_divCounter\(10) & (!\Normal2|Add0~19\ & VCC))
-- \Normal2|Add0~21\ = CARRY((\Normal2|s_divCounter\(10) & !\Normal2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(10),
	datad => VCC,
	cin => \Normal2|Add0~19\,
	combout => \Normal2|Add0~20_combout\,
	cout => \Normal2|Add0~21\);

-- Location: LCCOMB_X55_Y65_N0
\Normal2|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|s_divCounter~2_combout\ = (!\Normal2|Equal0~9_combout\ & \Normal2|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Normal2|Equal0~9_combout\,
	datad => \Normal2|Add0~20_combout\,
	combout => \Normal2|s_divCounter~2_combout\);

-- Location: FF_X55_Y65_N1
\Normal2|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|s_divCounter~2_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(10));

-- Location: LCCOMB_X56_Y66_N24
\Normal2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~22_combout\ = (\Normal2|s_divCounter\(11) & (!\Normal2|Add0~21\)) # (!\Normal2|s_divCounter\(11) & ((\Normal2|Add0~21\) # (GND)))
-- \Normal2|Add0~23\ = CARRY((!\Normal2|Add0~21\) # (!\Normal2|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(11),
	datad => VCC,
	cin => \Normal2|Add0~21\,
	combout => \Normal2|Add0~22_combout\,
	cout => \Normal2|Add0~23\);

-- Location: LCCOMB_X55_Y65_N2
\Normal2|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|s_divCounter~3_combout\ = (!\Normal2|Equal0~9_combout\ & \Normal2|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Normal2|Equal0~9_combout\,
	datad => \Normal2|Add0~22_combout\,
	combout => \Normal2|s_divCounter~3_combout\);

-- Location: FF_X55_Y65_N3
\Normal2|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|s_divCounter~3_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(11));

-- Location: LCCOMB_X56_Y66_N26
\Normal2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~24_combout\ = (\Normal2|s_divCounter\(12) & (\Normal2|Add0~23\ $ (GND))) # (!\Normal2|s_divCounter\(12) & (!\Normal2|Add0~23\ & VCC))
-- \Normal2|Add0~25\ = CARRY((\Normal2|s_divCounter\(12) & !\Normal2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(12),
	datad => VCC,
	cin => \Normal2|Add0~23\,
	combout => \Normal2|Add0~24_combout\,
	cout => \Normal2|Add0~25\);

-- Location: FF_X56_Y66_N27
\Normal2|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~24_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(12));

-- Location: LCCOMB_X56_Y66_N28
\Normal2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~26_combout\ = (\Normal2|s_divCounter\(13) & (!\Normal2|Add0~25\)) # (!\Normal2|s_divCounter\(13) & ((\Normal2|Add0~25\) # (GND)))
-- \Normal2|Add0~27\ = CARRY((!\Normal2|Add0~25\) # (!\Normal2|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(13),
	datad => VCC,
	cin => \Normal2|Add0~25\,
	combout => \Normal2|Add0~26_combout\,
	cout => \Normal2|Add0~27\);

-- Location: LCCOMB_X55_Y66_N6
\Normal2|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|s_divCounter~4_combout\ = (!\Normal2|Equal0~9_combout\ & \Normal2|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|Equal0~9_combout\,
	datad => \Normal2|Add0~26_combout\,
	combout => \Normal2|s_divCounter~4_combout\);

-- Location: FF_X55_Y66_N7
\Normal2|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|s_divCounter~4_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(13));

-- Location: LCCOMB_X56_Y66_N30
\Normal2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~28_combout\ = (\Normal2|s_divCounter\(14) & (\Normal2|Add0~27\ $ (GND))) # (!\Normal2|s_divCounter\(14) & (!\Normal2|Add0~27\ & VCC))
-- \Normal2|Add0~29\ = CARRY((\Normal2|s_divCounter\(14) & !\Normal2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(14),
	datad => VCC,
	cin => \Normal2|Add0~27\,
	combout => \Normal2|Add0~28_combout\,
	cout => \Normal2|Add0~29\);

-- Location: FF_X56_Y66_N31
\Normal2|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~28_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(14));

-- Location: LCCOMB_X56_Y65_N0
\Normal2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~30_combout\ = (\Normal2|s_divCounter\(15) & (!\Normal2|Add0~29\)) # (!\Normal2|s_divCounter\(15) & ((\Normal2|Add0~29\) # (GND)))
-- \Normal2|Add0~31\ = CARRY((!\Normal2|Add0~29\) # (!\Normal2|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(15),
	datad => VCC,
	cin => \Normal2|Add0~29\,
	combout => \Normal2|Add0~30_combout\,
	cout => \Normal2|Add0~31\);

-- Location: FF_X56_Y65_N1
\Normal2|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~30_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(15));

-- Location: LCCOMB_X56_Y65_N2
\Normal2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~32_combout\ = (\Normal2|s_divCounter\(16) & (\Normal2|Add0~31\ $ (GND))) # (!\Normal2|s_divCounter\(16) & (!\Normal2|Add0~31\ & VCC))
-- \Normal2|Add0~33\ = CARRY((\Normal2|s_divCounter\(16) & !\Normal2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(16),
	datad => VCC,
	cin => \Normal2|Add0~31\,
	combout => \Normal2|Add0~32_combout\,
	cout => \Normal2|Add0~33\);

-- Location: FF_X56_Y65_N3
\Normal2|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~32_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(16));

-- Location: LCCOMB_X56_Y65_N4
\Normal2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~34_combout\ = (\Normal2|s_divCounter\(17) & (!\Normal2|Add0~33\)) # (!\Normal2|s_divCounter\(17) & ((\Normal2|Add0~33\) # (GND)))
-- \Normal2|Add0~35\ = CARRY((!\Normal2|Add0~33\) # (!\Normal2|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(17),
	datad => VCC,
	cin => \Normal2|Add0~33\,
	combout => \Normal2|Add0~34_combout\,
	cout => \Normal2|Add0~35\);

-- Location: FF_X56_Y65_N5
\Normal2|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~34_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(17));

-- Location: LCCOMB_X56_Y65_N6
\Normal2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~36_combout\ = (\Normal2|s_divCounter\(18) & (\Normal2|Add0~35\ $ (GND))) # (!\Normal2|s_divCounter\(18) & (!\Normal2|Add0~35\ & VCC))
-- \Normal2|Add0~37\ = CARRY((\Normal2|s_divCounter\(18) & !\Normal2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(18),
	datad => VCC,
	cin => \Normal2|Add0~35\,
	combout => \Normal2|Add0~36_combout\,
	cout => \Normal2|Add0~37\);

-- Location: FF_X56_Y65_N7
\Normal2|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~36_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(18));

-- Location: LCCOMB_X56_Y65_N8
\Normal2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~38_combout\ = (\Normal2|s_divCounter\(19) & (!\Normal2|Add0~37\)) # (!\Normal2|s_divCounter\(19) & ((\Normal2|Add0~37\) # (GND)))
-- \Normal2|Add0~39\ = CARRY((!\Normal2|Add0~37\) # (!\Normal2|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(19),
	datad => VCC,
	cin => \Normal2|Add0~37\,
	combout => \Normal2|Add0~38_combout\,
	cout => \Normal2|Add0~39\);

-- Location: LCCOMB_X55_Y65_N16
\Normal2|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|s_divCounter~5_combout\ = (!\Normal2|Equal0~9_combout\ & \Normal2|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|Equal0~9_combout\,
	datac => \Normal2|Add0~38_combout\,
	combout => \Normal2|s_divCounter~5_combout\);

-- Location: FF_X55_Y65_N17
\Normal2|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|s_divCounter~5_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(19));

-- Location: LCCOMB_X55_Y65_N22
\Normal2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Equal0~5_combout\ = (!\Normal2|s_divCounter\(18) & (\Normal2|s_divCounter\(19) & (!\Normal2|s_divCounter\(17) & !\Normal2|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(18),
	datab => \Normal2|s_divCounter\(19),
	datac => \Normal2|s_divCounter\(17),
	datad => \Normal2|s_divCounter\(16),
	combout => \Normal2|Equal0~5_combout\);

-- Location: LCCOMB_X56_Y65_N10
\Normal2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~40_combout\ = (\Normal2|s_divCounter\(20) & (\Normal2|Add0~39\ $ (GND))) # (!\Normal2|s_divCounter\(20) & (!\Normal2|Add0~39\ & VCC))
-- \Normal2|Add0~41\ = CARRY((\Normal2|s_divCounter\(20) & !\Normal2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(20),
	datad => VCC,
	cin => \Normal2|Add0~39\,
	combout => \Normal2|Add0~40_combout\,
	cout => \Normal2|Add0~41\);

-- Location: FF_X56_Y65_N11
\Normal2|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~40_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(20));

-- Location: LCCOMB_X56_Y65_N12
\Normal2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~42_combout\ = (\Normal2|s_divCounter\(21) & (!\Normal2|Add0~41\)) # (!\Normal2|s_divCounter\(21) & ((\Normal2|Add0~41\) # (GND)))
-- \Normal2|Add0~43\ = CARRY((!\Normal2|Add0~41\) # (!\Normal2|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(21),
	datad => VCC,
	cin => \Normal2|Add0~41\,
	combout => \Normal2|Add0~42_combout\,
	cout => \Normal2|Add0~43\);

-- Location: LCCOMB_X55_Y65_N12
\Normal2|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|s_divCounter~6_combout\ = (!\Normal2|Equal0~9_combout\ & \Normal2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|Equal0~9_combout\,
	datac => \Normal2|Add0~42_combout\,
	combout => \Normal2|s_divCounter~6_combout\);

-- Location: FF_X55_Y65_N13
\Normal2|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|s_divCounter~6_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(21));

-- Location: LCCOMB_X56_Y65_N14
\Normal2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~44_combout\ = (\Normal2|s_divCounter\(22) & (\Normal2|Add0~43\ $ (GND))) # (!\Normal2|s_divCounter\(22) & (!\Normal2|Add0~43\ & VCC))
-- \Normal2|Add0~45\ = CARRY((\Normal2|s_divCounter\(22) & !\Normal2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(22),
	datad => VCC,
	cin => \Normal2|Add0~43\,
	combout => \Normal2|Add0~44_combout\,
	cout => \Normal2|Add0~45\);

-- Location: LCCOMB_X55_Y65_N6
\Normal2|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|s_divCounter~7_combout\ = (!\Normal2|Equal0~9_combout\ & \Normal2|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|Equal0~9_combout\,
	datac => \Normal2|Add0~44_combout\,
	combout => \Normal2|s_divCounter~7_combout\);

-- Location: FF_X55_Y65_N7
\Normal2|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|s_divCounter~7_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(22));

-- Location: LCCOMB_X56_Y65_N16
\Normal2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~46_combout\ = (\Normal2|s_divCounter\(23) & (!\Normal2|Add0~45\)) # (!\Normal2|s_divCounter\(23) & ((\Normal2|Add0~45\) # (GND)))
-- \Normal2|Add0~47\ = CARRY((!\Normal2|Add0~45\) # (!\Normal2|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(23),
	datad => VCC,
	cin => \Normal2|Add0~45\,
	combout => \Normal2|Add0~46_combout\,
	cout => \Normal2|Add0~47\);

-- Location: FF_X56_Y65_N17
\Normal2|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~46_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(23));

-- Location: LCCOMB_X55_Y65_N24
\Normal2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Equal0~6_combout\ = (\Normal2|s_divCounter\(21) & (!\Normal2|s_divCounter\(23) & (!\Normal2|s_divCounter\(20) & \Normal2|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(21),
	datab => \Normal2|s_divCounter\(23),
	datac => \Normal2|s_divCounter\(20),
	datad => \Normal2|s_divCounter\(22),
	combout => \Normal2|Equal0~6_combout\);

-- Location: LCCOMB_X55_Y66_N12
\Normal2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Equal0~0_combout\ = (\Normal2|s_divCounter\(7) & (\Normal2|s_divCounter\(9) & (\Normal2|s_divCounter\(6) & !\Normal2|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(7),
	datab => \Normal2|s_divCounter\(9),
	datac => \Normal2|s_divCounter\(6),
	datad => \Normal2|s_divCounter\(8),
	combout => \Normal2|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y66_N18
\Normal2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Equal0~1_combout\ = (\Normal2|s_divCounter\(2) & (\Normal2|s_divCounter\(4) & (\Normal2|s_divCounter\(5) & \Normal2|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(2),
	datab => \Normal2|s_divCounter\(4),
	datac => \Normal2|s_divCounter\(5),
	datad => \Normal2|s_divCounter\(3),
	combout => \Normal2|Equal0~1_combout\);

-- Location: LCCOMB_X55_Y66_N4
\Normal2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Equal0~3_combout\ = (\Normal2|s_divCounter\(13) & (!\Normal2|s_divCounter\(12) & (!\Normal2|s_divCounter\(14) & !\Normal2|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(13),
	datab => \Normal2|s_divCounter\(12),
	datac => \Normal2|s_divCounter\(14),
	datad => \Normal2|s_divCounter\(15),
	combout => \Normal2|Equal0~3_combout\);

-- Location: LCCOMB_X55_Y66_N0
\Normal2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Equal0~2_combout\ = (\Normal2|s_divCounter\(0) & (\Normal2|s_divCounter\(10) & (\Normal2|s_divCounter\(11) & \Normal2|s_divCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(0),
	datab => \Normal2|s_divCounter\(10),
	datac => \Normal2|s_divCounter\(11),
	datad => \Normal2|s_divCounter\(1),
	combout => \Normal2|Equal0~2_combout\);

-- Location: LCCOMB_X55_Y66_N30
\Normal2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Equal0~4_combout\ = (\Normal2|Equal0~0_combout\ & (\Normal2|Equal0~1_combout\ & (\Normal2|Equal0~3_combout\ & \Normal2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|Equal0~0_combout\,
	datab => \Normal2|Equal0~1_combout\,
	datac => \Normal2|Equal0~3_combout\,
	datad => \Normal2|Equal0~2_combout\,
	combout => \Normal2|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y65_N18
\Normal2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~48_combout\ = (\Normal2|s_divCounter\(24) & (\Normal2|Add0~47\ $ (GND))) # (!\Normal2|s_divCounter\(24) & (!\Normal2|Add0~47\ & VCC))
-- \Normal2|Add0~49\ = CARRY((\Normal2|s_divCounter\(24) & !\Normal2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(24),
	datad => VCC,
	cin => \Normal2|Add0~47\,
	combout => \Normal2|Add0~48_combout\,
	cout => \Normal2|Add0~49\);

-- Location: LCCOMB_X55_Y65_N14
\Normal2|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|s_divCounter~8_combout\ = (!\Normal2|Equal0~9_combout\ & \Normal2|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Normal2|Equal0~9_combout\,
	datad => \Normal2|Add0~48_combout\,
	combout => \Normal2|s_divCounter~8_combout\);

-- Location: FF_X55_Y65_N15
\Normal2|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|s_divCounter~8_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(24));

-- Location: LCCOMB_X56_Y65_N20
\Normal2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~50_combout\ = (\Normal2|s_divCounter\(25) & (!\Normal2|Add0~49\)) # (!\Normal2|s_divCounter\(25) & ((\Normal2|Add0~49\) # (GND)))
-- \Normal2|Add0~51\ = CARRY((!\Normal2|Add0~49\) # (!\Normal2|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(25),
	datad => VCC,
	cin => \Normal2|Add0~49\,
	combout => \Normal2|Add0~50_combout\,
	cout => \Normal2|Add0~51\);

-- Location: FF_X56_Y65_N21
\Normal2|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~50_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(25));

-- Location: LCCOMB_X56_Y65_N22
\Normal2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~52_combout\ = (\Normal2|s_divCounter\(26) & (\Normal2|Add0~51\ $ (GND))) # (!\Normal2|s_divCounter\(26) & (!\Normal2|Add0~51\ & VCC))
-- \Normal2|Add0~53\ = CARRY((\Normal2|s_divCounter\(26) & !\Normal2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(26),
	datad => VCC,
	cin => \Normal2|Add0~51\,
	combout => \Normal2|Add0~52_combout\,
	cout => \Normal2|Add0~53\);

-- Location: FF_X56_Y65_N23
\Normal2|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~52_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(26));

-- Location: LCCOMB_X56_Y65_N24
\Normal2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~54_combout\ = (\Normal2|s_divCounter\(27) & (!\Normal2|Add0~53\)) # (!\Normal2|s_divCounter\(27) & ((\Normal2|Add0~53\) # (GND)))
-- \Normal2|Add0~55\ = CARRY((!\Normal2|Add0~53\) # (!\Normal2|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(27),
	datad => VCC,
	cin => \Normal2|Add0~53\,
	combout => \Normal2|Add0~54_combout\,
	cout => \Normal2|Add0~55\);

-- Location: LCCOMB_X55_Y65_N28
\Normal2|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|s_divCounter~9_combout\ = (!\Normal2|Equal0~9_combout\ & \Normal2|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Normal2|Equal0~9_combout\,
	datad => \Normal2|Add0~54_combout\,
	combout => \Normal2|s_divCounter~9_combout\);

-- Location: FF_X55_Y65_N29
\Normal2|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|s_divCounter~9_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(27));

-- Location: LCCOMB_X55_Y65_N26
\Normal2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Equal0~7_combout\ = (\Normal2|s_divCounter\(27) & (\Normal2|s_divCounter\(24) & (!\Normal2|s_divCounter\(25) & !\Normal2|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(27),
	datab => \Normal2|s_divCounter\(24),
	datac => \Normal2|s_divCounter\(25),
	datad => \Normal2|s_divCounter\(26),
	combout => \Normal2|Equal0~7_combout\);

-- Location: LCCOMB_X56_Y65_N26
\Normal2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~56_combout\ = (\Normal2|s_divCounter\(28) & (\Normal2|Add0~55\ $ (GND))) # (!\Normal2|s_divCounter\(28) & (!\Normal2|Add0~55\ & VCC))
-- \Normal2|Add0~57\ = CARRY((\Normal2|s_divCounter\(28) & !\Normal2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|s_divCounter\(28),
	datad => VCC,
	cin => \Normal2|Add0~55\,
	combout => \Normal2|Add0~56_combout\,
	cout => \Normal2|Add0~57\);

-- Location: LCCOMB_X55_Y65_N8
\Normal2|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|s_divCounter~10_combout\ = (!\Normal2|Equal0~9_combout\ & \Normal2|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Normal2|Equal0~9_combout\,
	datad => \Normal2|Add0~56_combout\,
	combout => \Normal2|s_divCounter~10_combout\);

-- Location: FF_X55_Y65_N9
\Normal2|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|s_divCounter~10_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(28));

-- Location: LCCOMB_X56_Y65_N28
\Normal2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~58_combout\ = (\Normal2|s_divCounter\(29) & (!\Normal2|Add0~57\)) # (!\Normal2|s_divCounter\(29) & ((\Normal2|Add0~57\) # (GND)))
-- \Normal2|Add0~59\ = CARRY((!\Normal2|Add0~57\) # (!\Normal2|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|s_divCounter\(29),
	datad => VCC,
	cin => \Normal2|Add0~57\,
	combout => \Normal2|Add0~58_combout\,
	cout => \Normal2|Add0~59\);

-- Location: FF_X56_Y65_N29
\Normal2|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Add0~58_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(29));

-- Location: LCCOMB_X56_Y65_N30
\Normal2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Add0~60_combout\ = \Normal2|Add0~59\ $ (!\Normal2|s_divCounter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Normal2|s_divCounter\(30),
	cin => \Normal2|Add0~59\,
	combout => \Normal2|Add0~60_combout\);

-- Location: LCCOMB_X55_Y65_N18
\Normal2|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|s_divCounter~11_combout\ = (!\Normal2|Equal0~9_combout\ & \Normal2|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|Equal0~9_combout\,
	datac => \Normal2|Add0~60_combout\,
	combout => \Normal2|s_divCounter~11_combout\);

-- Location: FF_X55_Y65_N19
\Normal2|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|s_divCounter~11_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|s_divCounter\(30));

-- Location: LCCOMB_X55_Y65_N20
\Normal2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Equal0~8_combout\ = (\Normal2|Equal0~7_combout\ & (\Normal2|s_divCounter\(30) & (\Normal2|s_divCounter\(28) & !\Normal2|s_divCounter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|Equal0~7_combout\,
	datab => \Normal2|s_divCounter\(30),
	datac => \Normal2|s_divCounter\(28),
	datad => \Normal2|s_divCounter\(29),
	combout => \Normal2|Equal0~8_combout\);

-- Location: LCCOMB_X55_Y65_N4
\Normal2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Normal2|Equal0~9_combout\ = (\Normal2|Equal0~5_combout\ & (\Normal2|Equal0~6_combout\ & (\Normal2|Equal0~4_combout\ & \Normal2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Normal2|Equal0~5_combout\,
	datab => \Normal2|Equal0~6_combout\,
	datac => \Normal2|Equal0~4_combout\,
	datad => \Normal2|Equal0~8_combout\,
	combout => \Normal2|Equal0~9_combout\);

-- Location: FF_X55_Y65_N5
\Normal2|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \Normal2|Equal0~9_combout\,
	ena => \Normal1|clkOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Normal2|clkOut~q\);

-- Location: LCCOMB_X55_Y65_N30
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\Normal2|clkOut~q\ & \Normal1|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Normal2|clkOut~q\,
	datac => \Normal1|clkOut~q\,
	combout => \comb~0_combout\);

-- Location: IOIBUF_X58_Y73_N22
\acel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acel(1),
	o => \acel[1]~input_o\);

-- Location: LCCOMB_X58_Y69_N28
\saida1|yout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida1|yout~0_combout\ = (\acel[0]~input_o\ & ((\acel01|clkOut~q\) # ((\acel[1]~input_o\)))) # (!\acel[0]~input_o\ & (((\comb~0_combout\ & !\acel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel01|clkOut~q\,
	datab => \acel[0]~input_o\,
	datac => \comb~0_combout\,
	datad => \acel[1]~input_o\,
	combout => \saida1|yout~0_combout\);

-- Location: LCCOMB_X55_Y62_N2
\acel11|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~0_combout\ = \acel11|s_divCounter\(0) $ (VCC)
-- \acel11|Add0~1\ = CARRY(\acel11|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(0),
	datad => VCC,
	combout => \acel11|Add0~0_combout\,
	cout => \acel11|Add0~1\);

-- Location: LCCOMB_X55_Y62_N0
\acel11|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|s_divCounter~3_combout\ = (!\acel11|Equal0~9_combout\ & \acel11|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \acel11|Equal0~9_combout\,
	datad => \acel11|Add0~0_combout\,
	combout => \acel11|s_divCounter~3_combout\);

-- Location: FF_X55_Y62_N1
\acel11|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(0));

-- Location: LCCOMB_X55_Y62_N4
\acel11|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~2_combout\ = (\acel11|s_divCounter\(1) & (!\acel11|Add0~1\)) # (!\acel11|s_divCounter\(1) & ((\acel11|Add0~1\) # (GND)))
-- \acel11|Add0~3\ = CARRY((!\acel11|Add0~1\) # (!\acel11|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(1),
	datad => VCC,
	cin => \acel11|Add0~1\,
	combout => \acel11|Add0~2_combout\,
	cout => \acel11|Add0~3\);

-- Location: FF_X55_Y62_N5
\acel11|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(1));

-- Location: LCCOMB_X55_Y62_N6
\acel11|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~4_combout\ = (\acel11|s_divCounter\(2) & (\acel11|Add0~3\ $ (GND))) # (!\acel11|s_divCounter\(2) & (!\acel11|Add0~3\ & VCC))
-- \acel11|Add0~5\ = CARRY((\acel11|s_divCounter\(2) & !\acel11|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(2),
	datad => VCC,
	cin => \acel11|Add0~3\,
	combout => \acel11|Add0~4_combout\,
	cout => \acel11|Add0~5\);

-- Location: LCCOMB_X56_Y62_N20
\acel11|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|s_divCounter~2_combout\ = (\acel11|Add0~4_combout\ & !\acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \acel11|Add0~4_combout\,
	datad => \acel11|Equal0~9_combout\,
	combout => \acel11|s_divCounter~2_combout\);

-- Location: FF_X56_Y62_N21
\acel11|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(2));

-- Location: LCCOMB_X55_Y62_N8
\acel11|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~6_combout\ = (\acel11|s_divCounter\(3) & (!\acel11|Add0~5\)) # (!\acel11|s_divCounter\(3) & ((\acel11|Add0~5\) # (GND)))
-- \acel11|Add0~7\ = CARRY((!\acel11|Add0~5\) # (!\acel11|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(3),
	datad => VCC,
	cin => \acel11|Add0~5\,
	combout => \acel11|Add0~6_combout\,
	cout => \acel11|Add0~7\);

-- Location: FF_X55_Y62_N9
\acel11|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(3));

-- Location: LCCOMB_X55_Y62_N10
\acel11|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~8_combout\ = (\acel11|s_divCounter\(4) & (\acel11|Add0~7\ $ (GND))) # (!\acel11|s_divCounter\(4) & (!\acel11|Add0~7\ & VCC))
-- \acel11|Add0~9\ = CARRY((\acel11|s_divCounter\(4) & !\acel11|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(4),
	datad => VCC,
	cin => \acel11|Add0~7\,
	combout => \acel11|Add0~8_combout\,
	cout => \acel11|Add0~9\);

-- Location: LCCOMB_X56_Y62_N6
\acel11|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|s_divCounter~1_combout\ = (\acel11|Add0~8_combout\ & !\acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|Add0~8_combout\,
	datad => \acel11|Equal0~9_combout\,
	combout => \acel11|s_divCounter~1_combout\);

-- Location: FF_X56_Y62_N7
\acel11|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(4));

-- Location: LCCOMB_X55_Y62_N12
\acel11|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~10_combout\ = (\acel11|s_divCounter\(5) & (!\acel11|Add0~9\)) # (!\acel11|s_divCounter\(5) & ((\acel11|Add0~9\) # (GND)))
-- \acel11|Add0~11\ = CARRY((!\acel11|Add0~9\) # (!\acel11|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(5),
	datad => VCC,
	cin => \acel11|Add0~9\,
	combout => \acel11|Add0~10_combout\,
	cout => \acel11|Add0~11\);

-- Location: LCCOMB_X56_Y62_N8
\acel11|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|s_divCounter~0_combout\ = (\acel11|Add0~10_combout\ & !\acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|Add0~10_combout\,
	datad => \acel11|Equal0~9_combout\,
	combout => \acel11|s_divCounter~0_combout\);

-- Location: FF_X56_Y62_N9
\acel11|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(5));

-- Location: LCCOMB_X55_Y62_N14
\acel11|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~12_combout\ = (\acel11|s_divCounter\(6) & (\acel11|Add0~11\ $ (GND))) # (!\acel11|s_divCounter\(6) & (!\acel11|Add0~11\ & VCC))
-- \acel11|Add0~13\ = CARRY((\acel11|s_divCounter\(6) & !\acel11|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(6),
	datad => VCC,
	cin => \acel11|Add0~11\,
	combout => \acel11|Add0~12_combout\,
	cout => \acel11|Add0~13\);

-- Location: FF_X55_Y62_N15
\acel11|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(6));

-- Location: LCCOMB_X55_Y62_N16
\acel11|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~14_combout\ = (\acel11|s_divCounter\(7) & (!\acel11|Add0~13\)) # (!\acel11|s_divCounter\(7) & ((\acel11|Add0~13\) # (GND)))
-- \acel11|Add0~15\ = CARRY((!\acel11|Add0~13\) # (!\acel11|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(7),
	datad => VCC,
	cin => \acel11|Add0~13\,
	combout => \acel11|Add0~14_combout\,
	cout => \acel11|Add0~15\);

-- Location: FF_X55_Y62_N17
\acel11|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(7));

-- Location: LCCOMB_X55_Y62_N18
\acel11|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~16_combout\ = (\acel11|s_divCounter\(8) & (\acel11|Add0~15\ $ (GND))) # (!\acel11|s_divCounter\(8) & (!\acel11|Add0~15\ & VCC))
-- \acel11|Add0~17\ = CARRY((\acel11|s_divCounter\(8) & !\acel11|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(8),
	datad => VCC,
	cin => \acel11|Add0~15\,
	combout => \acel11|Add0~16_combout\,
	cout => \acel11|Add0~17\);

-- Location: LCCOMB_X56_Y62_N10
\acel11|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|s_divCounter~4_combout\ = (\acel11|Add0~16_combout\ & !\acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acel11|Add0~16_combout\,
	datad => \acel11|Equal0~9_combout\,
	combout => \acel11|s_divCounter~4_combout\);

-- Location: FF_X56_Y62_N11
\acel11|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(8));

-- Location: LCCOMB_X55_Y62_N20
\acel11|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~18_combout\ = (\acel11|s_divCounter\(9) & (!\acel11|Add0~17\)) # (!\acel11|s_divCounter\(9) & ((\acel11|Add0~17\) # (GND)))
-- \acel11|Add0~19\ = CARRY((!\acel11|Add0~17\) # (!\acel11|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(9),
	datad => VCC,
	cin => \acel11|Add0~17\,
	combout => \acel11|Add0~18_combout\,
	cout => \acel11|Add0~19\);

-- Location: LCCOMB_X56_Y62_N24
\acel11|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|s_divCounter~5_combout\ = (!\acel11|Equal0~9_combout\ & \acel11|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acel11|Equal0~9_combout\,
	datac => \acel11|Add0~18_combout\,
	combout => \acel11|s_divCounter~5_combout\);

-- Location: FF_X56_Y62_N25
\acel11|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(9));

-- Location: LCCOMB_X55_Y62_N22
\acel11|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~20_combout\ = (\acel11|s_divCounter\(10) & (\acel11|Add0~19\ $ (GND))) # (!\acel11|s_divCounter\(10) & (!\acel11|Add0~19\ & VCC))
-- \acel11|Add0~21\ = CARRY((\acel11|s_divCounter\(10) & !\acel11|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(10),
	datad => VCC,
	cin => \acel11|Add0~19\,
	combout => \acel11|Add0~20_combout\,
	cout => \acel11|Add0~21\);

-- Location: LCCOMB_X56_Y62_N22
\acel11|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|s_divCounter~6_combout\ = (!\acel11|Equal0~9_combout\ & \acel11|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acel11|Equal0~9_combout\,
	datad => \acel11|Add0~20_combout\,
	combout => \acel11|s_divCounter~6_combout\);

-- Location: FF_X56_Y62_N23
\acel11|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(10));

-- Location: LCCOMB_X55_Y62_N24
\acel11|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~22_combout\ = (\acel11|s_divCounter\(11) & (!\acel11|Add0~21\)) # (!\acel11|s_divCounter\(11) & ((\acel11|Add0~21\) # (GND)))
-- \acel11|Add0~23\ = CARRY((!\acel11|Add0~21\) # (!\acel11|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(11),
	datad => VCC,
	cin => \acel11|Add0~21\,
	combout => \acel11|Add0~22_combout\,
	cout => \acel11|Add0~23\);

-- Location: FF_X55_Y62_N25
\acel11|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(11));

-- Location: LCCOMB_X55_Y62_N26
\acel11|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~24_combout\ = (\acel11|s_divCounter\(12) & (\acel11|Add0~23\ $ (GND))) # (!\acel11|s_divCounter\(12) & (!\acel11|Add0~23\ & VCC))
-- \acel11|Add0~25\ = CARRY((\acel11|s_divCounter\(12) & !\acel11|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(12),
	datad => VCC,
	cin => \acel11|Add0~23\,
	combout => \acel11|Add0~24_combout\,
	cout => \acel11|Add0~25\);

-- Location: LCCOMB_X56_Y62_N2
\acel11|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|s_divCounter~7_combout\ = (\acel11|Add0~24_combout\ & !\acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \acel11|Add0~24_combout\,
	datad => \acel11|Equal0~9_combout\,
	combout => \acel11|s_divCounter~7_combout\);

-- Location: FF_X56_Y62_N3
\acel11|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(12));

-- Location: LCCOMB_X55_Y62_N28
\acel11|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~26_combout\ = (\acel11|s_divCounter\(13) & (!\acel11|Add0~25\)) # (!\acel11|s_divCounter\(13) & ((\acel11|Add0~25\) # (GND)))
-- \acel11|Add0~27\ = CARRY((!\acel11|Add0~25\) # (!\acel11|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(13),
	datad => VCC,
	cin => \acel11|Add0~25\,
	combout => \acel11|Add0~26_combout\,
	cout => \acel11|Add0~27\);

-- Location: LCCOMB_X56_Y62_N4
\acel11|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|s_divCounter~8_combout\ = (!\acel11|Equal0~9_combout\ & \acel11|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acel11|Equal0~9_combout\,
	datad => \acel11|Add0~26_combout\,
	combout => \acel11|s_divCounter~8_combout\);

-- Location: FF_X56_Y62_N5
\acel11|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(13));

-- Location: LCCOMB_X55_Y62_N30
\acel11|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~28_combout\ = (\acel11|s_divCounter\(14) & (\acel11|Add0~27\ $ (GND))) # (!\acel11|s_divCounter\(14) & (!\acel11|Add0~27\ & VCC))
-- \acel11|Add0~29\ = CARRY((\acel11|s_divCounter\(14) & !\acel11|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(14),
	datad => VCC,
	cin => \acel11|Add0~27\,
	combout => \acel11|Add0~28_combout\,
	cout => \acel11|Add0~29\);

-- Location: FF_X55_Y62_N31
\acel11|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(14));

-- Location: LCCOMB_X55_Y61_N0
\acel11|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~30_combout\ = (\acel11|s_divCounter\(15) & (!\acel11|Add0~29\)) # (!\acel11|s_divCounter\(15) & ((\acel11|Add0~29\) # (GND)))
-- \acel11|Add0~31\ = CARRY((!\acel11|Add0~29\) # (!\acel11|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(15),
	datad => VCC,
	cin => \acel11|Add0~29\,
	combout => \acel11|Add0~30_combout\,
	cout => \acel11|Add0~31\);

-- Location: LCCOMB_X56_Y62_N26
\acel11|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|s_divCounter~9_combout\ = (!\acel11|Equal0~9_combout\ & \acel11|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acel11|Equal0~9_combout\,
	datad => \acel11|Add0~30_combout\,
	combout => \acel11|s_divCounter~9_combout\);

-- Location: FF_X56_Y62_N27
\acel11|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(15));

-- Location: LCCOMB_X55_Y61_N2
\acel11|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~32_combout\ = (\acel11|s_divCounter\(16) & (\acel11|Add0~31\ $ (GND))) # (!\acel11|s_divCounter\(16) & (!\acel11|Add0~31\ & VCC))
-- \acel11|Add0~33\ = CARRY((\acel11|s_divCounter\(16) & !\acel11|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(16),
	datad => VCC,
	cin => \acel11|Add0~31\,
	combout => \acel11|Add0~32_combout\,
	cout => \acel11|Add0~33\);

-- Location: FF_X55_Y61_N3
\acel11|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(16));

-- Location: LCCOMB_X55_Y61_N4
\acel11|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~34_combout\ = (\acel11|s_divCounter\(17) & (!\acel11|Add0~33\)) # (!\acel11|s_divCounter\(17) & ((\acel11|Add0~33\) # (GND)))
-- \acel11|Add0~35\ = CARRY((!\acel11|Add0~33\) # (!\acel11|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(17),
	datad => VCC,
	cin => \acel11|Add0~33\,
	combout => \acel11|Add0~34_combout\,
	cout => \acel11|Add0~35\);

-- Location: FF_X55_Y61_N5
\acel11|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(17));

-- Location: LCCOMB_X55_Y61_N6
\acel11|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~36_combout\ = (\acel11|s_divCounter\(18) & (\acel11|Add0~35\ $ (GND))) # (!\acel11|s_divCounter\(18) & (!\acel11|Add0~35\ & VCC))
-- \acel11|Add0~37\ = CARRY((\acel11|s_divCounter\(18) & !\acel11|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(18),
	datad => VCC,
	cin => \acel11|Add0~35\,
	combout => \acel11|Add0~36_combout\,
	cout => \acel11|Add0~37\);

-- Location: LCCOMB_X56_Y61_N2
\acel11|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|s_divCounter~10_combout\ = (\acel11|Add0~36_combout\ & !\acel11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \acel11|Add0~36_combout\,
	datad => \acel11|Equal0~9_combout\,
	combout => \acel11|s_divCounter~10_combout\);

-- Location: FF_X56_Y61_N3
\acel11|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(18));

-- Location: LCCOMB_X55_Y61_N8
\acel11|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~38_combout\ = (\acel11|s_divCounter\(19) & (!\acel11|Add0~37\)) # (!\acel11|s_divCounter\(19) & ((\acel11|Add0~37\) # (GND)))
-- \acel11|Add0~39\ = CARRY((!\acel11|Add0~37\) # (!\acel11|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(19),
	datad => VCC,
	cin => \acel11|Add0~37\,
	combout => \acel11|Add0~38_combout\,
	cout => \acel11|Add0~39\);

-- Location: LCCOMB_X56_Y61_N20
\acel11|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|s_divCounter~11_combout\ = (!\acel11|Equal0~9_combout\ & \acel11|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acel11|Equal0~9_combout\,
	datad => \acel11|Add0~38_combout\,
	combout => \acel11|s_divCounter~11_combout\);

-- Location: FF_X56_Y61_N21
\acel11|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(19));

-- Location: LCCOMB_X56_Y61_N30
\acel11|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Equal0~5_combout\ = (!\acel11|s_divCounter\(16) & (!\acel11|s_divCounter\(17) & (\acel11|s_divCounter\(18) & \acel11|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(16),
	datab => \acel11|s_divCounter\(17),
	datac => \acel11|s_divCounter\(18),
	datad => \acel11|s_divCounter\(19),
	combout => \acel11|Equal0~5_combout\);

-- Location: LCCOMB_X55_Y61_N10
\acel11|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~40_combout\ = (\acel11|s_divCounter\(20) & (\acel11|Add0~39\ $ (GND))) # (!\acel11|s_divCounter\(20) & (!\acel11|Add0~39\ & VCC))
-- \acel11|Add0~41\ = CARRY((\acel11|s_divCounter\(20) & !\acel11|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(20),
	datad => VCC,
	cin => \acel11|Add0~39\,
	combout => \acel11|Add0~40_combout\,
	cout => \acel11|Add0~41\);

-- Location: FF_X55_Y61_N11
\acel11|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(20));

-- Location: LCCOMB_X55_Y61_N12
\acel11|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~42_combout\ = (\acel11|s_divCounter\(21) & (!\acel11|Add0~41\)) # (!\acel11|s_divCounter\(21) & ((\acel11|Add0~41\) # (GND)))
-- \acel11|Add0~43\ = CARRY((!\acel11|Add0~41\) # (!\acel11|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(21),
	datad => VCC,
	cin => \acel11|Add0~41\,
	combout => \acel11|Add0~42_combout\,
	cout => \acel11|Add0~43\);

-- Location: FF_X55_Y61_N13
\acel11|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(21));

-- Location: LCCOMB_X55_Y61_N14
\acel11|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~44_combout\ = (\acel11|s_divCounter\(22) & (\acel11|Add0~43\ $ (GND))) # (!\acel11|s_divCounter\(22) & (!\acel11|Add0~43\ & VCC))
-- \acel11|Add0~45\ = CARRY((\acel11|s_divCounter\(22) & !\acel11|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(22),
	datad => VCC,
	cin => \acel11|Add0~43\,
	combout => \acel11|Add0~44_combout\,
	cout => \acel11|Add0~45\);

-- Location: FF_X55_Y61_N15
\acel11|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(22));

-- Location: LCCOMB_X55_Y61_N16
\acel11|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~46_combout\ = (\acel11|s_divCounter\(23) & (!\acel11|Add0~45\)) # (!\acel11|s_divCounter\(23) & ((\acel11|Add0~45\) # (GND)))
-- \acel11|Add0~47\ = CARRY((!\acel11|Add0~45\) # (!\acel11|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(23),
	datad => VCC,
	cin => \acel11|Add0~45\,
	combout => \acel11|Add0~46_combout\,
	cout => \acel11|Add0~47\);

-- Location: FF_X55_Y61_N17
\acel11|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(23));

-- Location: LCCOMB_X56_Y61_N28
\acel11|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Equal0~6_combout\ = (!\acel11|s_divCounter\(21) & (!\acel11|s_divCounter\(22) & (!\acel11|s_divCounter\(23) & !\acel11|s_divCounter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(21),
	datab => \acel11|s_divCounter\(22),
	datac => \acel11|s_divCounter\(23),
	datad => \acel11|s_divCounter\(20),
	combout => \acel11|Equal0~6_combout\);

-- Location: LCCOMB_X56_Y62_N12
\acel11|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Equal0~1_combout\ = (!\acel11|s_divCounter\(0) & (!\acel11|s_divCounter\(1) & (!\acel11|s_divCounter\(7) & !\acel11|s_divCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(0),
	datab => \acel11|s_divCounter\(1),
	datac => \acel11|s_divCounter\(7),
	datad => \acel11|s_divCounter\(6),
	combout => \acel11|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y62_N16
\acel11|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Equal0~3_combout\ = (\acel11|s_divCounter\(15) & (\acel11|s_divCounter\(12) & (\acel11|s_divCounter\(13) & !\acel11|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(15),
	datab => \acel11|s_divCounter\(12),
	datac => \acel11|s_divCounter\(13),
	datad => \acel11|s_divCounter\(14),
	combout => \acel11|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y62_N14
\acel11|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Equal0~0_combout\ = (\acel11|s_divCounter\(4) & (\acel11|s_divCounter\(2) & (\acel11|s_divCounter\(5) & !\acel11|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(4),
	datab => \acel11|s_divCounter\(2),
	datac => \acel11|s_divCounter\(5),
	datad => \acel11|s_divCounter\(3),
	combout => \acel11|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y62_N28
\acel11|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Equal0~2_combout\ = (\acel11|s_divCounter\(8) & (\acel11|s_divCounter\(9) & (\acel11|s_divCounter\(10) & !\acel11|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(8),
	datab => \acel11|s_divCounter\(9),
	datac => \acel11|s_divCounter\(10),
	datad => \acel11|s_divCounter\(11),
	combout => \acel11|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y62_N30
\acel11|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Equal0~4_combout\ = (\acel11|Equal0~1_combout\ & (\acel11|Equal0~3_combout\ & (\acel11|Equal0~0_combout\ & \acel11|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|Equal0~1_combout\,
	datab => \acel11|Equal0~3_combout\,
	datac => \acel11|Equal0~0_combout\,
	datad => \acel11|Equal0~2_combout\,
	combout => \acel11|Equal0~4_combout\);

-- Location: LCCOMB_X55_Y61_N18
\acel11|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~48_combout\ = (\acel11|s_divCounter\(24) & (\acel11|Add0~47\ $ (GND))) # (!\acel11|s_divCounter\(24) & (!\acel11|Add0~47\ & VCC))
-- \acel11|Add0~49\ = CARRY((\acel11|s_divCounter\(24) & !\acel11|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(24),
	datad => VCC,
	cin => \acel11|Add0~47\,
	combout => \acel11|Add0~48_combout\,
	cout => \acel11|Add0~49\);

-- Location: FF_X55_Y61_N19
\acel11|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(24));

-- Location: LCCOMB_X55_Y61_N20
\acel11|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~50_combout\ = (\acel11|s_divCounter\(25) & (!\acel11|Add0~49\)) # (!\acel11|s_divCounter\(25) & ((\acel11|Add0~49\) # (GND)))
-- \acel11|Add0~51\ = CARRY((!\acel11|Add0~49\) # (!\acel11|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(25),
	datad => VCC,
	cin => \acel11|Add0~49\,
	combout => \acel11|Add0~50_combout\,
	cout => \acel11|Add0~51\);

-- Location: FF_X55_Y61_N21
\acel11|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(25));

-- Location: LCCOMB_X55_Y61_N22
\acel11|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~52_combout\ = (\acel11|s_divCounter\(26) & (\acel11|Add0~51\ $ (GND))) # (!\acel11|s_divCounter\(26) & (!\acel11|Add0~51\ & VCC))
-- \acel11|Add0~53\ = CARRY((\acel11|s_divCounter\(26) & !\acel11|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(26),
	datad => VCC,
	cin => \acel11|Add0~51\,
	combout => \acel11|Add0~52_combout\,
	cout => \acel11|Add0~53\);

-- Location: FF_X55_Y61_N23
\acel11|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(26));

-- Location: LCCOMB_X55_Y61_N24
\acel11|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~54_combout\ = (\acel11|s_divCounter\(27) & (!\acel11|Add0~53\)) # (!\acel11|s_divCounter\(27) & ((\acel11|Add0~53\) # (GND)))
-- \acel11|Add0~55\ = CARRY((!\acel11|Add0~53\) # (!\acel11|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(27),
	datad => VCC,
	cin => \acel11|Add0~53\,
	combout => \acel11|Add0~54_combout\,
	cout => \acel11|Add0~55\);

-- Location: FF_X55_Y61_N25
\acel11|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(27));

-- Location: LCCOMB_X55_Y61_N26
\acel11|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~56_combout\ = (\acel11|s_divCounter\(28) & (\acel11|Add0~55\ $ (GND))) # (!\acel11|s_divCounter\(28) & (!\acel11|Add0~55\ & VCC))
-- \acel11|Add0~57\ = CARRY((\acel11|s_divCounter\(28) & !\acel11|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(28),
	datad => VCC,
	cin => \acel11|Add0~55\,
	combout => \acel11|Add0~56_combout\,
	cout => \acel11|Add0~57\);

-- Location: FF_X55_Y61_N27
\acel11|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(28));

-- Location: LCCOMB_X55_Y61_N28
\acel11|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~58_combout\ = (\acel11|s_divCounter\(29) & (!\acel11|Add0~57\)) # (!\acel11|s_divCounter\(29) & ((\acel11|Add0~57\) # (GND)))
-- \acel11|Add0~59\ = CARRY((!\acel11|Add0~57\) # (!\acel11|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acel11|s_divCounter\(29),
	datad => VCC,
	cin => \acel11|Add0~57\,
	combout => \acel11|Add0~58_combout\,
	cout => \acel11|Add0~59\);

-- Location: FF_X55_Y61_N29
\acel11|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(29));

-- Location: LCCOMB_X56_Y61_N26
\acel11|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Equal0~7_combout\ = (!\acel11|s_divCounter\(26) & (!\acel11|s_divCounter\(24) & (!\acel11|s_divCounter\(27) & !\acel11|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(26),
	datab => \acel11|s_divCounter\(24),
	datac => \acel11|s_divCounter\(27),
	datad => \acel11|s_divCounter\(25),
	combout => \acel11|Equal0~7_combout\);

-- Location: LCCOMB_X55_Y61_N30
\acel11|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Add0~60_combout\ = \acel11|s_divCounter\(30) $ (!\acel11|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(30),
	cin => \acel11|Add0~59\,
	combout => \acel11|Add0~60_combout\);

-- Location: FF_X55_Y61_N31
\acel11|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|s_divCounter\(30));

-- Location: LCCOMB_X56_Y61_N16
\acel11|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Equal0~8_combout\ = (!\acel11|s_divCounter\(28) & (!\acel11|s_divCounter\(29) & (\acel11|Equal0~7_combout\ & !\acel11|s_divCounter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|s_divCounter\(28),
	datab => \acel11|s_divCounter\(29),
	datac => \acel11|Equal0~7_combout\,
	datad => \acel11|s_divCounter\(30),
	combout => \acel11|Equal0~8_combout\);

-- Location: LCCOMB_X56_Y61_N24
\acel11|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \acel11|Equal0~9_combout\ = (\acel11|Equal0~5_combout\ & (\acel11|Equal0~6_combout\ & (\acel11|Equal0~4_combout\ & \acel11|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel11|Equal0~5_combout\,
	datab => \acel11|Equal0~6_combout\,
	datac => \acel11|Equal0~4_combout\,
	datad => \acel11|Equal0~8_combout\,
	combout => \acel11|Equal0~9_combout\);

-- Location: FF_X56_Y61_N25
\acel11|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockIn~inputclkctrl_outclk\,
	d => \acel11|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acel11|clkOut~q\);

-- Location: LCCOMB_X58_Y69_N2
\saida1|yout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida1|yout~1_combout\ = (\saida1|yout~0_combout\ & (((\acel11|clkOut~q\) # (!\acel[1]~input_o\)))) # (!\saida1|yout~0_combout\ & (\acel10|clkOut~q\ & ((\acel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acel10|clkOut~q\,
	datab => \saida1|yout~0_combout\,
	datac => \acel11|clkOut~q\,
	datad => \acel[1]~input_o\,
	combout => \saida1|yout~1_combout\);

ww_pulseHex <= \pulseHex~output_o\;

ww_pulseOut <= \pulseOut~output_o\;
END structure;


