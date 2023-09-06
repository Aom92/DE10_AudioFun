--Codigo tomado de FPGA4Fun.com
--https://www.fpga4fun.com/PWM_DAC_2.html
-- ??? Esto es un DAC Sigma-Delta de Primer orden. 
-- Cual es la frecuencia optima para el reloj ? 
-- 50 Mhz - THD es demasiado alto.
-- 10 Mhz - THD alto.
-- 10 Mhz > X Mhz - THD ??? Que valor requeriré  

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity DAC_signed is 
	Port( Reloj : in std_logic;
			D : in signed (25 downto 0);
			S : out std_logic);
end DAC_signed;

architecture Behavioral of DAC_signed is
signal PWM_Acumulador : signed(26 downto 0);
begin 
	process (Reloj)	
	begin	
		if rising_edge(Reloj) then
			
			PWM_Acumulador <= ( "0" & PWM_Acumulador(25 downto 0) ) + ( "0" & D  ) ;
			
		
		end if;
		
	end process;
	S <= PWM_Acumulador(26);
	
end Behavioral;
