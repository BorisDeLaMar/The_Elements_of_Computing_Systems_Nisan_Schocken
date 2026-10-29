library IEEE; use IEEE.STD_LOGIC_1164.all;

entity rs_trigger is
	port(r, s: in STD_LOGIC; q, nq: out STD_LOGIC);
end;

architecture synth of rs_trigger is
	signal q_internal: STD_LOGIC := '0';
	signal nq_internal: STD_LOGIC := '1';
begin
	q_internal <= r nor nq_internal;
	nq_internal <= q_internal nor s;
	
	q <= q_internal;
	nq <= nq_internal;
end;
