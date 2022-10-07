library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Somador_Completo is
port
(

A, B: in std_logic_vector(2 downto 0);
S: out std_logic_vector(3 downto 0)


);
end entity;

architecture build of Somador_Completo is
signal Cout : std_logic_vector(4 downto 0);
begin

bit1 : entity work.somador_1Bit
port map (A => A(0), B => B(0), Cin => '0', S => S(0), Cout => Cout(0));

bit2 : entity work.somador_1Bit
port map (A => A(1), B => B(1), Cin => Cout(0), S => S(1), Cout => Cout(1));

bit3 : entity work.somador_1Bit
port map (A => A(2), B => B(2), Cin => Cout(1), S => S(2), Cout => S(3));

end architecture;
