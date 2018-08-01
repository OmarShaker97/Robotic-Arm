-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "12/09/2017 08:29:11"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter IS
    PORT (
	clock : IN std_logic;
	stepperPins1 : BUFFER std_logic_vector(3 DOWNTO 0);
	stepperPins2 : BUFFER std_logic_vector(3 DOWNTO 0);
	stepperPins3 : BUFFER std_logic_vector(3 DOWNTO 0);
	stepperPins4 : BUFFER std_logic_vector(3 DOWNTO 0);
	sw1 : IN std_logic;
	sw2 : IN std_logic;
	sw3 : IN std_logic;
	sw4 : IN std_logic;
	sw5 : IN std_logic;
	sw6 : IN std_logic;
	sw7 : IN std_logic;
	sw8 : IN std_logic
	);
END counter;

-- Design Ports Information
-- stepperPins1[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins1[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins1[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins1[3]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins2[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins2[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins2[2]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins2[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins3[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins3[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins3[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins3[3]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins4[0]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins4[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins4[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stepperPins4[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw7	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw8	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw4	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw3	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw6	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw5	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_stepperPins1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_stepperPins2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_stepperPins3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_stepperPins4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw1 : std_logic;
SIGNAL ww_sw2 : std_logic;
SIGNAL ww_sw3 : std_logic;
SIGNAL ww_sw4 : std_logic;
SIGNAL ww_sw5 : std_logic;
SIGNAL ww_sw6 : std_logic;
SIGNAL ww_sw7 : std_logic;
SIGNAL ww_sw8 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \stepperPins3[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stepperPins2[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stepperPins1[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw7~input_o\ : std_logic;
SIGNAL \sw8~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \stepperPins1[0]~output_o\ : std_logic;
SIGNAL \stepperPins1[1]~output_o\ : std_logic;
SIGNAL \stepperPins1[2]~output_o\ : std_logic;
SIGNAL \stepperPins1[3]~output_o\ : std_logic;
SIGNAL \stepperPins2[0]~output_o\ : std_logic;
SIGNAL \stepperPins2[1]~output_o\ : std_logic;
SIGNAL \stepperPins2[2]~output_o\ : std_logic;
SIGNAL \stepperPins2[3]~output_o\ : std_logic;
SIGNAL \stepperPins3[0]~output_o\ : std_logic;
SIGNAL \stepperPins3[1]~output_o\ : std_logic;
SIGNAL \stepperPins3[2]~output_o\ : std_logic;
SIGNAL \stepperPins3[3]~output_o\ : std_logic;
SIGNAL \stepperPins4[0]~output_o\ : std_logic;
SIGNAL \stepperPins4[1]~output_o\ : std_logic;
SIGNAL \stepperPins4[2]~output_o\ : std_logic;
SIGNAL \stepperPins4[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \clockCount4[0]~32_combout\ : std_logic;
SIGNAL \clockCount4[0]~33\ : std_logic;
SIGNAL \clockCount4[1]~34_combout\ : std_logic;
SIGNAL \clockCount4[1]~35\ : std_logic;
SIGNAL \clockCount4[2]~36_combout\ : std_logic;
SIGNAL \clockCount4[2]~37\ : std_logic;
SIGNAL \clockCount4[3]~38_combout\ : std_logic;
SIGNAL \clockCount4[3]~39\ : std_logic;
SIGNAL \clockCount4[4]~40_combout\ : std_logic;
SIGNAL \clockCount4[4]~41\ : std_logic;
SIGNAL \clockCount4[5]~42_combout\ : std_logic;
SIGNAL \clockCount4[5]~43\ : std_logic;
SIGNAL \clockCount4[6]~44_combout\ : std_logic;
SIGNAL \clockCount4[6]~45\ : std_logic;
SIGNAL \clockCount4[7]~46_combout\ : std_logic;
SIGNAL \clockCount4[7]~47\ : std_logic;
SIGNAL \clockCount4[8]~48_combout\ : std_logic;
SIGNAL \clockCount4[8]~49\ : std_logic;
SIGNAL \clockCount4[9]~50_combout\ : std_logic;
SIGNAL \clockCount4[9]~51\ : std_logic;
SIGNAL \clockCount4[10]~52_combout\ : std_logic;
SIGNAL \clockCount4[10]~53\ : std_logic;
SIGNAL \clockCount4[11]~54_combout\ : std_logic;
SIGNAL \clockCount4[11]~55\ : std_logic;
SIGNAL \clockCount4[12]~56_combout\ : std_logic;
SIGNAL \clockCount4[12]~57\ : std_logic;
SIGNAL \clockCount4[13]~58_combout\ : std_logic;
SIGNAL \clockCount4[13]~59\ : std_logic;
SIGNAL \clockCount4[14]~60_combout\ : std_logic;
SIGNAL \clockCount4[14]~61\ : std_logic;
SIGNAL \clockCount4[15]~62_combout\ : std_logic;
SIGNAL \clockCount4[15]~63\ : std_logic;
SIGNAL \clockCount4[16]~64_combout\ : std_logic;
SIGNAL \clockCount4[16]~65\ : std_logic;
SIGNAL \clockCount4[17]~66_combout\ : std_logic;
SIGNAL \clockCount4[17]~67\ : std_logic;
SIGNAL \clockCount4[18]~68_combout\ : std_logic;
SIGNAL \clockCount4[18]~69\ : std_logic;
SIGNAL \clockCount4[19]~70_combout\ : std_logic;
SIGNAL \clockCount4[19]~71\ : std_logic;
SIGNAL \clockCount4[20]~72_combout\ : std_logic;
SIGNAL \clockCount4[20]~73\ : std_logic;
SIGNAL \clockCount4[21]~74_combout\ : std_logic;
SIGNAL \clockCount4[21]~75\ : std_logic;
SIGNAL \clockCount4[22]~76_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \clockCount4[22]~77\ : std_logic;
SIGNAL \clockCount4[23]~78_combout\ : std_logic;
SIGNAL \clockCount4[23]~79\ : std_logic;
SIGNAL \clockCount4[24]~80_combout\ : std_logic;
SIGNAL \clockCount4[24]~81\ : std_logic;
SIGNAL \clockCount4[25]~82_combout\ : std_logic;
SIGNAL \clockCount4[25]~83\ : std_logic;
SIGNAL \clockCount4[26]~84_combout\ : std_logic;
SIGNAL \clockCount4[26]~85\ : std_logic;
SIGNAL \clockCount4[27]~86_combout\ : std_logic;
SIGNAL \clockCount4[27]~87\ : std_logic;
SIGNAL \clockCount4[28]~88_combout\ : std_logic;
SIGNAL \clockCount4[28]~89\ : std_logic;
SIGNAL \clockCount4[29]~90_combout\ : std_logic;
SIGNAL \clockCount4[29]~91\ : std_logic;
SIGNAL \clockCount4[30]~92_combout\ : std_logic;
SIGNAL \clockCount4[30]~93\ : std_logic;
SIGNAL \clockCount4[31]~94_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \step[0]~1_combout\ : std_logic;
SIGNAL \step[1]~0_combout\ : std_logic;
SIGNAL \sw2~input_o\ : std_logic;
SIGNAL \stepperPins1[0]~0_combout\ : std_logic;
SIGNAL \sw1~input_o\ : std_logic;
SIGNAL \stepperPins1[3]~1_combout\ : std_logic;
SIGNAL \stepperPins1[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \stepperPins1[0]$latch~combout\ : std_logic;
SIGNAL \stepperPins1[1]~2_combout\ : std_logic;
SIGNAL \stepperPins1[1]$latch~combout\ : std_logic;
SIGNAL \stepperPins1[2]$latch~combout\ : std_logic;
SIGNAL \stepperPins1[3]$latch~combout\ : std_logic;
SIGNAL \sw4~input_o\ : std_logic;
SIGNAL \stepperPins2[0]~0_combout\ : std_logic;
SIGNAL \sw3~input_o\ : std_logic;
SIGNAL \stepperPins2[3]~1_combout\ : std_logic;
SIGNAL \stepperPins2[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \stepperPins2[0]$latch~combout\ : std_logic;
SIGNAL \stepperPins2[1]~2_combout\ : std_logic;
SIGNAL \stepperPins2[1]$latch~combout\ : std_logic;
SIGNAL \stepperPins2[2]$latch~combout\ : std_logic;
SIGNAL \stepperPins2[3]$latch~combout\ : std_logic;
SIGNAL \sw6~input_o\ : std_logic;
SIGNAL \sw5~input_o\ : std_logic;
SIGNAL \always1~0_combout\ : std_logic;
SIGNAL \clockCount3[0]~32_combout\ : std_logic;
SIGNAL \clockCount3[0]~33\ : std_logic;
SIGNAL \clockCount3[1]~34_combout\ : std_logic;
SIGNAL \clockCount3[1]~35\ : std_logic;
SIGNAL \clockCount3[2]~36_combout\ : std_logic;
SIGNAL \clockCount3[2]~37\ : std_logic;
SIGNAL \clockCount3[3]~38_combout\ : std_logic;
SIGNAL \clockCount3[3]~39\ : std_logic;
SIGNAL \clockCount3[4]~40_combout\ : std_logic;
SIGNAL \clockCount3[4]~41\ : std_logic;
SIGNAL \clockCount3[5]~42_combout\ : std_logic;
SIGNAL \clockCount3[5]~43\ : std_logic;
SIGNAL \clockCount3[6]~44_combout\ : std_logic;
SIGNAL \clockCount3[6]~45\ : std_logic;
SIGNAL \clockCount3[7]~46_combout\ : std_logic;
SIGNAL \clockCount3[7]~47\ : std_logic;
SIGNAL \clockCount3[8]~48_combout\ : std_logic;
SIGNAL \clockCount3[8]~49\ : std_logic;
SIGNAL \clockCount3[9]~50_combout\ : std_logic;
SIGNAL \clockCount3[9]~51\ : std_logic;
SIGNAL \clockCount3[10]~52_combout\ : std_logic;
SIGNAL \clockCount3[10]~53\ : std_logic;
SIGNAL \clockCount3[11]~54_combout\ : std_logic;
SIGNAL \clockCount3[11]~55\ : std_logic;
SIGNAL \clockCount3[12]~56_combout\ : std_logic;
SIGNAL \clockCount3[12]~57\ : std_logic;
SIGNAL \clockCount3[13]~58_combout\ : std_logic;
SIGNAL \clockCount3[13]~59\ : std_logic;
SIGNAL \clockCount3[14]~60_combout\ : std_logic;
SIGNAL \clockCount3[14]~61\ : std_logic;
SIGNAL \clockCount3[15]~62_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \clockCount3[15]~63\ : std_logic;
SIGNAL \clockCount3[16]~64_combout\ : std_logic;
SIGNAL \clockCount3[16]~65\ : std_logic;
SIGNAL \clockCount3[17]~66_combout\ : std_logic;
SIGNAL \clockCount3[17]~67\ : std_logic;
SIGNAL \clockCount3[18]~68_combout\ : std_logic;
SIGNAL \clockCount3[18]~69\ : std_logic;
SIGNAL \clockCount3[19]~70_combout\ : std_logic;
SIGNAL \clockCount3[19]~71\ : std_logic;
SIGNAL \clockCount3[20]~72_combout\ : std_logic;
SIGNAL \clockCount3[20]~73\ : std_logic;
SIGNAL \clockCount3[21]~74_combout\ : std_logic;
SIGNAL \clockCount3[21]~75\ : std_logic;
SIGNAL \clockCount3[22]~76_combout\ : std_logic;
SIGNAL \clockCount3[22]~77\ : std_logic;
SIGNAL \clockCount3[23]~78_combout\ : std_logic;
SIGNAL \clockCount3[23]~79\ : std_logic;
SIGNAL \clockCount3[24]~80_combout\ : std_logic;
SIGNAL \clockCount3[24]~81\ : std_logic;
SIGNAL \clockCount3[25]~82_combout\ : std_logic;
SIGNAL \clockCount3[25]~83\ : std_logic;
SIGNAL \clockCount3[26]~84_combout\ : std_logic;
SIGNAL \clockCount3[26]~85\ : std_logic;
SIGNAL \clockCount3[27]~86_combout\ : std_logic;
SIGNAL \clockCount3[27]~87\ : std_logic;
SIGNAL \clockCount3[28]~88_combout\ : std_logic;
SIGNAL \clockCount3[28]~89\ : std_logic;
SIGNAL \clockCount3[29]~90_combout\ : std_logic;
SIGNAL \clockCount3[29]~91\ : std_logic;
SIGNAL \clockCount3[30]~92_combout\ : std_logic;
SIGNAL \clockCount3[30]~93\ : std_logic;
SIGNAL \clockCount3[31]~94_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \step3[0]~0_combout\ : std_logic;
SIGNAL \step3[1]~2_combout\ : std_logic;
SIGNAL \step3[2]~1_combout\ : std_logic;
SIGNAL \stepperPins3[0]~0_combout\ : std_logic;
SIGNAL \stepperPins3[3]~1_combout\ : std_logic;
SIGNAL \stepperPins3[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \stepperPins3[0]$latch~combout\ : std_logic;
SIGNAL \stepperPins3[1]~2_combout\ : std_logic;
SIGNAL \stepperPins3[1]$latch~combout\ : std_logic;
SIGNAL \stepperPins3[2]~3_combout\ : std_logic;
SIGNAL \stepperPins3[2]$latch~combout\ : std_logic;
SIGNAL \stepperPins3[3]~4_combout\ : std_logic;
SIGNAL \stepperPins3[3]$latch~combout\ : std_logic;
SIGNAL clockCount4 : std_logic_vector(31 DOWNTO 0);
SIGNAL clockCount3 : std_logic_vector(31 DOWNTO 0);
SIGNAL step : std_logic_vector(1 DOWNTO 0);
SIGNAL step3 : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clock <= clock;
stepperPins1 <= ww_stepperPins1;
stepperPins2 <= ww_stepperPins2;
stepperPins3 <= ww_stepperPins3;
stepperPins4 <= ww_stepperPins4;
ww_sw1 <= sw1;
ww_sw2 <= sw2;
ww_sw3 <= sw3;
ww_sw4 <= sw4;
ww_sw5 <= sw5;
ww_sw6 <= sw6;
ww_sw7 <= sw7;
ww_sw8 <= sw8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\stepperPins3[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \stepperPins3[3]~1_combout\);

\stepperPins2[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \stepperPins2[3]~1_combout\);

\stepperPins1[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \stepperPins1[3]~1_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: LCCOMB_X44_Y50_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X31_Y0_N23
\stepperPins1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stepperPins1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \stepperPins1[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\stepperPins1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stepperPins1[1]$latch~combout\,
	devoe => ww_devoe,
	o => \stepperPins1[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\stepperPins1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stepperPins1[2]$latch~combout\,
	devoe => ww_devoe,
	o => \stepperPins1[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\stepperPins1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stepperPins1[3]$latch~combout\,
	devoe => ww_devoe,
	o => \stepperPins1[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\stepperPins2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stepperPins2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \stepperPins2[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\stepperPins2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stepperPins2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \stepperPins2[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\stepperPins2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stepperPins2[2]$latch~combout\,
	devoe => ww_devoe,
	o => \stepperPins2[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\stepperPins2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stepperPins2[3]$latch~combout\,
	devoe => ww_devoe,
	o => \stepperPins2[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\stepperPins3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stepperPins3[0]$latch~combout\,
	devoe => ww_devoe,
	o => \stepperPins3[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\stepperPins3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stepperPins3[1]$latch~combout\,
	devoe => ww_devoe,
	o => \stepperPins3[1]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\stepperPins3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stepperPins3[2]$latch~combout\,
	devoe => ww_devoe,
	o => \stepperPins3[2]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\stepperPins3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stepperPins3[3]$latch~combout\,
	devoe => ww_devoe,
	o => \stepperPins3[3]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\stepperPins4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \stepperPins4[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\stepperPins4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \stepperPins4[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\stepperPins4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \stepperPins4[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\stepperPins4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \stepperPins4[3]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G19
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X52_Y48_N0
\clockCount4[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[0]~32_combout\ = clockCount4(0) $ (VCC)
-- \clockCount4[0]~33\ = CARRY(clockCount4(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(0),
	datad => VCC,
	combout => \clockCount4[0]~32_combout\,
	cout => \clockCount4[0]~33\);

-- Location: FF_X52_Y48_N1
\clockCount4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[0]~32_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(0));

-- Location: LCCOMB_X52_Y48_N2
\clockCount4[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[1]~34_combout\ = (clockCount4(1) & (!\clockCount4[0]~33\)) # (!clockCount4(1) & ((\clockCount4[0]~33\) # (GND)))
-- \clockCount4[1]~35\ = CARRY((!\clockCount4[0]~33\) # (!clockCount4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(1),
	datad => VCC,
	cin => \clockCount4[0]~33\,
	combout => \clockCount4[1]~34_combout\,
	cout => \clockCount4[1]~35\);

-- Location: FF_X52_Y48_N3
\clockCount4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[1]~34_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(1));

-- Location: LCCOMB_X52_Y48_N4
\clockCount4[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[2]~36_combout\ = (clockCount4(2) & (\clockCount4[1]~35\ $ (GND))) # (!clockCount4(2) & (!\clockCount4[1]~35\ & VCC))
-- \clockCount4[2]~37\ = CARRY((clockCount4(2) & !\clockCount4[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(2),
	datad => VCC,
	cin => \clockCount4[1]~35\,
	combout => \clockCount4[2]~36_combout\,
	cout => \clockCount4[2]~37\);

-- Location: FF_X52_Y48_N5
\clockCount4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[2]~36_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(2));

-- Location: LCCOMB_X52_Y48_N6
\clockCount4[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[3]~38_combout\ = (clockCount4(3) & (!\clockCount4[2]~37\)) # (!clockCount4(3) & ((\clockCount4[2]~37\) # (GND)))
-- \clockCount4[3]~39\ = CARRY((!\clockCount4[2]~37\) # (!clockCount4(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(3),
	datad => VCC,
	cin => \clockCount4[2]~37\,
	combout => \clockCount4[3]~38_combout\,
	cout => \clockCount4[3]~39\);

-- Location: FF_X52_Y48_N7
\clockCount4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[3]~38_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(3));

-- Location: LCCOMB_X52_Y48_N8
\clockCount4[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[4]~40_combout\ = (clockCount4(4) & (\clockCount4[3]~39\ $ (GND))) # (!clockCount4(4) & (!\clockCount4[3]~39\ & VCC))
-- \clockCount4[4]~41\ = CARRY((clockCount4(4) & !\clockCount4[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(4),
	datad => VCC,
	cin => \clockCount4[3]~39\,
	combout => \clockCount4[4]~40_combout\,
	cout => \clockCount4[4]~41\);

-- Location: FF_X52_Y48_N9
\clockCount4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[4]~40_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(4));

-- Location: LCCOMB_X52_Y48_N10
\clockCount4[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[5]~42_combout\ = (clockCount4(5) & (!\clockCount4[4]~41\)) # (!clockCount4(5) & ((\clockCount4[4]~41\) # (GND)))
-- \clockCount4[5]~43\ = CARRY((!\clockCount4[4]~41\) # (!clockCount4(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(5),
	datad => VCC,
	cin => \clockCount4[4]~41\,
	combout => \clockCount4[5]~42_combout\,
	cout => \clockCount4[5]~43\);

-- Location: FF_X52_Y48_N11
\clockCount4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[5]~42_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(5));

-- Location: LCCOMB_X52_Y48_N12
\clockCount4[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[6]~44_combout\ = (clockCount4(6) & (\clockCount4[5]~43\ $ (GND))) # (!clockCount4(6) & (!\clockCount4[5]~43\ & VCC))
-- \clockCount4[6]~45\ = CARRY((clockCount4(6) & !\clockCount4[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(6),
	datad => VCC,
	cin => \clockCount4[5]~43\,
	combout => \clockCount4[6]~44_combout\,
	cout => \clockCount4[6]~45\);

-- Location: FF_X52_Y48_N13
\clockCount4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[6]~44_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(6));

-- Location: LCCOMB_X52_Y48_N14
\clockCount4[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[7]~46_combout\ = (clockCount4(7) & (!\clockCount4[6]~45\)) # (!clockCount4(7) & ((\clockCount4[6]~45\) # (GND)))
-- \clockCount4[7]~47\ = CARRY((!\clockCount4[6]~45\) # (!clockCount4(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(7),
	datad => VCC,
	cin => \clockCount4[6]~45\,
	combout => \clockCount4[7]~46_combout\,
	cout => \clockCount4[7]~47\);

-- Location: FF_X52_Y48_N15
\clockCount4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[7]~46_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(7));

-- Location: LCCOMB_X52_Y48_N16
\clockCount4[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[8]~48_combout\ = (clockCount4(8) & (\clockCount4[7]~47\ $ (GND))) # (!clockCount4(8) & (!\clockCount4[7]~47\ & VCC))
-- \clockCount4[8]~49\ = CARRY((clockCount4(8) & !\clockCount4[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(8),
	datad => VCC,
	cin => \clockCount4[7]~47\,
	combout => \clockCount4[8]~48_combout\,
	cout => \clockCount4[8]~49\);

-- Location: FF_X52_Y48_N17
\clockCount4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[8]~48_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(8));

-- Location: LCCOMB_X52_Y48_N18
\clockCount4[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[9]~50_combout\ = (clockCount4(9) & (!\clockCount4[8]~49\)) # (!clockCount4(9) & ((\clockCount4[8]~49\) # (GND)))
-- \clockCount4[9]~51\ = CARRY((!\clockCount4[8]~49\) # (!clockCount4(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(9),
	datad => VCC,
	cin => \clockCount4[8]~49\,
	combout => \clockCount4[9]~50_combout\,
	cout => \clockCount4[9]~51\);

-- Location: FF_X52_Y48_N19
\clockCount4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[9]~50_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(9));

-- Location: LCCOMB_X52_Y48_N20
\clockCount4[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[10]~52_combout\ = (clockCount4(10) & (\clockCount4[9]~51\ $ (GND))) # (!clockCount4(10) & (!\clockCount4[9]~51\ & VCC))
-- \clockCount4[10]~53\ = CARRY((clockCount4(10) & !\clockCount4[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(10),
	datad => VCC,
	cin => \clockCount4[9]~51\,
	combout => \clockCount4[10]~52_combout\,
	cout => \clockCount4[10]~53\);

-- Location: FF_X52_Y48_N21
\clockCount4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[10]~52_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(10));

-- Location: LCCOMB_X52_Y48_N22
\clockCount4[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[11]~54_combout\ = (clockCount4(11) & (!\clockCount4[10]~53\)) # (!clockCount4(11) & ((\clockCount4[10]~53\) # (GND)))
-- \clockCount4[11]~55\ = CARRY((!\clockCount4[10]~53\) # (!clockCount4(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(11),
	datad => VCC,
	cin => \clockCount4[10]~53\,
	combout => \clockCount4[11]~54_combout\,
	cout => \clockCount4[11]~55\);

-- Location: FF_X52_Y48_N23
\clockCount4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[11]~54_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(11));

-- Location: LCCOMB_X52_Y48_N24
\clockCount4[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[12]~56_combout\ = (clockCount4(12) & (\clockCount4[11]~55\ $ (GND))) # (!clockCount4(12) & (!\clockCount4[11]~55\ & VCC))
-- \clockCount4[12]~57\ = CARRY((clockCount4(12) & !\clockCount4[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(12),
	datad => VCC,
	cin => \clockCount4[11]~55\,
	combout => \clockCount4[12]~56_combout\,
	cout => \clockCount4[12]~57\);

-- Location: FF_X52_Y48_N25
\clockCount4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[12]~56_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(12));

-- Location: LCCOMB_X52_Y48_N26
\clockCount4[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[13]~58_combout\ = (clockCount4(13) & (!\clockCount4[12]~57\)) # (!clockCount4(13) & ((\clockCount4[12]~57\) # (GND)))
-- \clockCount4[13]~59\ = CARRY((!\clockCount4[12]~57\) # (!clockCount4(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(13),
	datad => VCC,
	cin => \clockCount4[12]~57\,
	combout => \clockCount4[13]~58_combout\,
	cout => \clockCount4[13]~59\);

-- Location: FF_X52_Y48_N27
\clockCount4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[13]~58_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(13));

-- Location: LCCOMB_X52_Y48_N28
\clockCount4[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[14]~60_combout\ = (clockCount4(14) & (\clockCount4[13]~59\ $ (GND))) # (!clockCount4(14) & (!\clockCount4[13]~59\ & VCC))
-- \clockCount4[14]~61\ = CARRY((clockCount4(14) & !\clockCount4[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(14),
	datad => VCC,
	cin => \clockCount4[13]~59\,
	combout => \clockCount4[14]~60_combout\,
	cout => \clockCount4[14]~61\);

-- Location: FF_X52_Y48_N29
\clockCount4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[14]~60_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(14));

-- Location: LCCOMB_X52_Y48_N30
\clockCount4[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[15]~62_combout\ = (clockCount4(15) & (!\clockCount4[14]~61\)) # (!clockCount4(15) & ((\clockCount4[14]~61\) # (GND)))
-- \clockCount4[15]~63\ = CARRY((!\clockCount4[14]~61\) # (!clockCount4(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(15),
	datad => VCC,
	cin => \clockCount4[14]~61\,
	combout => \clockCount4[15]~62_combout\,
	cout => \clockCount4[15]~63\);

-- Location: FF_X52_Y48_N31
\clockCount4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[15]~62_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(15));

-- Location: LCCOMB_X52_Y47_N0
\clockCount4[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[16]~64_combout\ = (clockCount4(16) & (\clockCount4[15]~63\ $ (GND))) # (!clockCount4(16) & (!\clockCount4[15]~63\ & VCC))
-- \clockCount4[16]~65\ = CARRY((clockCount4(16) & !\clockCount4[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(16),
	datad => VCC,
	cin => \clockCount4[15]~63\,
	combout => \clockCount4[16]~64_combout\,
	cout => \clockCount4[16]~65\);

-- Location: FF_X52_Y47_N1
\clockCount4[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[16]~64_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(16));

-- Location: LCCOMB_X52_Y47_N2
\clockCount4[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[17]~66_combout\ = (clockCount4(17) & (!\clockCount4[16]~65\)) # (!clockCount4(17) & ((\clockCount4[16]~65\) # (GND)))
-- \clockCount4[17]~67\ = CARRY((!\clockCount4[16]~65\) # (!clockCount4(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(17),
	datad => VCC,
	cin => \clockCount4[16]~65\,
	combout => \clockCount4[17]~66_combout\,
	cout => \clockCount4[17]~67\);

-- Location: FF_X52_Y47_N3
\clockCount4[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[17]~66_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(17));

-- Location: LCCOMB_X52_Y47_N4
\clockCount4[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[18]~68_combout\ = (clockCount4(18) & (\clockCount4[17]~67\ $ (GND))) # (!clockCount4(18) & (!\clockCount4[17]~67\ & VCC))
-- \clockCount4[18]~69\ = CARRY((clockCount4(18) & !\clockCount4[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(18),
	datad => VCC,
	cin => \clockCount4[17]~67\,
	combout => \clockCount4[18]~68_combout\,
	cout => \clockCount4[18]~69\);

-- Location: FF_X52_Y47_N5
\clockCount4[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[18]~68_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(18));

-- Location: LCCOMB_X52_Y47_N6
\clockCount4[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[19]~70_combout\ = (clockCount4(19) & (!\clockCount4[18]~69\)) # (!clockCount4(19) & ((\clockCount4[18]~69\) # (GND)))
-- \clockCount4[19]~71\ = CARRY((!\clockCount4[18]~69\) # (!clockCount4(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(19),
	datad => VCC,
	cin => \clockCount4[18]~69\,
	combout => \clockCount4[19]~70_combout\,
	cout => \clockCount4[19]~71\);

-- Location: FF_X52_Y47_N7
\clockCount4[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[19]~70_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(19));

-- Location: LCCOMB_X52_Y47_N8
\clockCount4[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[20]~72_combout\ = (clockCount4(20) & (\clockCount4[19]~71\ $ (GND))) # (!clockCount4(20) & (!\clockCount4[19]~71\ & VCC))
-- \clockCount4[20]~73\ = CARRY((clockCount4(20) & !\clockCount4[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(20),
	datad => VCC,
	cin => \clockCount4[19]~71\,
	combout => \clockCount4[20]~72_combout\,
	cout => \clockCount4[20]~73\);

-- Location: FF_X52_Y47_N9
\clockCount4[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[20]~72_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(20));

-- Location: LCCOMB_X52_Y47_N10
\clockCount4[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[21]~74_combout\ = (clockCount4(21) & (!\clockCount4[20]~73\)) # (!clockCount4(21) & ((\clockCount4[20]~73\) # (GND)))
-- \clockCount4[21]~75\ = CARRY((!\clockCount4[20]~73\) # (!clockCount4(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(21),
	datad => VCC,
	cin => \clockCount4[20]~73\,
	combout => \clockCount4[21]~74_combout\,
	cout => \clockCount4[21]~75\);

-- Location: FF_X52_Y47_N11
\clockCount4[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[21]~74_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(21));

-- Location: LCCOMB_X52_Y47_N12
\clockCount4[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[22]~76_combout\ = (clockCount4(22) & (\clockCount4[21]~75\ $ (GND))) # (!clockCount4(22) & (!\clockCount4[21]~75\ & VCC))
-- \clockCount4[22]~77\ = CARRY((clockCount4(22) & !\clockCount4[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(22),
	datad => VCC,
	cin => \clockCount4[21]~75\,
	combout => \clockCount4[22]~76_combout\,
	cout => \clockCount4[22]~77\);

-- Location: FF_X52_Y47_N13
\clockCount4[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[22]~76_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(22));

-- Location: LCCOMB_X51_Y48_N4
\LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (!clockCount4(20) & (!clockCount4(21) & ((!clockCount4(19)) # (!clockCount4(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(20),
	datab => clockCount4(18),
	datac => clockCount4(19),
	datad => clockCount4(21),
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X52_Y47_N14
\clockCount4[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[23]~78_combout\ = (clockCount4(23) & (!\clockCount4[22]~77\)) # (!clockCount4(23) & ((\clockCount4[22]~77\) # (GND)))
-- \clockCount4[23]~79\ = CARRY((!\clockCount4[22]~77\) # (!clockCount4(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(23),
	datad => VCC,
	cin => \clockCount4[22]~77\,
	combout => \clockCount4[23]~78_combout\,
	cout => \clockCount4[23]~79\);

-- Location: FF_X52_Y47_N15
\clockCount4[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[23]~78_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(23));

-- Location: LCCOMB_X52_Y47_N16
\clockCount4[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[24]~80_combout\ = (clockCount4(24) & (\clockCount4[23]~79\ $ (GND))) # (!clockCount4(24) & (!\clockCount4[23]~79\ & VCC))
-- \clockCount4[24]~81\ = CARRY((clockCount4(24) & !\clockCount4[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(24),
	datad => VCC,
	cin => \clockCount4[23]~79\,
	combout => \clockCount4[24]~80_combout\,
	cout => \clockCount4[24]~81\);

-- Location: FF_X52_Y47_N17
\clockCount4[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[24]~80_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(24));

-- Location: LCCOMB_X52_Y47_N18
\clockCount4[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[25]~82_combout\ = (clockCount4(25) & (!\clockCount4[24]~81\)) # (!clockCount4(25) & ((\clockCount4[24]~81\) # (GND)))
-- \clockCount4[25]~83\ = CARRY((!\clockCount4[24]~81\) # (!clockCount4(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(25),
	datad => VCC,
	cin => \clockCount4[24]~81\,
	combout => \clockCount4[25]~82_combout\,
	cout => \clockCount4[25]~83\);

-- Location: FF_X52_Y47_N19
\clockCount4[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[25]~82_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(25));

-- Location: LCCOMB_X52_Y47_N20
\clockCount4[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[26]~84_combout\ = (clockCount4(26) & (\clockCount4[25]~83\ $ (GND))) # (!clockCount4(26) & (!\clockCount4[25]~83\ & VCC))
-- \clockCount4[26]~85\ = CARRY((clockCount4(26) & !\clockCount4[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(26),
	datad => VCC,
	cin => \clockCount4[25]~83\,
	combout => \clockCount4[26]~84_combout\,
	cout => \clockCount4[26]~85\);

-- Location: FF_X52_Y47_N21
\clockCount4[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[26]~84_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(26));

-- Location: LCCOMB_X52_Y47_N22
\clockCount4[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[27]~86_combout\ = (clockCount4(27) & (!\clockCount4[26]~85\)) # (!clockCount4(27) & ((\clockCount4[26]~85\) # (GND)))
-- \clockCount4[27]~87\ = CARRY((!\clockCount4[26]~85\) # (!clockCount4(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(27),
	datad => VCC,
	cin => \clockCount4[26]~85\,
	combout => \clockCount4[27]~86_combout\,
	cout => \clockCount4[27]~87\);

-- Location: FF_X52_Y47_N23
\clockCount4[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[27]~86_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(27));

-- Location: LCCOMB_X52_Y47_N24
\clockCount4[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[28]~88_combout\ = (clockCount4(28) & (\clockCount4[27]~87\ $ (GND))) # (!clockCount4(28) & (!\clockCount4[27]~87\ & VCC))
-- \clockCount4[28]~89\ = CARRY((clockCount4(28) & !\clockCount4[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(28),
	datad => VCC,
	cin => \clockCount4[27]~87\,
	combout => \clockCount4[28]~88_combout\,
	cout => \clockCount4[28]~89\);

-- Location: FF_X52_Y47_N25
\clockCount4[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[28]~88_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(28));

-- Location: LCCOMB_X52_Y47_N26
\clockCount4[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[29]~90_combout\ = (clockCount4(29) & (!\clockCount4[28]~89\)) # (!clockCount4(29) & ((\clockCount4[28]~89\) # (GND)))
-- \clockCount4[29]~91\ = CARRY((!\clockCount4[28]~89\) # (!clockCount4(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(29),
	datad => VCC,
	cin => \clockCount4[28]~89\,
	combout => \clockCount4[29]~90_combout\,
	cout => \clockCount4[29]~91\);

-- Location: FF_X52_Y47_N27
\clockCount4[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[29]~90_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(29));

-- Location: LCCOMB_X52_Y47_N28
\clockCount4[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[30]~92_combout\ = (clockCount4(30) & (\clockCount4[29]~91\ $ (GND))) # (!clockCount4(30) & (!\clockCount4[29]~91\ & VCC))
-- \clockCount4[30]~93\ = CARRY((clockCount4(30) & !\clockCount4[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount4(30),
	datad => VCC,
	cin => \clockCount4[29]~91\,
	combout => \clockCount4[30]~92_combout\,
	cout => \clockCount4[30]~93\);

-- Location: FF_X52_Y47_N29
\clockCount4[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[30]~92_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(30));

-- Location: LCCOMB_X52_Y47_N30
\clockCount4[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount4[31]~94_combout\ = clockCount4(31) $ (\clockCount4[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(31),
	cin => \clockCount4[30]~93\,
	combout => \clockCount4[31]~94_combout\);

-- Location: FF_X52_Y47_N31
\clockCount4[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount4[31]~94_combout\,
	sclr => \LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount4(31));

-- Location: LCCOMB_X51_Y48_N30
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!clockCount4(27) & (!clockCount4(30) & (!clockCount4(28) & !clockCount4(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(27),
	datab => clockCount4(30),
	datac => clockCount4(28),
	datad => clockCount4(29),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X51_Y48_N28
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!clockCount4(24) & (!clockCount4(26) & (!clockCount4(25) & !clockCount4(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(24),
	datab => clockCount4(26),
	datac => clockCount4(25),
	datad => clockCount4(23),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X51_Y48_N8
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!clockCount4(31) & (\LessThan1~1_combout\ & \LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(31),
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X51_Y48_N12
\LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = ((!clockCount4(12) & (!clockCount4(13) & !clockCount4(11)))) # (!clockCount4(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(14),
	datab => clockCount4(12),
	datac => clockCount4(13),
	datad => clockCount4(11),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X51_Y48_N22
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!clockCount4(20) & (!clockCount4(16) & (!clockCount4(15) & !clockCount4(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(20),
	datab => clockCount4(16),
	datac => clockCount4(15),
	datad => clockCount4(21),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X51_Y48_N16
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (((!clockCount4(7) & !clockCount4(6))) # (!clockCount4(8))) # (!clockCount4(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(7),
	datab => clockCount4(9),
	datac => clockCount4(6),
	datad => clockCount4(8),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X51_Y48_N10
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!clockCount4(13) & (!clockCount4(12) & (!clockCount4(10) & \LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(13),
	datab => clockCount4(12),
	datac => clockCount4(10),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X51_Y48_N6
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (!clockCount4(17) & (\LessThan1~3_combout\ & ((\LessThan1~6_combout\) # (\LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~6_combout\,
	datab => clockCount4(17),
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X51_Y48_N26
\LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = ((clockCount4(22) & (!\LessThan1~8_combout\ & !\LessThan1~7_combout\))) # (!\LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount4(22),
	datab => \LessThan1~8_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X51_Y50_N10
\step[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \step[0]~1_combout\ = step(0) $ (\LessThan1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => step(0),
	datad => \LessThan1~9_combout\,
	combout => \step[0]~1_combout\);

-- Location: FF_X51_Y50_N11
\step[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \step[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => step(0));

-- Location: LCCOMB_X51_Y50_N16
\step[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \step[1]~0_combout\ = step(1) $ (((step(0) & \LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => step(0),
	datac => step(1),
	datad => \LessThan1~9_combout\,
	combout => \step[1]~0_combout\);

-- Location: FF_X51_Y50_N17
\step[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \step[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => step(1));

-- Location: IOIBUF_X51_Y54_N22
\sw2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2,
	o => \sw2~input_o\);

-- Location: LCCOMB_X51_Y50_N8
\stepperPins1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins1[0]~0_combout\ = step(1) $ (((\sw2~input_o\ & !step(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => step(1),
	datac => \sw2~input_o\,
	datad => step(0),
	combout => \stepperPins1[0]~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
\sw1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1,
	o => \sw1~input_o\);

-- Location: LCCOMB_X51_Y53_N4
\stepperPins1[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins1[3]~1_combout\ = (\sw2~input_o\) # (\sw1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw2~input_o\,
	datad => \sw1~input_o\,
	combout => \stepperPins1[3]~1_combout\);

-- Location: CLKCTRL_G10
\stepperPins1[3]~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \stepperPins1[3]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \stepperPins1[3]~1clkctrl_outclk\);

-- Location: LCCOMB_X51_Y50_N24
\stepperPins1[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins1[0]$latch~combout\ = (GLOBAL(\stepperPins1[3]~1clkctrl_outclk\) & (\stepperPins1[0]~0_combout\)) # (!GLOBAL(\stepperPins1[3]~1clkctrl_outclk\) & ((\stepperPins1[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stepperPins1[0]~0_combout\,
	datac => \stepperPins1[3]~1clkctrl_outclk\,
	datad => \stepperPins1[0]$latch~combout\,
	combout => \stepperPins1[0]$latch~combout\);

-- Location: LCCOMB_X51_Y50_N30
\stepperPins1[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins1[1]~2_combout\ = step(1) $ (((!step(0) & !\sw2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => step(1),
	datac => step(0),
	datad => \sw2~input_o\,
	combout => \stepperPins1[1]~2_combout\);

-- Location: LCCOMB_X51_Y50_N26
\stepperPins1[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins1[1]$latch~combout\ = (GLOBAL(\stepperPins1[3]~1clkctrl_outclk\) & ((!\stepperPins1[1]~2_combout\))) # (!GLOBAL(\stepperPins1[3]~1clkctrl_outclk\) & (\stepperPins1[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stepperPins1[1]$latch~combout\,
	datab => \stepperPins1[1]~2_combout\,
	datac => \stepperPins1[3]~1clkctrl_outclk\,
	combout => \stepperPins1[1]$latch~combout\);

-- Location: LCCOMB_X51_Y50_N28
\stepperPins1[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins1[2]$latch~combout\ = (GLOBAL(\stepperPins1[3]~1clkctrl_outclk\) & (!\stepperPins1[0]~0_combout\)) # (!GLOBAL(\stepperPins1[3]~1clkctrl_outclk\) & ((\stepperPins1[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stepperPins1[0]~0_combout\,
	datac => \stepperPins1[3]~1clkctrl_outclk\,
	datad => \stepperPins1[2]$latch~combout\,
	combout => \stepperPins1[2]$latch~combout\);

-- Location: LCCOMB_X51_Y50_N22
\stepperPins1[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins1[3]$latch~combout\ = (GLOBAL(\stepperPins1[3]~1clkctrl_outclk\) & ((\stepperPins1[1]~2_combout\))) # (!GLOBAL(\stepperPins1[3]~1clkctrl_outclk\) & (\stepperPins1[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stepperPins1[3]$latch~combout\,
	datab => \stepperPins1[1]~2_combout\,
	datac => \stepperPins1[3]~1clkctrl_outclk\,
	combout => \stepperPins1[3]$latch~combout\);

-- Location: IOIBUF_X54_Y54_N29
\sw4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw4,
	o => \sw4~input_o\);

-- Location: LCCOMB_X51_Y50_N0
\stepperPins2[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins2[0]~0_combout\ = step(1) $ (((\sw4~input_o\ & !step(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw4~input_o\,
	datac => step(1),
	datad => step(0),
	combout => \stepperPins2[0]~0_combout\);

-- Location: IOIBUF_X51_Y54_N1
\sw3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw3,
	o => \sw3~input_o\);

-- Location: LCCOMB_X51_Y53_N0
\stepperPins2[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins2[3]~1_combout\ = (\sw4~input_o\) # (\sw3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw4~input_o\,
	datad => \sw3~input_o\,
	combout => \stepperPins2[3]~1_combout\);

-- Location: CLKCTRL_G12
\stepperPins2[3]~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \stepperPins2[3]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \stepperPins2[3]~1clkctrl_outclk\);

-- Location: LCCOMB_X51_Y50_N12
\stepperPins2[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins2[0]$latch~combout\ = (GLOBAL(\stepperPins2[3]~1clkctrl_outclk\) & ((\stepperPins2[0]~0_combout\))) # (!GLOBAL(\stepperPins2[3]~1clkctrl_outclk\) & (\stepperPins2[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stepperPins2[0]$latch~combout\,
	datac => \stepperPins2[0]~0_combout\,
	datad => \stepperPins2[3]~1clkctrl_outclk\,
	combout => \stepperPins2[0]$latch~combout\);

-- Location: LCCOMB_X51_Y50_N6
\stepperPins2[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins2[1]~2_combout\ = step(1) $ (((!\sw4~input_o\ & !step(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw4~input_o\,
	datac => step(1),
	datad => step(0),
	combout => \stepperPins2[1]~2_combout\);

-- Location: LCCOMB_X51_Y50_N14
\stepperPins2[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins2[1]$latch~combout\ = (GLOBAL(\stepperPins2[3]~1clkctrl_outclk\) & ((!\stepperPins2[1]~2_combout\))) # (!GLOBAL(\stepperPins2[3]~1clkctrl_outclk\) & (\stepperPins2[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stepperPins2[1]$latch~combout\,
	datac => \stepperPins2[1]~2_combout\,
	datad => \stepperPins2[3]~1clkctrl_outclk\,
	combout => \stepperPins2[1]$latch~combout\);

-- Location: LCCOMB_X51_Y50_N4
\stepperPins2[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins2[2]$latch~combout\ = (GLOBAL(\stepperPins2[3]~1clkctrl_outclk\) & (!\stepperPins2[0]~0_combout\)) # (!GLOBAL(\stepperPins2[3]~1clkctrl_outclk\) & ((\stepperPins2[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stepperPins2[0]~0_combout\,
	datac => \stepperPins2[2]$latch~combout\,
	datad => \stepperPins2[3]~1clkctrl_outclk\,
	combout => \stepperPins2[2]$latch~combout\);

-- Location: LCCOMB_X51_Y50_N18
\stepperPins2[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins2[3]$latch~combout\ = (GLOBAL(\stepperPins2[3]~1clkctrl_outclk\) & ((\stepperPins2[1]~2_combout\))) # (!GLOBAL(\stepperPins2[3]~1clkctrl_outclk\) & (\stepperPins2[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stepperPins2[3]$latch~combout\,
	datac => \stepperPins2[1]~2_combout\,
	datad => \stepperPins2[3]~1clkctrl_outclk\,
	combout => \stepperPins2[3]$latch~combout\);

-- Location: IOIBUF_X49_Y54_N1
\sw6~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw6,
	o => \sw6~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\sw5~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw5,
	o => \sw5~input_o\);

-- Location: LCCOMB_X47_Y4_N6
\always1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \always1~0_combout\ = (\sw6~input_o\ & !\sw5~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw6~input_o\,
	datad => \sw5~input_o\,
	combout => \always1~0_combout\);

-- Location: LCCOMB_X47_Y8_N0
\clockCount3[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[0]~32_combout\ = clockCount3(0) $ (VCC)
-- \clockCount3[0]~33\ = CARRY(clockCount3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(0),
	datad => VCC,
	combout => \clockCount3[0]~32_combout\,
	cout => \clockCount3[0]~33\);

-- Location: FF_X47_Y8_N1
\clockCount3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[0]~32_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(0));

-- Location: LCCOMB_X47_Y8_N2
\clockCount3[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[1]~34_combout\ = (clockCount3(1) & (!\clockCount3[0]~33\)) # (!clockCount3(1) & ((\clockCount3[0]~33\) # (GND)))
-- \clockCount3[1]~35\ = CARRY((!\clockCount3[0]~33\) # (!clockCount3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(1),
	datad => VCC,
	cin => \clockCount3[0]~33\,
	combout => \clockCount3[1]~34_combout\,
	cout => \clockCount3[1]~35\);

-- Location: FF_X47_Y8_N3
\clockCount3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[1]~34_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(1));

-- Location: LCCOMB_X47_Y8_N4
\clockCount3[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[2]~36_combout\ = (clockCount3(2) & (\clockCount3[1]~35\ $ (GND))) # (!clockCount3(2) & (!\clockCount3[1]~35\ & VCC))
-- \clockCount3[2]~37\ = CARRY((clockCount3(2) & !\clockCount3[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(2),
	datad => VCC,
	cin => \clockCount3[1]~35\,
	combout => \clockCount3[2]~36_combout\,
	cout => \clockCount3[2]~37\);

-- Location: FF_X47_Y8_N5
\clockCount3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[2]~36_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(2));

-- Location: LCCOMB_X47_Y8_N6
\clockCount3[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[3]~38_combout\ = (clockCount3(3) & (!\clockCount3[2]~37\)) # (!clockCount3(3) & ((\clockCount3[2]~37\) # (GND)))
-- \clockCount3[3]~39\ = CARRY((!\clockCount3[2]~37\) # (!clockCount3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(3),
	datad => VCC,
	cin => \clockCount3[2]~37\,
	combout => \clockCount3[3]~38_combout\,
	cout => \clockCount3[3]~39\);

-- Location: FF_X47_Y8_N7
\clockCount3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[3]~38_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(3));

-- Location: LCCOMB_X47_Y8_N8
\clockCount3[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[4]~40_combout\ = (clockCount3(4) & (\clockCount3[3]~39\ $ (GND))) # (!clockCount3(4) & (!\clockCount3[3]~39\ & VCC))
-- \clockCount3[4]~41\ = CARRY((clockCount3(4) & !\clockCount3[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(4),
	datad => VCC,
	cin => \clockCount3[3]~39\,
	combout => \clockCount3[4]~40_combout\,
	cout => \clockCount3[4]~41\);

-- Location: FF_X47_Y8_N9
\clockCount3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[4]~40_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(4));

-- Location: LCCOMB_X47_Y8_N10
\clockCount3[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[5]~42_combout\ = (clockCount3(5) & (!\clockCount3[4]~41\)) # (!clockCount3(5) & ((\clockCount3[4]~41\) # (GND)))
-- \clockCount3[5]~43\ = CARRY((!\clockCount3[4]~41\) # (!clockCount3(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(5),
	datad => VCC,
	cin => \clockCount3[4]~41\,
	combout => \clockCount3[5]~42_combout\,
	cout => \clockCount3[5]~43\);

-- Location: FF_X47_Y8_N11
\clockCount3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[5]~42_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(5));

-- Location: LCCOMB_X47_Y8_N12
\clockCount3[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[6]~44_combout\ = (clockCount3(6) & (\clockCount3[5]~43\ $ (GND))) # (!clockCount3(6) & (!\clockCount3[5]~43\ & VCC))
-- \clockCount3[6]~45\ = CARRY((clockCount3(6) & !\clockCount3[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(6),
	datad => VCC,
	cin => \clockCount3[5]~43\,
	combout => \clockCount3[6]~44_combout\,
	cout => \clockCount3[6]~45\);

-- Location: FF_X47_Y8_N13
\clockCount3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[6]~44_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(6));

-- Location: LCCOMB_X47_Y8_N14
\clockCount3[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[7]~46_combout\ = (clockCount3(7) & (!\clockCount3[6]~45\)) # (!clockCount3(7) & ((\clockCount3[6]~45\) # (GND)))
-- \clockCount3[7]~47\ = CARRY((!\clockCount3[6]~45\) # (!clockCount3(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(7),
	datad => VCC,
	cin => \clockCount3[6]~45\,
	combout => \clockCount3[7]~46_combout\,
	cout => \clockCount3[7]~47\);

-- Location: FF_X47_Y8_N15
\clockCount3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[7]~46_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(7));

-- Location: LCCOMB_X47_Y8_N16
\clockCount3[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[8]~48_combout\ = (clockCount3(8) & (\clockCount3[7]~47\ $ (GND))) # (!clockCount3(8) & (!\clockCount3[7]~47\ & VCC))
-- \clockCount3[8]~49\ = CARRY((clockCount3(8) & !\clockCount3[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(8),
	datad => VCC,
	cin => \clockCount3[7]~47\,
	combout => \clockCount3[8]~48_combout\,
	cout => \clockCount3[8]~49\);

-- Location: FF_X47_Y8_N17
\clockCount3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[8]~48_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(8));

-- Location: LCCOMB_X47_Y8_N18
\clockCount3[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[9]~50_combout\ = (clockCount3(9) & (!\clockCount3[8]~49\)) # (!clockCount3(9) & ((\clockCount3[8]~49\) # (GND)))
-- \clockCount3[9]~51\ = CARRY((!\clockCount3[8]~49\) # (!clockCount3(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(9),
	datad => VCC,
	cin => \clockCount3[8]~49\,
	combout => \clockCount3[9]~50_combout\,
	cout => \clockCount3[9]~51\);

-- Location: FF_X47_Y8_N19
\clockCount3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[9]~50_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(9));

-- Location: LCCOMB_X47_Y8_N20
\clockCount3[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[10]~52_combout\ = (clockCount3(10) & (\clockCount3[9]~51\ $ (GND))) # (!clockCount3(10) & (!\clockCount3[9]~51\ & VCC))
-- \clockCount3[10]~53\ = CARRY((clockCount3(10) & !\clockCount3[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(10),
	datad => VCC,
	cin => \clockCount3[9]~51\,
	combout => \clockCount3[10]~52_combout\,
	cout => \clockCount3[10]~53\);

-- Location: FF_X47_Y8_N21
\clockCount3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[10]~52_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(10));

-- Location: LCCOMB_X47_Y8_N22
\clockCount3[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[11]~54_combout\ = (clockCount3(11) & (!\clockCount3[10]~53\)) # (!clockCount3(11) & ((\clockCount3[10]~53\) # (GND)))
-- \clockCount3[11]~55\ = CARRY((!\clockCount3[10]~53\) # (!clockCount3(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(11),
	datad => VCC,
	cin => \clockCount3[10]~53\,
	combout => \clockCount3[11]~54_combout\,
	cout => \clockCount3[11]~55\);

-- Location: FF_X47_Y8_N23
\clockCount3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[11]~54_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(11));

-- Location: LCCOMB_X47_Y8_N24
\clockCount3[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[12]~56_combout\ = (clockCount3(12) & (\clockCount3[11]~55\ $ (GND))) # (!clockCount3(12) & (!\clockCount3[11]~55\ & VCC))
-- \clockCount3[12]~57\ = CARRY((clockCount3(12) & !\clockCount3[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(12),
	datad => VCC,
	cin => \clockCount3[11]~55\,
	combout => \clockCount3[12]~56_combout\,
	cout => \clockCount3[12]~57\);

-- Location: FF_X47_Y8_N25
\clockCount3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[12]~56_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(12));

-- Location: LCCOMB_X47_Y8_N26
\clockCount3[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[13]~58_combout\ = (clockCount3(13) & (!\clockCount3[12]~57\)) # (!clockCount3(13) & ((\clockCount3[12]~57\) # (GND)))
-- \clockCount3[13]~59\ = CARRY((!\clockCount3[12]~57\) # (!clockCount3(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(13),
	datad => VCC,
	cin => \clockCount3[12]~57\,
	combout => \clockCount3[13]~58_combout\,
	cout => \clockCount3[13]~59\);

-- Location: FF_X47_Y8_N27
\clockCount3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[13]~58_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(13));

-- Location: LCCOMB_X47_Y8_N28
\clockCount3[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[14]~60_combout\ = (clockCount3(14) & (\clockCount3[13]~59\ $ (GND))) # (!clockCount3(14) & (!\clockCount3[13]~59\ & VCC))
-- \clockCount3[14]~61\ = CARRY((clockCount3(14) & !\clockCount3[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(14),
	datad => VCC,
	cin => \clockCount3[13]~59\,
	combout => \clockCount3[14]~60_combout\,
	cout => \clockCount3[14]~61\);

-- Location: FF_X47_Y8_N29
\clockCount3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[14]~60_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(14));

-- Location: LCCOMB_X47_Y8_N30
\clockCount3[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[15]~62_combout\ = (clockCount3(15) & (!\clockCount3[14]~61\)) # (!clockCount3(15) & ((\clockCount3[14]~61\) # (GND)))
-- \clockCount3[15]~63\ = CARRY((!\clockCount3[14]~61\) # (!clockCount3(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(15),
	datad => VCC,
	cin => \clockCount3[14]~61\,
	combout => \clockCount3[15]~62_combout\,
	cout => \clockCount3[15]~63\);

-- Location: FF_X47_Y8_N31
\clockCount3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[15]~62_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(15));

-- Location: LCCOMB_X46_Y7_N14
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!clockCount3(12) & (!clockCount3(13) & (!clockCount3(10) & !clockCount3(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(12),
	datab => clockCount3(13),
	datac => clockCount3(10),
	datad => clockCount3(11),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X46_Y7_N12
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (clockCount3(7)) # ((clockCount3(6) & ((clockCount3(4)) # (clockCount3(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(7),
	datab => clockCount3(4),
	datac => clockCount3(5),
	datad => clockCount3(6),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X46_Y7_N22
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~5_combout\ & (((!\LessThan0~6_combout\) # (!clockCount3(8))) # (!clockCount3(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(9),
	datab => clockCount3(8),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X47_Y7_N0
\clockCount3[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[16]~64_combout\ = (clockCount3(16) & (\clockCount3[15]~63\ $ (GND))) # (!clockCount3(16) & (!\clockCount3[15]~63\ & VCC))
-- \clockCount3[16]~65\ = CARRY((clockCount3(16) & !\clockCount3[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(16),
	datad => VCC,
	cin => \clockCount3[15]~63\,
	combout => \clockCount3[16]~64_combout\,
	cout => \clockCount3[16]~65\);

-- Location: FF_X47_Y7_N1
\clockCount3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[16]~64_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(16));

-- Location: LCCOMB_X47_Y7_N2
\clockCount3[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[17]~66_combout\ = (clockCount3(17) & (!\clockCount3[16]~65\)) # (!clockCount3(17) & ((\clockCount3[16]~65\) # (GND)))
-- \clockCount3[17]~67\ = CARRY((!\clockCount3[16]~65\) # (!clockCount3(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(17),
	datad => VCC,
	cin => \clockCount3[16]~65\,
	combout => \clockCount3[17]~66_combout\,
	cout => \clockCount3[17]~67\);

-- Location: FF_X47_Y7_N3
\clockCount3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[17]~66_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(17));

-- Location: LCCOMB_X47_Y7_N4
\clockCount3[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[18]~68_combout\ = (clockCount3(18) & (\clockCount3[17]~67\ $ (GND))) # (!clockCount3(18) & (!\clockCount3[17]~67\ & VCC))
-- \clockCount3[18]~69\ = CARRY((clockCount3(18) & !\clockCount3[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(18),
	datad => VCC,
	cin => \clockCount3[17]~67\,
	combout => \clockCount3[18]~68_combout\,
	cout => \clockCount3[18]~69\);

-- Location: FF_X47_Y7_N5
\clockCount3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[18]~68_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(18));

-- Location: LCCOMB_X47_Y7_N6
\clockCount3[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[19]~70_combout\ = (clockCount3(19) & (!\clockCount3[18]~69\)) # (!clockCount3(19) & ((\clockCount3[18]~69\) # (GND)))
-- \clockCount3[19]~71\ = CARRY((!\clockCount3[18]~69\) # (!clockCount3(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(19),
	datad => VCC,
	cin => \clockCount3[18]~69\,
	combout => \clockCount3[19]~70_combout\,
	cout => \clockCount3[19]~71\);

-- Location: FF_X47_Y7_N7
\clockCount3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[19]~70_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(19));

-- Location: LCCOMB_X47_Y7_N8
\clockCount3[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[20]~72_combout\ = (clockCount3(20) & (\clockCount3[19]~71\ $ (GND))) # (!clockCount3(20) & (!\clockCount3[19]~71\ & VCC))
-- \clockCount3[20]~73\ = CARRY((clockCount3(20) & !\clockCount3[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(20),
	datad => VCC,
	cin => \clockCount3[19]~71\,
	combout => \clockCount3[20]~72_combout\,
	cout => \clockCount3[20]~73\);

-- Location: FF_X47_Y7_N9
\clockCount3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[20]~72_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(20));

-- Location: LCCOMB_X47_Y7_N10
\clockCount3[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[21]~74_combout\ = (clockCount3(21) & (!\clockCount3[20]~73\)) # (!clockCount3(21) & ((\clockCount3[20]~73\) # (GND)))
-- \clockCount3[21]~75\ = CARRY((!\clockCount3[20]~73\) # (!clockCount3(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(21),
	datad => VCC,
	cin => \clockCount3[20]~73\,
	combout => \clockCount3[21]~74_combout\,
	cout => \clockCount3[21]~75\);

-- Location: FF_X47_Y7_N11
\clockCount3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[21]~74_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(21));

-- Location: LCCOMB_X47_Y7_N12
\clockCount3[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[22]~76_combout\ = (clockCount3(22) & (\clockCount3[21]~75\ $ (GND))) # (!clockCount3(22) & (!\clockCount3[21]~75\ & VCC))
-- \clockCount3[22]~77\ = CARRY((clockCount3(22) & !\clockCount3[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(22),
	datad => VCC,
	cin => \clockCount3[21]~75\,
	combout => \clockCount3[22]~76_combout\,
	cout => \clockCount3[22]~77\);

-- Location: FF_X47_Y7_N13
\clockCount3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[22]~76_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(22));

-- Location: LCCOMB_X47_Y7_N14
\clockCount3[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[23]~78_combout\ = (clockCount3(23) & (!\clockCount3[22]~77\)) # (!clockCount3(23) & ((\clockCount3[22]~77\) # (GND)))
-- \clockCount3[23]~79\ = CARRY((!\clockCount3[22]~77\) # (!clockCount3(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(23),
	datad => VCC,
	cin => \clockCount3[22]~77\,
	combout => \clockCount3[23]~78_combout\,
	cout => \clockCount3[23]~79\);

-- Location: FF_X47_Y7_N15
\clockCount3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[23]~78_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(23));

-- Location: LCCOMB_X47_Y7_N16
\clockCount3[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[24]~80_combout\ = (clockCount3(24) & (\clockCount3[23]~79\ $ (GND))) # (!clockCount3(24) & (!\clockCount3[23]~79\ & VCC))
-- \clockCount3[24]~81\ = CARRY((clockCount3(24) & !\clockCount3[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(24),
	datad => VCC,
	cin => \clockCount3[23]~79\,
	combout => \clockCount3[24]~80_combout\,
	cout => \clockCount3[24]~81\);

-- Location: FF_X47_Y7_N17
\clockCount3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[24]~80_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(24));

-- Location: LCCOMB_X47_Y7_N18
\clockCount3[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[25]~82_combout\ = (clockCount3(25) & (!\clockCount3[24]~81\)) # (!clockCount3(25) & ((\clockCount3[24]~81\) # (GND)))
-- \clockCount3[25]~83\ = CARRY((!\clockCount3[24]~81\) # (!clockCount3(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(25),
	datad => VCC,
	cin => \clockCount3[24]~81\,
	combout => \clockCount3[25]~82_combout\,
	cout => \clockCount3[25]~83\);

-- Location: FF_X47_Y7_N19
\clockCount3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[25]~82_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(25));

-- Location: LCCOMB_X47_Y7_N20
\clockCount3[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[26]~84_combout\ = (clockCount3(26) & (\clockCount3[25]~83\ $ (GND))) # (!clockCount3(26) & (!\clockCount3[25]~83\ & VCC))
-- \clockCount3[26]~85\ = CARRY((clockCount3(26) & !\clockCount3[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(26),
	datad => VCC,
	cin => \clockCount3[25]~83\,
	combout => \clockCount3[26]~84_combout\,
	cout => \clockCount3[26]~85\);

-- Location: FF_X47_Y7_N21
\clockCount3[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[26]~84_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(26));

-- Location: LCCOMB_X47_Y7_N22
\clockCount3[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[27]~86_combout\ = (clockCount3(27) & (!\clockCount3[26]~85\)) # (!clockCount3(27) & ((\clockCount3[26]~85\) # (GND)))
-- \clockCount3[27]~87\ = CARRY((!\clockCount3[26]~85\) # (!clockCount3(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(27),
	datad => VCC,
	cin => \clockCount3[26]~85\,
	combout => \clockCount3[27]~86_combout\,
	cout => \clockCount3[27]~87\);

-- Location: FF_X47_Y7_N23
\clockCount3[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[27]~86_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(27));

-- Location: LCCOMB_X47_Y7_N24
\clockCount3[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[28]~88_combout\ = (clockCount3(28) & (\clockCount3[27]~87\ $ (GND))) # (!clockCount3(28) & (!\clockCount3[27]~87\ & VCC))
-- \clockCount3[28]~89\ = CARRY((clockCount3(28) & !\clockCount3[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(28),
	datad => VCC,
	cin => \clockCount3[27]~87\,
	combout => \clockCount3[28]~88_combout\,
	cout => \clockCount3[28]~89\);

-- Location: FF_X47_Y7_N25
\clockCount3[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[28]~88_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(28));

-- Location: LCCOMB_X47_Y7_N26
\clockCount3[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[29]~90_combout\ = (clockCount3(29) & (!\clockCount3[28]~89\)) # (!clockCount3(29) & ((\clockCount3[28]~89\) # (GND)))
-- \clockCount3[29]~91\ = CARRY((!\clockCount3[28]~89\) # (!clockCount3(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(29),
	datad => VCC,
	cin => \clockCount3[28]~89\,
	combout => \clockCount3[29]~90_combout\,
	cout => \clockCount3[29]~91\);

-- Location: FF_X47_Y7_N27
\clockCount3[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[29]~90_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(29));

-- Location: LCCOMB_X47_Y7_N28
\clockCount3[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[30]~92_combout\ = (clockCount3(30) & (\clockCount3[29]~91\ $ (GND))) # (!clockCount3(30) & (!\clockCount3[29]~91\ & VCC))
-- \clockCount3[30]~93\ = CARRY((clockCount3(30) & !\clockCount3[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockCount3(30),
	datad => VCC,
	cin => \clockCount3[29]~91\,
	combout => \clockCount3[30]~92_combout\,
	cout => \clockCount3[30]~93\);

-- Location: FF_X47_Y7_N29
\clockCount3[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[30]~92_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(30));

-- Location: LCCOMB_X47_Y7_N30
\clockCount3[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockCount3[31]~94_combout\ = clockCount3(31) $ (\clockCount3[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(31),
	cin => \clockCount3[30]~93\,
	combout => \clockCount3[31]~94_combout\);

-- Location: FF_X47_Y7_N31
\clockCount3[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockCount3[31]~94_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount3(31));

-- Location: LCCOMB_X46_Y7_N6
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!clockCount3(30) & (!clockCount3(28) & (!clockCount3(29) & !clockCount3(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(30),
	datab => clockCount3(28),
	datac => clockCount3(29),
	datad => clockCount3(31),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X46_Y7_N24
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!clockCount3(24) & (!clockCount3(25) & (!clockCount3(27) & !clockCount3(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(24),
	datab => clockCount3(25),
	datac => clockCount3(27),
	datad => clockCount3(26),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X46_Y7_N8
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!clockCount3(17) & (!clockCount3(16) & (!clockCount3(18) & !clockCount3(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(17),
	datab => clockCount3(16),
	datac => clockCount3(18),
	datad => clockCount3(19),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y7_N10
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!clockCount3(22) & (!clockCount3(20) & (!clockCount3(21) & !clockCount3(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(22),
	datab => clockCount3(20),
	datac => clockCount3(21),
	datad => clockCount3(23),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X46_Y7_N16
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~3_combout\ & (\LessThan0~2_combout\ & (\LessThan0~0_combout\ & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X46_Y7_N0
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ((clockCount3(15) & (clockCount3(14) & !\LessThan0~7_combout\))) # (!\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount3(15),
	datab => clockCount3(14),
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X47_Y4_N28
\step3[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \step3[0]~0_combout\ = step3(0) $ (\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => step3(0),
	datad => \LessThan0~8_combout\,
	combout => \step3[0]~0_combout\);

-- Location: FF_X47_Y4_N29
\step3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \step3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => step3(0));

-- Location: LCCOMB_X47_Y4_N20
\step3[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \step3[1]~2_combout\ = step3(1) $ (((step3(0) & \LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => step3(0),
	datac => step3(1),
	datad => \LessThan0~8_combout\,
	combout => \step3[1]~2_combout\);

-- Location: FF_X47_Y4_N21
\step3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \step3[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => step3(1));

-- Location: LCCOMB_X47_Y4_N14
\step3[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \step3[2]~1_combout\ = step3(2) $ (((step3(1) & (step3(0) & \LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => step3(1),
	datab => step3(0),
	datac => step3(2),
	datad => \LessThan0~8_combout\,
	combout => \step3[2]~1_combout\);

-- Location: FF_X47_Y4_N15
\step3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \step3[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => step3(2));

-- Location: LCCOMB_X47_Y4_N8
\stepperPins3[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins3[0]~0_combout\ = (\always1~0_combout\ & ((step3(1) & (step3(0) & step3(2))) # (!step3(1) & ((!step3(2)))))) # (!\always1~0_combout\ & (step3(2) & ((step3(0)) # (step3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~0_combout\,
	datab => step3(0),
	datac => step3(1),
	datad => step3(2),
	combout => \stepperPins3[0]~0_combout\);

-- Location: LCCOMB_X45_Y4_N28
\stepperPins3[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins3[3]~1_combout\ = \sw6~input_o\ $ (\sw5~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw6~input_o\,
	datad => \sw5~input_o\,
	combout => \stepperPins3[3]~1_combout\);

-- Location: CLKCTRL_G16
\stepperPins3[3]~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \stepperPins3[3]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \stepperPins3[3]~1clkctrl_outclk\);

-- Location: LCCOMB_X47_Y4_N24
\stepperPins3[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins3[0]$latch~combout\ = (GLOBAL(\stepperPins3[3]~1clkctrl_outclk\) & ((\stepperPins3[0]~0_combout\))) # (!GLOBAL(\stepperPins3[3]~1clkctrl_outclk\) & (\stepperPins3[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stepperPins3[0]$latch~combout\,
	datac => \stepperPins3[0]~0_combout\,
	datad => \stepperPins3[3]~1clkctrl_outclk\,
	combout => \stepperPins3[0]$latch~combout\);

-- Location: LCCOMB_X47_Y4_N30
\stepperPins3[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins3[1]~2_combout\ = (\always1~0_combout\ & (!step3(2) & ((step3(0)) # (step3(1))))) # (!\always1~0_combout\ & ((step3(1) & (step3(0) & !step3(2))) # (!step3(1) & ((step3(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~0_combout\,
	datab => step3(0),
	datac => step3(1),
	datad => step3(2),
	combout => \stepperPins3[1]~2_combout\);

-- Location: LCCOMB_X47_Y4_N26
\stepperPins3[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins3[1]$latch~combout\ = (GLOBAL(\stepperPins3[3]~1clkctrl_outclk\) & ((\stepperPins3[1]~2_combout\))) # (!GLOBAL(\stepperPins3[3]~1clkctrl_outclk\) & (\stepperPins3[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stepperPins3[1]$latch~combout\,
	datac => \stepperPins3[1]~2_combout\,
	datad => \stepperPins3[3]~1clkctrl_outclk\,
	combout => \stepperPins3[1]$latch~combout\);

-- Location: LCCOMB_X47_Y4_N0
\stepperPins3[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins3[2]~3_combout\ = (\always1~0_combout\ & ((step3(1) & (step3(0) & !step3(2))) # (!step3(1) & ((step3(2)))))) # (!\always1~0_combout\ & (!step3(2) & ((step3(0)) # (step3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~0_combout\,
	datab => step3(0),
	datac => step3(1),
	datad => step3(2),
	combout => \stepperPins3[2]~3_combout\);

-- Location: LCCOMB_X47_Y4_N12
\stepperPins3[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins3[2]$latch~combout\ = (GLOBAL(\stepperPins3[3]~1clkctrl_outclk\) & ((\stepperPins3[2]~3_combout\))) # (!GLOBAL(\stepperPins3[3]~1clkctrl_outclk\) & (\stepperPins3[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stepperPins3[2]$latch~combout\,
	datac => \stepperPins3[2]~3_combout\,
	datad => \stepperPins3[3]~1clkctrl_outclk\,
	combout => \stepperPins3[2]$latch~combout\);

-- Location: LCCOMB_X47_Y4_N22
\stepperPins3[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins3[3]~4_combout\ = (\always1~0_combout\ & (step3(2) & ((step3(0)) # (step3(1))))) # (!\always1~0_combout\ & ((step3(1) & (step3(0) & step3(2))) # (!step3(1) & ((!step3(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~0_combout\,
	datab => step3(0),
	datac => step3(1),
	datad => step3(2),
	combout => \stepperPins3[3]~4_combout\);

-- Location: LCCOMB_X47_Y4_N10
\stepperPins3[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stepperPins3[3]$latch~combout\ = (GLOBAL(\stepperPins3[3]~1clkctrl_outclk\) & ((\stepperPins3[3]~4_combout\))) # (!GLOBAL(\stepperPins3[3]~1clkctrl_outclk\) & (\stepperPins3[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stepperPins3[3]$latch~combout\,
	datac => \stepperPins3[3]~4_combout\,
	datad => \stepperPins3[3]~1clkctrl_outclk\,
	combout => \stepperPins3[3]$latch~combout\);

-- Location: IOIBUF_X54_Y54_N15
\sw7~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw7,
	o => \sw7~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\sw8~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw8,
	o => \sw8~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_stepperPins1(0) <= \stepperPins1[0]~output_o\;

ww_stepperPins1(1) <= \stepperPins1[1]~output_o\;

ww_stepperPins1(2) <= \stepperPins1[2]~output_o\;

ww_stepperPins1(3) <= \stepperPins1[3]~output_o\;

ww_stepperPins2(0) <= \stepperPins2[0]~output_o\;

ww_stepperPins2(1) <= \stepperPins2[1]~output_o\;

ww_stepperPins2(2) <= \stepperPins2[2]~output_o\;

ww_stepperPins2(3) <= \stepperPins2[3]~output_o\;

ww_stepperPins3(0) <= \stepperPins3[0]~output_o\;

ww_stepperPins3(1) <= \stepperPins3[1]~output_o\;

ww_stepperPins3(2) <= \stepperPins3[2]~output_o\;

ww_stepperPins3(3) <= \stepperPins3[3]~output_o\;

ww_stepperPins4(0) <= \stepperPins4[0]~output_o\;

ww_stepperPins4(1) <= \stepperPins4[1]~output_o\;

ww_stepperPins4(2) <= \stepperPins4[2]~output_o\;

ww_stepperPins4(3) <= \stepperPins4[3]~output_o\;
END structure;


