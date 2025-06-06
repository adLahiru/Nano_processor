----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/04/2025 12:13:35 AM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is
    component Decoder_3_to_8
        Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
               Y : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

SIGNAL I : std_logic_vector (2 downto 0);
SIGNAL Y : std_logic_vector (7 downto 0);

begin

UUT : Decoder_3_to_8 port map (
    I => I,
    Y => Y);

process 
    begin
        
        wait for 100ns;
        I <= "111";
        
        wait for 100 ns;
        I <= "000";
        
        wait for 100ns;
        I <= "001";
        
        wait for 100 ns;
        I <= "010";
        
        wait for 100ns;
        I <= "011";
        
        wait for 100ns;
        I <= "100";
        
        wait for 100ns;
        I <= "101";
        
        wait for 100ns;
        I <= "110";
        
        wait for 100ns;
        I <= "111";
        
        wait;
end process;


end Behavioral;
