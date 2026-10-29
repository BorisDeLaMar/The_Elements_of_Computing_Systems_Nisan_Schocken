library IEEE; use IEEE.STD_LOGIC_1164.all;

entity xvi_bit_adder is
	port(a, b: in STD_LOGIC_VECTOR(15 downto 0); sum: out STD_LOGIC_VECTOR(15 downto 0); carry: out STD_LOGIC);
end;

architecture behavioral of xvi_bit_adder is
	signal cur_carry: STD_LOGIC_VECTOR(15 downto 0);
begin
	half_adder_inst: entity work.half_adder port map(a => a(0), b => b(0), sum => sum(0), carry => cur_carry(0));

	gen_sum: for i in 1 to 15 generate
		full_adder_inst: entity work.full_adder port map(a => a(i), b => b(i), c => cur_carry(i-1), sum => sum(i), carry => cur_carry(i));
	end generate gen_sum;

	carry <= cur_carry(15);
end; 