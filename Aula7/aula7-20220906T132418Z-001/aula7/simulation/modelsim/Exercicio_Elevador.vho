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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "07/29/2022 10:54:21"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Exercicio_Elevador IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	X : OUT std_logic
	);
END Exercicio_Elevador;

-- Design Ports Information
-- X	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exercicio_Elevador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL \X~output_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \X~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
X <= ww_X;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y27_N2
\X~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \X~0_combout\,
	devoe => ww_devoe,
	o => \X~output_o\);

-- Location: IOIBUF_X0_Y25_N8
\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X1_Y34_N1
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X1_Y26_N0
\X~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \X~0_combout\ = (!\A~input_o\ & ((\D~input_o\) # ((\B~input_o\) # (\C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \B~input_o\,
	datac => \C~input_o\,
	datad => \A~input_o\,
	combout => \X~0_combout\);

ww_X <= \X~output_o\;
END structure;


