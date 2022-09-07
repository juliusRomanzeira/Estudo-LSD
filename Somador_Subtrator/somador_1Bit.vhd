library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somador_1Bit is
port
(

A, B, Cin: in std_logic;
S, Cout: out std_logic

);
end entity;

architecture build of somador_1Bit is
begin

S <= A xor B xor Cin;

Cout <= (A and b) or (Cin and A) or (Cin and B);

end architecture;
