----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 08:24:19 PM
-- Design Name: 
-- Module Name: question_1_if - Behavioral
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

entity question_1_if is
Port(
    a_1,a_2,b_1,b_2,d_1: in std_logic;
    e_out : out std_logic
    );
end question_1_if;

architecture Behavioral of question_1_if is
signal a,b,c: std_logic;

begin
process(a_1,a_2,b_1,b_2,d_1)
begin
if (a_1='1' and a_2='1') then
    a<='1';
    else a<='0';
    end if;
    
if (b_1='0' and b_2='0') then
    b<='1';
    else b<='0';
    end if; 
    
if (b_2='1' and d_1='0') then
    c<='1';
    else c<='0';
    end if;    
if (a='1' and b='1' and c='1') then
    e_out<='1';
    else e_out<='0';
    end if;
        

end process;
end Behavioral;
