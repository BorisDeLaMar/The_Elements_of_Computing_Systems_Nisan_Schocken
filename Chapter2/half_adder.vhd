library IEEE; use IEEE.STD_LOGIC_1164.all;

entity half_adder is
	port(a, b: in STD_LOGIC; sum, carry: out STD_LOGIC);
end;

architecture synth of half_adder is
begin
	sum <= a xor b;
	carry <= a and b; 
end;