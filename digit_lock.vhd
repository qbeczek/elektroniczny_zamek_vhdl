library ieee;
use ieee.std_logic_1164.all;

package digit_lock is
		component cnt_4
			port(
				rst : in std_logic;
				clk : in std_logic;
				ena : in std_logic;
				wart: out std_logic_vector (3 downto 0)
			);
		end component cnt_4;
		
		component mux_2x4
			port(
				sel : in std_logic_vector (1 downto 0);
				data: in std_logic_vector (3 downto 0);
				o 	 : out std_logic
				);
		end component mux_2x4;
		
		component dec_2x4
			port(
				a	: in std_logic_vector (1 downto 0);
				o	: out std_logic_vector (3 downto 0)
				);
		end component dec_2x4;
end digit_lock;

package body digit_lock is

end digit_lock;