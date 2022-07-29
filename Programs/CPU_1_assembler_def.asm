#ruledef mathematical
{
	ADD => 0x00
	AND => 0x01
	OR => 0x02
	CP => 0x03
}

#subruledef addressing_mode
{
	{immediate: u8} => 0b0 @ immediate
	[{address: u16}] => 0b1 @ address
}

#ruledef memory
{
	LDA {addr: addressing_mode} => 0b0001000 @ addr
	LDB {addr: addressing_mode} => 0b0001001 @ addr
	STA [{address: u16}] => 0x14 @ address
	STB [{address: u16}] => 0x15 @ address
}

#ruledef jump
{
	JMP {address: u16} => 0x20 @ address
	JNZ {address: u16} => 0x21 @ address
	JPC {address: u16} => 0x22 @ address
	JEQ {address: u16} => 0x23 @ address
}