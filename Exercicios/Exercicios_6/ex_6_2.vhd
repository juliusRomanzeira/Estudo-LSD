library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex_6_2 is
port
(

Ent : in std_logic_vector(7 downto 0);
sai : out std_logic_vector(3 downto 0)

);

end entity;

architecture build of ex_6_2 is
begin

with Ent select
sai <= "1000" when "11111111",
		 "0111" when "01111111",
		 "0110" when "00111111",
		 "0101" when "00011111",
		 "0100" when "00001111",
		 "0011" when "00000111",
		 "0010" when "00000011",
		 "0001" when "00000001",
		 "0000" when "00000000",
		 "0000" when others;
		 
end architecture;