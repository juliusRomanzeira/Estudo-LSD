library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity xor_7_1 is
port
(

A, B: in std_logic;
s: out std_logic

);

end entity;

architecture build of xor_7_1 is
begin

s <= A xor B;

end architecture;