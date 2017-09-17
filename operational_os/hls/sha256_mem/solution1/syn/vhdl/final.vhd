-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.1
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity final is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    SHA256_m_tot_len_read : IN STD_LOGIC_VECTOR (31 downto 0);
    SHA256_m_len_read : IN STD_LOGIC_VECTOR (31 downto 0);
    SHA256_m_block_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    SHA256_m_block_ce0 : OUT STD_LOGIC;
    SHA256_m_block_we0 : OUT STD_LOGIC;
    SHA256_m_block_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    SHA256_m_block_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    SHA256_m_block_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    SHA256_m_block_ce1 : OUT STD_LOGIC;
    SHA256_m_block_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    SHA256_m_h_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    SHA256_m_h_ce0 : OUT STD_LOGIC;
    SHA256_m_h_we0 : OUT STD_LOGIC;
    SHA256_m_h_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    SHA256_m_h_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    digest_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    digest_ce0 : OUT STD_LOGIC;
    digest_we0 : OUT STD_LOGIC;
    digest_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    digest_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    digest_ce1 : OUT STD_LOGIC;
    digest_we1 : OUT STD_LOGIC;
    digest_d1 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of final is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (10 downto 0) := "00000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (10 downto 0) := "00000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (10 downto 0) := "00000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (10 downto 0) := "00000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (10 downto 0) := "00000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (10 downto 0) := "00001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (10 downto 0) := "00010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (10 downto 0) := "00100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (10 downto 0) := "01000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv6_37 : STD_LOGIC_VECTOR (5 downto 0) := "110111";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_80 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010000000";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv64_7F : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000001111111";
    constant ap_const_lv64_3F : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000111111";
    constant ap_const_lv64_7E : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000001111110";
    constant ap_const_lv64_3E : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000111110";
    constant ap_const_lv64_7D : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000001111101";
    constant ap_const_lv64_3D : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000111101";
    constant ap_const_lv64_7C : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000001111100";
    constant ap_const_lv64_3C : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000111100";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv5_3 : STD_LOGIC_VECTOR (4 downto 0) := "00011";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_s_fu_262_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_reg_544 : STD_LOGIC_VECTOR (0 downto 0);
    signal block_nb_fu_268_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal block_nb_reg_552 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_84_fu_300_p2 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp_84_reg_557 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp_90_cast3_fu_306_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal tmp_90_cast3_reg_562 : STD_LOGIC_VECTOR (20 downto 0);
    signal tmp_90_cast_fu_312_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_90_cast_reg_567 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_104_fu_318_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_104_reg_572 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_105_fu_322_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_105_reg_577 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_85_fu_334_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_85_reg_582 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_106_fu_338_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_106_reg_587 : STD_LOGIC_VECTOR (8 downto 0);
    signal length_assign_fu_342_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal length_assign_reg_592 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_3_fu_353_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_86_fu_373_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_86_reg_605 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond_i_fu_348_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_88_reg_610 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_89_reg_615 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_90_reg_620 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_4_fu_450_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_4_reg_628 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal exitcond_fu_444_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_109_fu_461_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_109_reg_638 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_92_fu_470_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_92_reg_643 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal tmp_96_reg_649 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_97_reg_654 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_transform_fu_247_ap_start : STD_LOGIC;
    signal grp_transform_fu_247_ap_done : STD_LOGIC;
    signal grp_transform_fu_247_ap_idle : STD_LOGIC;
    signal grp_transform_fu_247_ap_ready : STD_LOGIC;
    signal grp_transform_fu_247_SHA256_m_h_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_transform_fu_247_SHA256_m_h_ce0 : STD_LOGIC;
    signal grp_transform_fu_247_SHA256_m_h_we0 : STD_LOGIC;
    signal grp_transform_fu_247_SHA256_m_h_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_transform_fu_247_message_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_transform_fu_247_message_ce0 : STD_LOGIC;
    signal grp_transform_fu_247_message_address1 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_transform_fu_247_message_ce1 : STD_LOGIC;
    signal i_i_reg_225 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_236 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal ap_reg_grp_transform_fu_247_ap_start : STD_LOGIC := '0';
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal sum_i_cast_fu_368_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_sum1_cast_cast_fu_412_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal p_sum3_cast_cast_fu_420_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal p_sum5_cast_cast_fu_428_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal p_sum6_cast_cast_fu_436_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_91_fu_456_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_sum_cast_fu_483_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_sum2_cast_fu_505_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_sum4_cast_fu_539_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_93_fu_530_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_87_fu_404_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_108_fu_465_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_fu_258_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_95_fu_276_p1 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp_99_fu_280_p1 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp_102_fu_292_p1 : STD_LOGIC_VECTOR (20 downto 0);
    signal tmp_103_fu_296_p1 : STD_LOGIC_VECTOR (20 downto 0);
    signal tmp_100_fu_284_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_101_fu_288_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal pm_len_cast_cast_fu_326_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_107_fu_359_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_i_fu_363_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_sum_fu_477_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_sum2_fu_499_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_sum4_fu_534_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (10 downto 0);

    component transform IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        SHA256_m_h_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
        SHA256_m_h_ce0 : OUT STD_LOGIC;
        SHA256_m_h_we0 : OUT STD_LOGIC;
        SHA256_m_h_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        SHA256_m_h_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        message_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        message_ce0 : OUT STD_LOGIC;
        message_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        message_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
        message_ce1 : OUT STD_LOGIC;
        message_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
        block_nb : IN STD_LOGIC_VECTOR (1 downto 0) );
    end component;



begin
    grp_transform_fu_247 : component transform
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_transform_fu_247_ap_start,
        ap_done => grp_transform_fu_247_ap_done,
        ap_idle => grp_transform_fu_247_ap_idle,
        ap_ready => grp_transform_fu_247_ap_ready,
        SHA256_m_h_address0 => grp_transform_fu_247_SHA256_m_h_address0,
        SHA256_m_h_ce0 => grp_transform_fu_247_SHA256_m_h_ce0,
        SHA256_m_h_we0 => grp_transform_fu_247_SHA256_m_h_we0,
        SHA256_m_h_d0 => grp_transform_fu_247_SHA256_m_h_d0,
        SHA256_m_h_q0 => SHA256_m_h_q0,
        message_address0 => grp_transform_fu_247_message_address0,
        message_ce0 => grp_transform_fu_247_message_ce0,
        message_q0 => SHA256_m_block_q0,
        message_address1 => grp_transform_fu_247_message_address1,
        message_ce1 => grp_transform_fu_247_message_ce1,
        message_q1 => SHA256_m_block_q1,
        block_nb => block_nb_reg_552);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_reg_grp_transform_fu_247_ap_start_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_grp_transform_fu_247_ap_start <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                    ap_reg_grp_transform_fu_247_ap_start <= ap_const_logic_1;
                elsif ((ap_const_logic_1 = grp_transform_fu_247_ap_ready)) then 
                    ap_reg_grp_transform_fu_247_ap_start <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_i_reg_225_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_i_fu_348_p2 = ap_const_lv1_0))) then 
                i_i_reg_225 <= i_3_fu_353_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_i_reg_225 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    i_reg_236_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
                i_reg_236 <= i_4_reg_628;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state8) and (grp_transform_fu_247_ap_done = ap_const_logic_1))) then 
                i_reg_236 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                block_nb_reg_552 <= block_nb_fu_268_p3;
                length_assign_reg_592 <= length_assign_fu_342_p2;
                tmp_104_reg_572 <= tmp_104_fu_318_p1;
                tmp_105_reg_577 <= tmp_105_fu_322_p1;
                tmp_106_reg_587 <= tmp_106_fu_338_p1;
                tmp_84_reg_557 <= tmp_84_fu_300_p2;
                    tmp_85_reg_582(31 downto 0) <= tmp_85_fu_334_p1(31 downto 0);
                tmp_90_cast3_reg_562 <= tmp_90_cast3_fu_306_p2;
                tmp_90_cast_reg_567 <= tmp_90_cast_fu_312_p2;
                tmp_s_reg_544 <= tmp_s_fu_262_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                i_4_reg_628 <= i_4_fu_450_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state9) and (exitcond_fu_444_p2 = ap_const_lv1_0))) then
                tmp_109_reg_638 <= tmp_109_fu_461_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_i_fu_348_p2 = ap_const_lv1_1))) then
                tmp_86_reg_605 <= tmp_86_fu_373_p2;
                tmp_88_reg_610 <= tmp_90_cast_reg_567(12 downto 5);
                tmp_89_reg_615 <= tmp_90_cast3_reg_562(20 downto 13);
                tmp_90_reg_620 <= tmp_84_reg_557(28 downto 21);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                    tmp_92_reg_643(4 downto 2) <= tmp_92_fu_470_p3(4 downto 2);
                tmp_96_reg_649 <= SHA256_m_h_q0(23 downto 16);
                tmp_97_reg_654 <= SHA256_m_h_q0(31 downto 24);
            end if;
        end if;
    end process;
    tmp_85_reg_582(63 downto 32) <= "00000000000000000000000000000000";
    tmp_92_reg_643(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond_i_fu_348_p2, ap_CS_fsm_state9, exitcond_fu_444_p2, grp_transform_fu_247_ap_done, ap_CS_fsm_state8)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_i_fu_348_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state8) and (grp_transform_fu_247_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state9 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state9) and (ap_const_lv1_1 = exitcond_fu_444_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXX";
        end case;
    end process;

    SHA256_m_block_address0_assign_proc : process(tmp_85_reg_582, ap_CS_fsm_state2, exitcond_i_fu_348_p2, grp_transform_fu_247_message_address0, ap_CS_fsm_state8, sum_i_cast_fu_368_p1, p_sum1_cast_cast_fu_412_p3, ap_CS_fsm_state3, p_sum3_cast_cast_fu_420_p3, ap_CS_fsm_state4, p_sum5_cast_cast_fu_428_p3, ap_CS_fsm_state5, p_sum6_cast_cast_fu_436_p3, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            SHA256_m_block_address0 <= p_sum6_cast_cast_fu_436_p3(7 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            SHA256_m_block_address0 <= p_sum5_cast_cast_fu_428_p3(7 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            SHA256_m_block_address0 <= p_sum3_cast_cast_fu_420_p3(7 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            SHA256_m_block_address0 <= p_sum1_cast_cast_fu_412_p3(7 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_i_fu_348_p2 = ap_const_lv1_1))) then 
            SHA256_m_block_address0 <= tmp_85_reg_582(7 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_i_fu_348_p2 = ap_const_lv1_0))) then 
            SHA256_m_block_address0 <= sum_i_cast_fu_368_p1(7 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            SHA256_m_block_address0 <= grp_transform_fu_247_message_address0;
        else 
            SHA256_m_block_address0 <= "XXXXXXX";
        end if; 
    end process;

    SHA256_m_block_address1 <= grp_transform_fu_247_message_address1;

    SHA256_m_block_ce0_assign_proc : process(ap_CS_fsm_state2, exitcond_i_fu_348_p2, grp_transform_fu_247_message_ce0, ap_CS_fsm_state8, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_i_fu_348_p2 = ap_const_lv1_1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_i_fu_348_p2 = ap_const_lv1_0)) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            SHA256_m_block_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            SHA256_m_block_ce0 <= grp_transform_fu_247_message_ce0;
        else 
            SHA256_m_block_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    SHA256_m_block_ce1_assign_proc : process(grp_transform_fu_247_message_ce1, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            SHA256_m_block_ce1 <= grp_transform_fu_247_message_ce1;
        else 
            SHA256_m_block_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    SHA256_m_block_d0_assign_proc : process(ap_CS_fsm_state2, exitcond_i_fu_348_p2, tmp_88_reg_610, tmp_89_reg_615, tmp_90_reg_620, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, tmp_87_fu_404_p3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            SHA256_m_block_d0 <= tmp_90_reg_620;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            SHA256_m_block_d0 <= tmp_89_reg_615;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            SHA256_m_block_d0 <= tmp_88_reg_610;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            SHA256_m_block_d0 <= tmp_87_fu_404_p3;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_i_fu_348_p2 = ap_const_lv1_1))) then 
            SHA256_m_block_d0 <= ap_const_lv8_80;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_i_fu_348_p2 = ap_const_lv1_0))) then 
            SHA256_m_block_d0 <= ap_const_lv8_0;
        else 
            SHA256_m_block_d0 <= "XXXXXXXX";
        end if; 
    end process;


    SHA256_m_block_we0_assign_proc : process(ap_CS_fsm_state2, exitcond_i_fu_348_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_i_fu_348_p2 = ap_const_lv1_1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_i_fu_348_p2 = ap_const_lv1_0)) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            SHA256_m_block_we0 <= ap_const_logic_1;
        else 
            SHA256_m_block_we0 <= ap_const_logic_0;
        end if; 
    end process;


    SHA256_m_h_address0_assign_proc : process(ap_CS_fsm_state9, grp_transform_fu_247_SHA256_m_h_address0, ap_CS_fsm_state8, tmp_91_fu_456_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            SHA256_m_h_address0 <= tmp_91_fu_456_p1(3 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            SHA256_m_h_address0 <= grp_transform_fu_247_SHA256_m_h_address0;
        else 
            SHA256_m_h_address0 <= "XXX";
        end if; 
    end process;


    SHA256_m_h_ce0_assign_proc : process(ap_CS_fsm_state9, grp_transform_fu_247_SHA256_m_h_ce0, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            SHA256_m_h_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            SHA256_m_h_ce0 <= grp_transform_fu_247_SHA256_m_h_ce0;
        else 
            SHA256_m_h_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    SHA256_m_h_d0 <= grp_transform_fu_247_SHA256_m_h_d0;

    SHA256_m_h_we0_assign_proc : process(grp_transform_fu_247_SHA256_m_h_we0, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            SHA256_m_h_we0 <= grp_transform_fu_247_SHA256_m_h_we0;
        else 
            SHA256_m_h_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state9, exitcond_fu_444_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state9) and (ap_const_lv1_1 = exitcond_fu_444_p2)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state9, exitcond_fu_444_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) and (ap_const_lv1_1 = exitcond_fu_444_p2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    block_nb_fu_268_p3 <= 
        ap_const_lv2_2 when (tmp_s_fu_262_p2(0) = '1') else 
        ap_const_lv2_1;

    digest_address0_assign_proc : process(ap_CS_fsm_state10, ap_CS_fsm_state11, p_sum_cast_fu_483_p1, p_sum4_cast_fu_539_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            digest_address0 <= p_sum4_cast_fu_539_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            digest_address0 <= p_sum_cast_fu_483_p1(5 - 1 downto 0);
        else 
            digest_address0 <= "XXXXX";
        end if; 
    end process;


    digest_address1_assign_proc : process(ap_CS_fsm_state10, ap_CS_fsm_state11, p_sum2_cast_fu_505_p1, tmp_93_fu_530_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            digest_address1 <= tmp_93_fu_530_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            digest_address1 <= p_sum2_cast_fu_505_p1(5 - 1 downto 0);
        else 
            digest_address1 <= "XXXXX";
        end if; 
    end process;


    digest_ce0_assign_proc : process(ap_CS_fsm_state10, ap_CS_fsm_state11)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            digest_ce0 <= ap_const_logic_1;
        else 
            digest_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    digest_ce1_assign_proc : process(ap_CS_fsm_state10, ap_CS_fsm_state11)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            digest_ce1 <= ap_const_logic_1;
        else 
            digest_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    digest_d0_assign_proc : process(ap_CS_fsm_state10, tmp_96_reg_649, ap_CS_fsm_state11, tmp_108_fu_465_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            digest_d0 <= tmp_96_reg_649;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            digest_d0 <= tmp_108_fu_465_p1;
        else 
            digest_d0 <= "XXXXXXXX";
        end if; 
    end process;


    digest_d1_assign_proc : process(SHA256_m_h_q0, ap_CS_fsm_state10, tmp_97_reg_654, ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            digest_d1 <= tmp_97_reg_654;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            digest_d1 <= SHA256_m_h_q0(15 downto 8);
        else 
            digest_d1 <= "XXXXXXXX";
        end if; 
    end process;


    digest_we0_assign_proc : process(ap_CS_fsm_state10, ap_CS_fsm_state11)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            digest_we0 <= ap_const_logic_1;
        else 
            digest_we0 <= ap_const_logic_0;
        end if; 
    end process;


    digest_we1_assign_proc : process(ap_CS_fsm_state10, ap_CS_fsm_state11)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            digest_we1 <= ap_const_logic_1;
        else 
            digest_we1 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_fu_444_p2 <= "1" when (i_reg_236 = ap_const_lv4_8) else "0";
    exitcond_i_fu_348_p2 <= "1" when (i_i_reg_225 = length_assign_reg_592) else "0";
    grp_transform_fu_247_ap_start <= ap_reg_grp_transform_fu_247_ap_start;
    i_3_fu_353_p2 <= std_logic_vector(unsigned(i_i_reg_225) + unsigned(ap_const_lv32_1));
    i_4_fu_450_p2 <= std_logic_vector(unsigned(i_reg_236) + unsigned(ap_const_lv4_1));
    length_assign_fu_342_p2 <= std_logic_vector(unsigned(pm_len_cast_cast_fu_326_p3) - unsigned(SHA256_m_len_read));
    p_sum1_cast_cast_fu_412_p3 <= 
        ap_const_lv64_7F when (tmp_s_reg_544(0) = '1') else 
        ap_const_lv64_3F;
    p_sum2_cast_fu_505_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_sum2_fu_499_p2),64));
    p_sum2_fu_499_p2 <= (tmp_92_fu_470_p3 or ap_const_lv5_2);
    p_sum3_cast_cast_fu_420_p3 <= 
        ap_const_lv64_7E when (tmp_s_reg_544(0) = '1') else 
        ap_const_lv64_3E;
    p_sum4_cast_fu_539_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_sum4_fu_534_p2),64));
    p_sum4_fu_534_p2 <= (tmp_92_reg_643 or ap_const_lv5_1);
    p_sum5_cast_cast_fu_428_p3 <= 
        ap_const_lv64_7D when (tmp_s_reg_544(0) = '1') else 
        ap_const_lv64_3D;
    p_sum6_cast_cast_fu_436_p3 <= 
        ap_const_lv64_7C when (tmp_s_reg_544(0) = '1') else 
        ap_const_lv64_3C;
    p_sum_cast_fu_483_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_sum_fu_477_p2),64));
    p_sum_fu_477_p2 <= (tmp_92_fu_470_p3 or ap_const_lv5_3);
    pm_len_cast_cast_fu_326_p3 <= 
        ap_const_lv32_80 when (tmp_s_fu_262_p2(0) = '1') else 
        ap_const_lv32_40;
        sum_i_cast_fu_368_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sum_i_fu_363_p2),64));

    sum_i_fu_363_p2 <= std_logic_vector(unsigned(tmp_107_fu_359_p1) + unsigned(tmp_106_reg_587));
    tmp_100_fu_284_p1 <= SHA256_m_tot_len_read(13 - 1 downto 0);
    tmp_101_fu_288_p1 <= SHA256_m_len_read(13 - 1 downto 0);
    tmp_102_fu_292_p1 <= SHA256_m_tot_len_read(21 - 1 downto 0);
    tmp_103_fu_296_p1 <= SHA256_m_len_read(21 - 1 downto 0);
    tmp_104_fu_318_p1 <= SHA256_m_len_read(5 - 1 downto 0);
    tmp_105_fu_322_p1 <= SHA256_m_tot_len_read(5 - 1 downto 0);
    tmp_106_fu_338_p1 <= SHA256_m_len_read(9 - 1 downto 0);
    tmp_107_fu_359_p1 <= i_i_reg_225(9 - 1 downto 0);
    tmp_108_fu_465_p1 <= SHA256_m_h_q0(8 - 1 downto 0);
    tmp_109_fu_461_p1 <= i_reg_236(3 - 1 downto 0);
    tmp_84_fu_300_p2 <= std_logic_vector(unsigned(tmp_95_fu_276_p1) + unsigned(tmp_99_fu_280_p1));
    tmp_85_fu_334_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(SHA256_m_len_read),64));
    tmp_86_fu_373_p2 <= std_logic_vector(unsigned(tmp_105_reg_577) + unsigned(tmp_104_reg_572));
    tmp_87_fu_404_p3 <= (tmp_86_reg_605 & ap_const_lv3_0);
    tmp_90_cast3_fu_306_p2 <= std_logic_vector(unsigned(tmp_102_fu_292_p1) + unsigned(tmp_103_fu_296_p1));
    tmp_90_cast_fu_312_p2 <= std_logic_vector(unsigned(tmp_100_fu_284_p1) + unsigned(tmp_101_fu_288_p1));
    tmp_91_fu_456_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_236),64));
    tmp_92_fu_470_p3 <= (tmp_109_reg_638 & ap_const_lv2_0);
    tmp_93_fu_530_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_92_reg_643),64));
    tmp_95_fu_276_p1 <= SHA256_m_len_read(29 - 1 downto 0);
    tmp_99_fu_280_p1 <= SHA256_m_tot_len_read(29 - 1 downto 0);
    tmp_fu_258_p1 <= SHA256_m_len_read(6 - 1 downto 0);
    tmp_s_fu_262_p2 <= "1" when (unsigned(tmp_fu_258_p1) > unsigned(ap_const_lv6_37)) else "0";
end behav;
