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
-- Generated on "09/06/2021 10:35:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FlagReg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FlagReg_vhd_vec_tst IS
END FlagReg_vhd_vec_tst;
ARCHITECTURE FlagReg_arch OF FlagReg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CarryIn : STD_LOGIC;
SIGNAL CarryOut : STD_LOGIC;
SIGNAL clear : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL EqIn : STD_LOGIC;
SIGNAL EqOut : STD_LOGIC;
SIGNAL latch : STD_LOGIC;
SIGNAL ZeroIn : STD_LOGIC;
SIGNAL ZeroOut : STD_LOGIC;
COMPONENT FlagReg
	PORT (
	CarryIn : IN STD_LOGIC;
	CarryOut : OUT STD_LOGIC;
	clear : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	EqIn : IN STD_LOGIC;
	EqOut : OUT STD_LOGIC;
	latch : IN STD_LOGIC;
	ZeroIn : IN STD_LOGIC;
	ZeroOut : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FlagReg
	PORT MAP (
-- list connections between master ports and signals
	CarryIn => CarryIn,
	CarryOut => CarryOut,
	clear => clear,
	clk => clk,
	EqIn => EqIn,
	EqOut => EqOut,
	latch => latch,
	ZeroIn => ZeroIn,
	ZeroOut => ZeroOut
	);

-- clear
t_prcs_clear: PROCESS
BEGIN
	clear <= '1';
	WAIT FOR 30000 ps;
	clear <= '0';
	WAIT FOR 60000 ps;
	clear <= '1';
	WAIT FOR 20000 ps;
	clear <= '0';
WAIT;
END PROCESS t_prcs_clear;

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

-- latch
t_prcs_latch: PROCESS
BEGIN
	latch <= '0';
	WAIT FOR 70000 ps;
	latch <= '1';
	WAIT FOR 10000 ps;
	latch <= '0';
	WAIT FOR 50000 ps;
	latch <= '1';
	WAIT FOR 10000 ps;
	latch <= '0';
WAIT;
END PROCESS t_prcs_latch;

-- CarryIn
t_prcs_CarryIn: PROCESS
BEGIN
	CarryIn <= '0';
	WAIT FOR 60000 ps;
	CarryIn <= '1';
	WAIT FOR 20000 ps;
	CarryIn <= '0';
WAIT;
END PROCESS t_prcs_CarryIn;

-- EqIn
t_prcs_EqIn: PROCESS
BEGIN
	EqIn <= '0';
	WAIT FOR 130000 ps;
	EqIn <= '1';
	WAIT FOR 20000 ps;
	EqIn <= '0';
WAIT;
END PROCESS t_prcs_EqIn;

-- ZeroIn
t_prcs_ZeroIn: PROCESS
BEGIN
	ZeroIn <= '0';
	WAIT FOR 130000 ps;
	ZeroIn <= '1';
	WAIT FOR 20000 ps;
	ZeroIn <= '0';
WAIT;
END PROCESS t_prcs_ZeroIn;
END FlagReg_arch;
