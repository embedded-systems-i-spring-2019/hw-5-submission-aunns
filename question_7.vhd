----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 09:54:33 PM
-- Design Name: 
-- Module Name: question_7 - Behavioral
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

entity question_7 is
port( sel: in std_logic_vector(2 downto 0);
        output: out std_logic_vector(7 downto 0));


end question_7;

architecture mycase of question_7 is

begin

process(sel)
begin
    case (sel) is
    when "000" => output<="11111110";
    when "001" => output<="11111101";
    when "010" => output<="11111011";
    when "011" => output<="11110111";
    when "100" => output<="11101111";
    when "101" => output<="11011111";
    when "110" => output<="10111111";
    when "111" => output<="01111111";
    when others=> output<="00000000";
    end case;
    
end process;
end mycase;

architecture myif of question_7 is
begin

process(sel)
begin
    if (sel="000") then output<="11111110";
    elsif(sel="001") then output<="11111101" ;
    elsif(sel="010") then output<="11111011" ;
    elsif(sel="011") then output<="11110111" ;
    elsif(sel="100") then output<="11101111" ;
    elsif(sel="101") then output<="11011111" ;
    elsif(sel="110") then output<="10111111" ;
    elsif(sel="111") then output<="01111111" ;
    
    end if;
    
    end process;
    end myif;
    

