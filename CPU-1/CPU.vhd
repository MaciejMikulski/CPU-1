library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity CPU is
	port(
			DataBus : inout std_logic_vector(7 downto 0);
			clk : in std_logic;
			rst : in std_logic;
			
			AddressBus : out std_logic_vector(15 downto 0);
			RD : out std_logic;
			WR : out std_logic
		  );
end entity;

architecture arch of CPU is

signal EqFlag_ALU_to_FR, ZeroFlag_ALU_to_FR, CarryFlag_ALU_to_FR, EqFlag_to_Ctrl, ZeroFlag_to_Ctrl, CarryFlag_to_Ctrl : std_logic;
signal A_to_ALU, B_to_ALU, I_to_Ctrl, dBus : std_logic_vector(7 downto 0);
signal aBus : std_logic_vector(15 downto 0);
signal WR_to_out, RD_to_out : std_logic;
signal loadA, enA, loadB, enB, loadIR, enALU, LoadHighPC, LoadLowPC, IncPC, LatchNewAddrPC, loadZeroFlagFR, loadEqFlagFR, loadCarryFlagFR, --enPC,
		 clearFR, loadAL, HiByteAL, LoByteAL, --enAL, 
		 selAL, enDB, dirDB :  std_logic;
signal clearFR_sig : std_logic; -- result of ORing clearFR and rst signals 
signal OpSel : std_logic_vector(1 downto 0);


---------------------------- Register module - used for A and B registers
component reg
	port(
			din : in std_logic_vector(7 downto 0);
			load : in std_logic;							
			clr : in std_logic;
			clk : in std_logic;
			en : in std_logic;							
			
			doutALU : out std_logic_vector(7 downto 0); 
			doutBus : out std_logic_vector(7 downto 0)  
		 );
end component;

---------------------------- ALU - Arithmetic-Logic Unit
component ALU
	port(
			A : in unsigned(7 downto 0);					
			B : in unsigned(7 downto 0);
			OpSel : in std_logic_vector (1 downto 0); 
			en : in std_logic;								
			
			zero : out std_logic;						
			carry : out std_logic;
			eq : out std_logic;
			Dout: out std_logic_vector(7 downto 0) 	
			);
end component;

---------------------------- Program Counter
component ProgCnt
	port(
			DataIn : in std_logic_vector(7 downto 0);
			--en : in std_logic;							
			LoadHigh : in std_logic;						
			LoadLow : in std_logic;							
			Inc : in std_logic;								
			LatchNewAddr : in std_logic;					
			clk : in std_logic;
			clr : in std_logic;								
			
			AddrOut : out std_logic_vector(15 downto 0)
		  );
end component;

---------------------------- Flag Register
component FlagReg 
	port(
			clr : in std_logic;		
			ZeroIn : in std_logic;		
			EqIn : in std_logic;
			CarryIn : in std_logic;
			clk : in std_logic;
			loadZero : in std_logic;
			loadEq : in std_logic;
			loadCarry : in std_logic;
			
			ZeroOut : out std_logic;	
			CarryOut : out std_logic;
			EqOut : out std_logic
		 );
end component;

---------------------------- Address Latch - latches addresses put on the address bus
component AddrLatch
	port(
			AddrBusIn : in std_logic_vector(15 downto 0); 
			DataBusIn : in std_logic_vector(7 downto 0);	 
			load : in std_logic;									 	
			HiByte :in std_logic;								
			LoByte : in std_logic;								
			--en : in std_logic;								
			clr : in std_logic;
			clk : in std_logic;
			sel : in std_logic;
			
			AddrBusOut : out std_logic_vector(15 downto 0)
		 );
end component;

---------------------------- Data Buffer - passes data between internal and external data buses
component DataBuffer
	port(
			Data1 : inout std_logic_vector(7 downto 0);
			Data2 : inout std_logic_vector(7 downto 0);
			
			en : in std_logic;
			dir : in std_logic
		 );
end component;

---------------------------- Instruction Register - stores currently executed instruction
component Ireg
	port(
			din : in std_logic_vector(7 downto 0);
			load : in std_logic;
			clk : in std_logic;
			clr : in std_logic;
			
			dout : out std_logic_vector(7 downto 0)
		  );
end component;

---------------------------- Execution and Control Unit
component Execution
	port(
			rst : in std_logic;		
			clk : in std_logic;
			instrIn : in std_logic_vector(7 downto 0);
			zeroFlag : in std_logic;
			eqFlag : in std_logic;
			carryFlag : in std_logic;
			WR : out std_logic;
			RD : out std_logic;
			loadA : out std_logic;
			enA : out std_logic;
			loadB : out std_logic;
			enB : out std_logic;
			loadIR : out std_logic;
			OpSel : out std_logic_vector(1 downto 0);
			enALU : out std_logic;
			--enPC : out std_logic;
			LoadHighPC : out std_logic;
			LoadLowPC : out std_logic;
			IncPC : out std_logic;
			LatchNewAddrPC : out std_logic;
			loadZeroFlagFR : out std_logic;
			loadEqFlagFR : out std_logic;
			loadCarryFlagFR : out std_logic;
			clearFR : out std_logic;
			loadAL : out std_logic;
			HiByteAL : out std_logic;
			LoByteAL : out std_logic;
			--enAL : out std_logic;
			selAL : out std_logic;
			enDB : out std_logic;
			dirDB : out std_logic
		 );
end component;

begin
	Areg : reg port map(din => dBus, load => loadA, clr => rst, clk => clk, en => enA, doutALU => A_to_ALU, doutBus => dBus);
	Breg : reg port map(din => dBus, load => loadB, clr => rst, clk => clk, en => enB, doutALU => B_to_ALU, doutBus => dBus);
	
	Arith : ALU port map(A => unsigned(A_to_ALU), B => unsigned(B_to_ALU), OpSel => OpSel, en => enALU, zero => ZeroFlag_ALU_to_FR,
								carry => CarryFlag_ALU_to_FR, eq => EqFlag_ALU_to_FR, Dout => dBus);
								
	PC : ProgCnt port map(DataIn => dBus, LoadHigh => LoadHighPC, LoadLow => LoadLowPC,  Inc => IncPC, --en => enPC,							
								 LatchNewAddr => LatchNewAddrPC, clk => clk, clr => rst, AddrOut => aBus);
	
	clearFR_sig <= (rst or clearFR);
	FR : FlagReg port map(clr => clearFR_sig, ZeroIn => ZeroFlag_ALU_to_FR, EqIn => EqFlag_ALU_to_FR, CarryIn => CarryFlag_ALU_to_FR,
								 clk => clk, loadZero => loadZeroFlagFR, loadEq => loadEqFlagFR, loadCarry => loadCarryFlagFR, ZeroOut => ZeroFlag_to_Ctrl,
								 CarryOut => CarryFlag_to_Ctrl, EqOut => EqFlag_to_Ctrl);
								 
	AL : AddrLatch port map(AddrBusIn => aBus, DataBusIn => dBus, load => loadAL, HiByte => HiByteAL, LoByte => LoByteAL, --en => enAL, 
									clr => rst, clk => clk, sel => selAL, AddrBusOut => AddressBus);
	
	DB : DataBuffer port map(Data1 => dBus, Data2 => DataBus, en => enDB, dir => dirDB);
	
	IR : Ireg port map(din => dBus, load => loadIR, clk => clk, clr => rst, dout => I_to_Ctrl);
	
	Ctrl : Execution port map(rst => rst, 	clk => clk, instrIn => I_to_Ctrl, zeroFlag => ZeroFlag_to_Ctrl, eqFlag => EqFlag_to_Ctrl, carryFlag => CarryFlag_to_Ctrl,
									WR => WR, RD => RD, loadA => loadA, enA => enA, loadB => loadB, enB => enB, loadIR  => loadIR, OpSel => OpSel, enALU => enALU, --enPC => enPC,
									LoadHighPC => LoadHighPC, LoadLowPC => LoadLowPC, IncPC => IncPC, LatchNewAddrPC => LatchNewAddrPC, loadZeroFlagFR => loadZeroFLagFR, 
									loadEqFlagFR => loadEqFlagFR, loadCarryFlagFR => loadCarryFlagFR, clearFR => clearFR, loadAL => loadAL, HiByteAL => HiByteAL, LoByteAL => LoByteAL, 
									--enAL => enAL, 
									selAL => selAL, enDB => enDB, dirDB => dirDB);
	
end architecture;