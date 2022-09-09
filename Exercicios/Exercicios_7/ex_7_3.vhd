library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex_7_3 is
port
(

LED : out std_logic_vector(2 downto 0);
A, B, C, D, E : in std_logic

);

end entity;

architecture build of ex_7_3 is

signal R, S : std_logic;

begin

R <= (not((not A) and B));
S <= B or C;
LED(0) <= R;
LED(1) <= S;
LED(2) <= (not(((not E) and D) and (S and R)));

end architecture;