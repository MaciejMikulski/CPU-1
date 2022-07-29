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
-- Generated on "09/27/2021 00:16:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Execution
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Execution_vhd_vec_tst IS
END Execution_vhd_vec_tst;
ARCHITECTURE Execution_arch OF Execution_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL carryFlag : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL dirDB : STD_LOGIC;
SIGNAL enA : STD_LOGIC;
SIGNAL enAL : STD_LOGIC;
SIGNAL enALU : STD_LOGIC;
SIGNAL enB : STD_LOGIC;
SIGNAL enDB : STD_LOGIC;
SIGNAL enPC : STD_LOGIC;
SIGNAL eqFlag : STD_LOGIC;
SIGNAL HiByteAL : STD_LOGIC;
SIGNAL IncPC : STD_LOGIC;
SIGNAL instrIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LatchNewAddrPC : STD_LOGIC;
SIGNAL loadA : STD_LOGIC;
SIGNAL loadAL : STD_LOGIC;
SIGNAL loadB : STD_LOGIC;
SIGNAL loadCarryFlagFR : STD_LOGIC;
SIGNAL loadEqFlagFR : STD_LOGIC;
SIGNAL LoadHighPC : STD_LOGIC;
SIGNAL loadIR : STD_LOGIC;
SIGNAL LoadLowPC : STD_LOGIC;
SIGNAL loadZeroFlagFR : STD_LOGIC;
SIGNAL LoByteAL : STD_LOGIC;
SIGNAL OpSel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL RD : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL selAL : STD_LOGIC;
SIGNAL WR : STD_LOGIC;
SIGNAL zeroFlag : STD_LOGIC;
COMPONENT Execution
	PORT (
	carryFlag : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	dirDB : OUT STD_LOGIC;
	enA : OUT STD_LOGIC;
	enAL : OUT STD_LOGIC;
	enALU : OUT STD_LOGIC;
	enB : OUT STD_LOGIC;
	enDB : OUT STD_LOGIC;
	enPC : OUT STD_LOGIC;
	eqFlag : IN STD_LOGIC;
	HiByteAL : OUT STD_LOGIC;
	IncPC : OUT STD_LOGIC;
	instrIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	LatchNewAddrPC : OUT STD_LOGIC;
	loadA : OUT STD_LOGIC;
	loadAL : OUT STD_LOGIC;
	loadB : OUT STD_LOGIC;
	loadCarryFlagFR : OUT STD_LOGIC;
	loadEqFlagFR : OUT STD_LOGIC;
	LoadHighPC : OUT STD_LOGIC;
	loadIR : OUT STD_LOGIC;
	LoadLowPC : OUT STD_LOGIC;
	loadZeroFlagFR : OUT STD_LOGIC;
	LoByteAL : OUT STD_LOGIC;
	OpSel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	RD : OUT STD_LOGIC;
	rst : IN STD_LOGIC;
	selAL : OUT STD_LOGIC;
	WR : OUT STD_LOGIC;
	zeroFlag : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Execution
	PORT MAP (
-- list connections between master ports and signals
	carryFlag => carryFlag,
	clk => clk,
	dirDB => dirDB,
	enA => enA,
	enAL => enAL,
	enALU => enALU,
	enB => enB,
	enDB => enDB,
	enPC => enPC,
	eqFlag => eqFlag,
	HiByteAL => HiByteAL,
	IncPC => IncPC,
	instrIn => instrIn,
	LatchNewAddrPC => LatchNewAddrPC,
	loadA => loadA,
	loadAL => loadAL,
	loadB => loadB,
	loadCarryFlagFR => loadCarryFlagFR,
	loadEqFlagFR => loadEqFlagFR,
	LoadHighPC => LoadHighPC,
	loadIR => loadIR,
	LoadLowPC => LoadLowPC,
	loadZeroFlagFR => loadZeroFlagFR,
	LoByteAL => LoByteAL,
	OpSel => OpSel,
	RD => RD,
	rst => rst,
	selAL => selAL,
	WR => WR,
	zeroFlag => zeroFlag
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
-- instrIn[7]
t_prcs_instrIn_7: PROCESS
BEGIN
	instrIn(7) <= '0';
WAIT;
END PROCESS t_prcs_instrIn_7;
-- instrIn[6]
t_prcs_instrIn_6: PROCESS
BEGIN
	instrIn(6) <= '0';
WAIT;
END PROCESS t_prcs_instrIn_6;
-- instrIn[5]
t_prcs_instrIn_5: PROCESS
BEGIN
	instrIn(5) <= '1';
	WAIT FOR 10000 ps;
	instrIn(5) <= '0';
WAIT;
END PROCESS t_prcs_instrIn_5;
-- instrIn[4]
t_prcs_instrIn_4: PROCESS
BEGIN
	instrIn(4) <= '0';
	WAIT FOR 10000 ps;
	instrIn(4) <= '1';
	WAIT FOR 200000 ps;
	instrIn(4) <= '0';
WAIT;
END PROCESS t_prcs_instrIn_4;
-- instrIn[3]
t_prcs_instrIn_3: PROCESS
BEGIN
	instrIn(3) <= '0';
WAIT;
END PROCESS t_prcs_instrIn_3;
-- instrIn[2]
t_prcs_instrIn_2: PROCESS
BEGIN
	instrIn(2) <= '0';
WAIT;
END PROCESS t_prcs_instrIn_2;
-- instrIn[1]
t_prcs_instrIn_1: PROCESS
BEGIN
	instrIn(1) <= '1';
	WAIT FOR 210000 ps;
	instrIn(1) <= '0';
WAIT;
END PROCESS t_prcs_instrIn_1;
-- instrIn[0]
t_prcs_instrIn_0: PROCESS
BEGIN
	instrIn(0) <= '1';
	WAIT FOR 210000 ps;
	instrIn(0) <= '0';
WAIT;
END PROCESS t_prcs_instrIn_0;

-- zeroFlag
t_prcs_zeroFlag: PROCESS
BEGIN
	zeroFlag <= '0';
WAIT;
END PROCESS t_prcs_zeroFlag;

-- eqFlag
t_prcs_eqFlag: PROCESS
BEGIN
	eqFlag <= '0';
WAIT;
END PROCESS t_prcs_eqFlag;

-- carryFlag
t_prcs_carryFlag: PROCESS
BEGIN
	carryFlag <= '0';
WAIT;
END PROCESS t_prcs_carryFlag;
END Execution_arch;
