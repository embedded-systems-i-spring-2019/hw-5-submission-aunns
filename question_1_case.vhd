library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity question1 is
--  Port ( );
Port(
    a_1,a_2,b_1,b_2,d_1: in std_logic;
    e_out : out std_logic
    );
end question1;

architecture Behavioral of question1 is
signal tempA : std_logic_vector(1 downto 0);
signal tempB : std_logic_vector(1 downto 0);
signal tempC : std_logic_vector(1 downto 0);
signal tempE : std_logic_vector(2 downto 0);

signal Aout : std_logic;
signal Bout : std_logic;
signal Cout : std_logic;
begin
    tempA <= A_1 & A_2;
    tempB <= B_1 & B_2;
    tempC <= B_2 & (not D_1);
-- case
    A : process(tempA)
    begin
        case (tempA) is
            when "11" => Aout <= '1'; 
            when others=> Aout<='0'; 
        end case;
    end process;
        
    B : process(tempB)
    begin
        case (tempB) is
            when "00" => Bout <= '0';
            when others=>  Bout <= '1';    
        end case;
    end process;
    
    C : process(tempC)
    begin
        case (tempC) is
            when "00" => Cout <= '0';
            when others=> Cout <= '1';    
        end case;
    end process;
                 
    E : process(Aout, Bout, Cout)
    begin
        case tempE is
            when "000" => E_out <= '0';
            when others => E_out <= '1';         
        end case;
    end process;
    
end Behavioral;