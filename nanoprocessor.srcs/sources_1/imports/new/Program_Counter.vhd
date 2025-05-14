----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2025 11:18:26 PM
-- Design Name: 
-- Module Name: Program_Counter - Behavioral
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

entity Program_Counter is
    Port ( D : in STD_LOGIC_VECTOR(2 downto 0);
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end Program_Counter;

architecture Behavioral of Program_Counter is

component Slow_Clk 
    Port (
       Clk_in : in STD_LOGIC;
       Clk_out : out STD_LOGIC);
end component;

signal Clk_out: std_logic;

begin

Slow_Clock_0 : Slow_Clk
    PORT MAP(
    Clk_in => Clk,
    Clk_out => Clk_out);
    
    process (Res,Clk_out) begin
        if(Res = '1' ) then 
            Q <= "000"; 
        elsif(rising_edge(Clk_out)) then
            Q <= D;
        end if;
    end process;
    


end Behavioral;
