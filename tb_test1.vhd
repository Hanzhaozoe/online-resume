----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2017 01:37:13 PM
-- Design Name: 
-- Module Name: tb_test1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_test1 is
--  Port ( );
end tb_test1;

architecture Behavioral of tb_test1 is

component test1 is
port (
             I0: in std_ulogic;
	         I1: in std_ulogic;
		     sel: in std_ulogic;
			 O : out std_ulogic );
   
end component;
   
   
   signal I0  : std_logic ;
   signal I1  : std_logic ;
   signal sel : std_logic ;
   signal O   : std_logic ;
   
begin
    

 inst_test : test1
   
    port map (
     I0  => I0,
	 I1	 => I1,
	 sel => sel,
	  O	 => O 
      );
    process
      begin 
        I0 <= '0';
        I1 <= '1';
        sel <= '0';
        wait for 100 ns ;
        sel <= '1';
       
       wait;
     end process;
        


end Behavioral;
