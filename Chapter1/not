library IEEE; use IEEE.STD_LOGIC_1164.all;

entity my_not is
	port(a: in STD_LOGIC; my_out: out STD_LOGIC);
end;

architecture synth of my_not is
begin
	nand_inst: entity work.my_nand
		port map(a => a, b => a, my_out => my_out);
end;