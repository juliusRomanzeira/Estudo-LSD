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
-- Generated on "09/08/2022 18:22:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ex_6_3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ex_6_3_vhd_vec_tst IS
END ex_6_3_vhd_vec_tst;
ARCHITECTURE ex_6_3_arch OF ex_6_3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL F : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL O : STD_LOGIC;
COMPONENT ex_6_3
	PORT (
	F : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	O : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ex_6_3
	PORT MAP (
-- list connections between master ports and signals
	F => F,
	O => O
	);
-- F[3]
t_prcs_F_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		F(3) <= '0';
		WAIT FOR 80000 ps;
		F(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	F(3) <= '0';
WAIT;
END PROCESS t_prcs_F_3;
-- F[2]
t_prcs_F_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		F(2) <= '0';
		WAIT FOR 40000 ps;
		F(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	F(2) <= '0';
WAIT;
END PROCESS t_prcs_F_2;
-- F[1]
t_prcs_F_1: PROCESS
BEGIN
LOOP
	F(1) <= '0';
	WAIT FOR 20000 ps;
	F(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_F_1;
-- F[0]
t_prcs_F_0: PROCESS
BEGIN
LOOP
	F(0) <= '0';
	WAIT FOR 10000 ps;
	F(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_F_0;
END ex_6_3_arch;
