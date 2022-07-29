library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ALU is
	port(
			A : in unsigned(7 downto 0);					--Two 8-bit operands
			B : in unsigned(7 downto 0);
			OpSel : in std_logic_vector (1 downto 0); --Operation select - ADD, AND, OR, compare
			en : in std_logic;								--Enable output, if en = '0', output in hi-Z mode
			
			zero : out std_logic;							--Status flags
			carry : out std_logic;
			eq : out std_logic;
			Dout: out std_logic_vector(7 downto 0) 	--Data output to data bus
			);
end entity;

architecture arch of ALU is
	signal result : unsigned(7 downto 0);	--Signal for storing result of chosen operation
	signal tmp : unsigned(8 downto 0);		--Signal for getting carry flag bit(8) of this signal
	signal tmp_eq, tmp_zero : std_logic;	--Signals for getting equal and zero flags
begin
	process(A, B, OpSel)
	begin
		result <= (others => '0');
		tmp_eq <= '0';
		case (OpSel) is
			when "00" => result <= A + B; 	--ADD
			when "01" => result <= A and B; --AND
			when "10" => result <= A or B;	--OR
			when "11" => 							--CP
				if(A = B) then
					tmp_eq <= '1';
				end if;
			when others => result <= (others => '0');
		end case;
	end process;
	
	process (result) --Get zero flag
	begin
		if(result = 0) then
			tmp_zero <= '1';
		else
			tmp_zero <= '0';
		end if;
	end process;
	
	Dout <= std_logic_vector(result) when en = '1' else --Enable signal logic
				(others =>'Z');
				
	tmp <= '0' & A + B;	--Getting carry signal
	carry <= tmp(8) when en = '1' else
				'Z';
				
	zero <= tmp_zero when en = '1' else --En logic for flags
				'Z';
				
	eq <= tmp_eq when en = '1' else
				'Z';			
end architecture;