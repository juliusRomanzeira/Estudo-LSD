library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex_fixacao is

port ( a,b : in std_logic;
        c : out std_logic);
		  
end entity;

architecture behaviorOfTest of ex_fixacao is
	begin
	-- a = ehkey[0], b = ehkey[1],, c = led[0]
		process(a,b)
		begin
			if(a='1' and b='0') then
           c<='1';
			elsif(a='0' and b='1') then
			  c<='1';
			else
			  c<='0';
			end if;
		end process;
		
end architecture;