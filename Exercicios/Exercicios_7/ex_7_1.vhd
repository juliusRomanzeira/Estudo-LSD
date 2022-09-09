library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex_7_1 is
port
(

A, B : in std_logic_vector(3 downto 0);
O: out std_logic

);

end entity;

architecture build of ex_7_1 is

signal X: std_logic_vector(3 downto 0);

begin

xor1: entity work.xor_7_1
port map(A => A(0), B => B(0), s => X(0));

xor2: entity work.xor_7_1
port map(A => A(1), B => B(1), s => X(1));

xor3: entity work.xor_7_1
port map(A => A(2), B => B(2), s => X(2));

xor4: entity work.xor_7_1
port map(A => A(3), B => B(3), s => X(3));

O <= not(X(3) or X(2) or X(1) or X(0));

end architecture;