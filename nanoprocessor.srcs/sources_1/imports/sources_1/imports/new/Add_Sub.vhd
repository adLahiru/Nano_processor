----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2025 08:25:41 AM
-- Design Name: 
-- Module Name: Add_Sub - Behavioral
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

entity Add_Sub is
    Port ( RegSel : in STD_LOGIC;
           Clk : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (3 downto 0);
           Sign : in STD_LOGIC;
           Res : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           OverFlow : out STD_LOGIC);
end Add_Sub;

architecture Behavioral of Add_Sub is
component Reg
    Port ( En : in STD_LOGIC;
       D : in STD_LOGIC_VECTOR (3 downto 0);
       Clk : in STD_LOGIC;
       Res : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Slow_Clk
    Port ( Clk_in : in STD_LOGIC;
       Clk_out : out STD_LOGIC);
end component;

component RCA_4
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
       B : in STD_LOGIC_vector (3 downto 0);
       C_in : in STD_LOGIC;
       S : out STD_LOGIC_VECTOR (3 downto 0);
       C_in3 : out STD_LOGIC;
       C_out : out STD_LOGIC);
end component;


signal slow_clock: STD_LOGIC;
signal B_in: STD_LOGIC_VECTOR(3 downto 0);
signal En_A, En_B: STD_LOGIC;
signal Q_A, Q_B: STD_LOGIC_VECTOR(3 downto 0);
signal S_RCA: STD_LOGIC_VECTOR(3 downto 0);
signal C_in3, C_out : STD_LOGIC;

    

begin
    Slow_Clk_0 : Slow_Clk port map
        (Clk_in => Clk,
         Clk_out => slow_clock);
         
    Reg_A : Reg port map
        (En => En_A,
         D => A,
         Clk => slow_clock,
         Res => Res,
         Q => Q_A);
         
    Reg_B : Reg port map
        (En => En_B,
         D => A,
         Clk => slow_clock,
         Res => Res,
         Q => Q_B);
         
    RCA_4_0 : RCA_4  port map
        (A => Q_A,
         B => B_in,
         C_in => Sign,
         S => S_RCA,
         C_in3 => C_in3,
         C_out => C_out);
  
        
B_in(0) <= Q_B(0) XOR Sign; 
B_in(1) <= Q_B(1) XOR Sign;
B_in(2) <= Q_B(2) XOR Sign;
B_in(3) <= Q_B(3) XOR Sign; 
En_A <= RegSel;
En_B <= NOT RegSel;
S <= S_RCA;
Zero <= '1' when(S_RCA = "0000") else '0';
Overflow <= (C_in3 XOR C_out) when (Sign = '1') else C_out ;


end Behavioral;
