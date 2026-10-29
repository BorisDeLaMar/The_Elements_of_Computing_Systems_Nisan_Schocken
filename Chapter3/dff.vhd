library IEEE; use IEEE.STD_LOGIC_1164.all;

entity dff is
	port(clk, my_in: in STD_LOGIC; my_out: out STD_LOGIC);
end;

architecture synth of dff is
begin
	process(clk) begin
		if rising_edge(clk) then
			my_out <= my_in;
		end if;
	end process;
end;