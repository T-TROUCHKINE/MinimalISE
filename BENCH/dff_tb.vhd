library IEEE;
use IEEE.std_logic_1164.all;

entity dff_tb is
  
  generic (
    n : natural := 1);                  -- width of data

end entity dff_tb;

architecture dff_tb_arch of dff_tb is
  
  component dff is
    generic (
      n : integer);
    port (
      clk_i    : in  std_logic;
      input_i  : in  std_logic_vector(n-1 downto 0);
      resetb_i : in  std_logic;
      output_o : out std_logic_vector(n-1 downto 0));
  end component dff;

  signal clk_s    : std_logic := '0';
  signal input_s  : std_logic_vector(n-1 downto 0);
  signal resetb_s : std_logic;
  signal output_s : std_logic_vector(n-1 downto 0);
  
begin  -- architecture dff_tb_arch

  dff_1: entity work.dff
    generic map (
      n => n)
    port map (
      clk_i    => clk_s,
      input_i  => input_s,
      resetb_i => resetb_s,
      output_o => output_s);

  clk_s <= not clk_s after 5 ns;
  resetb_s <= '0', '1' after 20 ns;
  input_s <= "0", "1" after 32 ns, "0" after 42 ns;

end architecture dff_tb_arch;
