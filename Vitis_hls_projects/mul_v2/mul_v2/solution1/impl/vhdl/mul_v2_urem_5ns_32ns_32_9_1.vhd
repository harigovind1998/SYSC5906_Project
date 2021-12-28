-- 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mul_v2_urem_5ns_32ns_32_9_1_divider is
    generic (
        in0_WIDTH   : INTEGER :=32;
        in1_WIDTH   : INTEGER :=32;
        out_WIDTH   : INTEGER :=32);
    port (
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        ce          : in  STD_LOGIC;
        dividend    : in  STD_LOGIC_VECTOR(in0_WIDTH-1 downto 0);
        divisor     : in  STD_LOGIC_VECTOR(in1_WIDTH-1 downto 0);
        quot        : out STD_LOGIC_VECTOR(out_WIDTH-1 downto 0);
        remd        : out STD_LOGIC_VECTOR(out_WIDTH-1 downto 0));

    function max (left, right : INTEGER) return INTEGER is
    begin
        if left > right then return left;
        else return right;
        end if;
    end max;

end entity;

architecture rtl of mul_v2_urem_5ns_32ns_32_9_1_divider is
    constant cal_WIDTH      : INTEGER := max(in0_WIDTH, in1_WIDTH);
    type  in0_vector  is array(INTEGER range <>) of UNSIGNED(in0_WIDTH-1 downto 0);
    type  in1_vector  is array(INTEGER range <>) of UNSIGNED(in1_WIDTH-1 downto 0);
    type  cal_vector  is array(INTEGER range <>) of UNSIGNED(cal_WIDTH downto 0);

    signal dividend_tmp     : in0_vector(0 to in0_WIDTH);
    signal divisor_tmp      : in1_vector(0 to in0_WIDTH);
    signal remd_tmp         : in0_vector(0 to in0_WIDTH);
    signal comb_tmp         : in0_vector(0 to in0_WIDTH-1);
    signal cal_tmp          : cal_vector(0 to in0_WIDTH-1);
begin
    quot   <= STD_LOGIC_VECTOR(RESIZE(dividend_tmp(in0_WIDTH), out_WIDTH));
    remd   <= STD_LOGIC_VECTOR(RESIZE(remd_tmp(in0_WIDTH), out_WIDTH));

    tran_tmp_proc : process (clk)
    begin
        if (clk'event and clk='1') then
            if (ce = '1') then
                dividend_tmp(0) <= UNSIGNED(dividend);
                divisor_tmp(0)  <= UNSIGNED(divisor);
                remd_tmp(0) <= (others => '0');
            end if;
        end if;
    end process tran_tmp_proc;

    run_proc: for i in 0 to in0_WIDTH-1 generate
    begin
        comb_tmp(i) <= remd_tmp(i)(in0_WIDTH-2 downto 0) & dividend_tmp(i)(in0_WIDTH-1);
        cal_tmp(i)  <= ('0' & comb_tmp(i)) - ('0' & divisor_tmp(i));

        process (clk)
        begin
            if (clk'event and clk='1') then
                if (ce = '1') then
                    dividend_tmp(i+1) <= dividend_tmp(i)(in0_WIDTH-2 downto 0) & (not cal_tmp(i)(cal_WIDTH));
                    divisor_tmp(i+1)  <= divisor_tmp(i);
                    if cal_tmp(i)(cal_WIDTH) = '1' then
                        remd_tmp(i+1) <= comb_tmp(i);
                    else
                        remd_tmp(i+1) <= cal_tmp(i)(in0_WIDTH-1 downto 0);
                    end if;
                end if;
            end if;
        end process;
    end generate run_proc;

end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mul_v2_urem_5ns_32ns_32_9_1 is
    generic (
        ID   : INTEGER :=1;
        NUM_STAGE   : INTEGER :=2;
        din0_WIDTH   : INTEGER :=32;
        din1_WIDTH   : INTEGER :=32;
        dout_WIDTH   : INTEGER :=32);
    port (
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        ce          : in  STD_LOGIC;
        din0        : in  STD_LOGIC_VECTOR(din0_WIDTH-1 downto 0);
        din1        : in  STD_LOGIC_VECTOR(din1_WIDTH-1 downto 0);
        dout        : out STD_LOGIC_VECTOR(dout_WIDTH-1 downto 0));
end entity;

architecture rtl of mul_v2_urem_5ns_32ns_32_9_1 is
    component mul_v2_urem_5ns_32ns_32_9_1_divider is
        generic (
            in0_WIDTH   : INTEGER :=32;
            in1_WIDTH   : INTEGER :=32;
            out_WIDTH   : INTEGER :=32);
        port (
            reset       : in  STD_LOGIC;
            clk         : in  STD_LOGIC;
            ce          : in  STD_LOGIC;
            dividend    : in  STD_LOGIC_VECTOR(in0_WIDTH-1 downto 0);
            divisor     : in  STD_LOGIC_VECTOR(in1_WIDTH-1 downto 0);
            quot        : out STD_LOGIC_VECTOR(out_WIDTH-1 downto 0);
            remd        : out STD_LOGIC_VECTOR(out_WIDTH-1 downto 0));
    end component;

    signal dividend0  : STD_LOGIC_VECTOR(din0_WIDTH-1 downto 0);
    signal divisor0   : STD_LOGIC_VECTOR(din1_WIDTH-1 downto 0);
    signal dividend_u : STD_LOGIC_VECTOR(din0_WIDTH-1 downto 0);
    signal divisor_u  : STD_LOGIC_VECTOR(din1_WIDTH-1 downto 0);
    signal quot_u     : STD_LOGIC_VECTOR(dout_WIDTH-1 downto 0);
    signal remd_u     : STD_LOGIC_VECTOR(dout_WIDTH-1 downto 0);
    signal quot       : STD_LOGIC_VECTOR(dout_WIDTH-1 downto 0);
    signal remd       : STD_LOGIC_VECTOR(dout_WIDTH-1 downto 0);
begin
    mul_v2_urem_5ns_32ns_32_9_1_divider_u : mul_v2_urem_5ns_32ns_32_9_1_divider
        generic map(
            in0_WIDTH   => din0_WIDTH,
            in1_WIDTH   => din1_WIDTH,
            out_WIDTH   => dout_WIDTH)
        port map(
            clk         => clk,
            reset       => reset,
            ce          => ce,
            dividend    => dividend_u,
            divisor     => divisor_u,
            quot        => quot_u,
            remd        => remd_u);

    dividend_u  <= dividend0;
    divisor_u   <= divisor0;

process (clk)
begin
    if (clk'event and clk = '1') then
        if (ce = '1') then
            dividend0 <= din0;
            divisor0 <= din1;
        end if;
    end if;
end process;

process (clk)
begin
    if (clk'event and clk = '1') then
        if (ce = '1') then
            quot <= quot_u;
            remd <= remd_u;
        end if;
    end if;
end process;

dout <= remd;

end architecture;


