library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ProgCnt is
	port(
			DataIn : in std_logic_vector(7 downto 0); --Data input from data bus
			--en : in std_logic;							--Output enable, if en = '0', output in hi-Z mode
			LoadHigh : in std_logic;						--Load high byte of 16-bit address
			LoadLow : in std_logic;							--Load low byte of 16-bit address
			Inc : in std_logic;								--Increment program counter
			LatchNewAddr : in std_logic;					--Latch new addr from newData reg into data reg
			clk : in std_logic;
			clr : in std_logic;								--Clear prog counter (set to 0x0000)
			
			AddrOut : out std_logic_vector(15 downto 0)--Output of prog counter to address bus
		  );
end entity;

architecture arch of ProgCnt is
	signal data, newData : std_logic_vector(15 downto 0);
begin
	
	process(clr, clk, LOadHigh, LoadLow, Inc, DataIn)
	begin
	
		if(clr = '1') then	--Asynchronous clear
			data <= (others => '0');
			newData <= (others => '0');
		elsif (falling_edge(clk)) then
			if(Inc = '1') then
				data <= std_logic_vector(unsigned(data) + 1);
			elsif(LoadHigh = '1' and LoadLow = '0') then
				newData(15 downto 8) <= DataIn;
			elsif(LoadHigh = '0' and LoadLow = '1') then
				newData(7 downto 0) <= DataIn;
			elsif(LatchNewAddr = '1') then
				data <= newData;
			end if;
		end if;
	end process;
	
	AddrOut <= data;-- when en ='1';-- else	--en logic
					--(others => 'Z');
	
end architecture;