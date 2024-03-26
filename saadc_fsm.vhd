library ieee;
use ieee.std_logic_1164.all;

entity saadc_fsm is

	port(
		clk	 		: in	std_logic;
		reset_bar	: in	std_logic;
		soc	 		: in	std_logic;
		last_bit	 	: in	std_logic;
		load	 		: out	std_logic;
		en	 			: out	std_logic;
		en2		 	: out	std_logic;
		eoc		 	: out	std_logic
	);

end entity;

architecture rtl of saadc_fsm is


	type state_type is (idle, initial, shift);

	signal state   : state_type;

begin


	process (clk, reset_bar, last_bit, soc)
	begin
		if reset_bar = '0' then
			state <= idle;
		elsif (rising_edge(clk)) then
			case state is
				when idle=>
					if soc = '1' then
						state <= initial;
					else
						state <= idle;
					end if;
				when initial=>
						state <= shift;
				when shift=>
					if last_bit = '1' then
						state <= idle;
					else
						state <= shift;
					end if;	
			end case;
		end if;
	end process;


	process (state)
	begin
		case state is
			when idle =>
				en 	<= 	'0';
				en2 	<= 	'0';
				eoc 	<= 	'1';
				load	<=		'0';
				when initial =>
				en 	<= 	'0';
				en2 	<= 	'0';
				eoc 	<= 	'0';
				load	<=		'1';
			when shift =>
				en 	<= 	'1';
				en2 	<= 	'1';
				eoc 	<= 	'0';
				load	<=		'0';
		end case;
	end process;

end rtl;
