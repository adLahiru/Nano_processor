----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2025 04:57:41 PM
-- Design Name: 
-- Module Name: adder_4_bit_tb - Behavioral
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

entity adder_4_bit_tb is
--  Port ( );
end adder_4_bit_tb;

architecture Behavioral of adder_4_bit_tb is

component adder_4_bit
    port(input : in STD_LOGIC_VECTOR (3 downto 0);
           output : out STD_LOGIC_VECTOR (3 downto 0);
           C_out : out STD_LOGIC);
end component;

signal input,output : STD_LOGIC_VECTOR (3 downto 0);
signal C_out : std_logic;

begin
UUT: adder_4_bit port map(
    input=> input,
    output => output,
    C_out=> C_out
);

process
begin
    input <= "1010";
    wait for 10 ns;
    
    input <= "1011";
    wait;

end process;



end Behavioral;
