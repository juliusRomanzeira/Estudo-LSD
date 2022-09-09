library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex_6 is
port
(

A, B, C : in std_logic;
X : out std_logic

);

end entity;

architecture build of ex_6 is
begin

X <= A xor B xor C;

end architecture;