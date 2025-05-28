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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/27/2025 15:35:48"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	KS_Lab1 IS
    PORT (
	f4_ddnf : OUT std_logic;
	x1_ddnf : IN std_logic;
	x3_ddnf : IN std_logic;
	x2_ddnf : IN std_logic;
	f4_dknf : OUT std_logic;
	x3_dknf : IN std_logic;
	x1_dknf : IN std_logic;
	x2_dknf : IN std_logic
	);
END KS_Lab1;

-- Design Ports Information
-- f4_ddnf	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f4_dknf	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3_ddnf	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2_ddnf	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3_dknf	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2_dknf	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1_ddnf	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1_dknf	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KS_Lab1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_f4_ddnf : std_logic;
SIGNAL ww_x1_ddnf : std_logic;
SIGNAL ww_x3_ddnf : std_logic;
SIGNAL ww_x2_ddnf : std_logic;
SIGNAL ww_f4_dknf : std_logic;
SIGNAL ww_x3_dknf : std_logic;
SIGNAL ww_x1_dknf : std_logic;
SIGNAL ww_x2_dknf : std_logic;
SIGNAL \x3_ddnf~input_o\ : std_logic;
SIGNAL \x2_ddnf~input_o\ : std_logic;
SIGNAL \x3_dknf~input_o\ : std_logic;
SIGNAL \x2_dknf~input_o\ : std_logic;
SIGNAL \f4_ddnf~output_o\ : std_logic;
SIGNAL \f4_dknf~output_o\ : std_logic;
SIGNAL \x1_ddnf~input_o\ : std_logic;
SIGNAL \x1_dknf~input_o\ : std_logic;

BEGIN

f4_ddnf <= ww_f4_ddnf;
ww_x1_ddnf <= x1_ddnf;
ww_x3_ddnf <= x3_ddnf;
ww_x2_ddnf <= x2_ddnf;
f4_dknf <= ww_f4_dknf;
ww_x3_dknf <= x3_dknf;
ww_x1_dknf <= x1_dknf;
ww_x2_dknf <= x2_dknf;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X3_Y24_N23
\f4_ddnf~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x1_ddnf~input_o\,
	devoe => ww_devoe,
	o => \f4_ddnf~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\f4_dknf~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x1_dknf~input_o\,
	devoe => ww_devoe,
	o => \f4_dknf~output_o\);

-- Location: IOIBUF_X5_Y24_N15
\x1_ddnf~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1_ddnf,
	o => \x1_ddnf~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\x1_dknf~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1_dknf,
	o => \x1_dknf~input_o\);

-- Location: IOIBUF_X0_Y19_N22
\x3_ddnf~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3_ddnf,
	o => \x3_ddnf~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\x2_ddnf~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2_ddnf,
	o => \x2_ddnf~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\x3_dknf~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3_dknf,
	o => \x3_dknf~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\x2_dknf~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2_dknf,
	o => \x2_dknf~input_o\);

ww_f4_ddnf <= \f4_ddnf~output_o\;

ww_f4_dknf <= \f4_dknf~output_o\;
END structure;


