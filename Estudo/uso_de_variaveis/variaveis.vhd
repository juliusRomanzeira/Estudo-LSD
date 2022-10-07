library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity variaveis is

end entity;

architecture build of variaveis is

signal x : integer := 0;

begin


process
begin	


report "Valor de X: "& integer'image(x+1); 


wait;	
end process;


end architecture;