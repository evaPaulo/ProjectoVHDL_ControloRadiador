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

-- DATE "06/01/2023 10:44:42"

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

ENTITY 	RelogioBasico IS
    PORT (
	clk : IN std_logic;
	pulso : IN std_logic;
	modo : IN std_logic;
	upD : IN std_logic;
	enM : IN std_logic;
	enH : IN std_logic;
	minOut : OUT std_logic_vector(5 DOWNTO 0);
	horOut : OUT std_logic_vector(4 DOWNTO 0)
	);
END RelogioBasico;

-- Design Ports Information
-- minOut[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minOut[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minOut[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minOut[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minOut[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minOut[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horOut[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horOut[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horOut[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horOut[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horOut[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- upD	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enM	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modo	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enH	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RelogioBasico IS
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
SIGNAL ww_modo : std_logic;
SIGNAL ww_upD : std_logic;
SIGNAL ww_enM : std_logic;
SIGNAL ww_enH : std_logic;
SIGNAL ww_minOut : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_horOut : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \minOut[0]~output_o\ : std_logic;
SIGNAL \minOut[1]~output_o\ : std_logic;
SIGNAL \minOut[2]~output_o\ : std_logic;
SIGNAL \minOut[3]~output_o\ : std_logic;
SIGNAL \minOut[4]~output_o\ : std_logic;
SIGNAL \minOut[5]~output_o\ : std_logic;
SIGNAL \horOut[0]~output_o\ : std_logic;
SIGNAL \horOut[1]~output_o\ : std_logic;
SIGNAL \horOut[2]~output_o\ : std_logic;
SIGNAL \horOut[3]~output_o\ : std_logic;
SIGNAL \horOut[4]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Minutos|Add1~0_combout\ : std_logic;
SIGNAL \upD~input_o\ : std_logic;
SIGNAL \Minutos|Add1~1\ : std_logic;
SIGNAL \Minutos|Add1~2_combout\ : std_logic;
SIGNAL \Minutos|Add0~1\ : std_logic;
SIGNAL \Minutos|Add0~2_combout\ : std_logic;
SIGNAL \Minutos|s_cont~1_combout\ : std_logic;
SIGNAL \modo~input_o\ : std_logic;
SIGNAL \pulso~input_o\ : std_logic;
SIGNAL \enM~input_o\ : std_logic;
SIGNAL \muxMin|yout~0_combout\ : std_logic;
SIGNAL \Minutos|Add1~3\ : std_logic;
SIGNAL \Minutos|Add1~4_combout\ : std_logic;
SIGNAL \Minutos|Add0~3\ : std_logic;
SIGNAL \Minutos|Add0~4_combout\ : std_logic;
SIGNAL \Minutos|s_cont~2_combout\ : std_logic;
SIGNAL \Minutos|Add0~5\ : std_logic;
SIGNAL \Minutos|Add0~6_combout\ : std_logic;
SIGNAL \Minutos|Add1~5\ : std_logic;
SIGNAL \Minutos|Add1~6_combout\ : std_logic;
SIGNAL \Minutos|s_cont~3_combout\ : std_logic;
SIGNAL \Minutos|Add1~7\ : std_logic;
SIGNAL \Minutos|Add1~8_combout\ : std_logic;
SIGNAL \Minutos|Add0~7\ : std_logic;
SIGNAL \Minutos|Add0~8_combout\ : std_logic;
SIGNAL \Minutos|s_cont~4_combout\ : std_logic;
SIGNAL \Minutos|Add1~9\ : std_logic;
SIGNAL \Minutos|Add1~10_combout\ : std_logic;
SIGNAL \Minutos|Add0~9\ : std_logic;
SIGNAL \Minutos|Add0~10_combout\ : std_logic;
SIGNAL \Minutos|s_cont~5_combout\ : std_logic;
SIGNAL \Minutos|LessThan0~0_combout\ : std_logic;
SIGNAL \Minutos|LessThan0~1_combout\ : std_logic;
SIGNAL \Minutos|Add0~0_combout\ : std_logic;
SIGNAL \Minutos|s_cont~0_combout\ : std_logic;
SIGNAL \Horas|Add1~0_combout\ : std_logic;
SIGNAL \Horas|Add0~0_combout\ : std_logic;
SIGNAL \Horas|Add1~1\ : std_logic;
SIGNAL \Horas|Add1~2_combout\ : std_logic;
SIGNAL \Horas|Add0~1\ : std_logic;
SIGNAL \Horas|Add0~2_combout\ : std_logic;
SIGNAL \Horas|s_cont~3_combout\ : std_logic;
SIGNAL \Minutos|contFim~0_combout\ : std_logic;
SIGNAL \Minutos|contFim~1_combout\ : std_logic;
SIGNAL \Minutos|contFim~2_combout\ : std_logic;
SIGNAL \Minutos|contFim~q\ : std_logic;
SIGNAL \enH~input_o\ : std_logic;
SIGNAL \muxHrs|yout~0_combout\ : std_logic;
SIGNAL \Horas|Add1~3\ : std_logic;
SIGNAL \Horas|Add1~4_combout\ : std_logic;
SIGNAL \Horas|Add0~3\ : std_logic;
SIGNAL \Horas|Add0~4_combout\ : std_logic;
SIGNAL \Horas|s_cont~4_combout\ : std_logic;
SIGNAL \Horas|Add1~5\ : std_logic;
SIGNAL \Horas|Add1~6_combout\ : std_logic;
SIGNAL \Horas|Add0~5\ : std_logic;
SIGNAL \Horas|Add0~6_combout\ : std_logic;
SIGNAL \Horas|s_cont~5_combout\ : std_logic;
SIGNAL \Horas|Add1~7\ : std_logic;
SIGNAL \Horas|Add1~8_combout\ : std_logic;
SIGNAL \Horas|Add0~7\ : std_logic;
SIGNAL \Horas|Add0~8_combout\ : std_logic;
SIGNAL \Horas|s_cont~6_combout\ : std_logic;
SIGNAL \Horas|s_cont~0_combout\ : std_logic;
SIGNAL \Horas|s_cont~1_combout\ : std_logic;
SIGNAL \Horas|s_cont~2_combout\ : std_logic;
SIGNAL \Horas|s_cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Minutos|s_cont\ : std_logic_vector(5 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_pulso <= pulso;
ww_modo <= modo;
ww_upD <= upD;
ww_enM <= enM;
ww_enH <= enH;
minOut <= ww_minOut;
horOut <= ww_horOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X58_Y73_N16
\minOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Minutos|s_cont\(0),
	devoe => ww_devoe,
	o => \minOut[0]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\minOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Minutos|s_cont\(1),
	devoe => ww_devoe,
	o => \minOut[1]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\minOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Minutos|s_cont\(2),
	devoe => ww_devoe,
	o => \minOut[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\minOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Minutos|s_cont\(3),
	devoe => ww_devoe,
	o => \minOut[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\minOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Minutos|s_cont\(4),
	devoe => ww_devoe,
	o => \minOut[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\minOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Minutos|s_cont\(5),
	devoe => ww_devoe,
	o => \minOut[5]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\horOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Horas|s_cont\(0),
	devoe => ww_devoe,
	o => \horOut[0]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\horOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Horas|s_cont\(1),
	devoe => ww_devoe,
	o => \horOut[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\horOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Horas|s_cont\(2),
	devoe => ww_devoe,
	o => \horOut[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\horOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Horas|s_cont\(3),
	devoe => ww_devoe,
	o => \horOut[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\horOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Horas|s_cont\(4),
	devoe => ww_devoe,
	o => \horOut[4]~output_o\);

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

-- Location: LCCOMB_X59_Y71_N6
\Minutos|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|Add1~0_combout\ = \Minutos|s_cont\(0) $ (VCC)
-- \Minutos|Add1~1\ = CARRY(\Minutos|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Minutos|s_cont\(0),
	datad => VCC,
	combout => \Minutos|Add1~0_combout\,
	cout => \Minutos|Add1~1\);

-- Location: IOIBUF_X58_Y73_N22
\upD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_upD,
	o => \upD~input_o\);

-- Location: LCCOMB_X59_Y71_N8
\Minutos|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|Add1~2_combout\ = (\Minutos|s_cont\(1) & (!\Minutos|Add1~1\)) # (!\Minutos|s_cont\(1) & ((\Minutos|Add1~1\) # (GND)))
-- \Minutos|Add1~3\ = CARRY((!\Minutos|Add1~1\) # (!\Minutos|s_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Minutos|s_cont\(1),
	datad => VCC,
	cin => \Minutos|Add1~1\,
	combout => \Minutos|Add1~2_combout\,
	cout => \Minutos|Add1~3\);

-- Location: LCCOMB_X60_Y71_N14
\Minutos|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|Add0~0_combout\ = \Minutos|s_cont\(0) $ (VCC)
-- \Minutos|Add0~1\ = CARRY(\Minutos|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Minutos|s_cont\(0),
	datad => VCC,
	combout => \Minutos|Add0~0_combout\,
	cout => \Minutos|Add0~1\);

-- Location: LCCOMB_X60_Y71_N16
\Minutos|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|Add0~2_combout\ = (\Minutos|s_cont\(1) & (\Minutos|Add0~1\ & VCC)) # (!\Minutos|s_cont\(1) & (!\Minutos|Add0~1\))
-- \Minutos|Add0~3\ = CARRY((!\Minutos|s_cont\(1) & !\Minutos|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Minutos|s_cont\(1),
	datad => VCC,
	cin => \Minutos|Add0~1\,
	combout => \Minutos|Add0~2_combout\,
	cout => \Minutos|Add0~3\);

-- Location: LCCOMB_X59_Y71_N26
\Minutos|s_cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|s_cont~1_combout\ = (\upD~input_o\ & (\Minutos|LessThan0~1_combout\ & (\Minutos|Add1~2_combout\))) # (!\upD~input_o\ & (((\Minutos|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Minutos|LessThan0~1_combout\,
	datab => \upD~input_o\,
	datac => \Minutos|Add1~2_combout\,
	datad => \Minutos|Add0~2_combout\,
	combout => \Minutos|s_cont~1_combout\);

-- Location: IOIBUF_X60_Y73_N8
\modo~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modo,
	o => \modo~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\pulso~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso,
	o => \pulso~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\enM~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enM,
	o => \enM~input_o\);

-- Location: LCCOMB_X60_Y71_N12
\muxMin|yout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxMin|yout~0_combout\ = (\modo~input_o\ & ((\enM~input_o\))) # (!\modo~input_o\ & (\pulso~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \modo~input_o\,
	datac => \pulso~input_o\,
	datad => \enM~input_o\,
	combout => \muxMin|yout~0_combout\);

-- Location: FF_X59_Y71_N27
\Minutos|s_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Minutos|s_cont~1_combout\,
	ena => \muxMin|yout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Minutos|s_cont\(1));

-- Location: LCCOMB_X59_Y71_N10
\Minutos|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|Add1~4_combout\ = (\Minutos|s_cont\(2) & (\Minutos|Add1~3\ $ (GND))) # (!\Minutos|s_cont\(2) & (!\Minutos|Add1~3\ & VCC))
-- \Minutos|Add1~5\ = CARRY((\Minutos|s_cont\(2) & !\Minutos|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Minutos|s_cont\(2),
	datad => VCC,
	cin => \Minutos|Add1~3\,
	combout => \Minutos|Add1~4_combout\,
	cout => \Minutos|Add1~5\);

-- Location: LCCOMB_X60_Y71_N18
\Minutos|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|Add0~4_combout\ = (\Minutos|s_cont\(2) & ((GND) # (!\Minutos|Add0~3\))) # (!\Minutos|s_cont\(2) & (\Minutos|Add0~3\ $ (GND)))
-- \Minutos|Add0~5\ = CARRY((\Minutos|s_cont\(2)) # (!\Minutos|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Minutos|s_cont\(2),
	datad => VCC,
	cin => \Minutos|Add0~3\,
	combout => \Minutos|Add0~4_combout\,
	cout => \Minutos|Add0~5\);

-- Location: LCCOMB_X59_Y71_N0
\Minutos|s_cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|s_cont~2_combout\ = (\upD~input_o\ & (\Minutos|Add1~4_combout\ & (\Minutos|LessThan0~1_combout\))) # (!\upD~input_o\ & (((\Minutos|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Minutos|Add1~4_combout\,
	datab => \upD~input_o\,
	datac => \Minutos|LessThan0~1_combout\,
	datad => \Minutos|Add0~4_combout\,
	combout => \Minutos|s_cont~2_combout\);

-- Location: FF_X59_Y71_N1
\Minutos|s_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Minutos|s_cont~2_combout\,
	ena => \muxMin|yout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Minutos|s_cont\(2));

-- Location: LCCOMB_X60_Y71_N20
\Minutos|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|Add0~6_combout\ = (\Minutos|s_cont\(3) & (\Minutos|Add0~5\ & VCC)) # (!\Minutos|s_cont\(3) & (!\Minutos|Add0~5\))
-- \Minutos|Add0~7\ = CARRY((!\Minutos|s_cont\(3) & !\Minutos|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Minutos|s_cont\(3),
	datad => VCC,
	cin => \Minutos|Add0~5\,
	combout => \Minutos|Add0~6_combout\,
	cout => \Minutos|Add0~7\);

-- Location: LCCOMB_X59_Y71_N12
\Minutos|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|Add1~6_combout\ = (\Minutos|s_cont\(3) & (!\Minutos|Add1~5\)) # (!\Minutos|s_cont\(3) & ((\Minutos|Add1~5\) # (GND)))
-- \Minutos|Add1~7\ = CARRY((!\Minutos|Add1~5\) # (!\Minutos|s_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Minutos|s_cont\(3),
	datad => VCC,
	cin => \Minutos|Add1~5\,
	combout => \Minutos|Add1~6_combout\,
	cout => \Minutos|Add1~7\);

-- Location: LCCOMB_X59_Y71_N2
\Minutos|s_cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|s_cont~3_combout\ = (\upD~input_o\ & (\Minutos|LessThan0~1_combout\ & ((\Minutos|Add1~6_combout\)))) # (!\upD~input_o\ & (((\Minutos|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Minutos|LessThan0~1_combout\,
	datab => \upD~input_o\,
	datac => \Minutos|Add0~6_combout\,
	datad => \Minutos|Add1~6_combout\,
	combout => \Minutos|s_cont~3_combout\);

-- Location: FF_X59_Y71_N3
\Minutos|s_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Minutos|s_cont~3_combout\,
	ena => \muxMin|yout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Minutos|s_cont\(3));

-- Location: LCCOMB_X59_Y71_N14
\Minutos|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|Add1~8_combout\ = (\Minutos|s_cont\(4) & (\Minutos|Add1~7\ $ (GND))) # (!\Minutos|s_cont\(4) & (!\Minutos|Add1~7\ & VCC))
-- \Minutos|Add1~9\ = CARRY((\Minutos|s_cont\(4) & !\Minutos|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Minutos|s_cont\(4),
	datad => VCC,
	cin => \Minutos|Add1~7\,
	combout => \Minutos|Add1~8_combout\,
	cout => \Minutos|Add1~9\);

-- Location: LCCOMB_X60_Y71_N22
\Minutos|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|Add0~8_combout\ = (\Minutos|s_cont\(4) & ((GND) # (!\Minutos|Add0~7\))) # (!\Minutos|s_cont\(4) & (\Minutos|Add0~7\ $ (GND)))
-- \Minutos|Add0~9\ = CARRY((\Minutos|s_cont\(4)) # (!\Minutos|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Minutos|s_cont\(4),
	datad => VCC,
	cin => \Minutos|Add0~7\,
	combout => \Minutos|Add0~8_combout\,
	cout => \Minutos|Add0~9\);

-- Location: LCCOMB_X59_Y71_N24
\Minutos|s_cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|s_cont~4_combout\ = (\upD~input_o\ & (\Minutos|LessThan0~1_combout\ & (\Minutos|Add1~8_combout\))) # (!\upD~input_o\ & (((\Minutos|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Minutos|LessThan0~1_combout\,
	datab => \upD~input_o\,
	datac => \Minutos|Add1~8_combout\,
	datad => \Minutos|Add0~8_combout\,
	combout => \Minutos|s_cont~4_combout\);

-- Location: FF_X59_Y71_N25
\Minutos|s_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Minutos|s_cont~4_combout\,
	ena => \muxMin|yout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Minutos|s_cont\(4));

-- Location: LCCOMB_X59_Y71_N16
\Minutos|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|Add1~10_combout\ = \Minutos|s_cont\(5) $ (\Minutos|Add1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Minutos|s_cont\(5),
	cin => \Minutos|Add1~9\,
	combout => \Minutos|Add1~10_combout\);

-- Location: LCCOMB_X60_Y71_N24
\Minutos|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|Add0~10_combout\ = \Minutos|Add0~9\ $ (!\Minutos|s_cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Minutos|s_cont\(5),
	cin => \Minutos|Add0~9\,
	combout => \Minutos|Add0~10_combout\);

-- Location: LCCOMB_X59_Y71_N30
\Minutos|s_cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|s_cont~5_combout\ = (\upD~input_o\ & (\Minutos|LessThan0~1_combout\ & (\Minutos|Add1~10_combout\))) # (!\upD~input_o\ & (((\Minutos|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Minutos|LessThan0~1_combout\,
	datab => \Minutos|Add1~10_combout\,
	datac => \upD~input_o\,
	datad => \Minutos|Add0~10_combout\,
	combout => \Minutos|s_cont~5_combout\);

-- Location: FF_X59_Y71_N31
\Minutos|s_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Minutos|s_cont~5_combout\,
	ena => \muxMin|yout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Minutos|s_cont\(5));

-- Location: LCCOMB_X59_Y71_N20
\Minutos|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|LessThan0~0_combout\ = (!\Minutos|s_cont\(2) & ((!\Minutos|s_cont\(1)) # (!\Minutos|s_cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Minutos|s_cont\(0),
	datac => \Minutos|s_cont\(1),
	datad => \Minutos|s_cont\(2),
	combout => \Minutos|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y71_N22
\Minutos|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|LessThan0~1_combout\ = (((\Minutos|LessThan0~0_combout\) # (!\Minutos|s_cont\(5))) # (!\Minutos|s_cont\(4))) # (!\Minutos|s_cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Minutos|s_cont\(3),
	datab => \Minutos|s_cont\(4),
	datac => \Minutos|s_cont\(5),
	datad => \Minutos|LessThan0~0_combout\,
	combout => \Minutos|LessThan0~1_combout\);

-- Location: LCCOMB_X59_Y71_N28
\Minutos|s_cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|s_cont~0_combout\ = (\upD~input_o\ & (\Minutos|Add1~0_combout\ & (\Minutos|LessThan0~1_combout\))) # (!\upD~input_o\ & (((\Minutos|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Minutos|Add1~0_combout\,
	datab => \upD~input_o\,
	datac => \Minutos|LessThan0~1_combout\,
	datad => \Minutos|Add0~0_combout\,
	combout => \Minutos|s_cont~0_combout\);

-- Location: FF_X59_Y71_N29
\Minutos|s_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Minutos|s_cont~0_combout\,
	ena => \muxMin|yout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Minutos|s_cont\(0));

-- Location: LCCOMB_X61_Y71_N10
\Horas|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|Add1~0_combout\ = \Horas|s_cont\(0) $ (VCC)
-- \Horas|Add1~1\ = CARRY(\Horas|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Horas|s_cont\(0),
	datad => VCC,
	combout => \Horas|Add1~0_combout\,
	cout => \Horas|Add1~1\);

-- Location: LCCOMB_X61_Y71_N22
\Horas|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|Add0~0_combout\ = \Horas|s_cont\(0) $ (VCC)
-- \Horas|Add0~1\ = CARRY(\Horas|s_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Horas|s_cont\(0),
	datad => VCC,
	combout => \Horas|Add0~0_combout\,
	cout => \Horas|Add0~1\);

-- Location: LCCOMB_X61_Y71_N12
\Horas|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|Add1~2_combout\ = (\Horas|s_cont\(1) & (!\Horas|Add1~1\)) # (!\Horas|s_cont\(1) & ((\Horas|Add1~1\) # (GND)))
-- \Horas|Add1~3\ = CARRY((!\Horas|Add1~1\) # (!\Horas|s_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Horas|s_cont\(1),
	datad => VCC,
	cin => \Horas|Add1~1\,
	combout => \Horas|Add1~2_combout\,
	cout => \Horas|Add1~3\);

-- Location: LCCOMB_X61_Y71_N24
\Horas|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|Add0~2_combout\ = (\Horas|s_cont\(1) & (\Horas|Add0~1\ & VCC)) # (!\Horas|s_cont\(1) & (!\Horas|Add0~1\))
-- \Horas|Add0~3\ = CARRY((!\Horas|s_cont\(1) & !\Horas|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Horas|s_cont\(1),
	datad => VCC,
	cin => \Horas|Add0~1\,
	combout => \Horas|Add0~2_combout\,
	cout => \Horas|Add0~3\);

-- Location: LCCOMB_X61_Y71_N2
\Horas|s_cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|s_cont~3_combout\ = (\Horas|Add1~2_combout\ & ((\Horas|s_cont~1_combout\) # ((\Horas|Add0~2_combout\ & !\upD~input_o\)))) # (!\Horas|Add1~2_combout\ & (\Horas|Add0~2_combout\ & (!\upD~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Horas|Add1~2_combout\,
	datab => \Horas|Add0~2_combout\,
	datac => \upD~input_o\,
	datad => \Horas|s_cont~1_combout\,
	combout => \Horas|s_cont~3_combout\);

-- Location: LCCOMB_X59_Y71_N4
\Minutos|contFim~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|contFim~0_combout\ = (\Minutos|s_cont\(1) & (\Minutos|s_cont\(3) & (\Minutos|s_cont\(5) & \Minutos|s_cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Minutos|s_cont\(1),
	datab => \Minutos|s_cont\(3),
	datac => \Minutos|s_cont\(5),
	datad => \Minutos|s_cont\(4),
	combout => \Minutos|contFim~0_combout\);

-- Location: LCCOMB_X59_Y71_N18
\Minutos|contFim~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|contFim~1_combout\ = (!\Minutos|s_cont\(0) & (!\Minutos|s_cont\(2) & (\Minutos|LessThan0~1_combout\ & \Minutos|contFim~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Minutos|s_cont\(0),
	datab => \Minutos|s_cont\(2),
	datac => \Minutos|LessThan0~1_combout\,
	datad => \Minutos|contFim~0_combout\,
	combout => \Minutos|contFim~1_combout\);

-- Location: LCCOMB_X60_Y71_N30
\Minutos|contFim~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Minutos|contFim~2_combout\ = (\muxMin|yout~0_combout\ & ((\upD~input_o\ & ((\Minutos|contFim~1_combout\))) # (!\upD~input_o\ & (\Minutos|contFim~q\)))) # (!\muxMin|yout~0_combout\ & (((\Minutos|contFim~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxMin|yout~0_combout\,
	datab => \upD~input_o\,
	datac => \Minutos|contFim~q\,
	datad => \Minutos|contFim~1_combout\,
	combout => \Minutos|contFim~2_combout\);

-- Location: FF_X60_Y71_N31
\Minutos|contFim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Minutos|contFim~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Minutos|contFim~q\);

-- Location: IOIBUF_X60_Y73_N22
\enH~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enH,
	o => \enH~input_o\);

-- Location: LCCOMB_X60_Y71_N4
\muxHrs|yout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxHrs|yout~0_combout\ = (\modo~input_o\ & (((\enH~input_o\)))) # (!\modo~input_o\ & (\pulso~input_o\ & (\Minutos|contFim~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso~input_o\,
	datab => \modo~input_o\,
	datac => \Minutos|contFim~q\,
	datad => \enH~input_o\,
	combout => \muxHrs|yout~0_combout\);

-- Location: FF_X61_Y71_N3
\Horas|s_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Horas|s_cont~3_combout\,
	ena => \muxHrs|yout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Horas|s_cont\(1));

-- Location: LCCOMB_X61_Y71_N14
\Horas|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|Add1~4_combout\ = (\Horas|s_cont\(2) & (\Horas|Add1~3\ $ (GND))) # (!\Horas|s_cont\(2) & (!\Horas|Add1~3\ & VCC))
-- \Horas|Add1~5\ = CARRY((\Horas|s_cont\(2) & !\Horas|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Horas|s_cont\(2),
	datad => VCC,
	cin => \Horas|Add1~3\,
	combout => \Horas|Add1~4_combout\,
	cout => \Horas|Add1~5\);

-- Location: LCCOMB_X61_Y71_N26
\Horas|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|Add0~4_combout\ = (\Horas|s_cont\(2) & ((GND) # (!\Horas|Add0~3\))) # (!\Horas|s_cont\(2) & (\Horas|Add0~3\ $ (GND)))
-- \Horas|Add0~5\ = CARRY((\Horas|s_cont\(2)) # (!\Horas|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Horas|s_cont\(2),
	datad => VCC,
	cin => \Horas|Add0~3\,
	combout => \Horas|Add0~4_combout\,
	cout => \Horas|Add0~5\);

-- Location: LCCOMB_X61_Y71_N8
\Horas|s_cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|s_cont~4_combout\ = (\upD~input_o\ & (\Horas|Add1~4_combout\ & ((\Horas|s_cont~1_combout\)))) # (!\upD~input_o\ & ((\Horas|Add0~4_combout\) # ((\Horas|Add1~4_combout\ & \Horas|s_cont~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upD~input_o\,
	datab => \Horas|Add1~4_combout\,
	datac => \Horas|Add0~4_combout\,
	datad => \Horas|s_cont~1_combout\,
	combout => \Horas|s_cont~4_combout\);

-- Location: FF_X61_Y71_N9
\Horas|s_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Horas|s_cont~4_combout\,
	ena => \muxHrs|yout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Horas|s_cont\(2));

-- Location: LCCOMB_X61_Y71_N16
\Horas|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|Add1~6_combout\ = (\Horas|s_cont\(3) & (!\Horas|Add1~5\)) # (!\Horas|s_cont\(3) & ((\Horas|Add1~5\) # (GND)))
-- \Horas|Add1~7\ = CARRY((!\Horas|Add1~5\) # (!\Horas|s_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Horas|s_cont\(3),
	datad => VCC,
	cin => \Horas|Add1~5\,
	combout => \Horas|Add1~6_combout\,
	cout => \Horas|Add1~7\);

-- Location: LCCOMB_X61_Y71_N28
\Horas|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|Add0~6_combout\ = (\Horas|s_cont\(3) & (\Horas|Add0~5\ & VCC)) # (!\Horas|s_cont\(3) & (!\Horas|Add0~5\))
-- \Horas|Add0~7\ = CARRY((!\Horas|s_cont\(3) & !\Horas|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Horas|s_cont\(3),
	datad => VCC,
	cin => \Horas|Add0~5\,
	combout => \Horas|Add0~6_combout\,
	cout => \Horas|Add0~7\);

-- Location: LCCOMB_X61_Y71_N6
\Horas|s_cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|s_cont~5_combout\ = (\upD~input_o\ & (\Horas|Add1~6_combout\ & ((\Horas|s_cont~1_combout\)))) # (!\upD~input_o\ & ((\Horas|Add0~6_combout\) # ((\Horas|Add1~6_combout\ & \Horas|s_cont~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upD~input_o\,
	datab => \Horas|Add1~6_combout\,
	datac => \Horas|Add0~6_combout\,
	datad => \Horas|s_cont~1_combout\,
	combout => \Horas|s_cont~5_combout\);

-- Location: FF_X61_Y71_N7
\Horas|s_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Horas|s_cont~5_combout\,
	ena => \muxHrs|yout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Horas|s_cont\(3));

-- Location: LCCOMB_X61_Y71_N18
\Horas|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|Add1~8_combout\ = \Horas|Add1~7\ $ (!\Horas|s_cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Horas|s_cont\(4),
	cin => \Horas|Add1~7\,
	combout => \Horas|Add1~8_combout\);

-- Location: LCCOMB_X61_Y71_N30
\Horas|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|Add0~8_combout\ = \Horas|Add0~7\ $ (\Horas|s_cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Horas|s_cont\(4),
	cin => \Horas|Add0~7\,
	combout => \Horas|Add0~8_combout\);

-- Location: LCCOMB_X61_Y71_N0
\Horas|s_cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|s_cont~6_combout\ = (\upD~input_o\ & (\Horas|Add1~8_combout\ & ((\Horas|s_cont~1_combout\)))) # (!\upD~input_o\ & ((\Horas|Add0~8_combout\) # ((\Horas|Add1~8_combout\ & \Horas|s_cont~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upD~input_o\,
	datab => \Horas|Add1~8_combout\,
	datac => \Horas|Add0~8_combout\,
	datad => \Horas|s_cont~1_combout\,
	combout => \Horas|s_cont~6_combout\);

-- Location: FF_X61_Y71_N1
\Horas|s_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Horas|s_cont~6_combout\,
	ena => \muxHrs|yout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Horas|s_cont\(4));

-- Location: LCCOMB_X62_Y71_N24
\Horas|s_cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|s_cont~0_combout\ = (\upD~input_o\ & (((!\Horas|s_cont\(2)) # (!\Horas|s_cont\(0))) # (!\Horas|s_cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Horas|s_cont\(1),
	datab => \upD~input_o\,
	datac => \Horas|s_cont\(0),
	datad => \Horas|s_cont\(2),
	combout => \Horas|s_cont~0_combout\);

-- Location: LCCOMB_X61_Y71_N20
\Horas|s_cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|s_cont~1_combout\ = (\Horas|s_cont\(3) & (!\Horas|s_cont\(4) & (\upD~input_o\))) # (!\Horas|s_cont\(3) & ((\Horas|s_cont~0_combout\) # ((!\Horas|s_cont\(4) & \upD~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Horas|s_cont\(3),
	datab => \Horas|s_cont\(4),
	datac => \upD~input_o\,
	datad => \Horas|s_cont~0_combout\,
	combout => \Horas|s_cont~1_combout\);

-- Location: LCCOMB_X61_Y71_N4
\Horas|s_cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horas|s_cont~2_combout\ = (\Horas|Add1~0_combout\ & ((\Horas|s_cont~1_combout\) # ((!\upD~input_o\ & \Horas|Add0~0_combout\)))) # (!\Horas|Add1~0_combout\ & (!\upD~input_o\ & (\Horas|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Horas|Add1~0_combout\,
	datab => \upD~input_o\,
	datac => \Horas|Add0~0_combout\,
	datad => \Horas|s_cont~1_combout\,
	combout => \Horas|s_cont~2_combout\);

-- Location: FF_X61_Y71_N5
\Horas|s_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Horas|s_cont~2_combout\,
	ena => \muxHrs|yout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Horas|s_cont\(0));

ww_minOut(0) <= \minOut[0]~output_o\;

ww_minOut(1) <= \minOut[1]~output_o\;

ww_minOut(2) <= \minOut[2]~output_o\;

ww_minOut(3) <= \minOut[3]~output_o\;

ww_minOut(4) <= \minOut[4]~output_o\;

ww_minOut(5) <= \minOut[5]~output_o\;

ww_horOut(0) <= \horOut[0]~output_o\;

ww_horOut(1) <= \horOut[1]~output_o\;

ww_horOut(2) <= \horOut[2]~output_o\;

ww_horOut(3) <= \horOut[3]~output_o\;

ww_horOut(4) <= \horOut[4]~output_o\;
END structure;


