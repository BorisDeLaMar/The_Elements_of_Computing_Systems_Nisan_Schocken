library IEEE; use IEEE.STD_LOGIC_1164.all;

entity my_nand is
	port(a, b: in STD_LOGIC; my_out: out STD_LOGIC);
end;


architecture synth of my_nand is
begin
	my_out <= a nand b;
end;