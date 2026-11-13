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

-- DATE "06/04/2023 18:04:15"

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

ENTITY 	AmbienteBasico IS
    PORT (
	clk : IN std_logic;
	pulso : IN std_logic;
	tSel : IN std_logic_vector(1 DOWNTO 0);
	tGel : IN std_logic_vector(8 DOWNTO 0);
	tLua : IN std_logic_vector(8 DOWNTO 0);
	tSol : IN std_logic_vector(8 DOWNTO 0);
	radiador : OUT std_logic;
	tAmb : OUT std_logic_vector(8 DOWNTO 0)
	);
END AmbienteBasico;

-- Design Ports Information
-- radiador	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[0]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[2]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[4]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[5]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[6]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[7]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[8]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[8]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[8]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSel[0]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSel[1]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[8]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[7]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[7]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[7]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[6]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[6]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[6]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[5]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[5]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[4]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[4]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[4]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[3]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[3]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[3]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[2]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[2]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[2]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[1]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[1]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[1]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[0]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AmbienteBasico IS
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
SIGNAL ww_tSel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_tGel : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_tLua : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_tSol : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_radiador : std_logic;
SIGNAL ww_tAmb : std_logic_vector(8 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \radiador~output_o\ : std_logic;
SIGNAL \tAmb[0]~output_o\ : std_logic;
SIGNAL \tAmb[1]~output_o\ : std_logic;
SIGNAL \tAmb[2]~output_o\ : std_logic;
SIGNAL \tAmb[3]~output_o\ : std_logic;
SIGNAL \tAmb[4]~output_o\ : std_logic;
SIGNAL \tAmb[5]~output_o\ : std_logic;
SIGNAL \tAmb[6]~output_o\ : std_logic;
SIGNAL \tAmb[7]~output_o\ : std_logic;
SIGNAL \tAmb[8]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tSel[1]~input_o\ : std_logic;
SIGNAL \tGel[8]~input_o\ : std_logic;
SIGNAL \tLua[8]~input_o\ : std_logic;
SIGNAL \tSel[0]~input_o\ : std_logic;
SIGNAL \selecao|tRef[8]~0_combout\ : std_logic;
SIGNAL \tSol[8]~input_o\ : std_logic;
SIGNAL \selecao|tRef[8]~1_combout\ : std_logic;
SIGNAL \tGel[7]~input_o\ : std_logic;
SIGNAL \tLua[7]~input_o\ : std_logic;
SIGNAL \selecao|tRef[7]~2_combout\ : std_logic;
SIGNAL \tSol[7]~input_o\ : std_logic;
SIGNAL \selecao|tRef[7]~3_combout\ : std_logic;
SIGNAL \tGel[6]~input_o\ : std_logic;
SIGNAL \tLua[6]~input_o\ : std_logic;
SIGNAL \selecao|tRef[6]~4_combout\ : std_logic;
SIGNAL \tSol[6]~input_o\ : std_logic;
SIGNAL \selecao|tRef[6]~5_combout\ : std_logic;
SIGNAL \tSol[5]~input_o\ : std_logic;
SIGNAL \tGel[5]~input_o\ : std_logic;
SIGNAL \tLua[5]~input_o\ : std_logic;
SIGNAL \selecao|tRef[5]~6_combout\ : std_logic;
SIGNAL \selecao|tRef[5]~7_combout\ : std_logic;
SIGNAL \tGel[4]~input_o\ : std_logic;
SIGNAL \tLua[4]~input_o\ : std_logic;
SIGNAL \selecao|tRef[4]~8_combout\ : std_logic;
SIGNAL \tSol[4]~input_o\ : std_logic;
SIGNAL \selecao|tRef[4]~9_combout\ : std_logic;
SIGNAL \tGel[3]~input_o\ : std_logic;
SIGNAL \tLua[3]~input_o\ : std_logic;
SIGNAL \selecao|tRef[3]~10_combout\ : std_logic;
SIGNAL \tSol[3]~input_o\ : std_logic;
SIGNAL \selecao|tRef[3]~11_combout\ : std_logic;
SIGNAL \tSol[2]~input_o\ : std_logic;
SIGNAL \tLua[2]~input_o\ : std_logic;
SIGNAL \tGel[2]~input_o\ : std_logic;
SIGNAL \selecao|tRef[2]~12_combout\ : std_logic;
SIGNAL \selecao|tRef[2]~13_combout\ : std_logic;
SIGNAL \control|Add0~1_cout\ : std_logic;
SIGNAL \control|Add0~3\ : std_logic;
SIGNAL \control|Add0~5\ : std_logic;
SIGNAL \control|Add0~7\ : std_logic;
SIGNAL \control|Add0~9\ : std_logic;
SIGNAL \control|Add0~11\ : std_logic;
SIGNAL \control|Add0~13\ : std_logic;
SIGNAL \control|Add0~14_combout\ : std_logic;
SIGNAL \control|Add0~15\ : std_logic;
SIGNAL \control|Add0~16_combout\ : std_logic;
SIGNAL \control|Add1~1\ : std_logic;
SIGNAL \control|Add1~3\ : std_logic;
SIGNAL \control|Add1~5\ : std_logic;
SIGNAL \control|Add1~7\ : std_logic;
SIGNAL \control|Add1~9\ : std_logic;
SIGNAL \control|Add1~11\ : std_logic;
SIGNAL \control|Add1~12_combout\ : std_logic;
SIGNAL \control|Add1~10_combout\ : std_logic;
SIGNAL \cont9|s_cont[0]~1_combout\ : std_logic;
SIGNAL \cont9|Add1~0_combout\ : std_logic;
SIGNAL \cont9|Add0~0_combout\ : std_logic;
SIGNAL \cont9|s_cont~3_combout\ : std_logic;
SIGNAL \pulso~input_o\ : std_logic;
SIGNAL \cont9|Add0~1\ : std_logic;
SIGNAL \cont9|Add0~2_combout\ : std_logic;
SIGNAL \cont9|Add1~1\ : std_logic;
SIGNAL \cont9|Add1~2_combout\ : std_logic;
SIGNAL \cont9|s_cont~4_combout\ : std_logic;
SIGNAL \cont9|Add1~3\ : std_logic;
SIGNAL \cont9|Add1~4_combout\ : std_logic;
SIGNAL \cont9|Add0~3\ : std_logic;
SIGNAL \cont9|Add0~4_combout\ : std_logic;
SIGNAL \cont9|s_cont~5_combout\ : std_logic;
SIGNAL \cont9|s_cont[0]~0_combout\ : std_logic;
SIGNAL \cont9|s_cont~2_combout\ : std_logic;
SIGNAL \cont9|Add0~5\ : std_logic;
SIGNAL \cont9|Add0~6_combout\ : std_logic;
SIGNAL \cont9|Add1~5\ : std_logic;
SIGNAL \cont9|Add1~6_combout\ : std_logic;
SIGNAL \cont9|s_cont~6_combout\ : std_logic;
SIGNAL \cont9|Add0~7\ : std_logic;
SIGNAL \cont9|Add0~8_combout\ : std_logic;
SIGNAL \cont9|Add1~7\ : std_logic;
SIGNAL \cont9|Add1~8_combout\ : std_logic;
SIGNAL \cont9|s_cont~7_combout\ : std_logic;
SIGNAL \cont9|Add0~9\ : std_logic;
SIGNAL \cont9|Add0~10_combout\ : std_logic;
SIGNAL \cont9|Add1~9\ : std_logic;
SIGNAL \cont9|Add1~10_combout\ : std_logic;
SIGNAL \cont9|s_cont~8_combout\ : std_logic;
SIGNAL \cont9|Add0~11\ : std_logic;
SIGNAL \cont9|Add0~12_combout\ : std_logic;
SIGNAL \cont9|Add1~11\ : std_logic;
SIGNAL \cont9|Add1~12_combout\ : std_logic;
SIGNAL \cont9|s_cont~9_combout\ : std_logic;
SIGNAL \cont9|Add0~13\ : std_logic;
SIGNAL \cont9|Add0~14_combout\ : std_logic;
SIGNAL \cont9|Add1~13\ : std_logic;
SIGNAL \cont9|Add1~14_combout\ : std_logic;
SIGNAL \cont9|s_cont~10_combout\ : std_logic;
SIGNAL \cont9|Add0~15\ : std_logic;
SIGNAL \cont9|Add0~16_combout\ : std_logic;
SIGNAL \cont9|Add1~15\ : std_logic;
SIGNAL \cont9|Add1~16_combout\ : std_logic;
SIGNAL \cont9|s_cont~11_combout\ : std_logic;
SIGNAL \control|Add1~8_combout\ : std_logic;
SIGNAL \control|Add1~6_combout\ : std_logic;
SIGNAL \control|Add1~4_combout\ : std_logic;
SIGNAL \control|Add1~2_combout\ : std_logic;
SIGNAL \control|Add1~0_combout\ : std_logic;
SIGNAL \tLua[1]~input_o\ : std_logic;
SIGNAL \tGel[1]~input_o\ : std_logic;
SIGNAL \selecao|tRef[1]~14_combout\ : std_logic;
SIGNAL \tSol[1]~input_o\ : std_logic;
SIGNAL \selecao|tRef[1]~15_combout\ : std_logic;
SIGNAL \tLua[0]~input_o\ : std_logic;
SIGNAL \tGel[0]~input_o\ : std_logic;
SIGNAL \selecao|tRef[0]~16_combout\ : std_logic;
SIGNAL \tSol[0]~input_o\ : std_logic;
SIGNAL \selecao|tRef[0]~17_combout\ : std_logic;
SIGNAL \control|LessThan1~1_cout\ : std_logic;
SIGNAL \control|LessThan1~3_cout\ : std_logic;
SIGNAL \control|LessThan1~5_cout\ : std_logic;
SIGNAL \control|LessThan1~7_cout\ : std_logic;
SIGNAL \control|LessThan1~9_cout\ : std_logic;
SIGNAL \control|LessThan1~11_cout\ : std_logic;
SIGNAL \control|LessThan1~13_cout\ : std_logic;
SIGNAL \control|LessThan1~15_cout\ : std_logic;
SIGNAL \control|LessThan1~16_combout\ : std_logic;
SIGNAL \control|controlOut~0_combout\ : std_logic;
SIGNAL \control|Add0~12_combout\ : std_logic;
SIGNAL \control|Add0~10_combout\ : std_logic;
SIGNAL \control|Add0~8_combout\ : std_logic;
SIGNAL \control|Add0~6_combout\ : std_logic;
SIGNAL \control|Add0~4_combout\ : std_logic;
SIGNAL \control|Add0~2_combout\ : std_logic;
SIGNAL \control|LessThan0~1_cout\ : std_logic;
SIGNAL \control|LessThan0~3_cout\ : std_logic;
SIGNAL \control|LessThan0~5_cout\ : std_logic;
SIGNAL \control|LessThan0~7_cout\ : std_logic;
SIGNAL \control|LessThan0~9_cout\ : std_logic;
SIGNAL \control|LessThan0~11_cout\ : std_logic;
SIGNAL \control|LessThan0~13_cout\ : std_logic;
SIGNAL \control|LessThan0~15_cout\ : std_logic;
SIGNAL \control|LessThan0~16_combout\ : std_logic;
SIGNAL \control|controlOut~1_combout\ : std_logic;
SIGNAL \control|controlOut~q\ : std_logic;
SIGNAL \cont9|s_cont\ : std_logic_vector(8 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_pulso <= pulso;
ww_tSel <= tSel;
ww_tGel <= tGel;
ww_tLua <= tLua;
ww_tSol <= tSol;
radiador <= ww_radiador;
tAmb <= ww_tAmb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y68_N23
\radiador~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control|controlOut~q\,
	devoe => ww_devoe,
	o => \radiador~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\tAmb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont9|s_cont\(0),
	devoe => ww_devoe,
	o => \tAmb[0]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\tAmb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont9|s_cont\(1),
	devoe => ww_devoe,
	o => \tAmb[1]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\tAmb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont9|s_cont\(2),
	devoe => ww_devoe,
	o => \tAmb[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\tAmb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont9|s_cont\(3),
	devoe => ww_devoe,
	o => \tAmb[3]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\tAmb[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont9|s_cont\(4),
	devoe => ww_devoe,
	o => \tAmb[4]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\tAmb[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont9|s_cont\(5),
	devoe => ww_devoe,
	o => \tAmb[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\tAmb[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont9|s_cont\(6),
	devoe => ww_devoe,
	o => \tAmb[6]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\tAmb[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont9|s_cont\(7),
	devoe => ww_devoe,
	o => \tAmb[7]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\tAmb[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont9|s_cont\(8),
	devoe => ww_devoe,
	o => \tAmb[8]~output_o\);

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

-- Location: IOIBUF_X109_Y73_N1
\tSel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSel(1),
	o => \tSel[1]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\tGel[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(8),
	o => \tGel[8]~input_o\);

-- Location: IOIBUF_X100_Y73_N15
\tLua[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(8),
	o => \tLua[8]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\tSel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSel(0),
	o => \tSel[0]~input_o\);

-- Location: LCCOMB_X106_Y72_N24
\selecao|tRef[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[8]~0_combout\ = (\tSel[1]~input_o\ & (((\tLua[8]~input_o\ & !\tSel[0]~input_o\)))) # (!\tSel[1]~input_o\ & (\tGel[8]~input_o\ & ((\tSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[1]~input_o\,
	datab => \tGel[8]~input_o\,
	datac => \tLua[8]~input_o\,
	datad => \tSel[0]~input_o\,
	combout => \selecao|tRef[8]~0_combout\);

-- Location: IOIBUF_X94_Y73_N8
\tSol[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(8),
	o => \tSol[8]~input_o\);

-- Location: LCCOMB_X106_Y72_N14
\selecao|tRef[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[8]~1_combout\ = (\selecao|tRef[8]~0_combout\) # ((\tSol[8]~input_o\ & (\tSel[1]~input_o\ $ (!\tSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[1]~input_o\,
	datab => \selecao|tRef[8]~0_combout\,
	datac => \tSol[8]~input_o\,
	datad => \tSel[0]~input_o\,
	combout => \selecao|tRef[8]~1_combout\);

-- Location: IOIBUF_X96_Y73_N22
\tGel[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(7),
	o => \tGel[7]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\tLua[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(7),
	o => \tLua[7]~input_o\);

-- Location: LCCOMB_X106_Y72_N20
\selecao|tRef[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[7]~2_combout\ = (\tSel[1]~input_o\ & (((\tLua[7]~input_o\ & !\tSel[0]~input_o\)))) # (!\tSel[1]~input_o\ & (\tGel[7]~input_o\ & ((\tSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[1]~input_o\,
	datab => \tGel[7]~input_o\,
	datac => \tLua[7]~input_o\,
	datad => \tSel[0]~input_o\,
	combout => \selecao|tRef[7]~2_combout\);

-- Location: IOIBUF_X98_Y73_N22
\tSol[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(7),
	o => \tSol[7]~input_o\);

-- Location: LCCOMB_X106_Y72_N26
\selecao|tRef[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[7]~3_combout\ = (\selecao|tRef[7]~2_combout\) # ((\tSol[7]~input_o\ & (\tSel[1]~input_o\ $ (!\tSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[1]~input_o\,
	datab => \selecao|tRef[7]~2_combout\,
	datac => \tSol[7]~input_o\,
	datad => \tSel[0]~input_o\,
	combout => \selecao|tRef[7]~3_combout\);

-- Location: IOIBUF_X107_Y73_N1
\tGel[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(6),
	o => \tGel[6]~input_o\);

-- Location: IOIBUF_X107_Y73_N15
\tLua[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(6),
	o => \tLua[6]~input_o\);

-- Location: LCCOMB_X106_Y72_N28
\selecao|tRef[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[6]~4_combout\ = (\tSel[1]~input_o\ & (((\tLua[6]~input_o\ & !\tSel[0]~input_o\)))) # (!\tSel[1]~input_o\ & (\tGel[6]~input_o\ & ((\tSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[1]~input_o\,
	datab => \tGel[6]~input_o\,
	datac => \tLua[6]~input_o\,
	datad => \tSel[0]~input_o\,
	combout => \selecao|tRef[6]~4_combout\);

-- Location: IOIBUF_X94_Y73_N1
\tSol[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(6),
	o => \tSol[6]~input_o\);

-- Location: LCCOMB_X106_Y72_N10
\selecao|tRef[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[6]~5_combout\ = (\selecao|tRef[6]~4_combout\) # ((\tSol[6]~input_o\ & (\tSel[1]~input_o\ $ (!\tSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[1]~input_o\,
	datab => \selecao|tRef[6]~4_combout\,
	datac => \tSol[6]~input_o\,
	datad => \tSel[0]~input_o\,
	combout => \selecao|tRef[6]~5_combout\);

-- Location: IOIBUF_X100_Y73_N22
\tSol[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(5),
	o => \tSol[5]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\tGel[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(5),
	o => \tGel[5]~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\tLua[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(5),
	o => \tLua[5]~input_o\);

-- Location: LCCOMB_X106_Y72_N8
\selecao|tRef[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[5]~6_combout\ = (\tSel[1]~input_o\ & (((\tLua[5]~input_o\ & !\tSel[0]~input_o\)))) # (!\tSel[1]~input_o\ & (\tGel[5]~input_o\ & ((\tSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[1]~input_o\,
	datab => \tGel[5]~input_o\,
	datac => \tLua[5]~input_o\,
	datad => \tSel[0]~input_o\,
	combout => \selecao|tRef[5]~6_combout\);

-- Location: LCCOMB_X106_Y72_N18
\selecao|tRef[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[5]~7_combout\ = (\selecao|tRef[5]~6_combout\) # ((\tSol[5]~input_o\ & (\tSel[1]~input_o\ $ (!\tSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[1]~input_o\,
	datab => \tSol[5]~input_o\,
	datac => \selecao|tRef[5]~6_combout\,
	datad => \tSel[0]~input_o\,
	combout => \selecao|tRef[5]~7_combout\);

-- Location: IOIBUF_X105_Y73_N1
\tGel[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(4),
	o => \tGel[4]~input_o\);

-- Location: IOIBUF_X98_Y73_N15
\tLua[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(4),
	o => \tLua[4]~input_o\);

-- Location: LCCOMB_X106_Y72_N4
\selecao|tRef[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[4]~8_combout\ = (\tSel[1]~input_o\ & (((\tLua[4]~input_o\ & !\tSel[0]~input_o\)))) # (!\tSel[1]~input_o\ & (\tGel[4]~input_o\ & ((\tSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[1]~input_o\,
	datab => \tGel[4]~input_o\,
	datac => \tLua[4]~input_o\,
	datad => \tSel[0]~input_o\,
	combout => \selecao|tRef[4]~8_combout\);

-- Location: IOIBUF_X105_Y73_N8
\tSol[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(4),
	o => \tSol[4]~input_o\);

-- Location: LCCOMB_X106_Y72_N2
\selecao|tRef[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[4]~9_combout\ = (\selecao|tRef[4]~8_combout\) # ((\tSol[4]~input_o\ & (\tSel[1]~input_o\ $ (!\tSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[1]~input_o\,
	datab => \selecao|tRef[4]~8_combout\,
	datac => \tSol[4]~input_o\,
	datad => \tSel[0]~input_o\,
	combout => \selecao|tRef[4]~9_combout\);

-- Location: IOIBUF_X107_Y73_N8
\tGel[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(3),
	o => \tGel[3]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\tLua[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(3),
	o => \tLua[3]~input_o\);

-- Location: LCCOMB_X106_Y72_N16
\selecao|tRef[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[3]~10_combout\ = (\tSel[1]~input_o\ & (((\tLua[3]~input_o\ & !\tSel[0]~input_o\)))) # (!\tSel[1]~input_o\ & (\tGel[3]~input_o\ & ((\tSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[1]~input_o\,
	datab => \tGel[3]~input_o\,
	datac => \tLua[3]~input_o\,
	datad => \tSel[0]~input_o\,
	combout => \selecao|tRef[3]~10_combout\);

-- Location: IOIBUF_X96_Y73_N15
\tSol[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(3),
	o => \tSol[3]~input_o\);

-- Location: LCCOMB_X106_Y72_N22
\selecao|tRef[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[3]~11_combout\ = (\selecao|tRef[3]~10_combout\) # ((\tSol[3]~input_o\ & (\tSel[1]~input_o\ $ (!\tSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[1]~input_o\,
	datab => \selecao|tRef[3]~10_combout\,
	datac => \tSol[3]~input_o\,
	datad => \tSel[0]~input_o\,
	combout => \selecao|tRef[3]~11_combout\);

-- Location: IOIBUF_X115_Y64_N8
\tSol[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(2),
	o => \tSol[2]~input_o\);

-- Location: IOIBUF_X115_Y61_N15
\tLua[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(2),
	o => \tLua[2]~input_o\);

-- Location: IOIBUF_X113_Y73_N8
\tGel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(2),
	o => \tGel[2]~input_o\);

-- Location: LCCOMB_X109_Y68_N28
\selecao|tRef[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[2]~12_combout\ = (\tSel[0]~input_o\ & (!\tSel[1]~input_o\ & ((\tGel[2]~input_o\)))) # (!\tSel[0]~input_o\ & (\tSel[1]~input_o\ & (\tLua[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[0]~input_o\,
	datab => \tSel[1]~input_o\,
	datac => \tLua[2]~input_o\,
	datad => \tGel[2]~input_o\,
	combout => \selecao|tRef[2]~12_combout\);

-- Location: LCCOMB_X109_Y68_N2
\selecao|tRef[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[2]~13_combout\ = (\selecao|tRef[2]~12_combout\) # ((\tSol[2]~input_o\ & (\tSel[0]~input_o\ $ (!\tSel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[0]~input_o\,
	datab => \tSel[1]~input_o\,
	datac => \tSol[2]~input_o\,
	datad => \selecao|tRef[2]~12_combout\,
	combout => \selecao|tRef[2]~13_combout\);

-- Location: LCCOMB_X108_Y68_N14
\control|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add0~1_cout\ = CARRY(\selecao|tRef[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao|tRef[2]~13_combout\,
	datad => VCC,
	cout => \control|Add0~1_cout\);

-- Location: LCCOMB_X108_Y68_N16
\control|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add0~2_combout\ = (\selecao|tRef[3]~11_combout\ & (\control|Add0~1_cout\ & VCC)) # (!\selecao|tRef[3]~11_combout\ & (!\control|Add0~1_cout\))
-- \control|Add0~3\ = CARRY((!\selecao|tRef[3]~11_combout\ & !\control|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \selecao|tRef[3]~11_combout\,
	datad => VCC,
	cin => \control|Add0~1_cout\,
	combout => \control|Add0~2_combout\,
	cout => \control|Add0~3\);

-- Location: LCCOMB_X108_Y68_N18
\control|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add0~4_combout\ = (\selecao|tRef[4]~9_combout\ & (\control|Add0~3\ $ (GND))) # (!\selecao|tRef[4]~9_combout\ & (!\control|Add0~3\ & VCC))
-- \control|Add0~5\ = CARRY((\selecao|tRef[4]~9_combout\ & !\control|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \selecao|tRef[4]~9_combout\,
	datad => VCC,
	cin => \control|Add0~3\,
	combout => \control|Add0~4_combout\,
	cout => \control|Add0~5\);

-- Location: LCCOMB_X108_Y68_N20
\control|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add0~6_combout\ = (\selecao|tRef[5]~7_combout\ & (\control|Add0~5\ & VCC)) # (!\selecao|tRef[5]~7_combout\ & (!\control|Add0~5\))
-- \control|Add0~7\ = CARRY((!\selecao|tRef[5]~7_combout\ & !\control|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \selecao|tRef[5]~7_combout\,
	datad => VCC,
	cin => \control|Add0~5\,
	combout => \control|Add0~6_combout\,
	cout => \control|Add0~7\);

-- Location: LCCOMB_X108_Y68_N22
\control|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add0~8_combout\ = (\selecao|tRef[6]~5_combout\ & ((GND) # (!\control|Add0~7\))) # (!\selecao|tRef[6]~5_combout\ & (\control|Add0~7\ $ (GND)))
-- \control|Add0~9\ = CARRY((\selecao|tRef[6]~5_combout\) # (!\control|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \selecao|tRef[6]~5_combout\,
	datad => VCC,
	cin => \control|Add0~7\,
	combout => \control|Add0~8_combout\,
	cout => \control|Add0~9\);

-- Location: LCCOMB_X108_Y68_N24
\control|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add0~10_combout\ = (\selecao|tRef[7]~3_combout\ & (\control|Add0~9\ & VCC)) # (!\selecao|tRef[7]~3_combout\ & (!\control|Add0~9\))
-- \control|Add0~11\ = CARRY((!\selecao|tRef[7]~3_combout\ & !\control|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \selecao|tRef[7]~3_combout\,
	datad => VCC,
	cin => \control|Add0~9\,
	combout => \control|Add0~10_combout\,
	cout => \control|Add0~11\);

-- Location: LCCOMB_X108_Y68_N26
\control|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add0~12_combout\ = (\selecao|tRef[8]~1_combout\ & ((GND) # (!\control|Add0~11\))) # (!\selecao|tRef[8]~1_combout\ & (\control|Add0~11\ $ (GND)))
-- \control|Add0~13\ = CARRY((\selecao|tRef[8]~1_combout\) # (!\control|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \selecao|tRef[8]~1_combout\,
	datad => VCC,
	cin => \control|Add0~11\,
	combout => \control|Add0~12_combout\,
	cout => \control|Add0~13\);

-- Location: LCCOMB_X108_Y68_N28
\control|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add0~14_combout\ = !\control|Add0~13\
-- \control|Add0~15\ = CARRY(!\control|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \control|Add0~13\,
	combout => \control|Add0~14_combout\,
	cout => \control|Add0~15\);

-- Location: LCCOMB_X108_Y68_N30
\control|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add0~16_combout\ = \control|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \control|Add0~15\,
	combout => \control|Add0~16_combout\);

-- Location: LCCOMB_X108_Y68_N0
\control|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add1~0_combout\ = (\selecao|tRef[2]~13_combout\ & (\selecao|tRef[3]~11_combout\ $ (VCC))) # (!\selecao|tRef[2]~13_combout\ & (\selecao|tRef[3]~11_combout\ & VCC))
-- \control|Add1~1\ = CARRY((\selecao|tRef[2]~13_combout\ & \selecao|tRef[3]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao|tRef[2]~13_combout\,
	datab => \selecao|tRef[3]~11_combout\,
	datad => VCC,
	combout => \control|Add1~0_combout\,
	cout => \control|Add1~1\);

-- Location: LCCOMB_X108_Y68_N2
\control|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add1~2_combout\ = (\selecao|tRef[4]~9_combout\ & (\control|Add1~1\ & VCC)) # (!\selecao|tRef[4]~9_combout\ & (!\control|Add1~1\))
-- \control|Add1~3\ = CARRY((!\selecao|tRef[4]~9_combout\ & !\control|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \selecao|tRef[4]~9_combout\,
	datad => VCC,
	cin => \control|Add1~1\,
	combout => \control|Add1~2_combout\,
	cout => \control|Add1~3\);

-- Location: LCCOMB_X108_Y68_N4
\control|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add1~4_combout\ = (\selecao|tRef[5]~7_combout\ & (\control|Add1~3\ $ (GND))) # (!\selecao|tRef[5]~7_combout\ & (!\control|Add1~3\ & VCC))
-- \control|Add1~5\ = CARRY((\selecao|tRef[5]~7_combout\ & !\control|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \selecao|tRef[5]~7_combout\,
	datad => VCC,
	cin => \control|Add1~3\,
	combout => \control|Add1~4_combout\,
	cout => \control|Add1~5\);

-- Location: LCCOMB_X108_Y68_N6
\control|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add1~6_combout\ = (\selecao|tRef[6]~5_combout\ & (!\control|Add1~5\)) # (!\selecao|tRef[6]~5_combout\ & ((\control|Add1~5\) # (GND)))
-- \control|Add1~7\ = CARRY((!\control|Add1~5\) # (!\selecao|tRef[6]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \selecao|tRef[6]~5_combout\,
	datad => VCC,
	cin => \control|Add1~5\,
	combout => \control|Add1~6_combout\,
	cout => \control|Add1~7\);

-- Location: LCCOMB_X108_Y68_N8
\control|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add1~8_combout\ = (\selecao|tRef[7]~3_combout\ & (\control|Add1~7\ $ (GND))) # (!\selecao|tRef[7]~3_combout\ & (!\control|Add1~7\ & VCC))
-- \control|Add1~9\ = CARRY((\selecao|tRef[7]~3_combout\ & !\control|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \selecao|tRef[7]~3_combout\,
	datad => VCC,
	cin => \control|Add1~7\,
	combout => \control|Add1~8_combout\,
	cout => \control|Add1~9\);

-- Location: LCCOMB_X108_Y68_N10
\control|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add1~10_combout\ = (\selecao|tRef[8]~1_combout\ & (!\control|Add1~9\)) # (!\selecao|tRef[8]~1_combout\ & ((\control|Add1~9\) # (GND)))
-- \control|Add1~11\ = CARRY((!\control|Add1~9\) # (!\selecao|tRef[8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \selecao|tRef[8]~1_combout\,
	datad => VCC,
	cin => \control|Add1~9\,
	combout => \control|Add1~10_combout\,
	cout => \control|Add1~11\);

-- Location: LCCOMB_X108_Y68_N12
\control|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Add1~12_combout\ = !\control|Add1~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \control|Add1~11\,
	combout => \control|Add1~12_combout\);

-- Location: LCCOMB_X110_Y68_N4
\cont9|s_cont[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|s_cont[0]~1_combout\ = (\cont9|s_cont\(7) & (\cont9|s_cont\(5) & (\cont9|s_cont\(4) & \cont9|s_cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(7),
	datab => \cont9|s_cont\(5),
	datac => \cont9|s_cont\(4),
	datad => \cont9|s_cont\(6),
	combout => \cont9|s_cont[0]~1_combout\);

-- Location: LCCOMB_X112_Y68_N6
\cont9|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add1~0_combout\ = \cont9|s_cont\(0) $ (VCC)
-- \cont9|Add1~1\ = CARRY(\cont9|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont9|s_cont\(0),
	datad => VCC,
	combout => \cont9|Add1~0_combout\,
	cout => \cont9|Add1~1\);

-- Location: LCCOMB_X111_Y68_N8
\cont9|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add0~0_combout\ = \cont9|s_cont\(0) $ (VCC)
-- \cont9|Add0~1\ = CARRY(\cont9|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont9|s_cont\(0),
	datad => VCC,
	combout => \cont9|Add0~0_combout\,
	cout => \cont9|Add0~1\);

-- Location: LCCOMB_X111_Y68_N28
\cont9|s_cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|s_cont~3_combout\ = (\cont9|Add1~0_combout\ & ((\cont9|s_cont~2_combout\) # ((!\control|controlOut~q\ & \cont9|Add0~0_combout\)))) # (!\cont9|Add1~0_combout\ & (!\control|controlOut~q\ & (\cont9|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|Add1~0_combout\,
	datab => \control|controlOut~q\,
	datac => \cont9|Add0~0_combout\,
	datad => \cont9|s_cont~2_combout\,
	combout => \cont9|s_cont~3_combout\);

-- Location: IOIBUF_X115_Y68_N15
\pulso~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso,
	o => \pulso~input_o\);

-- Location: FF_X111_Y68_N29
\cont9|s_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont9|s_cont~3_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont9|s_cont\(0));

-- Location: LCCOMB_X111_Y68_N10
\cont9|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add0~2_combout\ = (\cont9|s_cont\(1) & (\cont9|Add0~1\ & VCC)) # (!\cont9|s_cont\(1) & (!\cont9|Add0~1\))
-- \cont9|Add0~3\ = CARRY((!\cont9|s_cont\(1) & !\cont9|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(1),
	datad => VCC,
	cin => \cont9|Add0~1\,
	combout => \cont9|Add0~2_combout\,
	cout => \cont9|Add0~3\);

-- Location: LCCOMB_X112_Y68_N8
\cont9|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add1~2_combout\ = (\cont9|s_cont\(1) & (!\cont9|Add1~1\)) # (!\cont9|s_cont\(1) & ((\cont9|Add1~1\) # (GND)))
-- \cont9|Add1~3\ = CARRY((!\cont9|Add1~1\) # (!\cont9|s_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont9|s_cont\(1),
	datad => VCC,
	cin => \cont9|Add1~1\,
	combout => \cont9|Add1~2_combout\,
	cout => \cont9|Add1~3\);

-- Location: LCCOMB_X111_Y68_N30
\cont9|s_cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|s_cont~4_combout\ = (\cont9|Add0~2_combout\ & (((\cont9|Add1~2_combout\ & \cont9|s_cont~2_combout\)) # (!\control|controlOut~q\))) # (!\cont9|Add0~2_combout\ & (((\cont9|Add1~2_combout\ & \cont9|s_cont~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|Add0~2_combout\,
	datab => \control|controlOut~q\,
	datac => \cont9|Add1~2_combout\,
	datad => \cont9|s_cont~2_combout\,
	combout => \cont9|s_cont~4_combout\);

-- Location: FF_X111_Y68_N31
\cont9|s_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont9|s_cont~4_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont9|s_cont\(1));

-- Location: LCCOMB_X112_Y68_N10
\cont9|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add1~4_combout\ = (\cont9|s_cont\(2) & (\cont9|Add1~3\ $ (GND))) # (!\cont9|s_cont\(2) & (!\cont9|Add1~3\ & VCC))
-- \cont9|Add1~5\ = CARRY((\cont9|s_cont\(2) & !\cont9|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(2),
	datad => VCC,
	cin => \cont9|Add1~3\,
	combout => \cont9|Add1~4_combout\,
	cout => \cont9|Add1~5\);

-- Location: LCCOMB_X111_Y68_N12
\cont9|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add0~4_combout\ = (\cont9|s_cont\(2) & ((GND) # (!\cont9|Add0~3\))) # (!\cont9|s_cont\(2) & (\cont9|Add0~3\ $ (GND)))
-- \cont9|Add0~5\ = CARRY((\cont9|s_cont\(2)) # (!\cont9|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont9|s_cont\(2),
	datad => VCC,
	cin => \cont9|Add0~3\,
	combout => \cont9|Add0~4_combout\,
	cout => \cont9|Add0~5\);

-- Location: LCCOMB_X110_Y68_N6
\cont9|s_cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|s_cont~5_combout\ = (\cont9|Add1~4_combout\ & ((\cont9|s_cont~2_combout\) # ((!\control|controlOut~q\ & \cont9|Add0~4_combout\)))) # (!\cont9|Add1~4_combout\ & (!\control|controlOut~q\ & (\cont9|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|Add1~4_combout\,
	datab => \control|controlOut~q\,
	datac => \cont9|Add0~4_combout\,
	datad => \cont9|s_cont~2_combout\,
	combout => \cont9|s_cont~5_combout\);

-- Location: FF_X110_Y68_N7
\cont9|s_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont9|s_cont~5_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont9|s_cont\(2));

-- Location: LCCOMB_X110_Y68_N0
\cont9|s_cont[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|s_cont[0]~0_combout\ = (\cont9|s_cont\(1) & (\cont9|s_cont\(0) & (\cont9|s_cont\(3) & \cont9|s_cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(1),
	datab => \cont9|s_cont\(0),
	datac => \cont9|s_cont\(3),
	datad => \cont9|s_cont\(2),
	combout => \cont9|s_cont[0]~0_combout\);

-- Location: LCCOMB_X110_Y68_N2
\cont9|s_cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|s_cont~2_combout\ = (\control|controlOut~q\ & (((!\cont9|s_cont[0]~0_combout\) # (!\cont9|s_cont[0]~1_combout\)) # (!\cont9|s_cont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(8),
	datab => \control|controlOut~q\,
	datac => \cont9|s_cont[0]~1_combout\,
	datad => \cont9|s_cont[0]~0_combout\,
	combout => \cont9|s_cont~2_combout\);

-- Location: LCCOMB_X111_Y68_N14
\cont9|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add0~6_combout\ = (\cont9|s_cont\(3) & (\cont9|Add0~5\ & VCC)) # (!\cont9|s_cont\(3) & (!\cont9|Add0~5\))
-- \cont9|Add0~7\ = CARRY((!\cont9|s_cont\(3) & !\cont9|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(3),
	datad => VCC,
	cin => \cont9|Add0~5\,
	combout => \cont9|Add0~6_combout\,
	cout => \cont9|Add0~7\);

-- Location: LCCOMB_X112_Y68_N12
\cont9|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add1~6_combout\ = (\cont9|s_cont\(3) & (!\cont9|Add1~5\)) # (!\cont9|s_cont\(3) & ((\cont9|Add1~5\) # (GND)))
-- \cont9|Add1~7\ = CARRY((!\cont9|Add1~5\) # (!\cont9|s_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont9|s_cont\(3),
	datad => VCC,
	cin => \cont9|Add1~5\,
	combout => \cont9|Add1~6_combout\,
	cout => \cont9|Add1~7\);

-- Location: LCCOMB_X110_Y68_N8
\cont9|s_cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|s_cont~6_combout\ = (\control|controlOut~q\ & (\cont9|s_cont~2_combout\ & ((\cont9|Add1~6_combout\)))) # (!\control|controlOut~q\ & ((\cont9|Add0~6_combout\) # ((\cont9|s_cont~2_combout\ & \cont9|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|controlOut~q\,
	datab => \cont9|s_cont~2_combout\,
	datac => \cont9|Add0~6_combout\,
	datad => \cont9|Add1~6_combout\,
	combout => \cont9|s_cont~6_combout\);

-- Location: FF_X110_Y68_N9
\cont9|s_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont9|s_cont~6_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont9|s_cont\(3));

-- Location: LCCOMB_X111_Y68_N16
\cont9|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add0~8_combout\ = (\cont9|s_cont\(4) & ((GND) # (!\cont9|Add0~7\))) # (!\cont9|s_cont\(4) & (\cont9|Add0~7\ $ (GND)))
-- \cont9|Add0~9\ = CARRY((\cont9|s_cont\(4)) # (!\cont9|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont9|s_cont\(4),
	datad => VCC,
	cin => \cont9|Add0~7\,
	combout => \cont9|Add0~8_combout\,
	cout => \cont9|Add0~9\);

-- Location: LCCOMB_X112_Y68_N14
\cont9|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add1~8_combout\ = (\cont9|s_cont\(4) & (\cont9|Add1~7\ $ (GND))) # (!\cont9|s_cont\(4) & (!\cont9|Add1~7\ & VCC))
-- \cont9|Add1~9\ = CARRY((\cont9|s_cont\(4) & !\cont9|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(4),
	datad => VCC,
	cin => \cont9|Add1~7\,
	combout => \cont9|Add1~8_combout\,
	cout => \cont9|Add1~9\);

-- Location: LCCOMB_X111_Y68_N0
\cont9|s_cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|s_cont~7_combout\ = (\control|controlOut~q\ & (((\cont9|Add1~8_combout\ & \cont9|s_cont~2_combout\)))) # (!\control|controlOut~q\ & ((\cont9|Add0~8_combout\) # ((\cont9|Add1~8_combout\ & \cont9|s_cont~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|controlOut~q\,
	datab => \cont9|Add0~8_combout\,
	datac => \cont9|Add1~8_combout\,
	datad => \cont9|s_cont~2_combout\,
	combout => \cont9|s_cont~7_combout\);

-- Location: FF_X111_Y68_N1
\cont9|s_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont9|s_cont~7_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont9|s_cont\(4));

-- Location: LCCOMB_X111_Y68_N18
\cont9|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add0~10_combout\ = (\cont9|s_cont\(5) & (\cont9|Add0~9\ & VCC)) # (!\cont9|s_cont\(5) & (!\cont9|Add0~9\))
-- \cont9|Add0~11\ = CARRY((!\cont9|s_cont\(5) & !\cont9|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(5),
	datad => VCC,
	cin => \cont9|Add0~9\,
	combout => \cont9|Add0~10_combout\,
	cout => \cont9|Add0~11\);

-- Location: LCCOMB_X112_Y68_N16
\cont9|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add1~10_combout\ = (\cont9|s_cont\(5) & (!\cont9|Add1~9\)) # (!\cont9|s_cont\(5) & ((\cont9|Add1~9\) # (GND)))
-- \cont9|Add1~11\ = CARRY((!\cont9|Add1~9\) # (!\cont9|s_cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(5),
	datad => VCC,
	cin => \cont9|Add1~9\,
	combout => \cont9|Add1~10_combout\,
	cout => \cont9|Add1~11\);

-- Location: LCCOMB_X111_Y68_N26
\cont9|s_cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|s_cont~8_combout\ = (\control|controlOut~q\ & (((\cont9|s_cont~2_combout\ & \cont9|Add1~10_combout\)))) # (!\control|controlOut~q\ & ((\cont9|Add0~10_combout\) # ((\cont9|s_cont~2_combout\ & \cont9|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|controlOut~q\,
	datab => \cont9|Add0~10_combout\,
	datac => \cont9|s_cont~2_combout\,
	datad => \cont9|Add1~10_combout\,
	combout => \cont9|s_cont~8_combout\);

-- Location: FF_X111_Y68_N27
\cont9|s_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont9|s_cont~8_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont9|s_cont\(5));

-- Location: LCCOMB_X111_Y68_N20
\cont9|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add0~12_combout\ = (\cont9|s_cont\(6) & ((GND) # (!\cont9|Add0~11\))) # (!\cont9|s_cont\(6) & (\cont9|Add0~11\ $ (GND)))
-- \cont9|Add0~13\ = CARRY((\cont9|s_cont\(6)) # (!\cont9|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(6),
	datad => VCC,
	cin => \cont9|Add0~11\,
	combout => \cont9|Add0~12_combout\,
	cout => \cont9|Add0~13\);

-- Location: LCCOMB_X112_Y68_N18
\cont9|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add1~12_combout\ = (\cont9|s_cont\(6) & (\cont9|Add1~11\ $ (GND))) # (!\cont9|s_cont\(6) & (!\cont9|Add1~11\ & VCC))
-- \cont9|Add1~13\ = CARRY((\cont9|s_cont\(6) & !\cont9|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(6),
	datad => VCC,
	cin => \cont9|Add1~11\,
	combout => \cont9|Add1~12_combout\,
	cout => \cont9|Add1~13\);

-- Location: LCCOMB_X111_Y68_N6
\cont9|s_cont~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|s_cont~9_combout\ = (\control|controlOut~q\ & (((\cont9|s_cont~2_combout\ & \cont9|Add1~12_combout\)))) # (!\control|controlOut~q\ & ((\cont9|Add0~12_combout\) # ((\cont9|s_cont~2_combout\ & \cont9|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|controlOut~q\,
	datab => \cont9|Add0~12_combout\,
	datac => \cont9|s_cont~2_combout\,
	datad => \cont9|Add1~12_combout\,
	combout => \cont9|s_cont~9_combout\);

-- Location: FF_X111_Y68_N7
\cont9|s_cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont9|s_cont~9_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont9|s_cont\(6));

-- Location: LCCOMB_X111_Y68_N22
\cont9|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add0~14_combout\ = (\cont9|s_cont\(7) & (\cont9|Add0~13\ & VCC)) # (!\cont9|s_cont\(7) & (!\cont9|Add0~13\))
-- \cont9|Add0~15\ = CARRY((!\cont9|s_cont\(7) & !\cont9|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont9|s_cont\(7),
	datad => VCC,
	cin => \cont9|Add0~13\,
	combout => \cont9|Add0~14_combout\,
	cout => \cont9|Add0~15\);

-- Location: LCCOMB_X112_Y68_N20
\cont9|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add1~14_combout\ = (\cont9|s_cont\(7) & (!\cont9|Add1~13\)) # (!\cont9|s_cont\(7) & ((\cont9|Add1~13\) # (GND)))
-- \cont9|Add1~15\ = CARRY((!\cont9|Add1~13\) # (!\cont9|s_cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont9|s_cont\(7),
	datad => VCC,
	cin => \cont9|Add1~13\,
	combout => \cont9|Add1~14_combout\,
	cout => \cont9|Add1~15\);

-- Location: LCCOMB_X111_Y68_N4
\cont9|s_cont~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|s_cont~10_combout\ = (\cont9|Add0~14_combout\ & (((\cont9|Add1~14_combout\ & \cont9|s_cont~2_combout\)) # (!\control|controlOut~q\))) # (!\cont9|Add0~14_combout\ & (((\cont9|Add1~14_combout\ & \cont9|s_cont~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|Add0~14_combout\,
	datab => \control|controlOut~q\,
	datac => \cont9|Add1~14_combout\,
	datad => \cont9|s_cont~2_combout\,
	combout => \cont9|s_cont~10_combout\);

-- Location: FF_X111_Y68_N5
\cont9|s_cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont9|s_cont~10_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont9|s_cont\(7));

-- Location: LCCOMB_X111_Y68_N24
\cont9|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add0~16_combout\ = \cont9|Add0~15\ $ (\cont9|s_cont\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cont9|s_cont\(8),
	cin => \cont9|Add0~15\,
	combout => \cont9|Add0~16_combout\);

-- Location: LCCOMB_X112_Y68_N22
\cont9|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|Add1~16_combout\ = \cont9|Add1~15\ $ (!\cont9|s_cont\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cont9|s_cont\(8),
	cin => \cont9|Add1~15\,
	combout => \cont9|Add1~16_combout\);

-- Location: LCCOMB_X111_Y68_N2
\cont9|s_cont~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9|s_cont~11_combout\ = (\control|controlOut~q\ & (((\cont9|s_cont~2_combout\ & \cont9|Add1~16_combout\)))) # (!\control|controlOut~q\ & ((\cont9|Add0~16_combout\) # ((\cont9|s_cont~2_combout\ & \cont9|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|controlOut~q\,
	datab => \cont9|Add0~16_combout\,
	datac => \cont9|s_cont~2_combout\,
	datad => \cont9|Add1~16_combout\,
	combout => \cont9|s_cont~11_combout\);

-- Location: FF_X111_Y68_N3
\cont9|s_cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont9|s_cont~11_combout\,
	ena => \pulso~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont9|s_cont\(8));

-- Location: IOIBUF_X115_Y61_N22
\tLua[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(1),
	o => \tLua[1]~input_o\);

-- Location: IOIBUF_X113_Y73_N1
\tGel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(1),
	o => \tGel[1]~input_o\);

-- Location: LCCOMB_X109_Y68_N4
\selecao|tRef[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[1]~14_combout\ = (\tSel[0]~input_o\ & (!\tSel[1]~input_o\ & ((\tGel[1]~input_o\)))) # (!\tSel[0]~input_o\ & (\tSel[1]~input_o\ & (\tLua[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[0]~input_o\,
	datab => \tSel[1]~input_o\,
	datac => \tLua[1]~input_o\,
	datad => \tGel[1]~input_o\,
	combout => \selecao|tRef[1]~14_combout\);

-- Location: IOIBUF_X115_Y65_N22
\tSol[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(1),
	o => \tSol[1]~input_o\);

-- Location: LCCOMB_X109_Y68_N24
\selecao|tRef[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[1]~15_combout\ = (\selecao|tRef[1]~14_combout\) # ((\tSol[1]~input_o\ & (\tSel[0]~input_o\ $ (!\tSel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[0]~input_o\,
	datab => \tSel[1]~input_o\,
	datac => \selecao|tRef[1]~14_combout\,
	datad => \tSol[1]~input_o\,
	combout => \selecao|tRef[1]~15_combout\);

-- Location: IOIBUF_X115_Y62_N15
\tLua[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(0),
	o => \tLua[0]~input_o\);

-- Location: IOIBUF_X115_Y64_N1
\tGel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(0),
	o => \tGel[0]~input_o\);

-- Location: LCCOMB_X109_Y68_N30
\selecao|tRef[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[0]~16_combout\ = (\tSel[0]~input_o\ & (!\tSel[1]~input_o\ & ((\tGel[0]~input_o\)))) # (!\tSel[0]~input_o\ & (\tSel[1]~input_o\ & (\tLua[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[0]~input_o\,
	datab => \tSel[1]~input_o\,
	datac => \tLua[0]~input_o\,
	datad => \tGel[0]~input_o\,
	combout => \selecao|tRef[0]~16_combout\);

-- Location: IOIBUF_X115_Y65_N15
\tSol[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(0),
	o => \tSol[0]~input_o\);

-- Location: LCCOMB_X109_Y68_N0
\selecao|tRef[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \selecao|tRef[0]~17_combout\ = (\selecao|tRef[0]~16_combout\) # ((\tSol[0]~input_o\ & (\tSel[0]~input_o\ $ (!\tSel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tSel[0]~input_o\,
	datab => \tSel[1]~input_o\,
	datac => \selecao|tRef[0]~16_combout\,
	datad => \tSol[0]~input_o\,
	combout => \selecao|tRef[0]~17_combout\);

-- Location: LCCOMB_X110_Y68_N10
\control|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan1~1_cout\ = CARRY((\selecao|tRef[0]~17_combout\ & !\cont9|s_cont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \selecao|tRef[0]~17_combout\,
	datab => \cont9|s_cont\(0),
	datad => VCC,
	cout => \control|LessThan1~1_cout\);

-- Location: LCCOMB_X110_Y68_N12
\control|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan1~3_cout\ = CARRY((\cont9|s_cont\(1) & ((!\control|LessThan1~1_cout\) # (!\selecao|tRef[1]~15_combout\))) # (!\cont9|s_cont\(1) & (!\selecao|tRef[1]~15_combout\ & !\control|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(1),
	datab => \selecao|tRef[1]~15_combout\,
	datad => VCC,
	cin => \control|LessThan1~1_cout\,
	cout => \control|LessThan1~3_cout\);

-- Location: LCCOMB_X110_Y68_N14
\control|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan1~5_cout\ = CARRY((\cont9|s_cont\(2) & (!\selecao|tRef[2]~13_combout\ & !\control|LessThan1~3_cout\)) # (!\cont9|s_cont\(2) & ((!\control|LessThan1~3_cout\) # (!\selecao|tRef[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(2),
	datab => \selecao|tRef[2]~13_combout\,
	datad => VCC,
	cin => \control|LessThan1~3_cout\,
	cout => \control|LessThan1~5_cout\);

-- Location: LCCOMB_X110_Y68_N16
\control|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan1~7_cout\ = CARRY((\control|Add1~0_combout\ & (\cont9|s_cont\(3) & !\control|LessThan1~5_cout\)) # (!\control|Add1~0_combout\ & ((\cont9|s_cont\(3)) # (!\control|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|Add1~0_combout\,
	datab => \cont9|s_cont\(3),
	datad => VCC,
	cin => \control|LessThan1~5_cout\,
	cout => \control|LessThan1~7_cout\);

-- Location: LCCOMB_X110_Y68_N18
\control|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan1~9_cout\ = CARRY((\control|Add1~2_combout\ & ((!\control|LessThan1~7_cout\) # (!\cont9|s_cont\(4)))) # (!\control|Add1~2_combout\ & (!\cont9|s_cont\(4) & !\control|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|Add1~2_combout\,
	datab => \cont9|s_cont\(4),
	datad => VCC,
	cin => \control|LessThan1~7_cout\,
	cout => \control|LessThan1~9_cout\);

-- Location: LCCOMB_X110_Y68_N20
\control|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan1~11_cout\ = CARRY((\control|Add1~4_combout\ & (\cont9|s_cont\(5) & !\control|LessThan1~9_cout\)) # (!\control|Add1~4_combout\ & ((\cont9|s_cont\(5)) # (!\control|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|Add1~4_combout\,
	datab => \cont9|s_cont\(5),
	datad => VCC,
	cin => \control|LessThan1~9_cout\,
	cout => \control|LessThan1~11_cout\);

-- Location: LCCOMB_X110_Y68_N22
\control|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan1~13_cout\ = CARRY((\cont9|s_cont\(6) & (\control|Add1~6_combout\ & !\control|LessThan1~11_cout\)) # (!\cont9|s_cont\(6) & ((\control|Add1~6_combout\) # (!\control|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(6),
	datab => \control|Add1~6_combout\,
	datad => VCC,
	cin => \control|LessThan1~11_cout\,
	cout => \control|LessThan1~13_cout\);

-- Location: LCCOMB_X110_Y68_N24
\control|LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan1~15_cout\ = CARRY((\cont9|s_cont\(7) & ((!\control|LessThan1~13_cout\) # (!\control|Add1~8_combout\))) # (!\cont9|s_cont\(7) & (!\control|Add1~8_combout\ & !\control|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(7),
	datab => \control|Add1~8_combout\,
	datad => VCC,
	cin => \control|LessThan1~13_cout\,
	cout => \control|LessThan1~15_cout\);

-- Location: LCCOMB_X110_Y68_N26
\control|LessThan1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan1~16_combout\ = (\control|Add1~10_combout\ & ((!\cont9|s_cont\(8)) # (!\control|LessThan1~15_cout\))) # (!\control|Add1~10_combout\ & (!\control|LessThan1~15_cout\ & !\cont9|s_cont\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control|Add1~10_combout\,
	datad => \cont9|s_cont\(8),
	cin => \control|LessThan1~15_cout\,
	combout => \control|LessThan1~16_combout\);

-- Location: LCCOMB_X110_Y68_N30
\control|controlOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|controlOut~0_combout\ = (\control|controlOut~q\ & ((\control|Add1~12_combout\) # (\control|LessThan1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Add1~12_combout\,
	datac => \control|LessThan1~16_combout\,
	datad => \control|controlOut~q\,
	combout => \control|controlOut~0_combout\);

-- Location: LCCOMB_X109_Y68_N6
\control|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan0~1_cout\ = CARRY((\cont9|s_cont\(0) & !\selecao|tRef[0]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(0),
	datab => \selecao|tRef[0]~17_combout\,
	datad => VCC,
	cout => \control|LessThan0~1_cout\);

-- Location: LCCOMB_X109_Y68_N8
\control|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan0~3_cout\ = CARRY((\cont9|s_cont\(1) & (\selecao|tRef[1]~15_combout\ & !\control|LessThan0~1_cout\)) # (!\cont9|s_cont\(1) & ((\selecao|tRef[1]~15_combout\) # (!\control|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(1),
	datab => \selecao|tRef[1]~15_combout\,
	datad => VCC,
	cin => \control|LessThan0~1_cout\,
	cout => \control|LessThan0~3_cout\);

-- Location: LCCOMB_X109_Y68_N10
\control|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan0~5_cout\ = CARRY((\cont9|s_cont\(2) & ((\selecao|tRef[2]~13_combout\) # (!\control|LessThan0~3_cout\))) # (!\cont9|s_cont\(2) & (\selecao|tRef[2]~13_combout\ & !\control|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(2),
	datab => \selecao|tRef[2]~13_combout\,
	datad => VCC,
	cin => \control|LessThan0~3_cout\,
	cout => \control|LessThan0~5_cout\);

-- Location: LCCOMB_X109_Y68_N12
\control|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan0~7_cout\ = CARRY((\control|Add0~2_combout\ & ((!\control|LessThan0~5_cout\) # (!\cont9|s_cont\(3)))) # (!\control|Add0~2_combout\ & (!\cont9|s_cont\(3) & !\control|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|Add0~2_combout\,
	datab => \cont9|s_cont\(3),
	datad => VCC,
	cin => \control|LessThan0~5_cout\,
	cout => \control|LessThan0~7_cout\);

-- Location: LCCOMB_X109_Y68_N14
\control|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan0~9_cout\ = CARRY((\control|Add0~4_combout\ & (\cont9|s_cont\(4) & !\control|LessThan0~7_cout\)) # (!\control|Add0~4_combout\ & ((\cont9|s_cont\(4)) # (!\control|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|Add0~4_combout\,
	datab => \cont9|s_cont\(4),
	datad => VCC,
	cin => \control|LessThan0~7_cout\,
	cout => \control|LessThan0~9_cout\);

-- Location: LCCOMB_X109_Y68_N16
\control|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan0~11_cout\ = CARRY((\cont9|s_cont\(5) & (\control|Add0~6_combout\ & !\control|LessThan0~9_cout\)) # (!\cont9|s_cont\(5) & ((\control|Add0~6_combout\) # (!\control|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(5),
	datab => \control|Add0~6_combout\,
	datad => VCC,
	cin => \control|LessThan0~9_cout\,
	cout => \control|LessThan0~11_cout\);

-- Location: LCCOMB_X109_Y68_N18
\control|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan0~13_cout\ = CARRY((\control|Add0~8_combout\ & (\cont9|s_cont\(6) & !\control|LessThan0~11_cout\)) # (!\control|Add0~8_combout\ & ((\cont9|s_cont\(6)) # (!\control|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|Add0~8_combout\,
	datab => \cont9|s_cont\(6),
	datad => VCC,
	cin => \control|LessThan0~11_cout\,
	cout => \control|LessThan0~13_cout\);

-- Location: LCCOMB_X109_Y68_N20
\control|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan0~15_cout\ = CARRY((\cont9|s_cont\(7) & (\control|Add0~10_combout\ & !\control|LessThan0~13_cout\)) # (!\cont9|s_cont\(7) & ((\control|Add0~10_combout\) # (!\control|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont9|s_cont\(7),
	datab => \control|Add0~10_combout\,
	datad => VCC,
	cin => \control|LessThan0~13_cout\,
	cout => \control|LessThan0~15_cout\);

-- Location: LCCOMB_X109_Y68_N22
\control|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|LessThan0~16_combout\ = (\cont9|s_cont\(8) & ((!\control|Add0~12_combout\) # (!\control|LessThan0~15_cout\))) # (!\cont9|s_cont\(8) & (!\control|LessThan0~15_cout\ & !\control|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont9|s_cont\(8),
	datad => \control|Add0~12_combout\,
	cin => \control|LessThan0~15_cout\,
	combout => \control|LessThan0~16_combout\);

-- Location: LCCOMB_X110_Y68_N28
\control|controlOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|controlOut~1_combout\ = (\control|controlOut~0_combout\) # ((!\control|Add0~16_combout\ & ((\control|Add0~14_combout\) # (!\control|LessThan0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Add0~14_combout\,
	datab => \control|Add0~16_combout\,
	datac => \control|controlOut~0_combout\,
	datad => \control|LessThan0~16_combout\,
	combout => \control|controlOut~1_combout\);

-- Location: FF_X110_Y68_N29
\control|controlOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control|controlOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|controlOut~q\);

ww_radiador <= \radiador~output_o\;

ww_tAmb(0) <= \tAmb[0]~output_o\;

ww_tAmb(1) <= \tAmb[1]~output_o\;

ww_tAmb(2) <= \tAmb[2]~output_o\;

ww_tAmb(3) <= \tAmb[3]~output_o\;

ww_tAmb(4) <= \tAmb[4]~output_o\;

ww_tAmb(5) <= \tAmb[5]~output_o\;

ww_tAmb(6) <= \tAmb[6]~output_o\;

ww_tAmb(7) <= \tAmb[7]~output_o\;

ww_tAmb(8) <= \tAmb[8]~output_o\;
END structure;


