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
-- Generated on "04/21/2020 18:33:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cnt_4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cnt_4_vhd_vec_tst IS
END cnt_4_vhd_vec_tst;
ARCHITECTURE cnt_4_arch OF cnt_4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL ena : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL wart : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT cnt_4
	PORT (
	clk : IN STD_LOGIC;
	ena : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	wart : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : cnt_4
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	ena => ena,
	rst => rst,
	wart => wart
	);

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

-- ena
t_prcs_ena: PROCESS
BEGIN
	ena <= '1';
	WAIT FOR 330000 ps;
	ena <= '0';
WAIT;
END PROCESS t_prcs_ena;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 20000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END cnt_4_arch;
