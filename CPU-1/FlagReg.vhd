library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity FlagReg is
	port(
			clr : in std_logic;		--clr register
			ZeroIn : in std_logic;		--Inputs of flag signals from ALU
			EqIn : in std_logic;
			CarryIn : in std_logic;
			clk : in std_logic;
			loadZero : in std_logic;
			loadEq : in std_logic;
			loadCarry : in std_logic;
			
			ZeroOut : out std_logic;	--Output of flag register to execution unit
			CarryOut : out std_logic;
			EqOut : out std_logic
		 );
end entity;

architecture arch of FlagReg is
	signal data : std_logic_vector(2 downto 0);
begin
	
	process(clr, ZeroIn, EqIn, CarryIn, clk, loadZero, loadEq, loadCarry)
	begin
		if(clr = '1') then	--Asynchronous clr
			data <= (others => '0');
		elsif(falling_edge(clk)) then --On falling edge, if load = '1', load states of all flags
			if(loadZero = '1') then
				data(2) <= ZeroIn;
			end if;
			if(loadEq = '1') then
				data(1) <= EqIn;
			end if;
			if(loadCarry = '1') then
				data(0) <= CarryIn;
			end if;
		end if;
	end process;
	
	ZeroOut <= data(2);	--Output current flag reg status to execution unit
	EqOut <= data(1);
	CarryOut <= data(0);
	
end architecture;