library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity RAM is
	port(
			ce : in std_logic; -- Chip enable, active low
			we : in std_logic; -- Write enable, active low
			re : in std_logic; -- Read enable, active low
			addr : in std_logic_vector(4 downto 0); -- Address bus
			
			data : inout std_logic_vector(7 downto 0) --Data bus
			);
end entity;

architecture arch of RAM is

	signal data_out : std_logic_vector(7 downto 0);
	
	type memory_array is array (integer range <>) of std_logic_vector(7 downto 0);
	signal mem : memory_array(0 to 31);

begin

	-- Output data onto data bus only when there is correct combination of control signals:
	-- chip is selected an only read input is active. In other cases go into high Z mode
	data <= data_out when (ce = '0' and re = '0' and we = '1') else (others => 'Z');
	
	MEM_WRITE: process (addr, data, ce, we)
	begin
		
		if(ce = '0' and we = '0') then
			mem(conv_integer(addr)) <= data;
		end if;
		
	end process;
	
	MEM_READ: process (addr, ce, we, re, mem)
	begin
		
		if(ce = '0' and we = '1' and re = '0') then
			 data_out <= mem(conv_integer(addr));
		end if;
		
	end process;
	
end architecture;