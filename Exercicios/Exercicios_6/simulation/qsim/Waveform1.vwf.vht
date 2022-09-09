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
-- Generated on "09/07/2022 11:20:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ex_6_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ex_6_2_vhd_vec_tst IS
END ex_6_2_vhd_vec_tst;
ARCHITECTURE ex_6_2_arch OF ex_6_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Ent : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sai : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ex_6_2
	PORT (
	Ent : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	sai : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ex_6_2
	PORT MAP (
-- list connections between master ports and signals
	Ent => Ent,
	sai => sai
	);
-- Ent[7]
t_prcs_Ent_7: PROCESS
BEGIN
	Ent(7) <= '0';
WAIT;
END PROCESS t_prcs_Ent_7;
-- Ent[6]
t_prcs_Ent_6: PROCESS
BEGIN
	Ent(6) <= '1';
WAIT;
END PROCESS t_prcs_Ent_6;
-- Ent[5]
t_prcs_Ent_5: PROCESS
BEGIN
	Ent(5) <= '1';
WAIT;
END PROCESS t_prcs_Ent_5;
-- Ent[4]
t_prcs_Ent_4: PROCESS
BEGIN
	Ent(4) <= '1';
WAIT;
END PROCESS t_prcs_Ent_4;
-- Ent[3]
t_prcs_Ent_3: PROCESS
BEGIN
	Ent(3) <= '1';
WAIT;
END PROCESS t_prcs_Ent_3;
-- Ent[2]
t_prcs_Ent_2: PROCESS
BEGIN
	Ent(2) <= '1';
WAIT;
END PROCESS t_prcs_Ent_2;
-- Ent[1]
t_prcs_Ent_1: PROCESS
BEGIN
	Ent(1) <= '1';
WAIT;
END PROCESS t_prcs_Ent_1;
-- Ent[0]
t_prcs_Ent_0: PROCESS
BEGIN
	Ent(0) <= '1';
WAIT;
END PROCESS t_prcs_Ent_0;
END ex_6_2_arch;
