library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity reg is
	port(
			din : in std_logic_vector(7 downto 0); --Data input from data bus
			load : in std_logic;							--If high, load data on rising edge
			clr : in std_logic;
			clk : in std_logic;
			en : in std_logic;							--Enable data bus output, if '0' data bus output in hi-Z state
			
			doutALU : out std_logic_vector(7 downto 0); --Data Output to ALU, always active
			doutBus : out std_logic_vector(7 downto 0)  --Data output to data bus, active if en = '1'
		 );
end entity;

architecture arch of reg is
signal data : std_logic_vector(7 downto 0);

begin
	process (clk, din, clr, load)
	begin
		if (clr = '1') then	--Asynchronous clear
			data <= (others => '0');
		elsif (falling_edge(clk)) then --If load = '1', load data on falling edge of the clock
			if (load = '1') then
				data <= din;
			end if;
		end if;
	end process;
	
	doutBus <= data when en = '1' else	--enable logic
				  (others => 'Z');
	doutALU <= data;
	
	
end architecture;