library ieee;
use ieee.std_logic_1164.all;

entity dec_2x4 is
	port(
	a	: in std_logic_vector (1 downto 0);
	o  : out std_logic_vector (3 downto 0)
	);
end dec_2x4;

architecture data_flow of dec_2x4 is
begin	
	with a select 
	o <= "0001" when "00",
		  "0010" when "01",
		  "0100" when "10",
		  "1000"	when "11";
end data_flow;