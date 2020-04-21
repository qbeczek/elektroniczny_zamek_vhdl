-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- Generated on "04/21/2020 21:15:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          kb_ctrl_pckg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY kb_ctrl_pckg_vhd_vec_tst IS
END kb_ctrl_pckg_vhd_vec_tst;
ARCHITECTURE kb_ctrl_pckg_arch OF kb_ctrl_pckg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL col : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL key_pulse : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL row : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT kb_ctrl_pckg
	PORT (
	clk : IN STD_LOGIC;
	col : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	key_pulse : BUFFER STD_LOGIC;
	q : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	row : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : kb_ctrl_pckg
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	col => col,
	key_pulse => key_pulse,
	q => q,
	row => row,
	rst => rst
	);

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 40000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- col[3]
t_prcs_col_3: PROCESS
BEGIN
	col(3) <= '0';
	WAIT FOR 240000 ps;
	col(3) <= '1';
	WAIT FOR 60000 ps;
	col(3) <= '0';
WAIT;
END PROCESS t_prcs_col_3;
-- col[2]
t_prcs_col_2: PROCESS
BEGIN
	col(2) <= '0';
	WAIT FOR 50000 ps;
	col(2) <= '1';
	WAIT FOR 50000 ps;
	col(2) <= '0';
WAIT;
END PROCESS t_prcs_col_2;
-- col[1]
t_prcs_col_1: PROCESS
BEGIN
	col(1) <= '0';
	WAIT FOR 160000 ps;
	col(1) <= '1';
	WAIT FOR 40000 ps;
	col(1) <= '0';
WAIT;
END PROCESS t_prcs_col_1;
-- col[0]
t_prcs_col_0: PROCESS
BEGIN
	col(0) <= '0';
WAIT;
END PROCESS t_prcs_col_0;
END kb_ctrl_pckg_arch;
