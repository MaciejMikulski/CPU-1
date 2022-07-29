-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/13/2021 08:20:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DataBuffer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DataBuffer_vhd_vec_tst IS
END DataBuffer_vhd_vec_tst;
ARCHITECTURE DataBuffer_arch OF DataBuffer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Data1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Data2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dir : STD_LOGIC;
SIGNAL en : STD_LOGIC;
COMPONENT DataBuffer
	PORT (
	Data1 : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Data2 : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	dir : IN STD_LOGIC;
	en : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DataBuffer
	PORT MAP (
-- list connections between master ports and signals
	Data1 => Data1,
	Data2 => Data2,
	dir => dir,
	en => en
	);
-- Data1[7]
t_prcs_Data1_7: PROCESS
BEGIN
	Data1(7) <= '1';
	WAIT FOR 60000 ps;
	Data1(7) <= 'Z';
WAIT;
END PROCESS t_prcs_Data1_7;
-- Data1[6]
t_prcs_Data1_6: PROCESS
BEGIN
	Data1(6) <= '0';
	WAIT FOR 60000 ps;
	Data1(6) <= 'Z';
WAIT;
END PROCESS t_prcs_Data1_6;
-- Data1[5]
t_prcs_Data1_5: PROCESS
BEGIN
	Data1(5) <= '1';
	WAIT FOR 60000 ps;
	Data1(5) <= 'Z';
WAIT;
END PROCESS t_prcs_Data1_5;
-- Data1[4]
t_prcs_Data1_4: PROCESS
BEGIN
	Data1(4) <= '0';
	WAIT FOR 60000 ps;
	Data1(4) <= 'Z';
WAIT;
END PROCESS t_prcs_Data1_4;
-- Data1[3]
t_prcs_Data1_3: PROCESS
BEGIN
	Data1(3) <= '1';
	WAIT FOR 60000 ps;
	Data1(3) <= 'Z';
WAIT;
END PROCESS t_prcs_Data1_3;
-- Data1[2]
t_prcs_Data1_2: PROCESS
BEGIN
	Data1(2) <= '0';
	WAIT FOR 60000 ps;
	Data1(2) <= 'Z';
WAIT;
END PROCESS t_prcs_Data1_2;
-- Data1[1]
t_prcs_Data1_1: PROCESS
BEGIN
	Data1(1) <= '1';
	WAIT FOR 60000 ps;
	Data1(1) <= 'Z';
WAIT;
END PROCESS t_prcs_Data1_1;
-- Data1[0]
t_prcs_Data1_0: PROCESS
BEGIN
	Data1(0) <= '0';
	WAIT FOR 60000 ps;
	Data1(0) <= 'Z';
WAIT;
END PROCESS t_prcs_Data1_0;
-- Data2[7]
t_prcs_Data2_7: PROCESS
BEGIN
	Data2(7) <= 'Z';
	WAIT FOR 160000 ps;
	Data2(7) <= '0';
	WAIT FOR 120000 ps;
	Data2(7) <= 'Z';
WAIT;
END PROCESS t_prcs_Data2_7;
-- Data2[6]
t_prcs_Data2_6: PROCESS
BEGIN
	Data2(6) <= 'Z';
	WAIT FOR 160000 ps;
	Data2(6) <= '1';
	WAIT FOR 120000 ps;
	Data2(6) <= 'Z';
WAIT;
END PROCESS t_prcs_Data2_6;
-- Data2[5]
t_prcs_Data2_5: PROCESS
BEGIN
	Data2(5) <= 'Z';
	WAIT FOR 160000 ps;
	Data2(5) <= '0';
	WAIT FOR 120000 ps;
	Data2(5) <= 'Z';
WAIT;
END PROCESS t_prcs_Data2_5;
-- Data2[4]
t_prcs_Data2_4: PROCESS
BEGIN
	Data2(4) <= 'Z';
	WAIT FOR 160000 ps;
	Data2(4) <= '1';
	WAIT FOR 120000 ps;
	Data2(4) <= 'Z';
WAIT;
END PROCESS t_prcs_Data2_4;
-- Data2[3]
t_prcs_Data2_3: PROCESS
BEGIN
	Data2(3) <= 'Z';
	WAIT FOR 160000 ps;
	Data2(3) <= '0';
	WAIT FOR 120000 ps;
	Data2(3) <= 'Z';
WAIT;
END PROCESS t_prcs_Data2_3;
-- Data2[2]
t_prcs_Data2_2: PROCESS
BEGIN
	Data2(2) <= 'Z';
	WAIT FOR 160000 ps;
	Data2(2) <= '1';
	WAIT FOR 120000 ps;
	Data2(2) <= 'Z';
WAIT;
END PROCESS t_prcs_Data2_2;
-- Data2[1]
t_prcs_Data2_1: PROCESS
BEGIN
	Data2(1) <= 'Z';
	WAIT FOR 160000 ps;
	Data2(1) <= '0';
	WAIT FOR 120000 ps;
	Data2(1) <= 'Z';
WAIT;
END PROCESS t_prcs_Data2_1;
-- Data2[0]
t_prcs_Data2_0: PROCESS
BEGIN
	Data2(0) <= 'Z';
	WAIT FOR 160000 ps;
	Data2(0) <= '1';
	WAIT FOR 120000 ps;
	Data2(0) <= 'Z';
WAIT;
END PROCESS t_prcs_Data2_0;

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '1';
	WAIT FOR 360000 ps;
	en <= '0';
WAIT;
END PROCESS t_prcs_en;

-- dir
t_prcs_dir: PROCESS
BEGIN
	dir <= '1';
	WAIT FOR 60000 ps;
	dir <= '0';
WAIT;
END PROCESS t_prcs_dir;
END DataBuffer_arch;
