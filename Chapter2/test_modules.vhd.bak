library IEEE; use IEEE.STD_LOGIC_1164.all;

entity testbench is
end testbench;

architecture sim of testbench is
	signal t_a: STD_LOGIC := '0';
	signal t_b: STD_LOGIC := '0';
	signal t1_out: STD_LOGIC;
	signal t2_out: STD_LOGIC;

	signal t_m_a: STD_LOGIC := '0';
	signal t_m_b: STD_LOGIC := '0';
	signal t_m_sel: STD_LOGIC := '0';
	signal t_m1_out: STD_LOGIC;
	signal t_m2_out: STD_LOGIC;
begin
	--my_2in_module: entity work.half_adder
		--port map(a => t_a, b => t_b, sum => t1_out, carry => t2_out);

	--my_demux_inst: entity work.my_demux
		--port map(input => t_a, sel => t_b, a => t1_out, b => t2_out);

	stim_proc: process
	begin
		t_a <= '0'; t_b <= '0';
		wait for 10 ns;
		--assert(t_out = '0')

		t_a <= '0'; t_b <= '1';
		wait for 10 ns;

		t_a <= '1'; t_b <= '0';
		wait for 10 ns;

		t_a <= '1'; t_b <= '1';
		wait for 10 ns;

		wait;
	end process;

	my_mux_module: entity work.full_adder
		port map(a => t_m_a, b => t_m_b, c => t_m_sel, sum => t_m1_out, carry => t_m2_out);

	mux_sim_proc: process
	begin
		t_m_a <= '0'; t_m_b <= '0'; t_m_sel <= '0';
		wait for 5 ns;

		t_m_a <= '0'; t_m_b <= '0'; t_m_sel <= '1';
		wait for 5 ns;

		t_m_a <= '0'; t_m_b <= '1'; t_m_sel <= '0';
		wait for 5 ns;

		t_m_a <= '0'; t_m_b <= '1'; t_m_sel <= '1';
		wait for 5 ns;

		t_m_a <= '1'; t_m_b <= '0'; t_m_sel <= '0';
		wait for 5 ns;

		t_m_a <= '1'; t_m_b <= '0'; t_m_sel <= '1';
		wait for 5 ns;

		t_m_a <= '1'; t_m_b <= '1'; t_m_sel <= '0';
		wait for 5 ns;

		t_m_a <= '1'; t_m_b <= '1'; t_m_sel <= '1';
		wait for 5 ns;
	end process;
end sim;
