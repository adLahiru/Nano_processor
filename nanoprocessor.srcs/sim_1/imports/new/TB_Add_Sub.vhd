----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2025 01:42:42 PM
-- Design Name: 
-- Module Name: TB_AU - Behavioral
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

entity TB_Add_Sub is
--  Port ( );
end TB_Add_Sub;

architecture Behavioral of TB_Add_Sub is

    component Add_Sub
        Port ( RegSel : in STD_LOGIC;
               Clk : in STD_LOGIC;
               A : in STD_LOGIC_VECTOR (3 downto 0);
               Sign : in STD_LOGIC;
               Res : in STD_LOGIC;
               S : out STD_LOGIC_VECTOR (3 downto 0);
               Zero : out STD_LOGIC;
               OverFlow : out STD_LOGIC);
    end component;
    
    signal RegSel, Clk, Sign, Res, Zero, Overflow: STD_LOGIC;
    signal A,S: STD_LOGIC_VECTOR(3 downto 0);
    
begin
 UUT: Add_Sub 
    PORT MAP(
       RegSel => RegSel,
       Clk => Clk,
       A => A,
       Sign => Sign,
       Res => Res,
       S => S,
       Zero => Zero,
       Overflow => Overflow);
   
        
     process 
        begin
            Clk <= '1';
            WAIT for 5 ns;
            
            Clk <= '0';
            WAIT for 5 ns;
          
        end process;
        
        process 
        begin
            
            Res <= '1';
            RegSel <= '0';
            Sign <= '0';
            WAIT for 10ns;
            
            Res <= '0';
            WAIT FOR 50ns;
            
            RegSel <= '1';
            A <= "1110";
            WAIT for 20ns;
            
            RegSel <= '0';
            A <= "0110";
            WAIT for 20ns;
            
            RegSel <= '1';      
            A <= "0100";
            WAIT for 20ns;
            
            RegSel <= '0';
            A <= "0000";
            WAIT for 20ns;
            
            RegSel <= '1';
            A <= "0101";
            WAIT for 20ns;
            
            RegSel <= '0';
            A <= "0011";
            WAIT for 20ns;
            
            RegSel <= '1';
            A <= "1000";
            WAIT for 20ns;

            Sign <= '1';
            RegSel <= '1';
            A <= "1111";
            wait for 20 ns;
            
            A <= "0001";
            RegSel <= '0';
            wait for 20 ns;
                     
       
    end process;

end Behavioral;
