library IEEE; use IEEE.STD_LOGIC_1164.all;

entity xvi_bit_and is
	port(a, b: in STD_LOGIC_VECTOR(15 downto 0); my_out: out STD_LOGIC_VECTOR(15 downto 0));
end;

architecture behavioral of xvi_bit_and is
begin
	gen_and: for i in 0 to 15 generate
	begin
		and_inst: entity work.my_and port map(a => a(i), b => b(i), my_out => my_out(i));
	end generate gen_and;
end;