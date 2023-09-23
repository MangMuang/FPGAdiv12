-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/11/2017 00:01:20"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	divider12 IS
    PORT (
	clk12M : IN std_logic;
	clk3M : OUT std_logic;
	clk1M : OUT std_logic;
	clk750k : OUT std_logic;
	clk500k : OUT std_logic;
	clk200k : OUT std_logic;
	clk100 : OUT std_logic;
	clk1 : OUT std_logic
	);
END divider12;

-- Design Ports Information
-- clk3M	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk1M	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk750k	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk500k	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk200k	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk100	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk1	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk12M	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF divider12 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk12M : std_logic;
SIGNAL ww_clk3M : std_logic;
SIGNAL ww_clk1M : std_logic;
SIGNAL ww_clk750k : std_logic;
SIGNAL ww_clk500k : std_logic;
SIGNAL ww_clk200k : std_logic;
SIGNAL ww_clk100 : std_logic;
SIGNAL ww_clk1 : std_logic;
SIGNAL \clkA1C~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk12M~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk12M~combout\ : std_logic;
SIGNAL \clk12M~clkctrl_outclk\ : std_logic;
SIGNAL \qs3M[0]~1_combout\ : std_logic;
SIGNAL \qs3M[1]~0_combout\ : std_logic;
SIGNAL \clkA1C~combout\ : std_logic;
SIGNAL \clkA1C~clkctrl_outclk\ : std_logic;
SIGNAL \qs750K[0]~1_combout\ : std_logic;
SIGNAL \qs750K[1]~0_combout\ : std_logic;
SIGNAL qs750K : std_logic_vector(1 DOWNTO 0);
SIGNAL qs3M : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_qs750K : std_logic_vector(1 DOWNTO 1);

BEGIN

ww_clk12M <= clk12M;
clk3M <= ww_clk3M;
clk1M <= ww_clk1M;
clk750k <= ww_clk750k;
clk500k <= ww_clk500k;
clk200k <= ww_clk200k;
clk100 <= ww_clk100;
clk1 <= ww_clk1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkA1C~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clkA1C~combout\);

\clk12M~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk12M~combout\);
ALT_INV_qs750K(1) <= NOT qs750K(1);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk12M~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk12M,
	combout => \clk12M~combout\);

-- Location: CLKCTRL_G2
\clk12M~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk12M~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk12M~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y7_N2
\qs3M[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \qs3M[0]~1_combout\ = !qs3M(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => qs3M(0),
	combout => \qs3M[0]~1_combout\);

-- Location: LCFF_X27_Y7_N3
\qs3M[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk12M~clkctrl_outclk\,
	datain => \qs3M[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => qs3M(0));

-- Location: LCCOMB_X27_Y7_N0
\qs3M[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \qs3M[1]~0_combout\ = qs3M(1) $ (qs3M(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => qs3M(1),
	datad => qs3M(0),
	combout => \qs3M[1]~0_combout\);

-- Location: LCFF_X27_Y7_N1
\qs3M[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk12M~clkctrl_outclk\,
	datain => \qs3M[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => qs3M(1));

-- Location: LCCOMB_X27_Y7_N6
clkA1C : cycloneii_lcell_comb
-- Equation(s):
-- \clkA1C~combout\ = LCELL(!qs3M(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => qs3M(1),
	combout => \clkA1C~combout\);

-- Location: CLKCTRL_G4
\clkA1C~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkA1C~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkA1C~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y5_N30
\qs750K[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \qs750K[0]~1_combout\ = !qs750K(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => qs750K(0),
	combout => \qs750K[0]~1_combout\);

-- Location: LCFF_X1_Y5_N31
\qs750K[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkA1C~clkctrl_outclk\,
	datain => \qs750K[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => qs750K(0));

-- Location: LCCOMB_X1_Y5_N20
\qs750K[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \qs750K[1]~0_combout\ = qs750K(1) $ (qs750K(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => qs750K(1),
	datad => qs750K(0),
	combout => \qs750K[1]~0_combout\);

-- Location: LCFF_X1_Y5_N21
\qs750K[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkA1C~clkctrl_outclk\,
	datain => \qs750K[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => qs750K(1));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk3M~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \clkA1C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk3M);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk1M~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk1M);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk750k~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_qs750K(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk750k);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk500k~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk500k);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk200k~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk200k);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk100~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk100);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk1);
END structure;


