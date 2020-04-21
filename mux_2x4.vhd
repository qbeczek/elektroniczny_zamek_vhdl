library ieee;
use ieee.std_logic_1164.all;

entity mux_2x4 is 
	port(
		sel 	: in std_logic_vector (1 downto 0);
		data	: in std_logic_vector (3 downto 0);
		o		: out std_logic
	);
end mux_2x4;

architecture data_flow of mux_2x4 is
begin
	with sel select
	o <= data(0) when "00",
		  data(1) when "01",
		  data(2) when "10",
		  data(3) when "11";
end data_flow;