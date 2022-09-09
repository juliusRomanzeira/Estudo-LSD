library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex_6_3 is
port

(

F: in std_logic_vector(3 downto 0);
O: out std_logic

);

end entity;

architecture build of ex_6_3 is
begin

with F select
O <= '1' when "0001",
	  '1' when "0010",
	  '1' when "0100",
	  '0' when others;

end architecture;