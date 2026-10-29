library IEEE; use IEEE.STD_LOGIC_1164.all;

entity xvi_bit_not is
	port(a: in STD_LOGIC_VECTOR(15 downto 0); my_out: out STD_LOGIC_VECTOR(15 downto 0));
end;

architecture behavioral of xvi_bit_not is
begin
	gen_not: for i in 0 to 15 generate
	begin
		not_inst: entity work.my_not port map(a => a(i), my_out => my_out(i));
	end generate gen_not;
end;