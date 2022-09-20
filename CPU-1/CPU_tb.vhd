library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CPU_tb is
end entity;

architecture arch of CPU_tb is

	signal clk_sig, rst_sig, wr_sig, rd_sig : std_logic := '0';
	signal dataBus_sig : std_logic_vector(7 downto 0);
	signal addressBus_sig : std_logic_vector(15 downto 0); 

	component CPU 
		port(
				DataBus : inout std_logic_vector(7 downto 0);
				clk : in std_logic;
				rst : in std_logic;
				
				AddressBus : out std_logic_vector(15 downto 0);
				RD : out std_logic;
				WR : out std_logic
			  );
	end component;

	begin
		
		CPU_1 : CPU port map(dataBus_sig, clk_sig, rst_sig, addressBus_sig, rd_sig, wr_sig);

		-------------------------------------------------------------------------- RESET PROCEDURE
		rst_sig <='0', '1' after 1 ns, '0' after 2 ns;
		
		-------------------------------------------------------------------------- DATA BUS
						-- LDA 0x15					 		LDB 					0x3f					ADD
		dataBus_sig <= X"10", X"15" after 5 ns, X"12" after 9 ns, X"3F" after 13 ns, X"00" after 17 ns,
						--	STA							0x0010									
							X"14" after 21 ns, X"00" after 25 ns, X"10" after 29 ns, (others => 'Z') after 33 ns,
						-- STB							0x0011	
							X"15" after 35 ns, X"00" after 39 ns, X"11" after 43 ns, (others => 'Z') after 47 ns,
						-- AND OR CP ADD
							X"01" after 49 ns, X"02" after 53 ns, X"03" after 57 ns,
						-- JEQ 							0x0010 - jump executed
							X"23" after 61 ns, X"00" after 65 ns, X"10" after 69 ns,
						-- JEQ	0x001F		 JNZ							0xABCD - jump executed
							X"23" after 73 ns, X"21" after 77 ns, X"AB" after 81 ns, X"CD" after 85 ns,
						-- JMP 							0x001F - jump executed
							X"20" after 89 ns, X"00" after 93 ns, X"1F" after 97 ns,
						-- LDAind						0x3456
							X"11" after 101 ns, X"34" after 105 ns, X"56" after 109 ns, X"AA" after 113 ns,
						-- LDBind						0x3456
							X"13" after 115 ns, X"FF" after 119 ns, X"FF" after 123 ns, X"AA" after 127 ns,
						-- CP						  JNZ							0xABCD - jump  not executed
							X"03" after 129 ns, X"21" after 133 ns, X"00" after 137 ns, X"00" after 141 ns;
						
							
		-- ADD AND OR CP LDAimm LDBimm STAind STBind
		-- LDAimm LDBimm JMP JEQ JNC JNZ
		
		-------------------------------------------------------------------------- CLOCK AND AUX PROCESSES		
		clk_proc : process(clk_sig)
		begin
			clk_sig <= NOT clk_sig AFTER 1 ns;
		end process ;

		stop_simulation :process
		begin
				wait for 200 ns; --run the simulation for this duration
				assert false
					report "simulation ended"
					severity failure;
		end process;
	
end architecture;
