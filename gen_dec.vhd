library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gen_dec is
	generic(width: integer:= 3);
	port(
		inp_dec: in std_logic_vector(width-1 downto 0);
		out_dec: out std_logic_vector(width**2-1 downto 0)
		);
end; 


architecture beh of gen_dec is
signal out_dec_i: std_logic_vector(width**2-1 downto 0);
begin
--dec_pr: process(inp_dec)
--begin
--    out_dec <= (others => '1') ;
--    dec_loop:for i in out_dec'range loop
--      if (to_integer(unsigned(inp_dec))= i) then
--          out_dec(i) <= '0' ;
--      end if ;
--    end loop dec_loop;
-- end process dec_pr;
t: process(inp_dec)
begin
	out_dec_i <= (others=>'0');
	
	out_dec_i <= ( to_integer(unsigned(inp_dec)) => '1', others => '0' );--
	
	end process;
	out_dec <= out_dec_i;
	
end beh; 

