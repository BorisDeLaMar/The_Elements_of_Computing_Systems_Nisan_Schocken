library IEEE; use IEEE.STD_LOGIC_1164.all;

entity xvi_bit_or is
	port(a, b: in STD_LOGIC_VECTOR(15 downto 0); my_out: out STD_LOGIC_VECTOR(15 downto 0));
end;

architecture behavioral of xvi_bit_or is
begin
	gen_or: for i in 0 to 15 generate
	begin
		or_inst: entity work.my_or port map(a => a(i), b => b(i), my_out => my_out(i));
	end generate gen_or;
end;