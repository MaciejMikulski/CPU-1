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
-- Generated on "09/27/2021 16:43:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          AddressDecoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY AddressDecoder_vhd_vec_tst IS
END AddressDecoder_vhd_vec_tst;
ARCHITECTURE AddressDecoder_arch OF AddressDecoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL AddressIn : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL IOsel : STD_LOGIC;
SIGNAL RAMsel : STD_LOGIC;
SIGNAL ROMsel : STD_LOGIC;
COMPONENT AddressDecoder
	PORT (
	AddressIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	IOsel : OUT STD_LOGIC;
	RAMsel : OUT STD_LOGIC;
	ROMsel : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : AddressDecoder
	PORT MAP (
-- list connections between master ports and signals
	AddressIn => AddressIn,
	IOsel => IOsel,
	RAMsel => RAMsel,
	ROMsel => ROMsel
	);
-- AddressIn[15]
t_prcs_AddressIn_15: PROCESS
BEGIN
	AddressIn(15) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_15;
-- AddressIn[14]
t_prcs_AddressIn_14: PROCESS
BEGIN
	AddressIn(14) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_14;
-- AddressIn[13]
t_prcs_AddressIn_13: PROCESS
BEGIN
	AddressIn(13) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_13;
-- AddressIn[12]
t_prcs_AddressIn_12: PROCESS
BEGIN
	AddressIn(12) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_12;
-- AddressIn[11]
t_prcs_AddressIn_11: PROCESS
BEGIN
	AddressIn(11) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_11;
-- AddressIn[10]
t_prcs_AddressIn_10: PROCESS
BEGIN
	AddressIn(10) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_10;
-- AddressIn[9]
t_prcs_AddressIn_9: PROCESS
BEGIN
	AddressIn(9) <= '0';
	WAIT FOR 160000 ps;
	AddressIn(9) <= '1';
	WAIT FOR 10000 ps;
	AddressIn(9) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_9;
-- AddressIn[8]
t_prcs_AddressIn_8: PROCESS
BEGIN
	AddressIn(8) <= '0';
	WAIT FOR 170000 ps;
	AddressIn(8) <= '1';
	WAIT FOR 40000 ps;
	AddressIn(8) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_8;
-- AddressIn[7]
t_prcs_AddressIn_7: PROCESS
BEGIN
	AddressIn(7) <= '0';
	WAIT FOR 110000 ps;
	AddressIn(7) <= '1';
	WAIT FOR 50000 ps;
	AddressIn(7) <= '0';
	WAIT FOR 10000 ps;
	AddressIn(7) <= '1';
	WAIT FOR 40000 ps;
	AddressIn(7) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_7;
-- AddressIn[6]
t_prcs_AddressIn_6: PROCESS
BEGIN
	AddressIn(6) <= '0';
	WAIT FOR 60000 ps;
	AddressIn(6) <= '1';
	WAIT FOR 50000 ps;
	AddressIn(6) <= '0';
	WAIT FOR 60000 ps;
	AddressIn(6) <= '1';
	WAIT FOR 40000 ps;
	AddressIn(6) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_6;
-- AddressIn[5]
t_prcs_AddressIn_5: PROCESS
BEGIN
	AddressIn(5) <= '0';
	WAIT FOR 20000 ps;
	AddressIn(5) <= '1';
	WAIT FOR 40000 ps;
	AddressIn(5) <= '0';
	WAIT FOR 100000 ps;
	AddressIn(5) <= '1';
	WAIT FOR 50000 ps;
	AddressIn(5) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_5;
-- AddressIn[4]
t_prcs_AddressIn_4: PROCESS
BEGIN
	AddressIn(4) <= '0';
	WAIT FOR 170000 ps;
	AddressIn(4) <= '1';
	WAIT FOR 40000 ps;
	AddressIn(4) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_4;
-- AddressIn[3]
t_prcs_AddressIn_3: PROCESS
BEGIN
	AddressIn(3) <= '0';
	WAIT FOR 170000 ps;
	AddressIn(3) <= '1';
	WAIT FOR 40000 ps;
	AddressIn(3) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_3;
-- AddressIn[2]
t_prcs_AddressIn_2: PROCESS
BEGIN
	AddressIn(2) <= '0';
	WAIT FOR 60000 ps;
	AddressIn(2) <= '1';
	WAIT FOR 50000 ps;
	AddressIn(2) <= '0';
	WAIT FOR 60000 ps;
	AddressIn(2) <= '1';
	WAIT FOR 40000 ps;
	AddressIn(2) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_2;
-- AddressIn[1]
t_prcs_AddressIn_1: PROCESS
BEGIN
	AddressIn(1) <= '1';
	WAIT FOR 20000 ps;
	AddressIn(1) <= '0';
	WAIT FOR 140000 ps;
	AddressIn(1) <= '1';
	WAIT FOR 50000 ps;
	AddressIn(1) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_1;
-- AddressIn[0]
t_prcs_AddressIn_0: PROCESS
BEGIN
	AddressIn(0) <= '1';
	WAIT FOR 20000 ps;
	AddressIn(0) <= '0';
	WAIT FOR 40000 ps;
	AddressIn(0) <= '1';
	WAIT FOR 50000 ps;
	AddressIn(0) <= '0';
	WAIT FOR 60000 ps;
	AddressIn(0) <= '1';
	WAIT FOR 40000 ps;
	AddressIn(0) <= '0';
WAIT;
END PROCESS t_prcs_AddressIn_0;
END AddressDecoder_arch;
