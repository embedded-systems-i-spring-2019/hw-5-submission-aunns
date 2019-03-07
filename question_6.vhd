----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 09:24:44 PM
-- Design Name: 
-- Module Name: question_6 - Behavioral
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

entity question_6 is
    port ( input: in std_logic_vector(7 downto 0);
            sel: in std_logic_vector(2 downto 0);
            output: out std_logic);
end question_6;

architecture mycase of question_6 is
begin
process(sel,input)
begin
    case (sel) is
    when "000" => output<=input(0);
    when "001" => output<=input(1);
    when "010" => output<=input(2);
    when "011" => output<=input(3);
    when "100" => output<=input(4);
    when "101" => output<=input(5);
    when "110" => output<=input(6);
    when "111" => output<=input(7);
    when others=> output<='0';
    end case;
    
    end process;
    
  




end mycase;

architecture myif of question_6 is

begin

process(sel,input)

begin
    
    if(sel="000") then output<=input(0);
    elsif(sel="001") then output<=input(1);
    elsif(sel="010") then output<=input(2);
    elsif(sel="011") then output<=input(3);
    elsif(sel="100") then output<=input(4);
    elsif(sel="101") then output<=input(5);
    elsif(sel="110") then output<=input(6);
    elsif(sel="111") then output<=input(7);
    else output<='0';
        
    
    end if;
    
    end process;
    end myif;
    
