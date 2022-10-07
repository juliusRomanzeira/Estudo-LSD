library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex_7_2 is
port
(

A, B, C : in std_logic;
LED : out std_logic_vector(3 downto 0)

);

end entity;

architecture build of ex_7_2 is

signal R, S, T : std_logic;

begin

R <= A and C;
S <= B and (not C);
T <= (not A) and B and C;

LED(0) <= R;
LED(1) <= S;
LED(2) <= T;
LED(3) <= R or S or T;

end architecture;