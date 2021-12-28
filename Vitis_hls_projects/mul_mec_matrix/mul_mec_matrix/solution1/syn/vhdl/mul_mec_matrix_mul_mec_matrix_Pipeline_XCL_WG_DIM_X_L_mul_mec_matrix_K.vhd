-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L_mul_mec_matrix_K is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 36
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L_mul_mec_matrix_K is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000000000000000000000000100", 
    1 => "00000000000000000000000000000010", 
    2 => "00000000000000000000000000000001", 
    3 => "00000000000000000000000000000100", 
    4 => "00000000000000000000000000000010", 
    5 => "00000000000000000000000000000001", 
    6 => "00000000000000000000000000000100", 
    7 => "00000000000000000000000000000011", 
    8 to 9=> "00000000000000000000000000000010", 
    10 to 11=> "00000000000000000000000000000011", 
    12 to 13=> "00000000000000000000000000000100", 
    14 => "00000000000000000000000000000011", 
    15 => "00000000000000000000000000000001", 
    16 => "00000000000000000000000000000100", 
    17 => "00000000000000000000000000000010", 
    18 => "00000000000000000000000000000100", 
    19 => "00000000000000000000000000000011", 
    20 to 21=> "00000000000000000000000000000010", 
    22 => "00000000000000000000000000000011", 
    23 to 24=> "00000000000000000000000000000010", 
    25 => "00000000000000000000000000000011", 
    26 => "00000000000000000000000000000010", 
    27 => "00000000000000000000000000000011", 
    28 => "00000000000000000000000000000010", 
    29 => "00000000000000000000000000000100", 
    30 => "00000000000000000000000000000010", 
    31 => "00000000000000000000000000000100", 
    32 => "00000000000000000000000000000001", 
    33 => "00000000000000000000000000000011", 
    34 => "00000000000000000000000000000010", 
    35 => "00000000000000000000000000000100" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;

