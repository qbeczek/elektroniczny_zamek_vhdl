-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "04/21/2020 20:38:50"

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

ENTITY 	kb_ctrl_pckg IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	col : IN std_logic_vector(3 DOWNTO 0);
	key_pulse : BUFFER std_logic;
	row : BUFFER std_logic_vector(3 DOWNTO 0);
	q : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END kb_ctrl_pckg;

-- Design Ports Information
-- key_pulse	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF kb_ctrl_pckg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_col : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key_pulse : std_logic;
SIGNAL ww_row : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_pulse~output_o\ : std_logic;
SIGNAL \row[0]~output_o\ : std_logic;
SIGNAL \row[1]~output_o\ : std_logic;
SIGNAL \row[2]~output_o\ : std_logic;
SIGNAL \row[3]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \col[2]~input_o\ : std_logic;
SIGNAL \col[3]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \kb_cnt|counter[0]~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \kb_cnt|counter[1]~0_combout\ : std_logic;
SIGNAL \col[1]~input_o\ : std_logic;
SIGNAL \col[0]~input_o\ : std_logic;
SIGNAL \kb_mux|Mux0~0_combout\ : std_logic;
SIGNAL \kb_mux|Mux0~1_combout\ : std_logic;
SIGNAL \kb_cnt|counter[2]~4_combout\ : std_logic;
SIGNAL \kb_cnt|counter[3]~2_combout\ : std_logic;
SIGNAL \kb_cnt|counter[3]~3_combout\ : std_logic;
SIGNAL \kb_dec|Mux3~0_combout\ : std_logic;
SIGNAL \kb_dec|Mux2~0_combout\ : std_logic;
SIGNAL \kb_dec|Mux2~1_combout\ : std_logic;
SIGNAL \kb_dec|Mux2~2_combout\ : std_logic;
SIGNAL \kb_cnt|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \kb_dec|ALT_INV_Mux3~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_col <= col;
key_pulse <= ww_key_pulse;
row <= ww_row;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\kb_dec|ALT_INV_Mux3~0_combout\ <= NOT \kb_dec|Mux3~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y44_N16
\key_pulse~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kb_mux|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \key_pulse~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\row[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kb_dec|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \row[0]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\row[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kb_dec|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \row[1]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\row[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kb_dec|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \row[2]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\row[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kb_dec|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \row[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kb_cnt|counter\(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kb_cnt|counter\(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kb_cnt|counter\(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kb_cnt|counter\(3),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOIBUF_X0_Y43_N15
\col[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col(2),
	o => \col[2]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\col[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col(3),
	o => \col[3]~input_o\);

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

-- Location: LCCOMB_X1_Y44_N10
\kb_cnt|counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb_cnt|counter[0]~1_combout\ = \kb_cnt|counter\(0) $ (!\kb_mux|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kb_cnt|counter\(0),
	datad => \kb_mux|Mux0~1_combout\,
	combout => \kb_cnt|counter[0]~1_combout\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X1_Y44_N11
\kb_cnt|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kb_cnt|counter[0]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_cnt|counter\(0));

-- Location: LCCOMB_X1_Y44_N8
\kb_cnt|counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb_cnt|counter[1]~0_combout\ = \kb_cnt|counter\(1) $ (((\kb_cnt|counter\(0) & !\kb_mux|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kb_cnt|counter\(0),
	datac => \kb_cnt|counter\(1),
	datad => \kb_mux|Mux0~1_combout\,
	combout => \kb_cnt|counter[1]~0_combout\);

-- Location: FF_X1_Y44_N9
\kb_cnt|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kb_cnt|counter[1]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_cnt|counter\(1));

-- Location: IOIBUF_X0_Y44_N22
\col[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col(1),
	o => \col[1]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\col[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col(0),
	o => \col[0]~input_o\);

-- Location: LCCOMB_X1_Y44_N24
\kb_mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb_mux|Mux0~0_combout\ = (\kb_cnt|counter\(1) & (((\kb_cnt|counter\(0))))) # (!\kb_cnt|counter\(1) & ((\kb_cnt|counter\(0) & (\col[1]~input_o\)) # (!\kb_cnt|counter\(0) & ((\col[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col[1]~input_o\,
	datab => \col[0]~input_o\,
	datac => \kb_cnt|counter\(1),
	datad => \kb_cnt|counter\(0),
	combout => \kb_mux|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y44_N2
\kb_mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb_mux|Mux0~1_combout\ = (\kb_cnt|counter\(1) & ((\kb_mux|Mux0~0_combout\ & ((\col[3]~input_o\))) # (!\kb_mux|Mux0~0_combout\ & (\col[2]~input_o\)))) # (!\kb_cnt|counter\(1) & (((\kb_mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col[2]~input_o\,
	datab => \col[3]~input_o\,
	datac => \kb_cnt|counter\(1),
	datad => \kb_mux|Mux0~0_combout\,
	combout => \kb_mux|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y44_N22
\kb_cnt|counter[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb_cnt|counter[2]~4_combout\ = \kb_cnt|counter\(2) $ (((\kb_cnt|counter\(0) & (\kb_cnt|counter\(1) & !\kb_mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_cnt|counter\(0),
	datab => \kb_cnt|counter\(1),
	datac => \kb_cnt|counter\(2),
	datad => \kb_mux|Mux0~1_combout\,
	combout => \kb_cnt|counter[2]~4_combout\);

-- Location: FF_X1_Y44_N23
\kb_cnt|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kb_cnt|counter[2]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_cnt|counter\(2));

-- Location: LCCOMB_X1_Y44_N20
\kb_cnt|counter[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb_cnt|counter[3]~2_combout\ = (!\kb_cnt|counter\(0)) # (!\kb_cnt|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kb_cnt|counter\(2),
	datad => \kb_cnt|counter\(0),
	combout => \kb_cnt|counter[3]~2_combout\);

-- Location: LCCOMB_X1_Y44_N28
\kb_cnt|counter[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb_cnt|counter[3]~3_combout\ = \kb_cnt|counter\(3) $ (((\kb_cnt|counter\(1) & (!\kb_cnt|counter[3]~2_combout\ & !\kb_mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_cnt|counter\(1),
	datab => \kb_cnt|counter[3]~2_combout\,
	datac => \kb_cnt|counter\(3),
	datad => \kb_mux|Mux0~1_combout\,
	combout => \kb_cnt|counter[3]~3_combout\);

-- Location: FF_X1_Y44_N29
\kb_cnt|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kb_cnt|counter[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kb_cnt|counter\(3));

-- Location: LCCOMB_X1_Y45_N0
\kb_dec|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb_dec|Mux3~0_combout\ = (\kb_cnt|counter\(2)) # (\kb_cnt|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_cnt|counter\(2),
	datad => \kb_cnt|counter\(3),
	combout => \kb_dec|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y45_N14
\kb_dec|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb_dec|Mux2~0_combout\ = (\kb_cnt|counter\(2) & !\kb_cnt|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_cnt|counter\(2),
	datad => \kb_cnt|counter\(3),
	combout => \kb_dec|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y45_N16
\kb_dec|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb_dec|Mux2~1_combout\ = (!\kb_cnt|counter\(2) & \kb_cnt|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_cnt|counter\(2),
	datad => \kb_cnt|counter\(3),
	combout => \kb_dec|Mux2~1_combout\);

-- Location: LCCOMB_X1_Y45_N10
\kb_dec|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kb_dec|Mux2~2_combout\ = (\kb_cnt|counter\(2) & \kb_cnt|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kb_cnt|counter\(2),
	datad => \kb_cnt|counter\(3),
	combout => \kb_dec|Mux2~2_combout\);

ww_key_pulse <= \key_pulse~output_o\;

ww_row(0) <= \row[0]~output_o\;

ww_row(1) <= \row[1]~output_o\;

ww_row(2) <= \row[2]~output_o\;

ww_row(3) <= \row[3]~output_o\;

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;
END structure;


