----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity xeng_core_stub is
    port (
      ant: in std_logic_vector(15 downto 0); 
      ce_1: in std_logic; 
      clk_1: in std_logic; 
      mcnt_in: in std_logic_vector(47 downto 0); 
      sync_in: in std_logic; 
      window_valid: in std_logic; 
      acc: out std_logic_vector(31 downto 0); 
      gateway_out2: out std_logic; 
      gateway_out3: out std_logic; 
      gateway_out55: out std_logic; 
      gateway_out56: out std_logic; 
      mcnt_out: out std_logic_vector(47 downto 0); 
      sync_out: out std_logic; 
      valid: out std_logic
    );
end xeng_core_stub;

architecture Behavioral of xeng_core_stub is

  component xeng_core
    port (
      ant: in std_logic_vector(15 downto 0); 
      ce_1: in std_logic; 
      clk_1: in std_logic; 
      mcnt_in: in std_logic_vector(47 downto 0); 
      sync_in: in std_logic; 
      window_valid: in std_logic; 
      acc: out std_logic_vector(31 downto 0); 
      gateway_out2: out std_logic; 
      gateway_out3: out std_logic; 
      gateway_out55: out std_logic; 
      gateway_out56: out std_logic; 
      mcnt_out: out std_logic_vector(47 downto 0); 
      sync_out: out std_logic; 
      valid: out std_logic
    );
  end component;
begin

xeng_core_i : xeng_core
  port map (
    ant => ant,
    ce_1 => ce_1,
    clk_1 => clk_1,
    mcnt_in => mcnt_in,
    sync_in => sync_in,
    window_valid => window_valid,
    acc => acc,
    gateway_out2 => gateway_out2,
    gateway_out3 => gateway_out3,
    gateway_out55 => gateway_out55,
    gateway_out56 => gateway_out56,
    mcnt_out => mcnt_out,
    sync_out => sync_out,
    valid => valid);
end Behavioral;

