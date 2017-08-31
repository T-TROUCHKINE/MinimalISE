library IEEE;
use IEEE.std_logic_1164.all;

entity dff is
  
  generic (
    n : natural := 1);                  -- width of the data

  port (
    clk_i    : in  std_logic;           -- clock
    input_i  : in  std_logic_vector(n-1 downto 0);   -- input
    resetb_i : in  std_logic;           -- asynchronous reset active low
    output_o : out std_logic_vector(n-1 downto 0));  -- output

end entity dff;

architecture dff_arch of dff is

begin  -- architecture dff_arch

  -- purpose: Behavior of the D flip flop
  -- type   : sequential
  -- inputs : clk_i, resetb_i, input_i
  -- outputs: output_o
  seq0: process (clk_i, resetb_i) is
  begin  -- process seq0
    if resetb_i = '0' then              -- asynchronous reset (active low)
      output_o <= (others => '0');
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      output_o <= input_i;
    end if;
  end process seq0;

end architecture dff_arch;

