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
-- Generated on "09/06/2021 09:35:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CPU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_vhd_vec_tst IS
END CPU_vhd_vec_tst;
ARCHITECTURE CPU_arch OF CPU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Aclear : STD_LOGIC;
SIGNAL Aen : STD_LOGIC;
SIGNAL Aload : STD_LOGIC;
SIGNAL ALUen : STD_LOGIC;
SIGNAL Bclear : STD_LOGIC;
SIGNAL Ben : STD_LOGIC;
SIGNAL Bload : STD_LOGIC;
SIGNAL carry : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL DataBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL OpSel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL zero : STD_LOGIC;
COMPONENT CPU
	PORT (
	Aclear : IN STD_LOGIC;
	Aen : IN STD_LOGIC;
	Aload : IN STD_LOGIC;
	ALUen : IN STD_LOGIC;
	Bclear : IN STD_LOGIC;
	Ben : IN STD_LOGIC;
	Bload : IN STD_LOGIC;
	carry : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	DataBus : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	OpSel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CPU
	PORT MAP (
-- list connections between master ports and signals
	Aclear => Aclear,
	Aen => Aen,
	Aload => Aload,
	ALUen => ALUen,
	Bclear => Bclear,
	Ben => Ben,
	Bload => Bload,
	carry => carry,
	clk => clk,
	DataBus => DataBus,
	OpSel => OpSel,
	zero => zero
	);

-- Aclear
t_prcs_Aclear: PROCESS
BEGIN
	Aclear <= '1';
	WAIT FOR 30000 ps;
	Aclear <= '0';
WAIT;
END PROCESS t_prcs_Aclear;

-- Aen
t_prcs_Aen: PROCESS
BEGIN
	Aen <= '0';
WAIT;
END PROCESS t_prcs_Aen;

-- Aload
t_prcs_Aload: PROCESS
BEGIN
	Aload <= '0';
	WAIT FOR 50000 ps;
	Aload <= '1';
	WAIT FOR 10000 ps;
	Aload <= '0';
	WAIT FOR 70000 ps;
	Aload <= '1';
	WAIT FOR 10000 ps;
	Aload <= '0';
	WAIT FOR 150000 ps;
	Aload <= '1';
	WAIT FOR 10000 ps;
	Aload <= '0';
WAIT;
END PROCESS t_prcs_Aload;

-- Bclear
t_prcs_Bclear: PROCESS
BEGIN
	Bclear <= '1';
	WAIT FOR 30000 ps;
	Bclear <= '0';
WAIT;
END PROCESS t_prcs_Bclear;

-- Ben
t_prcs_Ben: PROCESS
BEGIN
	Ben <= '0';
WAIT;
END PROCESS t_prcs_Ben;

-- Bload
t_prcs_Bload: PROCESS
BEGIN
	Bload <= '0';
	WAIT FOR 70000 ps;
	Bload <= '1';
	WAIT FOR 10000 ps;
	Bload <= '0';
	WAIT FOR 70000 ps;
	Bload <= '1';
	WAIT FOR 10000 ps;
	Bload <= '0';
	WAIT FOR 150000 ps;
	Bload <= '1';
	WAIT FOR 10000 ps;
	Bload <= '0';
WAIT;
END PROCESS t_prcs_Bload;

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

-- ALUen
t_prcs_ALUen: PROCESS
BEGIN
	ALUen <= '0';
	WAIT FOR 90000 ps;
	ALUen <= '1';
	WAIT FOR 30000 ps;
	ALUen <= '0';
	WAIT FOR 60000 ps;
	ALUen <= '1';
	WAIT FOR 100000 ps;
	ALUen <= '0';
	WAIT FOR 100000 ps;
	ALUen <= '1';
	WAIT FOR 60000 ps;
	ALUen <= '0';
WAIT;
END PROCESS t_prcs_ALUen;
-- OpSel[1]
t_prcs_OpSel_1: PROCESS
BEGIN
	OpSel(1) <= '0';
	WAIT FOR 250000 ps;
	OpSel(1) <= '1';
	WAIT FOR 30000 ps;
	OpSel(1) <= '0';
	WAIT FOR 100000 ps;
	OpSel(1) <= '1';
	WAIT FOR 60000 ps;
	OpSel(1) <= '0';
WAIT;
END PROCESS t_prcs_OpSel_1;
-- OpSel[0]
t_prcs_OpSel_0: PROCESS
BEGIN
	OpSel(0) <= '0';
	WAIT FOR 220000 ps;
	OpSel(0) <= '1';
	WAIT FOR 30000 ps;
	OpSel(0) <= '0';
	WAIT FOR 130000 ps;
	OpSel(0) <= '1';
	WAIT FOR 60000 ps;
	OpSel(0) <= '0';
WAIT;
END PROCESS t_prcs_OpSel_0;
-- DataBus[7]
t_prcs_DataBus_7: PROCESS
BEGIN
	DataBus(7) <= 'Z';
	WAIT FOR 30000 ps;
	DataBus(7) <= '0';
	WAIT FOR 60000 ps;
	DataBus(7) <= 'Z';
	WAIT FOR 40000 ps;
	DataBus(7) <= '1';
	WAIT FOR 20000 ps;
	DataBus(7) <= '0';
	WAIT FOR 20000 ps;
	DataBus(7) <= 'Z';
	WAIT FOR 120000 ps;
	DataBus(7) <= '0';
	WAIT FOR 80000 ps;
	DataBus(7) <= 'Z';
WAIT;
END PROCESS t_prcs_DataBus_7;
-- DataBus[6]
t_prcs_DataBus_6: PROCESS
BEGIN
	DataBus(6) <= 'Z';
	WAIT FOR 30000 ps;
	DataBus(6) <= '0';
	WAIT FOR 60000 ps;
	DataBus(6) <= 'Z';
	WAIT FOR 40000 ps;
	DataBus(6) <= '1';
	WAIT FOR 20000 ps;
	DataBus(6) <= '0';
	WAIT FOR 20000 ps;
	DataBus(6) <= 'Z';
	WAIT FOR 120000 ps;
	DataBus(6) <= '1';
	WAIT FOR 80000 ps;
	DataBus(6) <= 'Z';
WAIT;
END PROCESS t_prcs_DataBus_6;
-- DataBus[5]
t_prcs_DataBus_5: PROCESS
BEGIN
	DataBus(5) <= 'Z';
	WAIT FOR 30000 ps;
	DataBus(5) <= '0';
	WAIT FOR 60000 ps;
	DataBus(5) <= 'Z';
	WAIT FOR 40000 ps;
	DataBus(5) <= '1';
	WAIT FOR 20000 ps;
	DataBus(5) <= '0';
	WAIT FOR 20000 ps;
	DataBus(5) <= 'Z';
	WAIT FOR 120000 ps;
	DataBus(5) <= '0';
	WAIT FOR 80000 ps;
	DataBus(5) <= 'Z';
WAIT;
END PROCESS t_prcs_DataBus_5;
-- DataBus[4]
t_prcs_DataBus_4: PROCESS
BEGIN
	DataBus(4) <= 'Z';
	WAIT FOR 30000 ps;
	DataBus(4) <= '0';
	WAIT FOR 30000 ps;
	DataBus(4) <= '1';
	WAIT FOR 30000 ps;
	DataBus(4) <= 'Z';
	WAIT FOR 40000 ps;
	DataBus(4) <= '1';
	WAIT FOR 20000 ps;
	DataBus(4) <= '0';
	WAIT FOR 20000 ps;
	DataBus(4) <= 'Z';
	WAIT FOR 120000 ps;
	DataBus(4) <= '1';
	WAIT FOR 80000 ps;
	DataBus(4) <= 'Z';
WAIT;
END PROCESS t_prcs_DataBus_4;
-- DataBus[3]
t_prcs_DataBus_3: PROCESS
BEGIN
	DataBus(3) <= 'Z';
	WAIT FOR 30000 ps;
	DataBus(3) <= '0';
	WAIT FOR 60000 ps;
	DataBus(3) <= 'Z';
	WAIT FOR 40000 ps;
	DataBus(3) <= '1';
	WAIT FOR 20000 ps;
	DataBus(3) <= '0';
	WAIT FOR 20000 ps;
	DataBus(3) <= 'Z';
	WAIT FOR 120000 ps;
	DataBus(3) <= '0';
	WAIT FOR 80000 ps;
	DataBus(3) <= 'Z';
WAIT;
END PROCESS t_prcs_DataBus_3;
-- DataBus[2]
t_prcs_DataBus_2: PROCESS
BEGIN
	DataBus(2) <= 'Z';
	WAIT FOR 30000 ps;
	DataBus(2) <= '1';
	WAIT FOR 30000 ps;
	DataBus(2) <= '0';
	WAIT FOR 30000 ps;
	DataBus(2) <= 'Z';
	WAIT FOR 40000 ps;
	DataBus(2) <= '1';
	WAIT FOR 20000 ps;
	DataBus(2) <= '0';
	WAIT FOR 20000 ps;
	DataBus(2) <= 'Z';
	WAIT FOR 120000 ps;
	DataBus(2) <= '1';
	WAIT FOR 80000 ps;
	DataBus(2) <= 'Z';
WAIT;
END PROCESS t_prcs_DataBus_2;
-- DataBus[1]
t_prcs_DataBus_1: PROCESS
BEGIN
	DataBus(1) <= 'Z';
	WAIT FOR 30000 ps;
	DataBus(1) <= '1';
	WAIT FOR 30000 ps;
	DataBus(1) <= '0';
	WAIT FOR 30000 ps;
	DataBus(1) <= 'Z';
	WAIT FOR 40000 ps;
	DataBus(1) <= '1';
	WAIT FOR 20000 ps;
	DataBus(1) <= '0';
	WAIT FOR 20000 ps;
	DataBus(1) <= 'Z';
	WAIT FOR 120000 ps;
	DataBus(1) <= '0';
	WAIT FOR 80000 ps;
	DataBus(1) <= 'Z';
WAIT;
END PROCESS t_prcs_DataBus_1;
-- DataBus[0]
t_prcs_DataBus_0: PROCESS
BEGIN
	DataBus(0) <= 'Z';
	WAIT FOR 30000 ps;
	DataBus(0) <= '1';
	WAIT FOR 30000 ps;
	DataBus(0) <= '0';
	WAIT FOR 30000 ps;
	DataBus(0) <= 'Z';
	WAIT FOR 40000 ps;
	DataBus(0) <= '1';
	WAIT FOR 40000 ps;
	DataBus(0) <= 'Z';
	WAIT FOR 120000 ps;
	DataBus(0) <= '1';
	WAIT FOR 80000 ps;
	DataBus(0) <= 'Z';
WAIT;
END PROCESS t_prcs_DataBus_0;
END CPU_arch;
