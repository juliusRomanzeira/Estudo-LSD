library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somador_subtrator_1Bit is
port
(
A, B, Cin, M : in std_logic;
S, Cout : out std_logic
);
end entity;

architecture build of somador_subtrator_1Bit is
begin

S <= A xor B xor Cin;
Cout <= (B and Cin) or ((M xor A) and (B or Cin));

end architecture;