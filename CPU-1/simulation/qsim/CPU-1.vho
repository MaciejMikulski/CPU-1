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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/27/2021 16:43:25"

-- 
-- Device: Altera EP4CE15F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AddressDecoder IS
    PORT (
	AddressIn : IN std_logic_vector(15 DOWNTO 0);
	RAMsel : OUT std_logic;
	ROMsel : OUT std_logic;
	IOsel : OUT std_logic
	);
END AddressDecoder;

ARCHITECTURE structure OF AddressDecoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_AddressIn : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RAMsel : std_logic;
SIGNAL ww_ROMsel : std_logic;
SIGNAL ww_IOsel : std_logic;
SIGNAL \RAMsel~output_o\ : std_logic;
SIGNAL \ROMsel~output_o\ : std_logic;
SIGNAL \IOsel~output_o\ : std_logic;
SIGNAL \AddressIn[6]~input_o\ : std_logic;
SIGNAL \AddressIn[8]~input_o\ : std_logic;
SIGNAL \AddressIn[9]~input_o\ : std_logic;
SIGNAL \AddressIn[10]~input_o\ : std_logic;
SIGNAL \AddressIn[11]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \AddressIn[12]~input_o\ : std_logic;
SIGNAL \AddressIn[13]~input_o\ : std_logic;
SIGNAL \AddressIn[14]~input_o\ : std_logic;
SIGNAL \AddressIn[15]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \AddressIn[7]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \AddressIn[0]~input_o\ : std_logic;
SIGNAL \AddressIn[1]~input_o\ : std_logic;
SIGNAL \AddressIn[2]~input_o\ : std_logic;
SIGNAL \AddressIn[3]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \AddressIn[4]~input_o\ : std_logic;
SIGNAL \AddressIn[5]~input_o\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;

BEGIN

ww_AddressIn <= AddressIn;
RAMsel <= ww_RAMsel;
ROMsel <= ww_ROMsel;
IOsel <= ww_IOsel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;

\RAMsel~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => \RAMsel~output_o\);

\ROMsel~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~2_combout\,
	devoe => ww_devoe,
	o => \ROMsel~output_o\);

\IOsel~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal2~2_combout\,
	devoe => ww_devoe,
	o => \IOsel~output_o\);

\AddressIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(6),
	o => \AddressIn[6]~input_o\);

\AddressIn[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(8),
	o => \AddressIn[8]~input_o\);

\AddressIn[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(9),
	o => \AddressIn[9]~input_o\);

\AddressIn[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(10),
	o => \AddressIn[10]~input_o\);

\AddressIn[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(11),
	o => \AddressIn[11]~input_o\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\AddressIn[8]~input_o\ & (!\AddressIn[9]~input_o\ & (!\AddressIn[10]~input_o\ & !\AddressIn[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressIn[8]~input_o\,
	datab => \AddressIn[9]~input_o\,
	datac => \AddressIn[10]~input_o\,
	datad => \AddressIn[11]~input_o\,
	combout => \Equal0~0_combout\);

\AddressIn[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(12),
	o => \AddressIn[12]~input_o\);

\AddressIn[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(13),
	o => \AddressIn[13]~input_o\);

\AddressIn[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(14),
	o => \AddressIn[14]~input_o\);

\AddressIn[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(15),
	o => \AddressIn[15]~input_o\);

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\AddressIn[12]~input_o\ & (!\AddressIn[13]~input_o\ & (!\AddressIn[14]~input_o\ & !\AddressIn[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressIn[12]~input_o\,
	datab => \AddressIn[13]~input_o\,
	datac => \AddressIn[14]~input_o\,
	datad => \AddressIn[15]~input_o\,
	combout => \Equal0~1_combout\);

\AddressIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(7),
	o => \AddressIn[7]~input_o\);

\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\AddressIn[6]~input_o\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & !\AddressIn[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressIn[6]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \AddressIn[7]~input_o\,
	combout => \Equal1~0_combout\);

\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (!\AddressIn[6]~input_o\ & !\AddressIn[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \AddressIn[6]~input_o\,
	datad => \AddressIn[7]~input_o\,
	combout => \Equal0~2_combout\);

\AddressIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(0),
	o => \AddressIn[0]~input_o\);

\AddressIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(1),
	o => \AddressIn[1]~input_o\);

\AddressIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(2),
	o => \AddressIn[2]~input_o\);

\AddressIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(3),
	o => \AddressIn[3]~input_o\);

\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\AddressIn[0]~input_o\ & (!\AddressIn[1]~input_o\ & (!\AddressIn[2]~input_o\ & !\AddressIn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressIn[0]~input_o\,
	datab => \AddressIn[1]~input_o\,
	datac => \AddressIn[2]~input_o\,
	datad => \AddressIn[3]~input_o\,
	combout => \Equal2~0_combout\);

\AddressIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(4),
	o => \AddressIn[4]~input_o\);

\AddressIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressIn(5),
	o => \AddressIn[5]~input_o\);

\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\AddressIn[7]~input_o\ & (!\AddressIn[6]~input_o\ & (!\AddressIn[4]~input_o\ & !\AddressIn[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressIn[7]~input_o\,
	datab => \AddressIn[6]~input_o\,
	datac => \AddressIn[4]~input_o\,
	datad => \AddressIn[5]~input_o\,
	combout => \Equal2~1_combout\);

\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal2~0_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~2_combout\);

ww_RAMsel <= \RAMsel~output_o\;

ww_ROMsel <= \ROMsel~output_o\;

ww_IOsel <= \IOsel~output_o\;
END structure;


