library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Execution is
	port(
			rst : in std_logic;		
			clk : in std_logic;
			instrIn : in std_logic_vector(7 downto 0);
			zeroFlag : in std_logic;
			eqFlag : in std_logic;
			carryFlag : in std_logic;
			
			--External control signals
			WR : out std_logic;
			RD : out std_logic;
			
			--A reg control signals
			loadA : out std_logic;
			enA : out std_logic;
			
			--B reg control signals
			loadB : out std_logic;
			enB : out std_logic;
			
			--I reg control signals
			loadIR : out std_logic;
			
			--ALU control signals
			OpSel : out std_logic_vector(1 downto 0);
			enALU : out std_logic;
			
			--PC control signals
			enPC : out std_logic;
			LoadHighPC : out std_logic;
			LoadLowPC : out std_logic;
			IncPC : out std_logic;
			LatchNewAddrPC : out std_logic;
			
			--Flag reg control signals
			loadZeroFlagFR : out std_logic;
			loadEqFlagFR : out std_logic;
			loadCarryFlagFR : out std_logic;
			clearFR : out std_logic;
			
			--Addr latch control signals
			loadAL : out std_logic;
			HiByteAL : out std_logic;
			LoByteAL : out std_logic;
			enAL : out std_logic;
			selAL : out std_logic;
			
			--Data buffer control signals
			enDB : out std_logic;
			dirDB : out std_logic
		 );
end entity;

architecture arch of Execution is
	type OPCODE is (ADD, AND_I, OR_I, CP, LDAimm, LDAind, LDBimm, LDBind, STAind, STBind, JMP, JNZ, JPC, JEQ);
   ATTRIBUTE syn_encoding                : STRING;
   ATTRIBUTE syn_encoding OF OPCODE : TYPE IS "00000000 00000001 00000010 00000011 00010000 00010001 00010010 00010011 00010100 00010101 00100000 00100001 00100010 00100011";

	type STATE_T is (InstructionFetch, ADDOperation, ANDOperation, OROperation, CPOperation, IncrementPCjump, IncrementPC, IncrementPC1, IncrementPC2, LoadARegPC, 
					 LoadALHi, LoadALLo, LoadARegAL, LoadBRegPC, LoadBRegAL, StoreAInMem, StoreBInMem, LoadPCHi, LoadPCLo, LatchNewPC);
	signal state, next_state : STATE_T;

begin
	
	NEXT_STATE_PROC : process(rst, clk)
	begin
		if(rst = '1') then
			state <= InstructionFetch;
		elsif(rising_edge(clk)) then
			state <= next_state;
		end if;
	end process;
	
	STATE_PROC : process(state, instrIn, zeroFlag, eqFlag, carryFlag)
	begin
		case instrIn is --OPCODE'VAL(to_integer(unsigned(instrIn))) is
			--------------------------------------------- ADD INSTRUCTION
			when X"00" => --ADD =>
				if(state = InstructionFetch) then
					next_state <= ADDOperation;
				elsif(state = ADDOperation) then
					next_state <= InstructionFetch;
				else
					next_state <= InstructionFetch;
				end if;
			--------------------------------------------- AND INSTRUCTION	
			when X"01" => --AND_I =>
				if(state = InstructionFetch) then
					next_state <= ANDOperation;
				elsif(state = ANDOperation) then
					next_state <= InstructionFetch;
				else
					next_state <= InstructionFetch;
				end if;
			--------------------------------------------- OR INSTRUCTION	
			when X"02" => --OR_I => 
				if(state = InstructionFetch) then
					next_state <= OROperation;
				elsif(state = OROperation) then
					next_state <= InstructionFetch;
				else
					next_state <= InstructionFetch;
				end if;
			--------------------------------------------- CP INSTRUCTION	
			when X"03" => --CP =>
				if(state = InstructionFetch) then
					next_state <= CPOperation;
				elsif(state = CPOperation) then
					next_state <= InstructionFetch;
				else
					next_state <= InstructionFetch;
				end if;
			--------------------------------------------- LDA imm INSTRUCTION	
			when X"10" => --LDAimm =>
				if(state = InstructionFetch) then
					next_state <= IncrementPC;
				elsif(state = IncrementPC) then
					next_state <= LoadARegPC;
				elsif(state = LoadARegPC) then
					next_state <= IncrementPC1;
				elsif(state = IncrementPC1) then
					next_state <= InstructionFetch;
				else
					next_state <= InstructionFetch;
				end if;
			--------------------------------------------- LDA ind INSTRUCTION
			when X"11" => --LDAind =>
				if(state = InstructionFetch) then
					next_state <= IncrementPC;
				elsif(state = IncrementPC) then
					next_state <= LoadALHi;
				elsif(state = LoadALHi) then
					next_state <= IncrementPC1;
				elsif(state = IncrementPC1) then
					next_state <= LoadALLo;
				elsif(state = LoadALLo) then
					next_state <= IncrementPC2;
				elsif(state = IncrementPC2) then
					next_state <= LoadARegAL;
				elsif(state = LoadARegAL) then 
					next_state <= InstructionFetch;
				else
					next_state <= InstructionFetch;
				end if;
			--------------------------------------------- LDB imm INSTRUCTION
			when X"12" => --LDBimm =>
				if(state = InstructionFetch) then
					next_state <= IncrementPC;
				elsif(state = IncrementPC) then
					next_state <= LoadBRegPC;
				elsif(state = LoadBRegPC) then
					next_state <= IncrementPC1;
				elsif(state = IncrementPC1) then
					next_state <= InstructionFetch;
				else
					next_state <= InstructionFetch;
				end if;
			--------------------------------------------- LDB ind INSTRUCTION
			when X"13" => --LDBind =>
				if(state = InstructionFetch) then
					next_state <= IncrementPC;
				elsif(state = IncrementPC) then
					next_state <= LoadALHi;
				elsif(state = LoadALHi) then
					next_state <= IncrementPC1;
				elsif(state = IncrementPC1) then
					next_state <= LoadALLo;
				elsif(state = LoadALLo) then
					next_state <= IncrementPC2;
				elsif(state = IncrementPC2) then
					next_state <= LoadBRegAL;
				elsif(state = LoadBRegAL) then 
					next_state <= InstructionFetch;
				else
					next_state <= InstructionFetch;
				end if;
			--------------------------------------------- STA ind INSTRUCTION
			when X"14" => --STAind =>
				if(state = InstructionFetch) then
					next_state <= IncrementPC;
				elsif(state = IncrementPC) then
					next_state <= LoadALHi;
				elsif(state = LoadALHi) then
					next_state <= IncrementPC1;
				elsif(state = IncrementPC1) then
					next_state <= LoadALLo;
				elsif(state = LoadALLo) then
					next_state <= IncrementPC2;
				elsif(state = IncrementPC2) then
					next_state <= StoreAInMem;
				elsif(state = StoreAInMem) then 
					next_state <= InstructionFetch;
				else
					next_state <= InstructionFetch;
				end if;
			--------------------------------------------- STB ind INSTRUCTION
			when X"15" => --STBind =>
				if(state = InstructionFetch) then
					next_state <= IncrementPC;
				elsif(state = IncrementPC) then
					next_state <= LoadALHi;
				elsif(state = LoadALHi) then
					next_state <= IncrementPC1;
				elsif(state = IncrementPC1) then
					next_state <= LoadALLo;
				elsif(state = LoadALLo) then
					next_state <= IncrementPC2;
				elsif(state = IncrementPC2) then
					next_state <= StoreBInMem;
				elsif(state = StoreBInMem) then 
					next_state <= InstructionFetch;
				else
					next_state <= InstructionFetch;
				end if;
			--------------------------------------------- JMP INSTRUCTION
			when X"20" => --JMP =>
				if(state = InstructionFetch) then
					next_state <= IncrementPC;
				elsif(state = IncrementPC) then
					next_state <= LoadPCHi;
				elsif(state = LoadPCHi) then 
					next_state <= IncrementPC1;
				elsif(state = IncrementPC1) then
					next_state <= LoadPCLo;
				elsif(state = LoadPCLo) then
					next_state <= LatchNewPC;
				elsif(state = LatchNewPC) then 
					next_state <= InstructionFetch;
				else
					next_state <= InstructionFetch;
				end if;
			--------------------------------------------- JNZ INSTRUCTION
			when X"21" => --JNZ =>
				if(state = InstructionFetch) then
					if(zeroFlag = '0') then
						next_state <= IncrementPCjump;
					else
						next_state <= IncrementPC;
					end if;
				elsif(state = IncrementPC) then
					next_state <= InstructionFetch;
				elsif(state = IncrementPCjump) then
					next_state <= LoadPCHi;
				elsif(state = LoadPCHi) then 
					next_state <= IncrementPC1;
				elsif(state = IncrementPC1) then
					next_state <= LoadPCLo;
				elsif(state = LoadPCLo) then
					next_state <= LatchNewPC;
				elsif(state = LatchNewPC) then 
					next_state <= InstructionFetch;
				else
					next_state <= InstructionFetch;
				end if;
			--------------------------------------------- JPC INSTRUCTION
			when X"22" => --JPC =>
				if(state = InstructionFetch) then
					if(carryFlag = '1') then
						next_state <= IncrementPCjump;
					else
						next_state <= IncrementPC;
					end if;
				elsif(state = IncrementPC) then
					next_state <= InstructionFetch;
				elsif(state = IncrementPCjump) then
					next_state <= LoadPCHi;
				elsif(state = LoadPCHi) then 
					next_state <= IncrementPC1;
				elsif(state = IncrementPC1) then
					next_state <= LoadPCLo;
				elsif(state = LoadPCLo) then
					next_state <= LatchNewPC;
				elsif(state = LatchNewPC) then 
					next_state <= InstructionFetch;
				else
					next_state <= InstructionFetch;
				end if;
			--------------------------------------------- JEQ INSTRUCTION
			when X"23" => --JEQ =>
				if(state = InstructionFetch) then
					if(eqFlag = '1') then
						next_state <= IncrementPCjump;
					else
						next_state <= IncrementPC;
					end if;
				elsif(state = IncrementPC) then
					next_state <= InstructionFetch;
				elsif(state = IncrementPCjump) then
					next_state <= LoadPCHi;
				elsif(state = LoadPCHi) then 
					next_state <= IncrementPC1;
				elsif(state = IncrementPC1) then
					next_state <= LoadPCLo;
				elsif(state = LoadPCLo) then
					next_state <= LatchNewPC;
				elsif(state = LatchNewPC) then 
					next_state <= InstructionFetch;
				else
					next_state <= InstructionFetch;
				end if;
			--------------------------------------------- OTHER - INVALID OPCODE
			when others => 
				next_state <= InstructionFetch;
		end case;
	end process;
	
	CTRL_SIG_PROC : process(state)
	begin
		WR <= '1';
		RD <= '1';
		loadA <= '0';
		enA <= '0';
		loadB <= '0';
		enB <= '0';
		loadIR <= '0';
		OpSel <= "00";
		enALU <= '0';
		enPC <= '0';
		LoadHighPC <= '0';
		LoadLowPC <= '0';
		IncPC <= '0';
		LatchNewAddrPC <= '0';
		loadZeroFlagFR <= '0';
		loadEqFlagFR <= '0';
		loadCarryFlagFR <= '0';
		clearFR <= '0';
		loadAL <= '0';
		HiByteAL <= '0';
		LoByteAL <= '0';
		enAL <= '0';
		selAL <= '0';
		enDB <= '0';
		dirDB <= '0';
		
		case state is
			when InstructionFetch =>
				enPC <= '1';
				enAL <= '1';
				RD <= '0';
				enDB <= '1';
				loadIR <= '1';
			when ADDOperation =>
				IncPC <= '1';
				loadA <= '1';
				enALU <= '1';
				loadZeroFlagFR <= '1';
				loadCarryFlagFR <= '1';
				loadEqFlagFR <= '1';
			when ANDOperation =>
				IncPC <= '1';
				loadA <= '1';
				OpSel <= "01";
				enALU <= '1';
				loadZeroFlagFR <= '1';
				loadEqFlagFR <= '1';
			when OROperation =>
				IncPC <= '1';
				loadA <= '1';
				OpSel <= "10";
				enALU <= '1';
				loadZeroFlagFR <= '1';
				loadEqFlagFR <= '1';
			when CPOperation =>
				IncPC <= '1';
				loadA <= '1';
				OpSel <= "11";
				enALU <= '1';
				loadZeroFlagFR <= '1';
				loadEqFlagFR <= '1';
			when IncrementPCjump =>
				IncPC <= '1';
				clearFR <= '1';
			when IncrementPC =>
				IncPC <= '1';
			when IncrementPC1 =>
				IncPC <= '1';
			when IncrementPC2	=>
				IncPC <= '1';
			when LoadARegPC =>
				enPC <= '1';
				enAL <= '1';
				RD <= '0';
				enDB <= '1';
				loadA <= '1';
			when LoadALHi =>
				enPC <= '1';
				loadAL <= '1';
				HiByteAL <= '1';
				enAL <= '1';
				RD <= '0';
				enDB <= '1';
			when LoadALLo =>
				enPC <= '1';
				loadAL <= '1';
				LoByteAL <= '1';
				enAL <= '1';
				RD <= '0';
				enDB <= '1';
			when LoadARegAL =>
				enAL <= '1';
				selAL <= '1';
				RD <= '0';
				enDB <= '1';
				loadA <= '1';
			when LoadBRegPC =>
				enPC <= '1';
				enAL <= '1';
				RD <= '0';
				enDB <= '1';
				loadB <= '1';
			when LoadBRegAL =>
				enAL <= '1';
				selAL <= '1';
				RD <= '0';
				enDB <= '1';
				loadB <= '1';
			when StoreAInMem =>
				enAL <= '1';
				selAL <= '1';
				WR <= '0';
				enDB <= '1';
				dirDB <= '1';
				enA <= '1';
			when StoreBInMem =>
				enAL <= '1';
				selAL <= '1';
				WR <= '0';
				enDB <= '1';
				dirDB <= '1';
				enB <= '1';
			when LoadPCHi =>
				enPC <= '1';
				LoadHighPC <= '1';
				enAL <= '1';
				RD <= '0';
				enDB <= '1';
			when LoadPCLo =>
				enPC <= '1';
				LoadLowPC <= '1';
				enAL <= '1';
				RD <= '0';
				enDB <= '1';
			when LatchNewPC =>
				LatchNewAddrPC <= '1';
				clearFR <= '1';
		end case;
	end process;
	
end architecture;