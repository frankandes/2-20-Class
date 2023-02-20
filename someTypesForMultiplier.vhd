type carry_array is array(N-1 downto 1) of std_logic_vector(N-1 downto 0);
type and_array is array(N-1 downto 0) of std_logic_vector(N-1 downto 0);
.
.
.
a : and_array
.
.
.
begin
	rows : for Row in 0 to N-1 generate
		Columns : for Col in 0 to N-1 generate
			.
			.
			.
			rlco : if col = 0 and row  = 1 generate
			.
			.
			.
		end loop;
		.
		.
		.
	end loop;
	