-- Effect_Pedal_Memory_Controller_SDRAMtest_0.vhd

-- Generated using ACDS version 20.1 720

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Effect_Pedal_Memory_Controller_SDRAMtest_0 is
	port (
		Avalon_Pipelined_MM_0_avm_m0_address       : in    std_logic_vector(25 downto 0) := (others => '0'); -- Avalon_Pipelined_MM_0_avm_m0.address
		Avalon_Pipelined_MM_0_avm_m0_read          : in    std_logic                     := '0';             --                             .read
		Avalon_Pipelined_MM_0_avm_m0_waitrequest   : out   std_logic;                                        --                             .waitrequest
		Avalon_Pipelined_MM_0_avm_m0_readdata      : out   std_logic_vector(31 downto 0);                    --                             .readdata
		Avalon_Pipelined_MM_0_avm_m0_readdatavalid : out   std_logic;                                        --                             .readdatavalid
		Avalon_Pipelined_MM_0_avm_m0_write         : in    std_logic                     := '0';             --                             .write
		Avalon_Pipelined_MM_0_avm_m0_writedata     : in    std_logic_vector(31 downto 0) := (others => '0'); --                             .writedata
		Avalon_Pipelined_MM_0_reset_reset          : out   std_logic;                                        --  Avalon_Pipelined_MM_0_reset.reset
		de10_clk_clk                               : in    std_logic                     := '0';             --                     de10_clk.clk
		reset_reset_n                              : in    std_logic                     := '0';             --                        reset.reset_n
		sdram_clk_clk                              : out   std_logic;                                        --                    sdram_clk.clk
		sdram_wire_addr                            : out   std_logic_vector(12 downto 0);                    --                   sdram_wire.addr
		sdram_wire_ba                              : out   std_logic_vector(1 downto 0);                     --                             .ba
		sdram_wire_cas_n                           : out   std_logic;                                        --                             .cas_n
		sdram_wire_cke                             : out   std_logic;                                        --                             .cke
		sdram_wire_cs_n                            : out   std_logic;                                        --                             .cs_n
		sdram_wire_dq                              : inout std_logic_vector(15 downto 0) := (others => '0'); --                             .dq
		sdram_wire_dqm                             : out   std_logic_vector(1 downto 0);                     --                             .dqm
		sdram_wire_ras_n                           : out   std_logic;                                        --                             .ras_n
		sdram_wire_we_n                            : out   std_logic                                         --                             .we_n
	);
end entity Effect_Pedal_Memory_Controller_SDRAMtest_0;

architecture rtl of Effect_Pedal_Memory_Controller_SDRAMtest_0 is
	component Effect_Pedal_Memory_Controller_SDRAMtest_0_new_sdram_controller_0 is
		port (
			clk            : in    std_logic                     := 'X';             -- clk
			reset_n        : in    std_logic                     := 'X';             -- reset_n
			az_addr        : in    std_logic_vector(24 downto 0) := (others => 'X'); -- address
			az_be_n        : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- byteenable_n
			az_cs          : in    std_logic                     := 'X';             -- chipselect
			az_data        : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			az_rd_n        : in    std_logic                     := 'X';             -- read_n
			az_wr_n        : in    std_logic                     := 'X';             -- write_n
			za_data        : out   std_logic_vector(15 downto 0);                    -- readdata
			za_valid       : out   std_logic;                                        -- readdatavalid
			za_waitrequest : out   std_logic;                                        -- waitrequest
			zs_addr        : out   std_logic_vector(12 downto 0);                    -- export
			zs_ba          : out   std_logic_vector(1 downto 0);                     -- export
			zs_cas_n       : out   std_logic;                                        -- export
			zs_cke         : out   std_logic;                                        -- export
			zs_cs_n        : out   std_logic;                                        -- export
			zs_dq          : inout std_logic_vector(15 downto 0) := (others => 'X'); -- export
			zs_dqm         : out   std_logic_vector(1 downto 0);                     -- export
			zs_ras_n       : out   std_logic;                                        -- export
			zs_we_n        : out   std_logic                                         -- export
		);
	end component Effect_Pedal_Memory_Controller_SDRAMtest_0_new_sdram_controller_0;

	component Effect_Pedal_Memory_Controller_SDRAMtest_0_sys_sdram_pll_0 is
		port (
			ref_clk_clk        : in  std_logic := 'X'; -- clk
			ref_reset_reset    : in  std_logic := 'X'; -- reset
			sys_clk_clk        : out std_logic;        -- clk
			sdram_clk_clk      : out std_logic;        -- clk
			reset_source_reset : out std_logic         -- reset
		);
	end component Effect_Pedal_Memory_Controller_SDRAMtest_0_sys_sdram_pll_0;

	component Effect_Pedal_Memory_Controller_SDRAMtest_0_mm_interconnect_0 is
		port (
			sys_sdram_pll_0_sys_clk_clk                             : in  std_logic                     := 'X';             -- clk
			Avalon_Pipelined_MM_0_reset_reset_bridge_in_reset_reset : in  std_logic                     := 'X';             -- reset
			Avalon_Pipelined_MM_0_avm_m0_address                    : in  std_logic_vector(25 downto 0) := (others => 'X'); -- address
			Avalon_Pipelined_MM_0_avm_m0_waitrequest                : out std_logic;                                        -- waitrequest
			Avalon_Pipelined_MM_0_avm_m0_read                       : in  std_logic                     := 'X';             -- read
			Avalon_Pipelined_MM_0_avm_m0_readdata                   : out std_logic_vector(31 downto 0);                    -- readdata
			Avalon_Pipelined_MM_0_avm_m0_readdatavalid              : out std_logic;                                        -- readdatavalid
			Avalon_Pipelined_MM_0_avm_m0_write                      : in  std_logic                     := 'X';             -- write
			Avalon_Pipelined_MM_0_avm_m0_writedata                  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			new_sdram_controller_0_s1_address                       : out std_logic_vector(24 downto 0);                    -- address
			new_sdram_controller_0_s1_write                         : out std_logic;                                        -- write
			new_sdram_controller_0_s1_read                          : out std_logic;                                        -- read
			new_sdram_controller_0_s1_readdata                      : in  std_logic_vector(15 downto 0) := (others => 'X'); -- readdata
			new_sdram_controller_0_s1_writedata                     : out std_logic_vector(15 downto 0);                    -- writedata
			new_sdram_controller_0_s1_byteenable                    : out std_logic_vector(1 downto 0);                     -- byteenable
			new_sdram_controller_0_s1_readdatavalid                 : in  std_logic                     := 'X';             -- readdatavalid
			new_sdram_controller_0_s1_waitrequest                   : in  std_logic                     := 'X';             -- waitrequest
			new_sdram_controller_0_s1_chipselect                    : out std_logic                                         -- chipselect
		);
	end component Effect_Pedal_Memory_Controller_SDRAMtest_0_mm_interconnect_0;

	component altera_reset_controller is
		generic (
			NUM_RESET_INPUTS          : integer := 6;
			OUTPUT_RESET_SYNC_EDGES   : string  := "deassert";
			SYNC_DEPTH                : integer := 2;
			RESET_REQUEST_PRESENT     : integer := 0;
			RESET_REQ_WAIT_TIME       : integer := 1;
			MIN_RST_ASSERTION_TIME    : integer := 3;
			RESET_REQ_EARLY_DSRT_TIME : integer := 1;
			USE_RESET_REQUEST_IN0     : integer := 0;
			USE_RESET_REQUEST_IN1     : integer := 0;
			USE_RESET_REQUEST_IN2     : integer := 0;
			USE_RESET_REQUEST_IN3     : integer := 0;
			USE_RESET_REQUEST_IN4     : integer := 0;
			USE_RESET_REQUEST_IN5     : integer := 0;
			USE_RESET_REQUEST_IN6     : integer := 0;
			USE_RESET_REQUEST_IN7     : integer := 0;
			USE_RESET_REQUEST_IN8     : integer := 0;
			USE_RESET_REQUEST_IN9     : integer := 0;
			USE_RESET_REQUEST_IN10    : integer := 0;
			USE_RESET_REQUEST_IN11    : integer := 0;
			USE_RESET_REQUEST_IN12    : integer := 0;
			USE_RESET_REQUEST_IN13    : integer := 0;
			USE_RESET_REQUEST_IN14    : integer := 0;
			USE_RESET_REQUEST_IN15    : integer := 0;
			ADAPT_RESET_REQUEST       : integer := 0
		);
		port (
			reset_in0      : in  std_logic := 'X'; -- reset
			clk            : in  std_logic := 'X'; -- clk
			reset_out      : out std_logic;        -- reset
			reset_req      : out std_logic;        -- reset_req
			reset_req_in0  : in  std_logic := 'X'; -- reset_req
			reset_in1      : in  std_logic := 'X'; -- reset
			reset_req_in1  : in  std_logic := 'X'; -- reset_req
			reset_in2      : in  std_logic := 'X'; -- reset
			reset_req_in2  : in  std_logic := 'X'; -- reset_req
			reset_in3      : in  std_logic := 'X'; -- reset
			reset_req_in3  : in  std_logic := 'X'; -- reset_req
			reset_in4      : in  std_logic := 'X'; -- reset
			reset_req_in4  : in  std_logic := 'X'; -- reset_req
			reset_in5      : in  std_logic := 'X'; -- reset
			reset_req_in5  : in  std_logic := 'X'; -- reset_req
			reset_in6      : in  std_logic := 'X'; -- reset
			reset_req_in6  : in  std_logic := 'X'; -- reset_req
			reset_in7      : in  std_logic := 'X'; -- reset
			reset_req_in7  : in  std_logic := 'X'; -- reset_req
			reset_in8      : in  std_logic := 'X'; -- reset
			reset_req_in8  : in  std_logic := 'X'; -- reset_req
			reset_in9      : in  std_logic := 'X'; -- reset
			reset_req_in9  : in  std_logic := 'X'; -- reset_req
			reset_in10     : in  std_logic := 'X'; -- reset
			reset_req_in10 : in  std_logic := 'X'; -- reset_req
			reset_in11     : in  std_logic := 'X'; -- reset
			reset_req_in11 : in  std_logic := 'X'; -- reset_req
			reset_in12     : in  std_logic := 'X'; -- reset
			reset_req_in12 : in  std_logic := 'X'; -- reset_req
			reset_in13     : in  std_logic := 'X'; -- reset
			reset_req_in13 : in  std_logic := 'X'; -- reset_req
			reset_in14     : in  std_logic := 'X'; -- reset
			reset_req_in14 : in  std_logic := 'X'; -- reset_req
			reset_in15     : in  std_logic := 'X'; -- reset
			reset_req_in15 : in  std_logic := 'X'  -- reset_req
		);
	end component altera_reset_controller;

	signal sys_sdram_pll_0_sys_clk_clk                                      : std_logic;                     -- sys_sdram_pll_0:sys_clk_clk -> [mm_interconnect_0:sys_sdram_pll_0_sys_clk_clk, new_sdram_controller_0:clk, rst_controller:clk]
	signal mm_interconnect_0_new_sdram_controller_0_s1_chipselect           : std_logic;                     -- mm_interconnect_0:new_sdram_controller_0_s1_chipselect -> new_sdram_controller_0:az_cs
	signal mm_interconnect_0_new_sdram_controller_0_s1_readdata             : std_logic_vector(15 downto 0); -- new_sdram_controller_0:za_data -> mm_interconnect_0:new_sdram_controller_0_s1_readdata
	signal mm_interconnect_0_new_sdram_controller_0_s1_waitrequest          : std_logic;                     -- new_sdram_controller_0:za_waitrequest -> mm_interconnect_0:new_sdram_controller_0_s1_waitrequest
	signal mm_interconnect_0_new_sdram_controller_0_s1_address              : std_logic_vector(24 downto 0); -- mm_interconnect_0:new_sdram_controller_0_s1_address -> new_sdram_controller_0:az_addr
	signal mm_interconnect_0_new_sdram_controller_0_s1_read                 : std_logic;                     -- mm_interconnect_0:new_sdram_controller_0_s1_read -> mm_interconnect_0_new_sdram_controller_0_s1_read:in
	signal mm_interconnect_0_new_sdram_controller_0_s1_byteenable           : std_logic_vector(1 downto 0);  -- mm_interconnect_0:new_sdram_controller_0_s1_byteenable -> mm_interconnect_0_new_sdram_controller_0_s1_byteenable:in
	signal mm_interconnect_0_new_sdram_controller_0_s1_readdatavalid        : std_logic;                     -- new_sdram_controller_0:za_valid -> mm_interconnect_0:new_sdram_controller_0_s1_readdatavalid
	signal mm_interconnect_0_new_sdram_controller_0_s1_write                : std_logic;                     -- mm_interconnect_0:new_sdram_controller_0_s1_write -> mm_interconnect_0_new_sdram_controller_0_s1_write:in
	signal mm_interconnect_0_new_sdram_controller_0_s1_writedata            : std_logic_vector(15 downto 0); -- mm_interconnect_0:new_sdram_controller_0_s1_writedata -> new_sdram_controller_0:az_data
	signal rst_controller_reset_out_reset                                   : std_logic;                     -- rst_controller:reset_out -> [Avalon_Pipelined_MM_0_reset_reset, Avalon_Pipelined_MM_0_reset_reset:in, mm_interconnect_0:Avalon_Pipelined_MM_0_reset_reset_bridge_in_reset_reset]
	signal sys_sdram_pll_0_reset_source_reset                               : std_logic;                     -- sys_sdram_pll_0:reset_source_reset -> rst_controller:reset_in0
	signal rst_controller_001_reset_out_reset                               : std_logic;                     -- rst_controller_001:reset_out -> sys_sdram_pll_0:ref_reset_reset
	signal reset_reset_n_ports_inv                                          : std_logic;                     -- reset_reset_n:inv -> rst_controller_001:reset_in0
	signal mm_interconnect_0_new_sdram_controller_0_s1_read_ports_inv       : std_logic;                     -- mm_interconnect_0_new_sdram_controller_0_s1_read:inv -> new_sdram_controller_0:az_rd_n
	signal mm_interconnect_0_new_sdram_controller_0_s1_byteenable_ports_inv : std_logic_vector(1 downto 0);  -- mm_interconnect_0_new_sdram_controller_0_s1_byteenable:inv -> new_sdram_controller_0:az_be_n
	signal mm_interconnect_0_new_sdram_controller_0_s1_write_ports_inv      : std_logic;                     -- mm_interconnect_0_new_sdram_controller_0_s1_write:inv -> new_sdram_controller_0:az_wr_n
	signal avalon_pipelined_mm_0_reset_reset_ports_inv                      : std_logic;                     -- Avalon_Pipelined_MM_0_reset_reset:inv -> new_sdram_controller_0:reset_n

begin

	new_sdram_controller_0 : component Effect_Pedal_Memory_Controller_SDRAMtest_0_new_sdram_controller_0
		port map (
			clk            => sys_sdram_pll_0_sys_clk_clk,                                      --   clk.clk
			reset_n        => avalon_pipelined_mm_0_reset_reset_ports_inv,                      -- reset.reset_n
			az_addr        => mm_interconnect_0_new_sdram_controller_0_s1_address,              --    s1.address
			az_be_n        => mm_interconnect_0_new_sdram_controller_0_s1_byteenable_ports_inv, --      .byteenable_n
			az_cs          => mm_interconnect_0_new_sdram_controller_0_s1_chipselect,           --      .chipselect
			az_data        => mm_interconnect_0_new_sdram_controller_0_s1_writedata,            --      .writedata
			az_rd_n        => mm_interconnect_0_new_sdram_controller_0_s1_read_ports_inv,       --      .read_n
			az_wr_n        => mm_interconnect_0_new_sdram_controller_0_s1_write_ports_inv,      --      .write_n
			za_data        => mm_interconnect_0_new_sdram_controller_0_s1_readdata,             --      .readdata
			za_valid       => mm_interconnect_0_new_sdram_controller_0_s1_readdatavalid,        --      .readdatavalid
			za_waitrequest => mm_interconnect_0_new_sdram_controller_0_s1_waitrequest,          --      .waitrequest
			zs_addr        => sdram_wire_addr,                                                  --  wire.export
			zs_ba          => sdram_wire_ba,                                                    --      .export
			zs_cas_n       => sdram_wire_cas_n,                                                 --      .export
			zs_cke         => sdram_wire_cke,                                                   --      .export
			zs_cs_n        => sdram_wire_cs_n,                                                  --      .export
			zs_dq          => sdram_wire_dq,                                                    --      .export
			zs_dqm         => sdram_wire_dqm,                                                   --      .export
			zs_ras_n       => sdram_wire_ras_n,                                                 --      .export
			zs_we_n        => sdram_wire_we_n                                                   --      .export
		);

	sys_sdram_pll_0 : component Effect_Pedal_Memory_Controller_SDRAMtest_0_sys_sdram_pll_0
		port map (
			ref_clk_clk        => de10_clk_clk,                       --      ref_clk.clk
			ref_reset_reset    => rst_controller_001_reset_out_reset, --    ref_reset.reset
			sys_clk_clk        => sys_sdram_pll_0_sys_clk_clk,        --      sys_clk.clk
			sdram_clk_clk      => sdram_clk_clk,                      --    sdram_clk.clk
			reset_source_reset => sys_sdram_pll_0_reset_source_reset  -- reset_source.reset
		);

	mm_interconnect_0 : component Effect_Pedal_Memory_Controller_SDRAMtest_0_mm_interconnect_0
		port map (
			sys_sdram_pll_0_sys_clk_clk                             => sys_sdram_pll_0_sys_clk_clk,                               --                           sys_sdram_pll_0_sys_clk.clk
			Avalon_Pipelined_MM_0_reset_reset_bridge_in_reset_reset => rst_controller_reset_out_reset,                            -- Avalon_Pipelined_MM_0_reset_reset_bridge_in_reset.reset
			Avalon_Pipelined_MM_0_avm_m0_address                    => Avalon_Pipelined_MM_0_avm_m0_address,                      --                      Avalon_Pipelined_MM_0_avm_m0.address
			Avalon_Pipelined_MM_0_avm_m0_waitrequest                => Avalon_Pipelined_MM_0_avm_m0_waitrequest,                  --                                                  .waitrequest
			Avalon_Pipelined_MM_0_avm_m0_read                       => Avalon_Pipelined_MM_0_avm_m0_read,                         --                                                  .read
			Avalon_Pipelined_MM_0_avm_m0_readdata                   => Avalon_Pipelined_MM_0_avm_m0_readdata,                     --                                                  .readdata
			Avalon_Pipelined_MM_0_avm_m0_readdatavalid              => Avalon_Pipelined_MM_0_avm_m0_readdatavalid,                --                                                  .readdatavalid
			Avalon_Pipelined_MM_0_avm_m0_write                      => Avalon_Pipelined_MM_0_avm_m0_write,                        --                                                  .write
			Avalon_Pipelined_MM_0_avm_m0_writedata                  => Avalon_Pipelined_MM_0_avm_m0_writedata,                    --                                                  .writedata
			new_sdram_controller_0_s1_address                       => mm_interconnect_0_new_sdram_controller_0_s1_address,       --                         new_sdram_controller_0_s1.address
			new_sdram_controller_0_s1_write                         => mm_interconnect_0_new_sdram_controller_0_s1_write,         --                                                  .write
			new_sdram_controller_0_s1_read                          => mm_interconnect_0_new_sdram_controller_0_s1_read,          --                                                  .read
			new_sdram_controller_0_s1_readdata                      => mm_interconnect_0_new_sdram_controller_0_s1_readdata,      --                                                  .readdata
			new_sdram_controller_0_s1_writedata                     => mm_interconnect_0_new_sdram_controller_0_s1_writedata,     --                                                  .writedata
			new_sdram_controller_0_s1_byteenable                    => mm_interconnect_0_new_sdram_controller_0_s1_byteenable,    --                                                  .byteenable
			new_sdram_controller_0_s1_readdatavalid                 => mm_interconnect_0_new_sdram_controller_0_s1_readdatavalid, --                                                  .readdatavalid
			new_sdram_controller_0_s1_waitrequest                   => mm_interconnect_0_new_sdram_controller_0_s1_waitrequest,   --                                                  .waitrequest
			new_sdram_controller_0_s1_chipselect                    => mm_interconnect_0_new_sdram_controller_0_s1_chipselect     --                                                  .chipselect
		);

	rst_controller : component altera_reset_controller
		generic map (
			NUM_RESET_INPUTS          => 1,
			OUTPUT_RESET_SYNC_EDGES   => "deassert",
			SYNC_DEPTH                => 2,
			RESET_REQUEST_PRESENT     => 0,
			RESET_REQ_WAIT_TIME       => 1,
			MIN_RST_ASSERTION_TIME    => 3,
			RESET_REQ_EARLY_DSRT_TIME => 1,
			USE_RESET_REQUEST_IN0     => 0,
			USE_RESET_REQUEST_IN1     => 0,
			USE_RESET_REQUEST_IN2     => 0,
			USE_RESET_REQUEST_IN3     => 0,
			USE_RESET_REQUEST_IN4     => 0,
			USE_RESET_REQUEST_IN5     => 0,
			USE_RESET_REQUEST_IN6     => 0,
			USE_RESET_REQUEST_IN7     => 0,
			USE_RESET_REQUEST_IN8     => 0,
			USE_RESET_REQUEST_IN9     => 0,
			USE_RESET_REQUEST_IN10    => 0,
			USE_RESET_REQUEST_IN11    => 0,
			USE_RESET_REQUEST_IN12    => 0,
			USE_RESET_REQUEST_IN13    => 0,
			USE_RESET_REQUEST_IN14    => 0,
			USE_RESET_REQUEST_IN15    => 0,
			ADAPT_RESET_REQUEST       => 0
		)
		port map (
			reset_in0      => sys_sdram_pll_0_reset_source_reset, -- reset_in0.reset
			clk            => sys_sdram_pll_0_sys_clk_clk,        --       clk.clk
			reset_out      => rst_controller_reset_out_reset,     -- reset_out.reset
			reset_req      => open,                               -- (terminated)
			reset_req_in0  => '0',                                -- (terminated)
			reset_in1      => '0',                                -- (terminated)
			reset_req_in1  => '0',                                -- (terminated)
			reset_in2      => '0',                                -- (terminated)
			reset_req_in2  => '0',                                -- (terminated)
			reset_in3      => '0',                                -- (terminated)
			reset_req_in3  => '0',                                -- (terminated)
			reset_in4      => '0',                                -- (terminated)
			reset_req_in4  => '0',                                -- (terminated)
			reset_in5      => '0',                                -- (terminated)
			reset_req_in5  => '0',                                -- (terminated)
			reset_in6      => '0',                                -- (terminated)
			reset_req_in6  => '0',                                -- (terminated)
			reset_in7      => '0',                                -- (terminated)
			reset_req_in7  => '0',                                -- (terminated)
			reset_in8      => '0',                                -- (terminated)
			reset_req_in8  => '0',                                -- (terminated)
			reset_in9      => '0',                                -- (terminated)
			reset_req_in9  => '0',                                -- (terminated)
			reset_in10     => '0',                                -- (terminated)
			reset_req_in10 => '0',                                -- (terminated)
			reset_in11     => '0',                                -- (terminated)
			reset_req_in11 => '0',                                -- (terminated)
			reset_in12     => '0',                                -- (terminated)
			reset_req_in12 => '0',                                -- (terminated)
			reset_in13     => '0',                                -- (terminated)
			reset_req_in13 => '0',                                -- (terminated)
			reset_in14     => '0',                                -- (terminated)
			reset_req_in14 => '0',                                -- (terminated)
			reset_in15     => '0',                                -- (terminated)
			reset_req_in15 => '0'                                 -- (terminated)
		);

	rst_controller_001 : component altera_reset_controller
		generic map (
			NUM_RESET_INPUTS          => 1,
			OUTPUT_RESET_SYNC_EDGES   => "deassert",
			SYNC_DEPTH                => 2,
			RESET_REQUEST_PRESENT     => 0,
			RESET_REQ_WAIT_TIME       => 1,
			MIN_RST_ASSERTION_TIME    => 3,
			RESET_REQ_EARLY_DSRT_TIME => 1,
			USE_RESET_REQUEST_IN0     => 0,
			USE_RESET_REQUEST_IN1     => 0,
			USE_RESET_REQUEST_IN2     => 0,
			USE_RESET_REQUEST_IN3     => 0,
			USE_RESET_REQUEST_IN4     => 0,
			USE_RESET_REQUEST_IN5     => 0,
			USE_RESET_REQUEST_IN6     => 0,
			USE_RESET_REQUEST_IN7     => 0,
			USE_RESET_REQUEST_IN8     => 0,
			USE_RESET_REQUEST_IN9     => 0,
			USE_RESET_REQUEST_IN10    => 0,
			USE_RESET_REQUEST_IN11    => 0,
			USE_RESET_REQUEST_IN12    => 0,
			USE_RESET_REQUEST_IN13    => 0,
			USE_RESET_REQUEST_IN14    => 0,
			USE_RESET_REQUEST_IN15    => 0,
			ADAPT_RESET_REQUEST       => 0
		)
		port map (
			reset_in0      => reset_reset_n_ports_inv,            -- reset_in0.reset
			clk            => de10_clk_clk,                       --       clk.clk
			reset_out      => rst_controller_001_reset_out_reset, -- reset_out.reset
			reset_req      => open,                               -- (terminated)
			reset_req_in0  => '0',                                -- (terminated)
			reset_in1      => '0',                                -- (terminated)
			reset_req_in1  => '0',                                -- (terminated)
			reset_in2      => '0',                                -- (terminated)
			reset_req_in2  => '0',                                -- (terminated)
			reset_in3      => '0',                                -- (terminated)
			reset_req_in3  => '0',                                -- (terminated)
			reset_in4      => '0',                                -- (terminated)
			reset_req_in4  => '0',                                -- (terminated)
			reset_in5      => '0',                                -- (terminated)
			reset_req_in5  => '0',                                -- (terminated)
			reset_in6      => '0',                                -- (terminated)
			reset_req_in6  => '0',                                -- (terminated)
			reset_in7      => '0',                                -- (terminated)
			reset_req_in7  => '0',                                -- (terminated)
			reset_in8      => '0',                                -- (terminated)
			reset_req_in8  => '0',                                -- (terminated)
			reset_in9      => '0',                                -- (terminated)
			reset_req_in9  => '0',                                -- (terminated)
			reset_in10     => '0',                                -- (terminated)
			reset_req_in10 => '0',                                -- (terminated)
			reset_in11     => '0',                                -- (terminated)
			reset_req_in11 => '0',                                -- (terminated)
			reset_in12     => '0',                                -- (terminated)
			reset_req_in12 => '0',                                -- (terminated)
			reset_in13     => '0',                                -- (terminated)
			reset_req_in13 => '0',                                -- (terminated)
			reset_in14     => '0',                                -- (terminated)
			reset_req_in14 => '0',                                -- (terminated)
			reset_in15     => '0',                                -- (terminated)
			reset_req_in15 => '0'                                 -- (terminated)
		);

	reset_reset_n_ports_inv <= not reset_reset_n;

	mm_interconnect_0_new_sdram_controller_0_s1_read_ports_inv <= not mm_interconnect_0_new_sdram_controller_0_s1_read;

	mm_interconnect_0_new_sdram_controller_0_s1_byteenable_ports_inv <= not mm_interconnect_0_new_sdram_controller_0_s1_byteenable;

	mm_interconnect_0_new_sdram_controller_0_s1_write_ports_inv <= not mm_interconnect_0_new_sdram_controller_0_s1_write;

	avalon_pipelined_mm_0_reset_reset_ports_inv <= not rst_controller_reset_out_reset;

	Avalon_Pipelined_MM_0_reset_reset <= rst_controller_reset_out_reset;

end architecture rtl; -- of Effect_Pedal_Memory_Controller_SDRAMtest_0
