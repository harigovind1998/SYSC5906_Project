-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity mul_v2_mul_v2_Pipeline_XCL_WG_DIM_X_mul_v2_label3_mul_v2_I is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 8; 
             AddressRange    : integer := 152
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of mul_v2_mul_v2_Pipeline_XCL_WG_DIM_X_mul_v2_label3_mul_v2_I is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 to 3=> "00000000000000000000000000000000", 
    4 => "00000000000000000000000000000001", 
    5 => "00000000000000000000000000000100", 
    6 => "00000000000000000000000000000000", 
    7 => "00000000000000000000000000000001", 
    8 => "00000000000000000000000000000011", 
    9 => "00000000000000000000000000000000", 
    10 => "00000000000000000000000000000011", 
    11 => "00000000000000000000000000000001", 
    12 => "00000000000000000000000000000000", 
    13 => "00000000000000000000000000000001", 
    14 => "00000000000000000000000000000011", 
    15 => "00000000000000000000000000000000", 
    16 => "00000000000000000000000000000011", 
    17 => "00000000000000000000000000000001", 
    18 to 23=> "00000000000000000000000000000000", 
    24 => "00000000000000000000000000000001", 
    25 => "00000000000000000000000000000100", 
    26 => "00000000000000000000000000000010", 
    27 => "00000000000000000000000000000001", 
    28 => "00000000000000000000000000000011", 
    29 => "00000000000000000000000000000001", 
    30 => "00000000000000000000000000000011", 
    31 => "00000000000000000000000000000001", 
    32 => "00000000000000000000000000000100", 
    33 => "00000000000000000000000000000001", 
    34 => "00000000000000000000000000000011", 
    35 => "00000000000000000000000000000010", 
    36 => "00000000000000000000000000000011", 
    37 => "00000000000000000000000000000001", 
    38 => "00000000000000000000000000000100", 
    39 to 44=> "00000000000000000000000000000000", 
    45 => "00000000000000000000000000000100", 
    46 to 47=> "00000000000000000000000000000010", 
    48 => "00000000000000000000000000000011", 
    49 to 51=> "00000000000000000000000000000001", 
    52 => "00000000000000000000000000000100", 
    53 => "00000000000000000000000000000010", 
    54 => "00000000000000000000000000000011", 
    55 => "00000000000000000000000000000010", 
    56 to 57=> "00000000000000000000000000000001", 
    58 => "00000000000000000000000000000100", 
    59 => "00000000000000000000000000000010", 
    60 to 65=> "00000000000000000000000000000000", 
    66 to 67=> "00000000000000000000000000000010", 
    68 => "00000000000000000000000000000011", 
    69 to 70=> "00000000000000000000000000000001", 
    71 => "00000000000000000000000000000010", 
    72 => "00000000000000000000000000000100", 
    73 to 75=> "00000000000000000000000000000010", 
    76 => "00000000000000000000000000000001", 
    77 to 78=> "00000000000000000000000000000100", 
    79 to 80=> "00000000000000000000000000000010", 
    81 to 86=> "00000000000000000000000000000000", 
    87 => "00000000000000000000000000000010", 
    88 => "00000000000000000000000000000011", 
    89 => "00000000000000000000000000000010", 
    90 => "00000000000000000000000000000001", 
    91 => "00000000000000000000000000000010", 
    92 => "00000000000000000000000000000001", 
    93 to 94=> "00000000000000000000000000000010", 
    95 => "00000000000000000000000000000011", 
    96 => "00000000000000000000000000000001", 
    97 => "00000000000000000000000000000100", 
    98 to 101=> "00000000000000000000000000000010", 
    102 to 107=> "00000000000000000000000000000000", 
    108 => "00000000000000000000000000000011", 
    109 => "00000000000000000000000000000010", 
    110 => "00000000000000000000000000000000", 
    111 => "00000000000000000000000000000010", 
    112 => "00000000000000000000000000000001", 
    113 => "00000000000000000000000000000000", 
    114 => "00000000000000000000000000000010", 
    115 => "00000000000000000000000000000011", 
    116 => "00000000000000000000000000000000", 
    117 => "00000000000000000000000000000100", 
    118 => "00000000000000000000000000000010", 
    119 => "00000000000000000000000000000000", 
    120 to 121=> "00000000000000000000000000000010", 
    122 to 129=> "00000000000000000000000000000000", 
    130 => "00000000000000000000000000000001", 
    131 => "00000000000000000000000000000011", 
    132 => "00000000000000000000000000000000", 
    133 => "00000000000000000000000000000001", 
    134 => "00000000000000000000000000000011", 
    135 => "00000000000000000000000000000000", 
    136 => "00000000000000000000000000000001", 
    137 => "00000000000000000000000000000010", 
    138 => "00000000000000000000000000000000", 
    139 => "00000000000000000000000000000011", 
    140 => "00000000000000000000000000000001", 
    141 => "00000000000000000000000000000000", 
    142 => "00000000000000000000000000000001", 
    143 => "00000000000000000000000000000011", 
    144 to 149=> "00000000000000000000000000000000", 
    150 => "00000000000000000000000000000001", 
    151 => "00000000000000000000000000000011" );


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
