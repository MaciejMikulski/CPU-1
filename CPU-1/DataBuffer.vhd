library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DataBuffer is
	port(
			Data1 : inout std_logic_vector(7 downto 0);
			Data2 : inout std_logic_vector(7 downto 0);
			
			en : in std_logic;
			dir : in std_logic
		 );
end entity;

architecture arch of DataBuffer is
begin

	Data1 <= Data2 when (dir = '0' and en = '1') else -- Data into CPU
            (others => 'Z');

	Data2 <= Data1 when (dir = '1' and en = '1') else -- Data out of CPU
            (others => 'Z');
	
end architecture;