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

-- DATE "06/04/2023 18:01:14"

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

ENTITY 	AmbienteBasico IS
    PORT (
	clk : IN std_logic;
	pulso : IN std_logic;
	tSel : IN std_logic_vector(1 DOWNTO 0);
	tGel : IN std_logic_vector(8 DOWNTO 0);
	tLua : IN std_logic_vector(8 DOWNTO 0);
	tSol : IN std_logic_vector(8 DOWNTO 0);
	tAmb : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END AmbienteBasico;

-- Design Ports Information
-- clk	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSel[0]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSel[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[0]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[2]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[4]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[5]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[6]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[7]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tGel[8]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[0]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[2]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[4]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[5]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[6]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[7]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tLua[8]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[0]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[2]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[6]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tSol[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[0]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[3]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[5]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[7]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tAmb[8]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_tAmb : std_logic_vector(8 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \pulso~input_o\ : std_logic;
SIGNAL \tSel[0]~input_o\ : std_logic;
SIGNAL \tSel[1]~input_o\ : std_logic;
SIGNAL \tGel[0]~input_o\ : std_logic;
SIGNAL \tGel[1]~input_o\ : std_logic;
SIGNAL \tGel[2]~input_o\ : std_logic;
SIGNAL \tGel[3]~input_o\ : std_logic;
SIGNAL \tGel[4]~input_o\ : std_logic;
SIGNAL \tGel[5]~input_o\ : std_logic;
SIGNAL \tGel[6]~input_o\ : std_logic;
SIGNAL \tGel[7]~input_o\ : std_logic;
SIGNAL \tGel[8]~input_o\ : std_logic;
SIGNAL \tLua[0]~input_o\ : std_logic;
SIGNAL \tLua[1]~input_o\ : std_logic;
SIGNAL \tLua[2]~input_o\ : std_logic;
SIGNAL \tLua[3]~input_o\ : std_logic;
SIGNAL \tLua[4]~input_o\ : std_logic;
SIGNAL \tLua[5]~input_o\ : std_logic;
SIGNAL \tLua[6]~input_o\ : std_logic;
SIGNAL \tLua[7]~input_o\ : std_logic;
SIGNAL \tLua[8]~input_o\ : std_logic;
SIGNAL \tSol[0]~input_o\ : std_logic;
SIGNAL \tSol[1]~input_o\ : std_logic;
SIGNAL \tSol[2]~input_o\ : std_logic;
SIGNAL \tSol[3]~input_o\ : std_logic;
SIGNAL \tSol[4]~input_o\ : std_logic;
SIGNAL \tSol[5]~input_o\ : std_logic;
SIGNAL \tSol[6]~input_o\ : std_logic;
SIGNAL \tSol[7]~input_o\ : std_logic;
SIGNAL \tSol[8]~input_o\ : std_logic;
SIGNAL \tAmb[0]~output_o\ : std_logic;
SIGNAL \tAmb[1]~output_o\ : std_logic;
SIGNAL \tAmb[2]~output_o\ : std_logic;
SIGNAL \tAmb[3]~output_o\ : std_logic;
SIGNAL \tAmb[4]~output_o\ : std_logic;
SIGNAL \tAmb[5]~output_o\ : std_logic;
SIGNAL \tAmb[6]~output_o\ : std_logic;
SIGNAL \tAmb[7]~output_o\ : std_logic;
SIGNAL \tAmb[8]~output_o\ : std_logic;

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
tAmb <= ww_tAmb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X100_Y73_N16
\tAmb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tAmb[0]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\tAmb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tAmb[1]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\tAmb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tAmb[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\tAmb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tAmb[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\tAmb[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tAmb[4]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\tAmb[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tAmb[5]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\tAmb[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tAmb[6]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\tAmb[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tAmb[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\tAmb[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tAmb[8]~output_o\);

-- Location: IOIBUF_X0_Y21_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\pulso~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso,
	o => \pulso~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\tSel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSel(0),
	o => \tSel[0]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\tSel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSel(1),
	o => \tSel[1]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\tGel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(0),
	o => \tGel[0]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\tGel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(1),
	o => \tGel[1]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\tGel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(2),
	o => \tGel[2]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\tGel[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(3),
	o => \tGel[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\tGel[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(4),
	o => \tGel[4]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\tGel[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(5),
	o => \tGel[5]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\tGel[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(6),
	o => \tGel[6]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\tGel[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(7),
	o => \tGel[7]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\tGel[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tGel(8),
	o => \tGel[8]~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\tLua[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(0),
	o => \tLua[0]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\tLua[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(1),
	o => \tLua[1]~input_o\);

-- Location: IOIBUF_X115_Y65_N15
\tLua[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(2),
	o => \tLua[2]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\tLua[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(3),
	o => \tLua[3]~input_o\);

-- Location: IOIBUF_X87_Y0_N15
\tLua[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(4),
	o => \tLua[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\tLua[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(5),
	o => \tLua[5]~input_o\);

-- Location: IOIBUF_X115_Y22_N22
\tLua[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(6),
	o => \tLua[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\tLua[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(7),
	o => \tLua[7]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\tLua[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tLua(8),
	o => \tLua[8]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\tSol[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(0),
	o => \tSol[0]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\tSol[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(1),
	o => \tSol[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\tSol[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(2),
	o => \tSol[2]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\tSol[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(3),
	o => \tSol[3]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\tSol[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(4),
	o => \tSol[4]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\tSol[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(5),
	o => \tSol[5]~input_o\);

-- Location: IOIBUF_X105_Y73_N8
\tSol[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(6),
	o => \tSol[6]~input_o\);

-- Location: IOIBUF_X100_Y0_N1
\tSol[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(7),
	o => \tSol[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\tSol[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tSol(8),
	o => \tSol[8]~input_o\);

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


