library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Ireg is
	port(
			din : in std_logic_vector(7 downto 0);
			load : in std_logic;
			clk : in std_logic;
			clr : in std_logic;
			
			dout : out std_logic_vector(7 downto 0)
		  );
end entity;

architecture arch of Ireg is
	signal data : std_logic_vector(7 downto 0);

begin

	process(din, load, clk, clr)
	begin
	
		if(clr = '1') then
			data <= (others => '0');
		elsif(falling_edge(clk)) then
			if(load = '1') then
				data <= din;
			end if;
		end if;
	
	end process;

	dout <= data;
	
end architecture;