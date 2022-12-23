-- ADC.vhd

-- Generated using ACDS version 20.1 720

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ADC is
	port (
		adc_response_valid         : out std_logic;                            -- adc_response.valid
		adc_response_startofpacket : out std_logic;                            --             .startofpacket
		adc_response_endofpacket   : out std_logic;                            --             .endofpacket
		adc_response_empty         : out std_logic_vector(0 downto 0);         --             .empty
		adc_response_channel       : out std_logic_vector(4 downto 0);         --             .channel
		adc_response_data          : out std_logic_vector(11 downto 0);        --             .data
		clk_adc_clk                : in  std_logic                     := '0'; --      clk_adc.clk
		reset_reset_n              : in  std_logic                     := '0'  --        reset.reset_n
	);
end entity ADC;

architecture rtl of ADC is
	component ADC_AvalonBridge is
		generic (
			USE_PLI     : integer := 0;
			PLI_PORT    : integer := 50000;
			FIFO_DEPTHS : integer := 2
		);
		port (
			clk_clk              : in  std_logic                     := 'X';             -- clk
			clk_reset_reset      : in  std_logic                     := 'X';             -- reset
			master_address       : out std_logic_vector(31 downto 0);                    -- address
			master_readdata      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			master_read          : out std_logic;                                        -- read
			master_write         : out std_logic;                                        -- write
			master_writedata     : out std_logic_vector(31 downto 0);                    -- writedata
			master_waitrequest   : in  std_logic                     := 'X';             -- waitrequest
			master_readdatavalid : in  std_logic                     := 'X';             -- readdatavalid
			master_byteenable    : out std_logic_vector(3 downto 0);                     -- byteenable
			master_reset_reset   : out std_logic                                         -- reset
		);
	end component ADC_AvalonBridge;

	component ADC_altpll_0 is
		port (
			clk                : in  std_logic                     := 'X';             -- clk
			reset              : in  std_logic                     := 'X';             -- reset
			read               : in  std_logic                     := 'X';             -- read
			write              : in  std_logic                     := 'X';             -- write
			address            : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- address
			readdata           : out std_logic_vector(31 downto 0);                    -- readdata
			writedata          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			c0                 : out std_logic;                                        -- clk
			locked             : out std_logic;                                        -- export
			scandone           : out std_logic;                                        -- export
			scandataout        : out std_logic;                                        -- export
			c1                 : out std_logic;                                        -- clk
			c2                 : out std_logic;                                        -- clk
			c3                 : out std_logic;                                        -- clk
			c4                 : out std_logic;                                        -- clk
			areset             : in  std_logic                     := 'X';             -- export
			phasedone          : out std_logic;                                        -- export
			phasecounterselect : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- export
			phaseupdown        : in  std_logic                     := 'X';             -- export
			phasestep          : in  std_logic                     := 'X';             -- export
			scanclk            : in  std_logic                     := 'X';             -- export
			scanclkena         : in  std_logic                     := 'X';             -- export
			scandata           : in  std_logic                     := 'X';             -- export
			configupdate       : in  std_logic                     := 'X'              -- export
		);
	end component ADC_altpll_0;

	component ADC_modular_adc_0 is
		generic (
			is_this_first_or_second_adc : integer := 1
		);
		port (
			clock_clk               : in  std_logic                     := 'X';             -- clk
			reset_sink_reset_n      : in  std_logic                     := 'X';             -- reset_n
			adc_pll_clock_clk       : in  std_logic                     := 'X';             -- clk
			adc_pll_locked_export   : in  std_logic                     := 'X';             -- export
			sequencer_csr_address   : in  std_logic                     := 'X';             -- address
			sequencer_csr_read      : in  std_logic                     := 'X';             -- read
			sequencer_csr_write     : in  std_logic                     := 'X';             -- write
			sequencer_csr_writedata : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			sequencer_csr_readdata  : out std_logic_vector(31 downto 0);                    -- readdata
			response_valid          : out std_logic;                                        -- valid
			response_startofpacket  : out std_logic;                                        -- startofpacket
			response_endofpacket    : out std_logic;                                        -- endofpacket
			response_empty          : out std_logic_vector(0 downto 0);                     -- empty
			response_channel        : out std_logic_vector(4 downto 0);                     -- channel
			response_data           : out std_logic_vector(11 downto 0)                     -- data
		);
	end component ADC_modular_adc_0;

	component ADC_mm_interconnect_0 is
		port (
			altpll_0_c0_clk                                                  : in  std_logic                     := 'X';             -- clk
			clk_0_clk_clk                                                    : in  std_logic                     := 'X';             -- clk
			AvalonBridge_clk_reset_reset_bridge_in_reset_reset               : in  std_logic                     := 'X';             -- reset
			AvalonBridge_master_translator_reset_reset_bridge_in_reset_reset : in  std_logic                     := 'X';             -- reset
			modular_adc_0_reset_sink_reset_bridge_in_reset_reset             : in  std_logic                     := 'X';             -- reset
			AvalonBridge_master_address                                      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- address
			AvalonBridge_master_waitrequest                                  : out std_logic;                                        -- waitrequest
			AvalonBridge_master_byteenable                                   : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			AvalonBridge_master_read                                         : in  std_logic                     := 'X';             -- read
			AvalonBridge_master_readdata                                     : out std_logic_vector(31 downto 0);                    -- readdata
			AvalonBridge_master_readdatavalid                                : out std_logic;                                        -- readdatavalid
			AvalonBridge_master_write                                        : in  std_logic                     := 'X';             -- write
			AvalonBridge_master_writedata                                    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			modular_adc_0_sequencer_csr_address                              : out std_logic_vector(0 downto 0);                     -- address
			modular_adc_0_sequencer_csr_write                                : out std_logic;                                        -- write
			modular_adc_0_sequencer_csr_read                                 : out std_logic;                                        -- read
			modular_adc_0_sequencer_csr_readdata                             : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			modular_adc_0_sequencer_csr_writedata                            : out std_logic_vector(31 downto 0)                     -- writedata
		);
	end component ADC_mm_interconnect_0;

	component adc_rst_controller is
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
			reset_in0      : in  std_logic := 'X'; -- reset_in0.reset
			reset_in1      : in  std_logic := 'X'; -- reset_in1.reset
			clk            : in  std_logic := 'X'; --       clk.clk
			reset_out      : out std_logic;        -- reset_out.reset
			reset_in10     : in  std_logic := 'X';
			reset_in11     : in  std_logic := 'X';
			reset_in12     : in  std_logic := 'X';
			reset_in13     : in  std_logic := 'X';
			reset_in14     : in  std_logic := 'X';
			reset_in15     : in  std_logic := 'X';
			reset_in2      : in  std_logic := 'X';
			reset_in3      : in  std_logic := 'X';
			reset_in4      : in  std_logic := 'X';
			reset_in5      : in  std_logic := 'X';
			reset_in6      : in  std_logic := 'X';
			reset_in7      : in  std_logic := 'X';
			reset_in8      : in  std_logic := 'X';
			reset_in9      : in  std_logic := 'X';
			reset_req      : out std_logic;
			reset_req_in0  : in  std_logic := 'X';
			reset_req_in1  : in  std_logic := 'X';
			reset_req_in10 : in  std_logic := 'X';
			reset_req_in11 : in  std_logic := 'X';
			reset_req_in12 : in  std_logic := 'X';
			reset_req_in13 : in  std_logic := 'X';
			reset_req_in14 : in  std_logic := 'X';
			reset_req_in15 : in  std_logic := 'X';
			reset_req_in2  : in  std_logic := 'X';
			reset_req_in3  : in  std_logic := 'X';
			reset_req_in4  : in  std_logic := 'X';
			reset_req_in5  : in  std_logic := 'X';
			reset_req_in6  : in  std_logic := 'X';
			reset_req_in7  : in  std_logic := 'X';
			reset_req_in8  : in  std_logic := 'X';
			reset_req_in9  : in  std_logic := 'X'
		);
	end component adc_rst_controller;

	component adc_rst_controller_001 is
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
			reset_in0      : in  std_logic := 'X'; -- reset_in0.reset
			clk            : in  std_logic := 'X'; --       clk.clk
			reset_out      : out std_logic;        -- reset_out.reset
			reset_in1      : in  std_logic := 'X';
			reset_in10     : in  std_logic := 'X';
			reset_in11     : in  std_logic := 'X';
			reset_in12     : in  std_logic := 'X';
			reset_in13     : in  std_logic := 'X';
			reset_in14     : in  std_logic := 'X';
			reset_in15     : in  std_logic := 'X';
			reset_in2      : in  std_logic := 'X';
			reset_in3      : in  std_logic := 'X';
			reset_in4      : in  std_logic := 'X';
			reset_in5      : in  std_logic := 'X';
			reset_in6      : in  std_logic := 'X';
			reset_in7      : in  std_logic := 'X';
			reset_in8      : in  std_logic := 'X';
			reset_in9      : in  std_logic := 'X';
			reset_req      : out std_logic;
			reset_req_in0  : in  std_logic := 'X';
			reset_req_in1  : in  std_logic := 'X';
			reset_req_in10 : in  std_logic := 'X';
			reset_req_in11 : in  std_logic := 'X';
			reset_req_in12 : in  std_logic := 'X';
			reset_req_in13 : in  std_logic := 'X';
			reset_req_in14 : in  std_logic := 'X';
			reset_req_in15 : in  std_logic := 'X';
			reset_req_in2  : in  std_logic := 'X';
			reset_req_in3  : in  std_logic := 'X';
			reset_req_in4  : in  std_logic := 'X';
			reset_req_in5  : in  std_logic := 'X';
			reset_req_in6  : in  std_logic := 'X';
			reset_req_in7  : in  std_logic := 'X';
			reset_req_in8  : in  std_logic := 'X';
			reset_req_in9  : in  std_logic := 'X'
		);
	end component adc_rst_controller_001;

	signal altpll_0_c0_clk                                         : std_logic;                     -- altpll_0:c0 -> [AvalonBridge:clk_clk, mm_interconnect_0:altpll_0_c0_clk, modular_adc_0:adc_pll_clock_clk, rst_controller_002:clk]
	signal altpll_0_locked_conduit_export                          : std_logic;                     -- altpll_0:locked -> modular_adc_0:adc_pll_locked_export
	signal avalonbridge_master_readdata                            : std_logic_vector(31 downto 0); -- mm_interconnect_0:AvalonBridge_master_readdata -> AvalonBridge:master_readdata
	signal avalonbridge_master_waitrequest                         : std_logic;                     -- mm_interconnect_0:AvalonBridge_master_waitrequest -> AvalonBridge:master_waitrequest
	signal avalonbridge_master_address                             : std_logic_vector(31 downto 0); -- AvalonBridge:master_address -> mm_interconnect_0:AvalonBridge_master_address
	signal avalonbridge_master_read                                : std_logic;                     -- AvalonBridge:master_read -> mm_interconnect_0:AvalonBridge_master_read
	signal avalonbridge_master_byteenable                          : std_logic_vector(3 downto 0);  -- AvalonBridge:master_byteenable -> mm_interconnect_0:AvalonBridge_master_byteenable
	signal avalonbridge_master_readdatavalid                       : std_logic;                     -- mm_interconnect_0:AvalonBridge_master_readdatavalid -> AvalonBridge:master_readdatavalid
	signal avalonbridge_master_write                               : std_logic;                     -- AvalonBridge:master_write -> mm_interconnect_0:AvalonBridge_master_write
	signal avalonbridge_master_writedata                           : std_logic_vector(31 downto 0); -- AvalonBridge:master_writedata -> mm_interconnect_0:AvalonBridge_master_writedata
	signal mm_interconnect_0_modular_adc_0_sequencer_csr_readdata  : std_logic_vector(31 downto 0); -- modular_adc_0:sequencer_csr_readdata -> mm_interconnect_0:modular_adc_0_sequencer_csr_readdata
	signal mm_interconnect_0_modular_adc_0_sequencer_csr_address   : std_logic_vector(0 downto 0);  -- mm_interconnect_0:modular_adc_0_sequencer_csr_address -> modular_adc_0:sequencer_csr_address
	signal mm_interconnect_0_modular_adc_0_sequencer_csr_read      : std_logic;                     -- mm_interconnect_0:modular_adc_0_sequencer_csr_read -> modular_adc_0:sequencer_csr_read
	signal mm_interconnect_0_modular_adc_0_sequencer_csr_write     : std_logic;                     -- mm_interconnect_0:modular_adc_0_sequencer_csr_write -> modular_adc_0:sequencer_csr_write
	signal mm_interconnect_0_modular_adc_0_sequencer_csr_writedata : std_logic_vector(31 downto 0); -- mm_interconnect_0:modular_adc_0_sequencer_csr_writedata -> modular_adc_0:sequencer_csr_writedata
	signal rst_controller_reset_out_reset                          : std_logic;                     -- rst_controller:reset_out -> altpll_0:reset
	signal avalonbridge_master_reset_reset                         : std_logic;                     -- AvalonBridge:master_reset_reset -> rst_controller:reset_in1
	signal rst_controller_001_reset_out_reset                      : std_logic;                     -- rst_controller_001:reset_out -> [mm_interconnect_0:modular_adc_0_reset_sink_reset_bridge_in_reset_reset, rst_controller_001_reset_out_reset:in]
	signal rst_controller_002_reset_out_reset                      : std_logic;                     -- rst_controller_002:reset_out -> [mm_interconnect_0:AvalonBridge_clk_reset_reset_bridge_in_reset_reset, mm_interconnect_0:AvalonBridge_master_translator_reset_reset_bridge_in_reset_reset]
	signal reset_reset_n_ports_inv                                 : std_logic;                     -- reset_reset_n:inv -> [AvalonBridge:clk_reset_reset, rst_controller:reset_in0, rst_controller_001:reset_in0, rst_controller_002:reset_in0]
	signal rst_controller_001_reset_out_reset_ports_inv            : std_logic;                     -- rst_controller_001_reset_out_reset:inv -> modular_adc_0:reset_sink_reset_n

begin

	avalonbridge : component ADC_AvalonBridge
		generic map (
			USE_PLI     => 0,
			PLI_PORT    => 50000,
			FIFO_DEPTHS => 2
		)
		port map (
			clk_clk              => altpll_0_c0_clk,                   --          clk.clk
			clk_reset_reset      => reset_reset_n_ports_inv,           --    clk_reset.reset
			master_address       => avalonbridge_master_address,       --       master.address
			master_readdata      => avalonbridge_master_readdata,      --             .readdata
			master_read          => avalonbridge_master_read,          --             .read
			master_write         => avalonbridge_master_write,         --             .write
			master_writedata     => avalonbridge_master_writedata,     --             .writedata
			master_waitrequest   => avalonbridge_master_waitrequest,   --             .waitrequest
			master_readdatavalid => avalonbridge_master_readdatavalid, --             .readdatavalid
			master_byteenable    => avalonbridge_master_byteenable,    --             .byteenable
			master_reset_reset   => avalonbridge_master_reset_reset    -- master_reset.reset
		);

	altpll_0 : component ADC_altpll_0
		port map (
			clk                => clk_adc_clk,                    --       inclk_interface.clk
			reset              => rst_controller_reset_out_reset, -- inclk_interface_reset.reset
			read               => open,                           --             pll_slave.read
			write              => open,                           --                      .write
			address            => open,                           --                      .address
			readdata           => open,                           --                      .readdata
			writedata          => open,                           --                      .writedata
			c0                 => altpll_0_c0_clk,                --                    c0.clk
			locked             => altpll_0_locked_conduit_export, --        locked_conduit.export
			scandone           => open,                           --           (terminated)
			scandataout        => open,                           --           (terminated)
			c1                 => open,                           --           (terminated)
			c2                 => open,                           --           (terminated)
			c3                 => open,                           --           (terminated)
			c4                 => open,                           --           (terminated)
			areset             => '0',                            --           (terminated)
			phasedone          => open,                           --           (terminated)
			phasecounterselect => "000",                          --           (terminated)
			phaseupdown        => '0',                            --           (terminated)
			phasestep          => '0',                            --           (terminated)
			scanclk            => '0',                            --           (terminated)
			scanclkena         => '0',                            --           (terminated)
			scandata           => '0',                            --           (terminated)
			configupdate       => '0'                             --           (terminated)
		);

	modular_adc_0 : component ADC_modular_adc_0
		generic map (
			is_this_first_or_second_adc => 1
		)
		port map (
			clock_clk               => clk_adc_clk,                                              --          clock.clk
			reset_sink_reset_n      => rst_controller_001_reset_out_reset_ports_inv,             --     reset_sink.reset_n
			adc_pll_clock_clk       => altpll_0_c0_clk,                                          --  adc_pll_clock.clk
			adc_pll_locked_export   => altpll_0_locked_conduit_export,                           -- adc_pll_locked.export
			sequencer_csr_address   => mm_interconnect_0_modular_adc_0_sequencer_csr_address(0), --  sequencer_csr.address
			sequencer_csr_read      => mm_interconnect_0_modular_adc_0_sequencer_csr_read,       --               .read
			sequencer_csr_write     => mm_interconnect_0_modular_adc_0_sequencer_csr_write,      --               .write
			sequencer_csr_writedata => mm_interconnect_0_modular_adc_0_sequencer_csr_writedata,  --               .writedata
			sequencer_csr_readdata  => mm_interconnect_0_modular_adc_0_sequencer_csr_readdata,   --               .readdata
			response_valid          => adc_response_valid,                                       --       response.valid
			response_startofpacket  => adc_response_startofpacket,                               --               .startofpacket
			response_endofpacket    => adc_response_endofpacket,                                 --               .endofpacket
			response_empty          => adc_response_empty,                                       --               .empty
			response_channel        => adc_response_channel,                                     --               .channel
			response_data           => adc_response_data                                         --               .data
		);

	mm_interconnect_0 : component ADC_mm_interconnect_0
		port map (
			altpll_0_c0_clk                                                  => altpll_0_c0_clk,                                         --                                                altpll_0_c0.clk
			clk_0_clk_clk                                                    => clk_adc_clk,                                             --                                                  clk_0_clk.clk
			AvalonBridge_clk_reset_reset_bridge_in_reset_reset               => rst_controller_002_reset_out_reset,                      --               AvalonBridge_clk_reset_reset_bridge_in_reset.reset
			AvalonBridge_master_translator_reset_reset_bridge_in_reset_reset => rst_controller_002_reset_out_reset,                      -- AvalonBridge_master_translator_reset_reset_bridge_in_reset.reset
			modular_adc_0_reset_sink_reset_bridge_in_reset_reset             => rst_controller_001_reset_out_reset,                      --             modular_adc_0_reset_sink_reset_bridge_in_reset.reset
			AvalonBridge_master_address                                      => avalonbridge_master_address,                             --                                        AvalonBridge_master.address
			AvalonBridge_master_waitrequest                                  => avalonbridge_master_waitrequest,                         --                                                           .waitrequest
			AvalonBridge_master_byteenable                                   => avalonbridge_master_byteenable,                          --                                                           .byteenable
			AvalonBridge_master_read                                         => avalonbridge_master_read,                                --                                                           .read
			AvalonBridge_master_readdata                                     => avalonbridge_master_readdata,                            --                                                           .readdata
			AvalonBridge_master_readdatavalid                                => avalonbridge_master_readdatavalid,                       --                                                           .readdatavalid
			AvalonBridge_master_write                                        => avalonbridge_master_write,                               --                                                           .write
			AvalonBridge_master_writedata                                    => avalonbridge_master_writedata,                           --                                                           .writedata
			modular_adc_0_sequencer_csr_address                              => mm_interconnect_0_modular_adc_0_sequencer_csr_address,   --                                modular_adc_0_sequencer_csr.address
			modular_adc_0_sequencer_csr_write                                => mm_interconnect_0_modular_adc_0_sequencer_csr_write,     --                                                           .write
			modular_adc_0_sequencer_csr_read                                 => mm_interconnect_0_modular_adc_0_sequencer_csr_read,      --                                                           .read
			modular_adc_0_sequencer_csr_readdata                             => mm_interconnect_0_modular_adc_0_sequencer_csr_readdata,  --                                                           .readdata
			modular_adc_0_sequencer_csr_writedata                            => mm_interconnect_0_modular_adc_0_sequencer_csr_writedata  --                                                           .writedata
		);

	rst_controller : component adc_rst_controller
		generic map (
			NUM_RESET_INPUTS          => 2,
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
			reset_in0      => reset_reset_n_ports_inv,         -- reset_in0.reset
			reset_in1      => avalonbridge_master_reset_reset, -- reset_in1.reset
			clk            => clk_adc_clk,                     --       clk.clk
			reset_out      => rst_controller_reset_out_reset,  -- reset_out.reset
			reset_req      => open,                            -- (terminated)
			reset_req_in0  => '0',                             -- (terminated)
			reset_req_in1  => '0',                             -- (terminated)
			reset_in2      => '0',                             -- (terminated)
			reset_req_in2  => '0',                             -- (terminated)
			reset_in3      => '0',                             -- (terminated)
			reset_req_in3  => '0',                             -- (terminated)
			reset_in4      => '0',                             -- (terminated)
			reset_req_in4  => '0',                             -- (terminated)
			reset_in5      => '0',                             -- (terminated)
			reset_req_in5  => '0',                             -- (terminated)
			reset_in6      => '0',                             -- (terminated)
			reset_req_in6  => '0',                             -- (terminated)
			reset_in7      => '0',                             -- (terminated)
			reset_req_in7  => '0',                             -- (terminated)
			reset_in8      => '0',                             -- (terminated)
			reset_req_in8  => '0',                             -- (terminated)
			reset_in9      => '0',                             -- (terminated)
			reset_req_in9  => '0',                             -- (terminated)
			reset_in10     => '0',                             -- (terminated)
			reset_req_in10 => '0',                             -- (terminated)
			reset_in11     => '0',                             -- (terminated)
			reset_req_in11 => '0',                             -- (terminated)
			reset_in12     => '0',                             -- (terminated)
			reset_req_in12 => '0',                             -- (terminated)
			reset_in13     => '0',                             -- (terminated)
			reset_req_in13 => '0',                             -- (terminated)
			reset_in14     => '0',                             -- (terminated)
			reset_req_in14 => '0',                             -- (terminated)
			reset_in15     => '0',                             -- (terminated)
			reset_req_in15 => '0'                              -- (terminated)
		);

	rst_controller_001 : component adc_rst_controller_001
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
			clk            => clk_adc_clk,                        --       clk.clk
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

	rst_controller_002 : component adc_rst_controller_001
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
			clk            => altpll_0_c0_clk,                    --       clk.clk
			reset_out      => rst_controller_002_reset_out_reset, -- reset_out.reset
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

	rst_controller_001_reset_out_reset_ports_inv <= not rst_controller_001_reset_out_reset;

end architecture rtl; -- of ADC
