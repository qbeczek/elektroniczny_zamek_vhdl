library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cnt_4 is
	port(
		rst : in std_logic;
		clk : in std_logic;
		ena : in std_logic;
		wart : out std_logic_vector(3 downto 0)
		);
end cnt_4;

architecture data_flow of cnt_4 is 
	signal counter 	: unsigned (3 downto 0);
begin
	proc_cnt:
	process(rst, clk)
	begin	
		if rst = '1' then
			counter <= "0000";
		elsif rising_edge(clk) then
			if ena = '1' then
				counter <= counter +1;
			else 
				counter <= counter;
			end if;
		end if;
	end process proc_cnt;
	wart <= std_logic_vector(counter);
end data_flow;