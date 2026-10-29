library IEEE; use IEEE.STD_LOGIC_1164.all;

entity my_xor is
	port(a, b: in STD_LOGIC; my_out: out STD_LOGIC);
end;

architecture synth of my_xor is
	signal or_out: STD_LOGIC;
	signal nand_out: STD_LOGIC;
begin
	or_inst: entity work.my_or
		port map(a => a, b => b, my_out => or_out);
	
	nand_inst: entity work.my_nand
		port map(a => a, b => b, my_out => nand_out);

	and_inst: entity work.my_and
		port map(a => or_out, b => nand_out, my_out => my_out);
end;