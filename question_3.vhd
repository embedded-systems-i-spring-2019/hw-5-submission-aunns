----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 08:35:32 PM
-- Design Name: 
-- Module Name: question_3 - Behavioral
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

entity question_3 is
Port(
    a_1,a_2,b_1,b_2,d_1: in std_logic;
    e_out : out std_logic
    );
end question_3;

architecture Behavioral of question_3 is
signal a,b,c: std_logic;

begin

a<=a_1 and b_1;
b<=b_1 or b_2;
c<=b_2 and (not d_1);
e_out<=a or b or c;


end Behavioral;
