library ieee;
use ieee.std_logic_1164.all;

entity AD_SAR is

	port(
		reset_bar,soc,comp_in,clk : in std_logic;
		eoc:out std_logic;
		AD_result,digital_in : out std_logic_vector(7 downto 0)
		);
end entity; 

architecture todo of AD_SAR is

	signal eoc_signal 			: std_logic;
	signal result_signal			: std_logic_vector (7 downto 0);
	
begin		
	casitodo:	entity work.SAR port map(	clk => clk,
														reset_bar => reset_bar,
														soc => soc,
														eoc => eoc_signal,
														comp_in => comp_in,
														result=> result_signal														
				 );

	guarda: entity work.xlatch port map(	reset_bar => reset_bar,
														d_in => result_signal,
														le => eoc_signal,
														q => AD_result
				);
			
	eoc<=eoc_signal;
	
	digital_in<=result_signal;
	
end todo;
		