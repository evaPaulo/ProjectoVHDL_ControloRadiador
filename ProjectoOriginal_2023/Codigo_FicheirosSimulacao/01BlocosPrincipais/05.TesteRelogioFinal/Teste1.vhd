library IEEE;
use ieee.std_logic_1164.all;

entity Teste1 is

	port (CLOCK_50							: in std_logic;
			SW									: in std_logic_vector(1 downto 0);
			KEY								: in std_logic_vector(2 downto 0);
			HEX0, HEX1, HEX2, HEX3		: out std_logic_vector(6 downto 0));
end Teste1;

architecture comp of Teste1 is
signal s_hex, s_pulse	:	std_logic;		--pulsos
signal s_up, s_dw, s_tS	: std_logic;		--teclas

begin

	pulsos:	entity work.PulseGen(compPulseGen)
				port map	(clockIn		=> CLOCK_50,
							 acel			=> SW(1 downto 0),
							 pulseHex	=> s_hex,
							 pulseOut	=> s_pulse);

	dTeclaD:	entity work.DebounceUnit(Behavioral)
				generic map(kHzClkFreq 			=> 50000,
								mSecMinInWidth 	=> 100,
								inPolarity 			=> '0',
								outPolarity 		=> '1')
				port map (refClk		=> CLOCK_50,
							 dirtyIn		=> KEY(0),
							 pulsedOut	=> s_dw);
								
							 
	dTeclaU:	entity work.DebounceUnit(Behavioral)
				generic map(kHzClkFreq 			=> 50000,
								mSecMinInWidth 	=> 100,
								inPolarity 			=> '0',
								outPolarity 		=> '1')
				port map (refClk		=> CLOCK_50,
							 dirtyIn		=> KEY(1),
							 pulsedOut	=> s_up);
							 
	dTeclaS:	entity work.DebounceUnit(Behavioral)
				generic map(kHzClkFreq 			=> 50000,
								mSecMinInWidth 	=> 100,
								inPolarity 			=> '0',
								outPolarity 		=> '1')
				port map (refClk		=> CLOCK_50,
							 dirtyIn		=> KEY(2),
							 pulsedOut	=> s_tS);
							 
	relogio:	entity work.RelogioFinal(compRelogioFinal)
				port map (clk		=> CLOCK_50,
							 pulso	=> s_pulse,
							 div		=> s_hex,
							 up		=> s_up,
							 dw		=> s_dw,
							 tS		=> s_tS,
							 hD		=> HEX3 (6 downto 0),
							 hU		=> HEX2 (6 downto 0),
							 mD		=> HEX1 (6 downto 0),
							 mU		=> HEX0 (6 downto 0));

end comp;						 