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
-- Generated on "09/08/2021 23:31:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          AddrLatch
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY AddrLatch_vhd_vec_tst IS
END AddrLatch_vhd_vec_tst;
ARCHITECTURE AddrLatch_arch OF AddrLatch_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL AddrBusIn : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL AddrBusOut : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL DataBusIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HiByte : STD_LOGIC;
SIGNAL load : STD_LOGIC;
SIGNAL LoByte : STD_LOGIC;
SIGNAL OutEn : STD_LOGIC;
SIGNAL sel : STD_LOGIC;
COMPONENT AddrLatch
	PORT (
	AddrBusIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	AddrBusOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	DataBusIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	HiByte : IN STD_LOGIC;
	load : IN STD_LOGIC;
	LoByte : IN STD_LOGIC;
	OutEn : IN STD_LOGIC;
	sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : AddrLatch
	PORT MAP (
-- list connections between master ports and signals
	AddrBusIn => AddrBusIn,
	AddrBusOut => AddrBusOut,
	clk => clk,
	clr => clr,
	DataBusIn => DataBusIn,
	HiByte => HiByte,
	load => load,
	LoByte => LoByte,
	OutEn => OutEn,
	sel => sel
	);
-- AddrBusIn[15]
t_prcs_AddrBusIn_15: PROCESS
BEGIN
	AddrBusIn(15) <= '0';
WAIT;
END PROCESS t_prcs_AddrBusIn_15;
-- AddrBusIn[14]
t_prcs_AddrBusIn_14: PROCESS
BEGIN
	AddrBusIn(14) <= '0';
WAIT;
END PROCESS t_prcs_AddrBusIn_14;
-- AddrBusIn[13]
t_prcs_AddrBusIn_13: PROCESS
BEGIN
	AddrBusIn(13) <= '0';
WAIT;
END PROCESS t_prcs_AddrBusIn_13;
-- AddrBusIn[12]
t_prcs_AddrBusIn_12: PROCESS
BEGIN
	AddrBusIn(12) <= '1';
WAIT;
END PROCESS t_prcs_AddrBusIn_12;
-- AddrBusIn[11]
t_prcs_AddrBusIn_11: PROCESS
BEGIN
	AddrBusIn(11) <= '0';
WAIT;
END PROCESS t_prcs_AddrBusIn_11;
-- AddrBusIn[10]
t_prcs_AddrBusIn_10: PROCESS
BEGIN
	AddrBusIn(10) <= '0';
WAIT;
END PROCESS t_prcs_AddrBusIn_10;
-- AddrBusIn[9]
t_prcs_AddrBusIn_9: PROCESS
BEGIN
	AddrBusIn(9) <= '1';
WAIT;
END PROCESS t_prcs_AddrBusIn_9;
-- AddrBusIn[8]
t_prcs_AddrBusIn_8: PROCESS
BEGIN
	AddrBusIn(8) <= '0';
WAIT;
END PROCESS t_prcs_AddrBusIn_8;
-- AddrBusIn[7]
t_prcs_AddrBusIn_7: PROCESS
BEGIN
	AddrBusIn(7) <= '0';
WAIT;
END PROCESS t_prcs_AddrBusIn_7;
-- AddrBusIn[6]
t_prcs_AddrBusIn_6: PROCESS
BEGIN
	AddrBusIn(6) <= '0';
WAIT;
END PROCESS t_prcs_AddrBusIn_6;
-- AddrBusIn[5]
t_prcs_AddrBusIn_5: PROCESS
BEGIN
	AddrBusIn(5) <= '1';
WAIT;
END PROCESS t_prcs_AddrBusIn_5;
-- AddrBusIn[4]
t_prcs_AddrBusIn_4: PROCESS
BEGIN
	AddrBusIn(4) <= '1';
WAIT;
END PROCESS t_prcs_AddrBusIn_4;
-- AddrBusIn[3]
t_prcs_AddrBusIn_3: PROCESS
BEGIN
	AddrBusIn(3) <= '0';
WAIT;
END PROCESS t_prcs_AddrBusIn_3;
-- AddrBusIn[2]
t_prcs_AddrBusIn_2: PROCESS
BEGIN
	AddrBusIn(2) <= '1';
WAIT;
END PROCESS t_prcs_AddrBusIn_2;
-- AddrBusIn[1]
t_prcs_AddrBusIn_1: PROCESS
BEGIN
	AddrBusIn(1) <= '0';
WAIT;
END PROCESS t_prcs_AddrBusIn_1;
-- AddrBusIn[0]
t_prcs_AddrBusIn_0: PROCESS
BEGIN
	AddrBusIn(0) <= '0';
WAIT;
END PROCESS t_prcs_AddrBusIn_0;
-- DataBusIn[7]
t_prcs_DataBusIn_7: PROCESS
BEGIN
	DataBusIn(7) <= '0';
	WAIT FOR 20000 ps;
	DataBusIn(7) <= '1';
	WAIT FOR 30000 ps;
	DataBusIn(7) <= '0';
	WAIT FOR 10000 ps;
	DataBusIn(7) <= '1';
	WAIT FOR 30000 ps;
	DataBusIn(7) <= '0';
WAIT;
END PROCESS t_prcs_DataBusIn_7;
-- DataBusIn[6]
t_prcs_DataBusIn_6: PROCESS
BEGIN
	DataBusIn(6) <= '0';
	WAIT FOR 60000 ps;
	DataBusIn(6) <= '1';
	WAIT FOR 30000 ps;
	DataBusIn(6) <= '0';
WAIT;
END PROCESS t_prcs_DataBusIn_6;
-- DataBusIn[5]
t_prcs_DataBusIn_5: PROCESS
BEGIN
	DataBusIn(5) <= '0';
	WAIT FOR 20000 ps;
	DataBusIn(5) <= '1';
	WAIT FOR 30000 ps;
	DataBusIn(5) <= '0';
WAIT;
END PROCESS t_prcs_DataBusIn_5;
-- DataBusIn[4]
t_prcs_DataBusIn_4: PROCESS
BEGIN
	DataBusIn(4) <= '0';
WAIT;
END PROCESS t_prcs_DataBusIn_4;
-- DataBusIn[3]
t_prcs_DataBusIn_3: PROCESS
BEGIN
	DataBusIn(3) <= '0';
	WAIT FOR 20000 ps;
	DataBusIn(3) <= '1';
	WAIT FOR 30000 ps;
	DataBusIn(3) <= '0';
	WAIT FOR 10000 ps;
	DataBusIn(3) <= '1';
	WAIT FOR 30000 ps;
	DataBusIn(3) <= '0';
WAIT;
END PROCESS t_prcs_DataBusIn_3;
-- DataBusIn[2]
t_prcs_DataBusIn_2: PROCESS
BEGIN
	DataBusIn(2) <= '0';
	WAIT FOR 60000 ps;
	DataBusIn(2) <= '1';
	WAIT FOR 30000 ps;
	DataBusIn(2) <= '0';
WAIT;
END PROCESS t_prcs_DataBusIn_2;
-- DataBusIn[1]
t_prcs_DataBusIn_1: PROCESS
BEGIN
	DataBusIn(1) <= '0';
	WAIT FOR 20000 ps;
	DataBusIn(1) <= '1';
	WAIT FOR 30000 ps;
	DataBusIn(1) <= '0';
WAIT;
END PROCESS t_prcs_DataBusIn_1;
-- DataBusIn[0]
t_prcs_DataBusIn_0: PROCESS
BEGIN
	DataBusIn(0) <= '0';
	WAIT FOR 20000 ps;
	DataBusIn(0) <= '1';
	WAIT FOR 30000 ps;
	DataBusIn(0) <= '0';
	WAIT FOR 10000 ps;
	DataBusIn(0) <= '1';
	WAIT FOR 30000 ps;
	DataBusIn(0) <= '0';
WAIT;
END PROCESS t_prcs_DataBusIn_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 49
	LOOP
		clk <= '0';
		WAIT FOR 10000 ps;
		clk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '1';
	WAIT FOR 20000 ps;
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '0';
	WAIT FOR 30000 ps;
	load <= '1';
	WAIT FOR 10000 ps;
	load <= '0';
	WAIT FOR 30000 ps;
	load <= '1';
	WAIT FOR 10000 ps;
	load <= '0';
WAIT;
END PROCESS t_prcs_load;

-- HiByte
t_prcs_HiByte: PROCESS
BEGIN
	HiByte <= '0';
	WAIT FOR 30000 ps;
	HiByte <= '1';
	WAIT FOR 10000 ps;
	HiByte <= '0';
WAIT;
END PROCESS t_prcs_HiByte;

-- LoByte
t_prcs_LoByte: PROCESS
BEGIN
	LoByte <= '0';
	WAIT FOR 70000 ps;
	LoByte <= '1';
	WAIT FOR 10000 ps;
	LoByte <= '0';
WAIT;
END PROCESS t_prcs_LoByte;

-- OutEn
t_prcs_OutEn: PROCESS
BEGIN
	OutEn <= '0';
	WAIT FOR 30000 ps;
	OutEn <= '1';
	WAIT FOR 50000 ps;
	OutEn <= '0';
	WAIT FOR 30000 ps;
	OutEn <= '1';
	WAIT FOR 160000 ps;
	OutEn <= '0';
WAIT;
END PROCESS t_prcs_OutEn;

-- sel
t_prcs_sel: PROCESS
BEGIN
	sel <= '0';
	WAIT FOR 130000 ps;
	sel <= '1';
	WAIT FOR 90000 ps;
	sel <= '0';
WAIT;
END PROCESS t_prcs_sel;
END AddrLatch_arch;
