library IEEE; use IEEE.STD_LOGIC_1164.all;

entity my_demux is
	port(input, sel: in STD_LOGIC; a, b: out STD_LOGIC);
end;

architecture synth of my_demux is
	signal sel_not: STD_LOGIC;
begin
	not_inst: entity work.my_not
		port map(a => sel, my_out => sel_not);

	and1_inst: entity work.my_and
		port map(a => input, b => sel_not, my_out => a);

	and2_inst: entity work.my_and
		port map(a => input, b => sel, my_out => b);
end;