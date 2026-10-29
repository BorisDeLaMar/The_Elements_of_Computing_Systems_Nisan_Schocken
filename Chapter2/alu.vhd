library IEEE; use IEEE.STD_LOGIC_1164.all;

entity alu is
	port(x, y: in STD_LOGIC_VECTOR(15 downto 0); zx, nx, zy, ny, f, no: in STD_LOGIC; my_out: out STD_LOGIC_VECTOR(15 downto 0); zr, ng: out STD_LOGIC);
end;

architecture behavioral of alu is
	signal xz, yz, xn, yn, sum, pre_out, c_out: STD_LOGIC_VECTOR(15 downto 0);
	signal carry: STD_LOGIC;
begin
	gen_zx: for i in 0 to 15 generate
		xz(i) <= '0' or ((not zx) and x(i));
		yz(i) <= '0' or ((not zy) and y(i));
		
		xn(i) <= (nx and (not xz(i))) or ((not nx) and xz(i));
		yn(i) <= (ny and (not yz(i))) or ((not ny) and yz(i));
	end generate gen_zx;

	adder_inst: entity work.xvi_bit_adder port map(a => xn, b => yn, sum => sum, carry => carry);

	gen_pre_out: for i in 0 to 15 generate
		pre_out(i) <= (f and sum(i)) or ((not f) and (xn(i) and yn(i)));
		c_out(i) <= (no and (not pre_out(i))) or ((not no) and pre_out(i));
	end generate gen_pre_out;

	zr <= (not c_out(0)) and (not c_out(1)) and (not c_out(2)) and (not c_out(3)) and (not c_out(4)) and (not c_out(5)) and (not c_out(6)) and (not c_out(7)) 
		and (not c_out(8)) and (not c_out(9)) and (not c_out(10)) and (not c_out(11)) and (not c_out(12)) and (not c_out(13)) and (not c_out(14)) and (not c_out(15));
	ng <= c_out(15);

	my_out <= c_out;
end;