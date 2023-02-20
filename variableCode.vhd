library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity variables_tb is
	constant N : integer := 3;
end entity variables_tb;

architecture tb of variables_tb is

	signal a, b : std_logic_vector(N-1 downto 0);
	signal f : std_logic;

begin

	variables0 : entity work.variables
		generic map (
			N => N
		)
		port map (
			A => A, B => B, F => F
		);

	tb_proc : process is
		variable expected_value : std_logic;
	begin
		for i in - to (2**N)-1 loop
			A <= std_logic_vector(to_unsigned(i,N));
			for j in 0 to (2**N)-1 loop
				B <= std_logic_vector(to_unsigned(j,N));
				wait for 100 ns;
			end loop;
		end loop;
	end process;
	
end architecture tb;
