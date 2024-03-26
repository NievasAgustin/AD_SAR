-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "08/21/2019 18:53:01"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AD_SAR IS
    PORT (
	reset_bar : IN std_logic;
	soc : IN std_logic;
	comp_in : IN std_logic;
	clk : IN std_logic;
	eoc : OUT std_logic;
	AD_result : OUT std_logic_vector(7 DOWNTO 0);
	digital_in : OUT std_logic_vector(7 DOWNTO 0)
	);
END AD_SAR;

-- Design Ports Information
-- eoc	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_in[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_in[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_in[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_in[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_in[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_in[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_in[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_in[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- soc	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_bar	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- comp_in	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AD_SAR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_bar : std_logic;
SIGNAL ww_soc : std_logic;
SIGNAL ww_comp_in : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_eoc : std_logic;
SIGNAL ww_AD_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_digital_in : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset_bar~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \casitodo|estados|state.idle~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eoc~output_o\ : std_logic;
SIGNAL \AD_result[0]~output_o\ : std_logic;
SIGNAL \AD_result[1]~output_o\ : std_logic;
SIGNAL \AD_result[2]~output_o\ : std_logic;
SIGNAL \AD_result[3]~output_o\ : std_logic;
SIGNAL \AD_result[4]~output_o\ : std_logic;
SIGNAL \AD_result[5]~output_o\ : std_logic;
SIGNAL \AD_result[6]~output_o\ : std_logic;
SIGNAL \AD_result[7]~output_o\ : std_logic;
SIGNAL \digital_in[0]~output_o\ : std_logic;
SIGNAL \digital_in[1]~output_o\ : std_logic;
SIGNAL \digital_in[2]~output_o\ : std_logic;
SIGNAL \digital_in[3]~output_o\ : std_logic;
SIGNAL \digital_in[4]~output_o\ : std_logic;
SIGNAL \digital_in[5]~output_o\ : std_logic;
SIGNAL \digital_in[6]~output_o\ : std_logic;
SIGNAL \digital_in[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \soc~input_o\ : std_logic;
SIGNAL \casitodo|estados|state~7_combout\ : std_logic;
SIGNAL \reset_bar~input_o\ : std_logic;
SIGNAL \reset_bar~inputclkctrl_outclk\ : std_logic;
SIGNAL \casitodo|estados|state.initial~q\ : std_logic;
SIGNAL \casitodo|estados|Selector1~0_combout\ : std_logic;
SIGNAL \casitodo|estados|state.shift~q\ : std_logic;
SIGNAL \casitodo|shifteo|ok~8_combout\ : std_logic;
SIGNAL \casitodo|shifteo|ok~7_combout\ : std_logic;
SIGNAL \casitodo|shifteo|ok[0]~1_combout\ : std_logic;
SIGNAL \casitodo|shifteo|ok~6_combout\ : std_logic;
SIGNAL \casitodo|shifteo|ok~5_combout\ : std_logic;
SIGNAL \casitodo|shifteo|ok~4_combout\ : std_logic;
SIGNAL \casitodo|shifteo|ok~3_combout\ : std_logic;
SIGNAL \casitodo|shifteo|ok~2_combout\ : std_logic;
SIGNAL \casitodo|shifteo|ok~0_combout\ : std_logic;
SIGNAL \casitodo|estados|Selector0~0_combout\ : std_logic;
SIGNAL \casitodo|estados|state.idle~q\ : std_logic;
SIGNAL \casitodo|estados|state.idle~clkctrl_outclk\ : std_logic;
SIGNAL \comp_in~input_o\ : std_logic;
SIGNAL \casitodo|registro|ok~0_combout\ : std_logic;
SIGNAL \casitodo|registro|ok~1_combout\ : std_logic;
SIGNAL \casitodo|registro|ok~2_combout\ : std_logic;
SIGNAL \casitodo|registro|ok~3_combout\ : std_logic;
SIGNAL \casitodo|registro|ok~4_combout\ : std_logic;
SIGNAL \casitodo|registro|ok~5_combout\ : std_logic;
SIGNAL \casitodo|registro|ok~6_combout\ : std_logic;
SIGNAL \casitodo|registro|ok~7_combout\ : std_logic;
SIGNAL \casitodo|or_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \casitodo|registro|ok\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \casitodo|shifteo|ok\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \guarda|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \casitodo|estados|ALT_INV_state.idle~q\ : std_logic;

BEGIN

ww_reset_bar <= reset_bar;
ww_soc <= soc;
ww_comp_in <= comp_in;
ww_clk <= clk;
eoc <= ww_eoc;
AD_result <= ww_AD_result;
digital_in <= ww_digital_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_bar~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_bar~input_o\);

\casitodo|estados|state.idle~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \casitodo|estados|state.idle~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\casitodo|estados|ALT_INV_state.idle~q\ <= NOT \casitodo|estados|state.idle~q\;

-- Location: IOOBUF_X16_Y34_N2
\eoc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \casitodo|estados|ALT_INV_state.idle~q\,
	devoe => ww_devoe,
	o => \eoc~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\AD_result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \guarda|q\(0),
	devoe => ww_devoe,
	o => \AD_result[0]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\AD_result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \guarda|q\(1),
	devoe => ww_devoe,
	o => \AD_result[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\AD_result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \guarda|q\(2),
	devoe => ww_devoe,
	o => \AD_result[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\AD_result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \guarda|q\(3),
	devoe => ww_devoe,
	o => \AD_result[3]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\AD_result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \guarda|q\(4),
	devoe => ww_devoe,
	o => \AD_result[4]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\AD_result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \guarda|q\(5),
	devoe => ww_devoe,
	o => \AD_result[5]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\AD_result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \guarda|q\(6),
	devoe => ww_devoe,
	o => \AD_result[6]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\AD_result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \guarda|q\(7),
	devoe => ww_devoe,
	o => \AD_result[7]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\digital_in[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \casitodo|or_out\(0),
	devoe => ww_devoe,
	o => \digital_in[0]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\digital_in[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \casitodo|or_out\(1),
	devoe => ww_devoe,
	o => \digital_in[1]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\digital_in[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \casitodo|or_out\(2),
	devoe => ww_devoe,
	o => \digital_in[2]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\digital_in[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \casitodo|or_out\(3),
	devoe => ww_devoe,
	o => \digital_in[3]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\digital_in[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \casitodo|or_out\(4),
	devoe => ww_devoe,
	o => \digital_in[4]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\digital_in[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \casitodo|or_out\(5),
	devoe => ww_devoe,
	o => \digital_in[5]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\digital_in[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \casitodo|or_out\(6),
	devoe => ww_devoe,
	o => \digital_in[6]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\digital_in[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \casitodo|or_out\(7),
	devoe => ww_devoe,
	o => \digital_in[7]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
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

-- Location: IOIBUF_X20_Y34_N15
\soc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_soc,
	o => \soc~input_o\);

-- Location: LCCOMB_X31_Y30_N4
\casitodo|estados|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|estados|state~7_combout\ = (\soc~input_o\ & !\casitodo|estados|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soc~input_o\,
	datab => \casitodo|estados|state.idle~q\,
	combout => \casitodo|estados|state~7_combout\);

-- Location: IOIBUF_X0_Y16_N15
\reset_bar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_bar,
	o => \reset_bar~input_o\);

-- Location: CLKCTRL_G4
\reset_bar~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_bar~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_bar~inputclkctrl_outclk\);

-- Location: FF_X31_Y30_N7
\casitodo|estados|state.initial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \casitodo|estados|state~7_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|estados|state.initial~q\);

-- Location: LCCOMB_X31_Y30_N16
\casitodo|estados|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|estados|Selector1~0_combout\ = (\casitodo|estados|state.initial~q\) # ((\casitodo|estados|state.shift~q\ & !\casitodo|shifteo|ok\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \casitodo|estados|state.initial~q\,
	datac => \casitodo|estados|state.shift~q\,
	datad => \casitodo|shifteo|ok\(0),
	combout => \casitodo|estados|Selector1~0_combout\);

-- Location: FF_X31_Y30_N17
\casitodo|estados|state.shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|estados|Selector1~0_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|estados|state.shift~q\);

-- Location: LCCOMB_X29_Y30_N20
\casitodo|shifteo|ok~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|shifteo|ok~8_combout\ = (\casitodo|shifteo|ok\(7) & !\casitodo|estados|state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \casitodo|shifteo|ok\(7),
	datad => \casitodo|estados|state.shift~q\,
	combout => \casitodo|shifteo|ok~8_combout\);

-- Location: FF_X29_Y30_N21
\casitodo|shifteo|ok[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|shifteo|ok~8_combout\,
	asdata => VCC,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sload => \casitodo|estados|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|shifteo|ok\(7));

-- Location: LCCOMB_X31_Y30_N24
\casitodo|shifteo|ok~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|shifteo|ok~7_combout\ = (!\casitodo|estados|state.initial~q\ & \casitodo|shifteo|ok\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \casitodo|estados|state.initial~q\,
	datad => \casitodo|shifteo|ok\(7),
	combout => \casitodo|shifteo|ok~7_combout\);

-- Location: LCCOMB_X31_Y30_N6
\casitodo|shifteo|ok[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|shifteo|ok[0]~1_combout\ = \casitodo|estados|state.initial~q\ $ (\casitodo|estados|state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \casitodo|estados|state.initial~q\,
	datad => \casitodo|estados|state.shift~q\,
	combout => \casitodo|shifteo|ok[0]~1_combout\);

-- Location: FF_X31_Y30_N25
\casitodo|shifteo|ok[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|shifteo|ok~7_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \casitodo|shifteo|ok[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|shifteo|ok\(6));

-- Location: LCCOMB_X31_Y30_N30
\casitodo|shifteo|ok~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|shifteo|ok~6_combout\ = (!\casitodo|estados|state.initial~q\ & \casitodo|shifteo|ok\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \casitodo|estados|state.initial~q\,
	datad => \casitodo|shifteo|ok\(6),
	combout => \casitodo|shifteo|ok~6_combout\);

-- Location: FF_X31_Y30_N31
\casitodo|shifteo|ok[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|shifteo|ok~6_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \casitodo|shifteo|ok[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|shifteo|ok\(5));

-- Location: LCCOMB_X31_Y30_N18
\casitodo|shifteo|ok~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|shifteo|ok~5_combout\ = (!\casitodo|estados|state.initial~q\ & \casitodo|shifteo|ok\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \casitodo|estados|state.initial~q\,
	datad => \casitodo|shifteo|ok\(5),
	combout => \casitodo|shifteo|ok~5_combout\);

-- Location: FF_X31_Y30_N19
\casitodo|shifteo|ok[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|shifteo|ok~5_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \casitodo|shifteo|ok[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|shifteo|ok\(4));

-- Location: LCCOMB_X31_Y30_N12
\casitodo|shifteo|ok~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|shifteo|ok~4_combout\ = (!\casitodo|estados|state.initial~q\ & \casitodo|shifteo|ok\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \casitodo|estados|state.initial~q\,
	datad => \casitodo|shifteo|ok\(4),
	combout => \casitodo|shifteo|ok~4_combout\);

-- Location: FF_X31_Y30_N13
\casitodo|shifteo|ok[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|shifteo|ok~4_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \casitodo|shifteo|ok[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|shifteo|ok\(3));

-- Location: LCCOMB_X32_Y30_N22
\casitodo|shifteo|ok~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|shifteo|ok~3_combout\ = (\casitodo|shifteo|ok\(3) & !\casitodo|estados|state.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \casitodo|shifteo|ok\(3),
	datad => \casitodo|estados|state.initial~q\,
	combout => \casitodo|shifteo|ok~3_combout\);

-- Location: FF_X32_Y30_N23
\casitodo|shifteo|ok[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|shifteo|ok~3_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \casitodo|shifteo|ok[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|shifteo|ok\(2));

-- Location: LCCOMB_X31_Y30_N20
\casitodo|shifteo|ok~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|shifteo|ok~2_combout\ = (!\casitodo|estados|state.initial~q\ & \casitodo|shifteo|ok\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \casitodo|estados|state.initial~q\,
	datad => \casitodo|shifteo|ok\(2),
	combout => \casitodo|shifteo|ok~2_combout\);

-- Location: FF_X31_Y30_N21
\casitodo|shifteo|ok[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|shifteo|ok~2_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \casitodo|shifteo|ok[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|shifteo|ok\(1));

-- Location: LCCOMB_X31_Y30_N14
\casitodo|shifteo|ok~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|shifteo|ok~0_combout\ = (\casitodo|shifteo|ok\(1) & !\casitodo|estados|state.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \casitodo|shifteo|ok\(1),
	datac => \casitodo|estados|state.initial~q\,
	combout => \casitodo|shifteo|ok~0_combout\);

-- Location: FF_X31_Y30_N15
\casitodo|shifteo|ok[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|shifteo|ok~0_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \casitodo|shifteo|ok[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|shifteo|ok\(0));

-- Location: LCCOMB_X31_Y30_N8
\casitodo|estados|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|estados|Selector0~0_combout\ = (\soc~input_o\ & (((!\casitodo|estados|state.shift~q\)) # (!\casitodo|shifteo|ok\(0)))) # (!\soc~input_o\ & (\casitodo|estados|state.idle~q\ & ((!\casitodo|estados|state.shift~q\) # (!\casitodo|shifteo|ok\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soc~input_o\,
	datab => \casitodo|shifteo|ok\(0),
	datac => \casitodo|estados|state.idle~q\,
	datad => \casitodo|estados|state.shift~q\,
	combout => \casitodo|estados|Selector0~0_combout\);

-- Location: FF_X31_Y30_N29
\casitodo|estados|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \casitodo|estados|Selector0~0_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|estados|state.idle~q\);

-- Location: CLKCTRL_G12
\casitodo|estados|state.idle~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \casitodo|estados|state.idle~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \casitodo|estados|state.idle~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y34_N1
\comp_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_comp_in,
	o => \comp_in~input_o\);

-- Location: LCCOMB_X32_Y30_N16
\casitodo|registro|ok~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|registro|ok~0_combout\ = (\casitodo|registro|ok\(0)) # ((\casitodo|shifteo|ok\(0) & (\comp_in~input_o\ & \casitodo|estados|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \casitodo|shifteo|ok\(0),
	datab => \comp_in~input_o\,
	datac => \casitodo|registro|ok\(0),
	datad => \casitodo|estados|state.shift~q\,
	combout => \casitodo|registro|ok~0_combout\);

-- Location: FF_X32_Y30_N17
\casitodo|registro|ok[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|registro|ok~0_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \casitodo|estados|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|registro|ok\(0));

-- Location: LCCOMB_X31_Y30_N28
\casitodo|or_out[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|or_out\(0) = (\casitodo|shifteo|ok\(0)) # (\casitodo|registro|ok\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \casitodo|shifteo|ok\(0),
	datad => \casitodo|registro|ok\(0),
	combout => \casitodo|or_out\(0));

-- Location: LCCOMB_X31_Y30_N10
\guarda|q[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \guarda|q\(0) = (\reset_bar~input_o\ & ((GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & (\guarda|q\(0))) # (!GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & ((\casitodo|or_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \guarda|q\(0),
	datab => \reset_bar~input_o\,
	datac => \casitodo|estados|state.idle~clkctrl_outclk\,
	datad => \casitodo|or_out\(0),
	combout => \guarda|q\(0));

-- Location: LCCOMB_X32_Y30_N6
\casitodo|registro|ok~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|registro|ok~1_combout\ = (\casitodo|registro|ok\(1)) # ((\casitodo|shifteo|ok\(1) & (\comp_in~input_o\ & \casitodo|estados|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \casitodo|shifteo|ok\(1),
	datab => \comp_in~input_o\,
	datac => \casitodo|registro|ok\(1),
	datad => \casitodo|estados|state.shift~q\,
	combout => \casitodo|registro|ok~1_combout\);

-- Location: FF_X32_Y30_N7
\casitodo|registro|ok[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|registro|ok~1_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \casitodo|estados|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|registro|ok\(1));

-- Location: LCCOMB_X31_Y30_N2
\casitodo|or_out[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|or_out\(1) = (\casitodo|shifteo|ok\(1)) # (\casitodo|registro|ok\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \casitodo|shifteo|ok\(1),
	datad => \casitodo|registro|ok\(1),
	combout => \casitodo|or_out\(1));

-- Location: LCCOMB_X31_Y30_N22
\guarda|q[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \guarda|q\(1) = (\reset_bar~input_o\ & ((GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & (\guarda|q\(1))) # (!GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & ((\casitodo|or_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \guarda|q\(1),
	datab => \reset_bar~input_o\,
	datac => \casitodo|estados|state.idle~clkctrl_outclk\,
	datad => \casitodo|or_out\(1),
	combout => \guarda|q\(1));

-- Location: LCCOMB_X32_Y30_N8
\casitodo|registro|ok~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|registro|ok~2_combout\ = (\casitodo|registro|ok\(2)) # ((\comp_in~input_o\ & (\casitodo|shifteo|ok\(2) & \casitodo|estados|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp_in~input_o\,
	datab => \casitodo|shifteo|ok\(2),
	datac => \casitodo|registro|ok\(2),
	datad => \casitodo|estados|state.shift~q\,
	combout => \casitodo|registro|ok~2_combout\);

-- Location: FF_X32_Y30_N9
\casitodo|registro|ok[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|registro|ok~2_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \casitodo|estados|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|registro|ok\(2));

-- Location: LCCOMB_X32_Y30_N4
\casitodo|or_out[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|or_out\(2) = (\casitodo|registro|ok\(2)) # (\casitodo|shifteo|ok\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \casitodo|registro|ok\(2),
	datad => \casitodo|shifteo|ok\(2),
	combout => \casitodo|or_out\(2));

-- Location: LCCOMB_X32_Y30_N20
\guarda|q[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \guarda|q\(2) = (\reset_bar~input_o\ & ((GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & (\guarda|q\(2))) # (!GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & ((\casitodo|or_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_bar~input_o\,
	datab => \guarda|q\(2),
	datac => \casitodo|or_out\(2),
	datad => \casitodo|estados|state.idle~clkctrl_outclk\,
	combout => \guarda|q\(2));

-- Location: LCCOMB_X32_Y30_N26
\casitodo|registro|ok~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|registro|ok~3_combout\ = (\casitodo|registro|ok\(3)) # ((\casitodo|shifteo|ok\(3) & (\comp_in~input_o\ & \casitodo|estados|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \casitodo|shifteo|ok\(3),
	datab => \comp_in~input_o\,
	datac => \casitodo|registro|ok\(3),
	datad => \casitodo|estados|state.shift~q\,
	combout => \casitodo|registro|ok~3_combout\);

-- Location: FF_X32_Y30_N27
\casitodo|registro|ok[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|registro|ok~3_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \casitodo|estados|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|registro|ok\(3));

-- Location: LCCOMB_X32_Y30_N30
\casitodo|or_out[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|or_out\(3) = (\casitodo|registro|ok\(3)) # (\casitodo|shifteo|ok\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \casitodo|registro|ok\(3),
	datad => \casitodo|shifteo|ok\(3),
	combout => \casitodo|or_out\(3));

-- Location: LCCOMB_X32_Y30_N10
\guarda|q[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \guarda|q\(3) = (\reset_bar~input_o\ & ((GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & (\guarda|q\(3))) # (!GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & ((\casitodo|or_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \guarda|q\(3),
	datab => \reset_bar~input_o\,
	datac => \casitodo|or_out\(3),
	datad => \casitodo|estados|state.idle~clkctrl_outclk\,
	combout => \guarda|q\(3));

-- Location: LCCOMB_X32_Y30_N28
\casitodo|registro|ok~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|registro|ok~4_combout\ = (\casitodo|registro|ok\(4)) # ((\comp_in~input_o\ & (\casitodo|shifteo|ok\(4) & \casitodo|estados|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp_in~input_o\,
	datab => \casitodo|shifteo|ok\(4),
	datac => \casitodo|registro|ok\(4),
	datad => \casitodo|estados|state.shift~q\,
	combout => \casitodo|registro|ok~4_combout\);

-- Location: FF_X32_Y30_N29
\casitodo|registro|ok[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|registro|ok~4_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \casitodo|estados|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|registro|ok\(4));

-- Location: LCCOMB_X32_Y30_N12
\casitodo|or_out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|or_out\(4) = (\casitodo|registro|ok\(4)) # (\casitodo|shifteo|ok\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \casitodo|registro|ok\(4),
	datad => \casitodo|shifteo|ok\(4),
	combout => \casitodo|or_out\(4));

-- Location: LCCOMB_X32_Y30_N0
\guarda|q[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \guarda|q\(4) = (\reset_bar~input_o\ & ((GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & (\guarda|q\(4))) # (!GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & ((\casitodo|or_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_bar~input_o\,
	datab => \guarda|q\(4),
	datac => \casitodo|estados|state.idle~clkctrl_outclk\,
	datad => \casitodo|or_out\(4),
	combout => \guarda|q\(4));

-- Location: LCCOMB_X32_Y30_N14
\casitodo|registro|ok~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|registro|ok~5_combout\ = (\casitodo|registro|ok\(5)) # ((\comp_in~input_o\ & (\casitodo|estados|state.shift~q\ & \casitodo|shifteo|ok\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp_in~input_o\,
	datab => \casitodo|estados|state.shift~q\,
	datac => \casitodo|registro|ok\(5),
	datad => \casitodo|shifteo|ok\(5),
	combout => \casitodo|registro|ok~5_combout\);

-- Location: FF_X32_Y30_N15
\casitodo|registro|ok[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|registro|ok~5_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \casitodo|estados|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|registro|ok\(5));

-- Location: LCCOMB_X32_Y30_N18
\casitodo|or_out[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|or_out\(5) = (\casitodo|registro|ok\(5)) # (\casitodo|shifteo|ok\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \casitodo|registro|ok\(5),
	datad => \casitodo|shifteo|ok\(5),
	combout => \casitodo|or_out\(5));

-- Location: LCCOMB_X32_Y30_N2
\guarda|q[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \guarda|q\(5) = (\reset_bar~input_o\ & ((GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & (\guarda|q\(5))) # (!GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & ((\casitodo|or_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_bar~input_o\,
	datab => \guarda|q\(5),
	datac => \casitodo|estados|state.idle~clkctrl_outclk\,
	datad => \casitodo|or_out\(5),
	combout => \guarda|q\(5));

-- Location: LCCOMB_X32_Y30_N24
\casitodo|registro|ok~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|registro|ok~6_combout\ = (\casitodo|registro|ok\(6)) # ((\casitodo|shifteo|ok\(6) & (\comp_in~input_o\ & \casitodo|estados|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \casitodo|shifteo|ok\(6),
	datab => \comp_in~input_o\,
	datac => \casitodo|registro|ok\(6),
	datad => \casitodo|estados|state.shift~q\,
	combout => \casitodo|registro|ok~6_combout\);

-- Location: FF_X32_Y30_N25
\casitodo|registro|ok[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|registro|ok~6_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \casitodo|estados|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|registro|ok\(6));

-- Location: LCCOMB_X31_Y30_N0
\casitodo|or_out[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|or_out\(6) = (\casitodo|shifteo|ok\(6)) # (\casitodo|registro|ok\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \casitodo|shifteo|ok\(6),
	datad => \casitodo|registro|ok\(6),
	combout => \casitodo|or_out\(6));

-- Location: LCCOMB_X31_Y30_N26
\guarda|q[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \guarda|q\(6) = (\reset_bar~input_o\ & ((GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & (\guarda|q\(6))) # (!GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & ((\casitodo|or_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \guarda|q\(6),
	datab => \reset_bar~input_o\,
	datac => \casitodo|estados|state.idle~clkctrl_outclk\,
	datad => \casitodo|or_out\(6),
	combout => \guarda|q\(6));

-- Location: LCCOMB_X30_Y30_N24
\casitodo|registro|ok~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|registro|ok~7_combout\ = (\casitodo|registro|ok\(7)) # ((\casitodo|estados|state.shift~q\ & (\comp_in~input_o\ & \casitodo|shifteo|ok\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \casitodo|estados|state.shift~q\,
	datab => \comp_in~input_o\,
	datac => \casitodo|registro|ok\(7),
	datad => \casitodo|shifteo|ok\(7),
	combout => \casitodo|registro|ok~7_combout\);

-- Location: FF_X30_Y30_N25
\casitodo|registro|ok[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \casitodo|registro|ok~7_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \casitodo|estados|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \casitodo|registro|ok\(7));

-- Location: LCCOMB_X29_Y30_N6
\casitodo|or_out[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \casitodo|or_out\(7) = (\casitodo|shifteo|ok\(7)) # (\casitodo|registro|ok\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \casitodo|shifteo|ok\(7),
	datad => \casitodo|registro|ok\(7),
	combout => \casitodo|or_out\(7));

-- Location: LCCOMB_X29_Y30_N28
\guarda|q[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \guarda|q\(7) = (\reset_bar~input_o\ & ((GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & (\guarda|q\(7))) # (!GLOBAL(\casitodo|estados|state.idle~clkctrl_outclk\) & ((\casitodo|or_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_bar~input_o\,
	datab => \guarda|q\(7),
	datac => \casitodo|estados|state.idle~clkctrl_outclk\,
	datad => \casitodo|or_out\(7),
	combout => \guarda|q\(7));

ww_eoc <= \eoc~output_o\;

ww_AD_result(0) <= \AD_result[0]~output_o\;

ww_AD_result(1) <= \AD_result[1]~output_o\;

ww_AD_result(2) <= \AD_result[2]~output_o\;

ww_AD_result(3) <= \AD_result[3]~output_o\;

ww_AD_result(4) <= \AD_result[4]~output_o\;

ww_AD_result(5) <= \AD_result[5]~output_o\;

ww_AD_result(6) <= \AD_result[6]~output_o\;

ww_AD_result(7) <= \AD_result[7]~output_o\;

ww_digital_in(0) <= \digital_in[0]~output_o\;

ww_digital_in(1) <= \digital_in[1]~output_o\;

ww_digital_in(2) <= \digital_in[2]~output_o\;

ww_digital_in(3) <= \digital_in[3]~output_o\;

ww_digital_in(4) <= \digital_in[4]~output_o\;

ww_digital_in(5) <= \digital_in[5]~output_o\;

ww_digital_in(6) <= \digital_in[6]~output_o\;

ww_digital_in(7) <= \digital_in[7]~output_o\;
END structure;


