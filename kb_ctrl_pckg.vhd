library ieee;
use ieee.std_logic_1164.all;
use work.digit_lock.all;

entity kb_ctrl_pckg is
	port(
		rst 			: in std_logic;
		clk 			: in std_logic;
		col 			: in std_logic_vector (3 downto 0);
		key_pulse	: out std_logic;
		row			: out std_logic_vector (3 downto 0);
		q				: out std_logic_vector (3 downto 0)
	);
end kb_ctrl_pckg;

architecture data_flow of kb_ctrl_pckg is
	
	signal q_i : std_logic_vector (3 downto 0);
	signal key_pulse_i : std_logic;

begin 
	kb_cnt : cnt_4
		port map(
			rst => rst,
			clk => clk,
			ena => (not key_pulse_i),
			wart => q_i
		);
	
	kb_mux : mux_2x4
		port map(
			sel => q_i(1 downto 0),
			data => col,
			o => key_pulse_i
		);
		
	kb_dec : dec_2x4
		port map(
			a => q_i (3 downto 2),
			o => row 
		);

	q <= q_i;
	key_pulse <= key_pulse_i;

end data_flow;