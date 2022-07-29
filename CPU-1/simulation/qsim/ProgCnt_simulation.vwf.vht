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
-- Generated on "09/15/2021 15:03:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ProgCnt
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ProgCnt_vhd_vec_tst IS
END ProgCnt_vhd_vec_tst;
ARCHITECTURE ProgCnt_arch OF ProgCnt_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL AddrOut : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL DataIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Inc : STD_LOGIC;
SIGNAL LatchNewAddr : STD_LOGIC;
SIGNAL LoadHigh : STD_LOGIC;
SIGNAL LoadLow : STD_LOGIC;
SIGNAL OutEn : STD_LOGIC;
COMPONENT ProgCnt
	PORT (
	AddrOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	DataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Inc : IN STD_LOGIC;
	LatchNewAddr : IN STD_LOGIC;
	LoadHigh : IN STD_LOGIC;
	LoadLow : IN STD_LOGIC;
	OutEn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ProgCnt
	PORT MAP (
-- list connections between master ports and signals
	AddrOut => AddrOut,
	clk => clk,
	clr => clr,
	DataIn => DataIn,
	Inc => Inc,
	LatchNewAddr => LatchNewAddr,
	LoadHigh => LoadHigh,
	LoadLow => LoadLow,
	OutEn => OutEn
	);

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

-- Inc
t_prcs_Inc: PROCESS
BEGIN
	Inc <= '0';
	WAIT FOR 30000 ps;
	Inc <= '1';
	WAIT FOR 10000 ps;
	Inc <= '0';
WAIT;
END PROCESS t_prcs_Inc;

-- LoadHigh
t_prcs_LoadHigh: PROCESS
BEGIN
	LoadHigh <= '0';
	WAIT FOR 30000 ps;
	LoadHigh <= '1';
	WAIT FOR 10000 ps;
	LoadHigh <= '0';
	WAIT FOR 30000 ps;
	LoadHigh <= '1';
	WAIT FOR 10000 ps;
	LoadHigh <= '0';
	WAIT FOR 30000 ps;
	LoadHigh <= '1';
	WAIT FOR 10000 ps;
	LoadHigh <= '0';
WAIT;
END PROCESS t_prcs_LoadHigh;

-- LoadLow
t_prcs_LoadLow: PROCESS
BEGIN
	LoadLow <= '0';
	WAIT FOR 50000 ps;
	LoadLow <= '1';
	WAIT FOR 10000 ps;
	LoadLow <= '0';
	WAIT FOR 10000 ps;
	LoadLow <= '1';
	WAIT FOR 10000 ps;
	LoadLow <= '0';
WAIT;
END PROCESS t_prcs_LoadLow;

-- OutEn
t_prcs_OutEn: PROCESS
BEGIN
	OutEn <= '0';
	WAIT FOR 10000 ps;
	OutEn <= '1';
	WAIT FOR 180000 ps;
	OutEn <= '0';
WAIT;
END PROCESS t_prcs_OutEn;
-- DataIn[7]
t_prcs_DataIn_7: PROCESS
BEGIN
	DataIn(7) <= '0';
	WAIT FOR 20000 ps;
	DataIn(7) <= '1';
	WAIT FOR 100000 ps;
	DataIn(7) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_7;
-- DataIn[6]
t_prcs_DataIn_6: PROCESS
BEGIN
	DataIn(6) <= '0';
	WAIT FOR 40000 ps;
	DataIn(6) <= '1';
	WAIT FOR 50000 ps;
	DataIn(6) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_6;
-- DataIn[5]
t_prcs_DataIn_5: PROCESS
BEGIN
	DataIn(5) <= '0';
	WAIT FOR 20000 ps;
	DataIn(5) <= '1';
	WAIT FOR 20000 ps;
	DataIn(5) <= '0';
	WAIT FOR 50000 ps;
	DataIn(5) <= '1';
	WAIT FOR 30000 ps;
	DataIn(5) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_5;
-- DataIn[4]
t_prcs_DataIn_4: PROCESS
BEGIN
	DataIn(4) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_4;
-- DataIn[3]
t_prcs_DataIn_3: PROCESS
BEGIN
	DataIn(3) <= '0';
	WAIT FOR 20000 ps;
	DataIn(3) <= '1';
	WAIT FOR 100000 ps;
	DataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_3;
-- DataIn[2]
t_prcs_DataIn_2: PROCESS
BEGIN
	DataIn(2) <= '0';
	WAIT FOR 40000 ps;
	DataIn(2) <= '1';
	WAIT FOR 50000 ps;
	DataIn(2) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_2;
-- DataIn[1]
t_prcs_DataIn_1: PROCESS
BEGIN
	DataIn(1) <= '0';
	WAIT FOR 20000 ps;
	DataIn(1) <= '1';
	WAIT FOR 20000 ps;
	DataIn(1) <= '0';
	WAIT FOR 50000 ps;
	DataIn(1) <= '1';
	WAIT FOR 30000 ps;
	DataIn(1) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_1;
-- DataIn[0]
t_prcs_DataIn_0: PROCESS
BEGIN
	DataIn(0) <= '0';
	WAIT FOR 20000 ps;
	DataIn(0) <= '1';
	WAIT FOR 100000 ps;
	DataIn(0) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_0;

-- LatchNewAddr
t_prcs_LatchNewAddr: PROCESS
BEGIN
	LatchNewAddr <= '0';
	WAIT FOR 130000 ps;
	LatchNewAddr <= '1';
	WAIT FOR 10000 ps;
	LatchNewAddr <= '0';
WAIT;
END PROCESS t_prcs_LatchNewAddr;
END ProgCnt_arch;
