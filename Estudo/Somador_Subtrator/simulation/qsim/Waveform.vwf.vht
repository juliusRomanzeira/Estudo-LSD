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
-- Generated on "09/06/2022 17:43:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          somador_subtrator_completo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY somador_subtrator_completo_vhd_vec_tst IS
END somador_subtrator_completo_vhd_vec_tst;
ARCHITECTURE somador_subtrator_completo_arch OF somador_subtrator_completo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Cin : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Min : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT somador_subtrator_completo
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Cin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Min : IN STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : somador_subtrator_completo
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Cin => Cin,
	Min => Min,
	S => S
	);
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '1';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '1';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '1';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;
-- Cin[3]
t_prcs_Cin_3: PROCESS
BEGIN
	Cin(3) <= '0';
WAIT;
END PROCESS t_prcs_Cin_3;
-- Cin[2]
t_prcs_Cin_2: PROCESS
BEGIN
	Cin(2) <= '0';
WAIT;
END PROCESS t_prcs_Cin_2;
-- Cin[1]
t_prcs_Cin_1: PROCESS
BEGIN
	Cin(1) <= '0';
WAIT;
END PROCESS t_prcs_Cin_1;
-- Cin[0]
t_prcs_Cin_0: PROCESS
BEGIN
	Cin(0) <= '0';
WAIT;
END PROCESS t_prcs_Cin_0;

-- Min
t_prcs_Min: PROCESS
BEGIN
	Min <= '1';
WAIT;
END PROCESS t_prcs_Min;
END somador_subtrator_completo_arch;
