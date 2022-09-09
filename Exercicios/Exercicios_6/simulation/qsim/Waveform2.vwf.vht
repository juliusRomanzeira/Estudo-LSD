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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/08/2022 16:15:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ex_6_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ex_6_1_vhd_vec_tst IS
END ex_6_1_vhd_vec_tst;
ARCHITECTURE ex_6_1_arch OF ex_6_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL X : STD_LOGIC;
COMPONENT ex_6_1
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	X : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ex_6_1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	X => X
	);

-- A
t_prcs_A: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		A <= '0';
		WAIT FOR 40000 ps;
		A <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
	WAIT FOR 20000 ps;
	B <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 11
	LOOP
		B <= '0';
		WAIT FOR 40000 ps;
		B <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	B <= '0';
	WAIT FOR 40000 ps;
	B <= '1';
WAIT;
END PROCESS t_prcs_B;

-- C
t_prcs_C: PROCESS
BEGIN
	C <= '0';
	WAIT FOR 10000 ps;
	C <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 24
	LOOP
		C <= '0';
		WAIT FOR 20000 ps;
		C <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	C <= '0';
WAIT;
END PROCESS t_prcs_C;
END ex_6_1_arch;
