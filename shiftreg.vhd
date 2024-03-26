library ieee;
use ieee.std_logic_1164.all;

entity shiftreg is

	port(
		clk	 		: in	std_logic;
		clr_bar		: in	std_logic;
		load	 		: in	std_logic;
		en			 	: in	std_logic;
		qout		 	: out	std_logic_vector ( 7 downto 0)
	);

end entity; 

architecture move of shiftreg is


--	type state_type is (set, shift, reset);

--	signal state   : state_type;

begin		

	process (clk, clr_bar, load)	
		variable ok:std_logic_vector(7 downto 0);
	begin
	if (clr_bar='0') then
			ok:="00000000";--state<=reset;
		elsif (rising_edge(clk)) then
			if (load = '1') then
				ok := "10000000";--state<=set;
			elsif (en= '1') then
					for i in 0 to 6 loop
							ok(i):=ok(i+1);
						end loop;--state<=shift;
						ok(7) := '0';		
			end if;
		end if;	
	qout<=ok;
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
