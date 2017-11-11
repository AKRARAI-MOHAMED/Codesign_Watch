--IP Functional Simulation Model
--VERSION_BEGIN 13.0 cbx_mgl 2013:06:12:18:04:42:SJ cbx_simgen 2013:06:12:18:03:40:SJ  VERSION_END


-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

--synthesis_resources = mux21 74 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  HW_Design_For_TheWatch_addr_router_001 IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 sink_data	:	IN  STD_LOGIC_VECTOR (99 DOWNTO 0);
		 sink_endofpacket	:	IN  STD_LOGIC;
		 sink_ready	:	OUT  STD_LOGIC;
		 sink_startofpacket	:	IN  STD_LOGIC;
		 sink_valid	:	IN  STD_LOGIC;
		 src_channel	:	OUT  STD_LOGIC_VECTOR (9 DOWNTO 0);
		 src_data	:	OUT  STD_LOGIC_VECTOR (99 DOWNTO 0);
		 src_endofpacket	:	OUT  STD_LOGIC;
		 src_ready	:	IN  STD_LOGIC;
		 src_startofpacket	:	OUT  STD_LOGIC;
		 src_valid	:	OUT  STD_LOGIC
	 ); 
 END HW_Design_For_TheWatch_addr_router_001;

 ARCHITECTURE RTL OF HW_Design_For_TheWatch_addr_router_001 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_101m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_102m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_108m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_109m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_110m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_111m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_112m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_116m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_117m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_123m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_124m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_125m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_126m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_127m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_128m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_131m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_132m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_138m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_139m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_140m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_141m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_142m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_143m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_144m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_146m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_147m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_41m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_42m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_48m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_56m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_57m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_63m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_64m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_71m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_72m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_78m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_79m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_80m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_86m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_87m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_93m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_94m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_95m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_channel_96m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_103m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_104m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_105m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_106m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_118m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_119m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_120m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_121m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_133m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_134m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_135m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_136m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_148m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_149m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_150m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_151m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_44m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_45m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_58m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_59m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_60m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_61m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_73m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_74m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_75m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_76m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_88m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_89m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_90m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_hw_design_for_thewatch_addr_router_001_src_data_91m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_w_sink_data_range122w416w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range143w305w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range125w329w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range146w304w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_hw_design_for_thewatch_addr_router_001_src_channel_1_437_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_hw_design_for_thewatch_addr_router_001_src_channel_2_463_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_hw_design_for_thewatch_addr_router_001_src_channel_3_489_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_hw_design_for_thewatch_addr_router_001_src_channel_4_515_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_hw_design_for_thewatch_addr_router_001_src_channel_5_541_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_hw_design_for_thewatch_addr_router_001_src_channel_6_567_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_hw_design_for_thewatch_addr_router_001_src_channel_7_593_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout :	STD_LOGIC;
	 SIGNAL  wire_w_sink_data_range122w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range125w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range143w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range146w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_sink_data_range122w416w(0) <= wire_w_sink_data_range122w(0) AND wire_w_lg_w_sink_data_range125w329w(0);
	wire_w_lg_w_sink_data_range143w305w(0) <= wire_w_sink_data_range143w(0) AND wire_w_lg_w_sink_data_range146w304w(0);
	wire_w1w(0) <= NOT s_wire_hw_design_for_thewatch_addr_router_001_src_channel_1_437_dataout;
	wire_w_lg_w_sink_data_range125w329w(0) <= NOT wire_w_sink_data_range125w(0);
	wire_w_lg_w_sink_data_range146w304w(0) <= NOT wire_w_sink_data_range146w(0);
	s_wire_hw_design_for_thewatch_addr_router_001_src_channel_1_437_dataout <= ((((((((((((wire_w_lg_w_sink_data_range143w305w(0) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND (NOT sink_data(59))) AND sink_data(60));
	s_wire_hw_design_for_thewatch_addr_router_001_src_channel_2_463_dataout <= (((((((((((((((((((wire_w_lg_w_sink_data_range125w329w(0) AND (NOT sink_data(42))) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND (NOT sink_data(59))) AND sink_data(60));
	s_wire_hw_design_for_thewatch_addr_router_001_src_channel_3_489_dataout <= (((((((((((((((((((((NOT sink_data(40)) AND sink_data(41)) AND (NOT sink_data(42))) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND (NOT sink_data(59))) AND sink_data(60));
	s_wire_hw_design_for_thewatch_addr_router_001_src_channel_4_515_dataout <= ((((((((((((((((((((sink_data(40) AND sink_data(41)) AND (NOT sink_data(42))) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND (NOT sink_data(59))) AND sink_data(60));
	s_wire_hw_design_for_thewatch_addr_router_001_src_channel_5_541_dataout <= (((((((((((((((((((((NOT sink_data(40)) AND wire_w_lg_w_sink_data_range125w329w(0)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND (NOT sink_data(59))) AND sink_data(60));
	s_wire_hw_design_for_thewatch_addr_router_001_src_channel_6_567_dataout <= (((((((((((((((((((wire_w_lg_w_sink_data_range122w416w(0) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND (NOT sink_data(59))) AND sink_data(60));
	s_wire_hw_design_for_thewatch_addr_router_001_src_channel_7_593_dataout <= (((((((((((((((((((((NOT sink_data(40)) AND sink_data(41)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND (NOT sink_data(59))) AND sink_data(60));
	s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout <= ((((((((((((((((((((((NOT sink_data(39)) AND sink_data(40)) AND sink_data(41)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND (NOT sink_data(59))) AND sink_data(60));
	s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout <= (((((((((((((((((((((sink_data(39) AND sink_data(40)) AND sink_data(41)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND (NOT sink_data(56))) AND (NOT sink_data(57))) AND (NOT sink_data(58))) AND (NOT sink_data(59))) AND sink_data(60));
	sink_ready <= src_ready;
	src_channel <= ( wire_hw_design_for_thewatch_addr_router_001_src_channel_138m_dataout & wire_hw_design_for_thewatch_addr_router_001_src_channel_139m_dataout & wire_hw_design_for_thewatch_addr_router_001_src_channel_140m_dataout & wire_hw_design_for_thewatch_addr_router_001_src_channel_141m_dataout & wire_hw_design_for_thewatch_addr_router_001_src_channel_142m_dataout & wire_hw_design_for_thewatch_addr_router_001_src_channel_143m_dataout & wire_hw_design_for_thewatch_addr_router_001_src_channel_144m_dataout & s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout & wire_hw_design_for_thewatch_addr_router_001_src_channel_146m_dataout & wire_hw_design_for_thewatch_addr_router_001_src_channel_147m_dataout);
	src_data <= ( sink_data(99 DOWNTO 90) & wire_hw_design_for_thewatch_addr_router_001_src_data_148m_dataout & wire_hw_design_for_thewatch_addr_router_001_src_data_149m_dataout & wire_hw_design_for_thewatch_addr_router_001_src_data_150m_dataout & wire_hw_design_for_thewatch_addr_router_001_src_data_151m_dataout & sink_data(85 DOWNTO 0));
	src_endofpacket <= sink_endofpacket;
	src_startofpacket <= sink_startofpacket;
	src_valid <= sink_valid;
	wire_w_sink_data_range122w(0) <= sink_data(40);
	wire_w_sink_data_range125w(0) <= sink_data(41);
	wire_w_sink_data_range143w(0) <= sink_data(47);
	wire_w_sink_data_range146w(0) <= sink_data(48);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_101m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_86m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_6_567_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_102m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_87m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_6_567_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_108m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_93m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_7_593_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_109m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_94m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_7_593_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_110m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_95m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_7_593_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_111m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_96m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_7_593_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_112m_dataout <= s_wire_hw_design_for_thewatch_addr_router_001_src_channel_6_567_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_7_593_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_116m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_101m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_7_593_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_117m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_102m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_7_593_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_123m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_108m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_124m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_109m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_125m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_110m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_126m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_111m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_127m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_112m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_128m_dataout <= s_wire_hw_design_for_thewatch_addr_router_001_src_channel_7_593_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_131m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_116m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_132m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_117m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_138m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_123m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_139m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_124m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_140m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_125m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_141m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_126m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_142m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_127m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_143m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_128m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_144m_dataout <= s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_146m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_131m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_147m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_132m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_41m_dataout <= wire_w1w(0) AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_2_463_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_42m_dataout <= s_wire_hw_design_for_thewatch_addr_router_001_src_channel_1_437_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_2_463_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_48m_dataout <= s_wire_hw_design_for_thewatch_addr_router_001_src_channel_2_463_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_3_489_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_56m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_41m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_3_489_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_57m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_42m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_3_489_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_63m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_48m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_4_515_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_64m_dataout <= s_wire_hw_design_for_thewatch_addr_router_001_src_channel_3_489_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_4_515_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_71m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_56m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_4_515_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_72m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_57m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_4_515_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_78m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_63m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_5_541_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_79m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_64m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_5_541_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_80m_dataout <= s_wire_hw_design_for_thewatch_addr_router_001_src_channel_4_515_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_5_541_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_86m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_71m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_5_541_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_87m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_72m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_5_541_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_93m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_78m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_6_567_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_94m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_79m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_6_567_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_95m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_channel_80m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_6_567_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_channel_96m_dataout <= s_wire_hw_design_for_thewatch_addr_router_001_src_channel_5_541_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_6_567_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_103m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_88m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_6_567_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_104m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_89m_dataout OR s_wire_hw_design_for_thewatch_addr_router_001_src_channel_6_567_dataout;
	wire_hw_design_for_thewatch_addr_router_001_src_data_105m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_90m_dataout OR s_wire_hw_design_for_thewatch_addr_router_001_src_channel_6_567_dataout;
	wire_hw_design_for_thewatch_addr_router_001_src_data_106m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_91m_dataout OR s_wire_hw_design_for_thewatch_addr_router_001_src_channel_6_567_dataout;
	wire_hw_design_for_thewatch_addr_router_001_src_data_118m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_103m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_7_593_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_119m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_104m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_7_593_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_120m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_105m_dataout OR s_wire_hw_design_for_thewatch_addr_router_001_src_channel_7_593_dataout;
	wire_hw_design_for_thewatch_addr_router_001_src_data_121m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_106m_dataout OR s_wire_hw_design_for_thewatch_addr_router_001_src_channel_7_593_dataout;
	wire_hw_design_for_thewatch_addr_router_001_src_data_133m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_118m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_134m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_119m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_135m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_120m_dataout OR s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout;
	wire_hw_design_for_thewatch_addr_router_001_src_data_136m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_121m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_8_619_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_148m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_133m_dataout OR s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout;
	wire_hw_design_for_thewatch_addr_router_001_src_data_149m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_134m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_150m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_135m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_151m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_136m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_9_645_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_44m_dataout <= wire_w1w(0) AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_2_463_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_45m_dataout <= wire_w1w(0) AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_2_463_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_58m_dataout <= s_wire_hw_design_for_thewatch_addr_router_001_src_channel_2_463_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_3_489_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_59m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_44m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_3_489_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_60m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_45m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_3_489_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_61m_dataout <= s_wire_hw_design_for_thewatch_addr_router_001_src_channel_2_463_dataout OR s_wire_hw_design_for_thewatch_addr_router_001_src_channel_3_489_dataout;
	wire_hw_design_for_thewatch_addr_router_001_src_data_73m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_58m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_4_515_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_74m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_59m_dataout OR s_wire_hw_design_for_thewatch_addr_router_001_src_channel_4_515_dataout;
	wire_hw_design_for_thewatch_addr_router_001_src_data_75m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_60m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_4_515_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_76m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_61m_dataout OR s_wire_hw_design_for_thewatch_addr_router_001_src_channel_4_515_dataout;
	wire_hw_design_for_thewatch_addr_router_001_src_data_88m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_73m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_5_541_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_89m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_74m_dataout OR s_wire_hw_design_for_thewatch_addr_router_001_src_channel_5_541_dataout;
	wire_hw_design_for_thewatch_addr_router_001_src_data_90m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_75m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_5_541_dataout);
	wire_hw_design_for_thewatch_addr_router_001_src_data_91m_dataout <= wire_hw_design_for_thewatch_addr_router_001_src_data_76m_dataout AND NOT(s_wire_hw_design_for_thewatch_addr_router_001_src_channel_5_541_dataout);

 END RTL; --HW_Design_For_TheWatch_addr_router_001
--synopsys translate_on
--VALID FILE
