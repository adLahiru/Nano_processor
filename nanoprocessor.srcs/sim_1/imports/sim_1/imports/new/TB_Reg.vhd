----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2025 01:42:23 PM
-- Design Name: 
-- Module Name: TB_Reg - Behavioral
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

entity TB_Reg is
--  Port ( );
end TB_Reg;

architecture Behavioral of TB_Reg is
    component Reg
        Port ( En : in STD_LOGIC;
               D : in STD_LOGIC_VECTOR (3 downto 0);
               Clk : in STD_LOGIC;
               Res : in STD_LOGIC;
               Q : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal d,q: STD_LOGIC_VECTOR(3 downto 0);
    signal en, clock, r: STD_LOGIC;

begin
 UUT: Reg
    PORT MAP(
        En => en,
        D => d,
        Clk => clock,
        Res => r,
        Q => q);
   
    process 
        begin
            
            clock <= '0';
            WAIT FOR 20ns;
            
            clock <= '1';
            WAIT FOR 20ns;
            
       end process;
   
   process 
        begin
        
            en <= '1';
            d <= "1110";
            r <= '0';
            WAIT FOR 100ns;
            
            d <= "0110";
            WAIT FOR 100ns;
            
            d <= "1000";
            WAIT FOR 100ns;
            
            r <= '1';
            WAIT FOR 100ns;
            
            d <= "0101";
            WAIT FOR 50ns;
            
            r <= '0';
            d <= "0011";
            WAIT FOR 100ns;
            
            en <= '0';
            d <= "1000";
            WAIT FOR 100ns ;
            
    end process;
            
        


end Behavioral;
