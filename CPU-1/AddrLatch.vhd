library IEEE;
use IEEE.std_logic_1164.all;

entity AddrLatch is
	port(
			AddrBusIn : in std_logic_vector(15 downto 0); --Input of address from address bus (program counter)
			DataBusIn : in std_logic_vector(7 downto 0);	 --Input of address from data bus (during instructions, which access memory data)
			load : in std_logic;									 --On rising edge of the clock, load data to latch if load ='1'	
			HiByte :in std_logic;								 --Load data from data bus to high byte of address latch
			LoByte : in std_logic;								 --Load data from data bus to low byte of address latch
			--en : in std_logic;								 --Address output enable, if en = '0', output is in hi-Z mode
			clr : in std_logic;
			clk : in std_logic;
			sel : in std_logic;
			
			AddrBusOut : out std_logic_vector(15 downto 0)
		 );
end entity;

architecture arch of AddrLatch is
signal data, tmp : std_logic_vector(15 downto 0);

begin
	process (DataBusIn, clr, clk, load, HiByte, LoByte)
	begin
		if (clr = '1') then	--Asynchronous clear
			data <= (others => '0');
		elsif (rising_edge(clk)) then --If load = '1', load data on rising edge of the clock
			if (load = '1') then
				if(LoByte = '1' and HiByte = '0') then
					data(7 downto 0) <= DataBusIn;
				elsif(LoByte = '0' and HiByte = '1') then
					data(15 downto 8) <= DataBusIn;
				end if;
			end if;
		end if;
	end process;

	tmp <= data when sel = '1' else --AddrBus/DataBus selection logic
			 AddrBusIn;
	
	AddrBusOut <= tmp; --when en = '1' else
					  --(others=>'Z');
	
end architecture;