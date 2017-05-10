----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:10:31 11/07/2016 
-- Design Name: 
-- Module Name:    mux_2to1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_2to1 is
     port ( I0: in std_ulogic;
	         I1: in std_ulogic;
				sel: in std_ulogic;
				O : out std_ulogic  
	       );
end mux_2to1;

architecture Behavioral of mux_2to1 is
   
begin
  process(I0,I1,sel)
    begin 
	     case sel is 
		    when '0' => O <= I0;
			 when '1' => O <= I1;
			 when others => O <= 'X';
		 end case;
  end process;
  
end Behavioral;

