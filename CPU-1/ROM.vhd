 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_unsigned.all;
 
 entity ROM is
	generic (
   DATA_WIDTH :integer := 8;
   ADDR_WIDTH :integer := 4
	);
port (
	address :in    std_logic_vector (3 downto 0); -- address Input
   data    :inout std_logic_vector (DATA_WIDTH-1 downto 0); -- data bi-directional
   cs      :in    std_logic;                                -- Chip Select
   oe      :in    std_logic                                 -- Output Enable
   );
end entity;
architecture rtl of ROM is
	----------------Internal variables----------------
	--constant ROM_DEPTH :integer := 2**ADDR_WIDTH;

	--signal data_out :std_logic_vector (DATA_WIDTH-1 downto 0);

	--type ROM is array (integer range <>)of std_logic_vector (DATA_WIDTH-1 downto 0);
	--signal mem : ROM (0 to ROM_DEPTH-1) := (X"10", X"01", X"12", X"01", X"14", X"00", X"10", X"00", X"13", X"00", X"10", X"20", X"00", X"04", X"00", X"00");
	begin 
	----------------Code Starts Here------------------
	-- Tri-State Buffer control
	--data <= data_out when (cs = '0' and oe = '0') else (others=>'Z');

	-- Memory Read Block
--	MEM_READ:
--	process (address, cs, oe, mem) begin
--		if (cs = '0' and oe = '0')  then
--			data_out <= mem(conv_integer(address));
--		else 
--			data_out <= (others => '0');
--		end if;
--	end process;

	-- Memory Read Block
	MEM_READ:
	process (address, cs, oe) begin
		if (cs = '0' and oe = '0')  then
			case address is
				when X"0" =>
					data <= X"10";
				when X"1" =>
					data <= X"01";
				when X"2" =>
					data <= X"12";
				when X"3" =>
					data <= X"01";
				when X"4" =>
					data <= X"14";
				when X"5" =>
					data <= X"00";
				when X"6" =>
					data <= X"10";
				when X"7" =>
					data <= X"00";
				when X"8" =>
					data <= X"13";
				when X"9" =>
					data <= X"00";
				when X"A" =>
					data <= X"10";
				when X"B" =>
					data <= X"20";
				when X"C" =>
					data <= X"00";
				when X"D" =>
					data <= X"04";
				when others =>
					data <= (others => '0');
			end case;
		else 
			data <= (others => 'Z');
		end if;
	end process;
	
end architecture;