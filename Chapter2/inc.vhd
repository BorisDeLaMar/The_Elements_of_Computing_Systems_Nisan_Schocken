library IEEE; use IEEE.STD_LOGIC_1164.all;

entity inc is
	port(my_in: in STD_LOGIC_VECTOR(15 downto 0); my_out: out STD_LOGIC_VECTOR(15 downto 0); carry: out STD_LOGIC);
end;

architecture behavioral of inc is
	signal cur_carry: STD_LOGIC_VECTOR(15 downto 0); 
begin
	half_adder1_inst: entity work.half_adder port map(a => my_in(0), b => '1', sum => my_out(0), carry => cur_carry(0));

	gen_inc: for i in 1 to 15 generate
		half_adder2_inst: entity work.half_adder port map(a => my_in(i), b => cur_carry(i-1), sum => my_out(i), carry => cur_carry(i));
	end generate gen_inc;
	
	carry <= cur_carry(15);
end;