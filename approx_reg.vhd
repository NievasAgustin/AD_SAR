library ieee;
use ieee.std_logic_1164.all;
entity approx_reg is

	port(
		reset_bar,load,en2,en1,clk : in std_logic;
		d:in std_logic_vector(7 downto 0);
		qar : out std_logic_vector(7 downto 0)
		);
end entity; 

architecture registro of approx_reg is


--	type state_type is (set, shift, reset);

--	signal state   : state_type;

begin		

	process (clk, reset_bar, load)	
			variable ok:std_logic_vector(7 downto 0);
	begin

	if (reset_bar='0') then
			ok:="00000000";--state<=reset;
		elsif (rising_edge(clk)) then
			if (load = '1') then
				ok := "00000000";--state<=set;
				elsif (en1='1' AND en2='1') then
						ok:=d;
			end if;
		end if;	
	qar<=ok;
	end process;


	--process (state)
	--begin
	--	case state is
	--		when set =>
	--			qout <= "10000000";
	--			
	--		when shift =>
	--			for i in 7 downto 1 loop
	--						qout(i-1)<=qout(i);
	--					end loop;
	--		when reset =>
	--			qout<="00000000";
	--	end case;
	--end process;

end architecture;
