// ADC_modular_adc_0_avalon_st_adapter.v

// This file was auto-generated from altera_avalon_st_adapter_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 20.1 720

`timescale 1 ps / 1 ps
module ADC_modular_adc_0_avalon_st_adapter #(
		parameter inBitsPerSymbol = 12,
		parameter inUsePackets    = 1,
		parameter inDataWidth     = 12,
		parameter inChannelWidth  = 5,
		parameter inErrorWidth    = 0,
		parameter inUseEmptyPort  = 0,
		parameter inUseValid      = 1,
		parameter inUseReady      = 0,
		parameter inReadyLatency  = 0,
		parameter outDataWidth    = 12,
		parameter outChannelWidth = 5,
		parameter outErrorWidth   = 0,
		parameter outUseEmptyPort = 1,
		parameter outUseValid     = 1,
		parameter outUseReady     = 0,
		parameter outReadyLatency = 0
	) (
		input  wire        in_clk_0_clk,        // in_clk_0.clk
		input  wire        in_rst_0_reset,      // in_rst_0.reset
		input  wire [11:0] in_0_data,           //     in_0.data
		input  wire        in_0_valid,          //         .valid
		input  wire        in_0_startofpacket,  //         .startofpacket
		input  wire        in_0_endofpacket,    //         .endofpacket
		input  wire [4:0]  in_0_channel,        //         .channel
		output wire [11:0] out_0_data,          //    out_0.data
		output wire        out_0_valid,         //         .valid
		output wire        out_0_startofpacket, //         .startofpacket
		output wire        out_0_endofpacket,   //         .endofpacket
		output wire        out_0_empty,         //         .empty
		output wire [4:0]  out_0_channel        //         .channel
	);

	wire         timing_adapter_0_out_valid;              // timing_adapter_0:out_valid -> data_format_adapter_0:in_valid
	wire  [11:0] timing_adapter_0_out_data;               // timing_adapter_0:out_data -> data_format_adapter_0:in_data
	wire         timing_adapter_0_out_ready;              // data_format_adapter_0:in_ready -> timing_adapter_0:out_ready
	wire   [4:0] timing_adapter_0_out_channel;            // timing_adapter_0:out_channel -> data_format_adapter_0:in_channel
	wire         timing_adapter_0_out_startofpacket;      // timing_adapter_0:out_startofpacket -> data_format_adapter_0:in_startofpacket
	wire         timing_adapter_0_out_endofpacket;        // timing_adapter_0:out_endofpacket -> data_format_adapter_0:in_endofpacket
	wire         data_format_adapter_0_out_valid;         // data_format_adapter_0:out_valid -> timing_adapter_1:in_valid
	wire  [11:0] data_format_adapter_0_out_data;          // data_format_adapter_0:out_data -> timing_adapter_1:in_data
	wire         data_format_adapter_0_out_ready;         // timing_adapter_1:in_ready -> data_format_adapter_0:out_ready
	wire   [4:0] data_format_adapter_0_out_channel;       // data_format_adapter_0:out_channel -> timing_adapter_1:in_channel
	wire         data_format_adapter_0_out_startofpacket; // data_format_adapter_0:out_startofpacket -> timing_adapter_1:in_startofpacket
	wire         data_format_adapter_0_out_endofpacket;   // data_format_adapter_0:out_endofpacket -> timing_adapter_1:in_endofpacket
	wire         data_format_adapter_0_out_empty;         // data_format_adapter_0:out_empty -> timing_adapter_1:in_empty

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (inBitsPerSymbol != 12)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inbitspersymbol_check ( .error(1'b1) );
		end
		if (inUsePackets != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inusepackets_check ( .error(1'b1) );
		end
		if (inDataWidth != 12)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					indatawidth_check ( .error(1'b1) );
		end
		if (inChannelWidth != 5)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inchannelwidth_check ( .error(1'b1) );
		end
		if (inErrorWidth != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inerrorwidth_check ( .error(1'b1) );
		end
		if (inUseEmptyPort != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inuseemptyport_check ( .error(1'b1) );
		end
		if (inUseValid != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inusevalid_check ( .error(1'b1) );
		end
		if (inUseReady != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inuseready_check ( .error(1'b1) );
		end
		if (inReadyLatency != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inreadylatency_check ( .error(1'b1) );
		end
		if (outDataWidth != 12)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					outdatawidth_check ( .error(1'b1) );
		end
		if (outChannelWidth != 5)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					outchannelwidth_check ( .error(1'b1) );
		end
		if (outErrorWidth != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					outerrorwidth_check ( .error(1'b1) );
		end
		if (outUseEmptyPort != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					outuseemptyport_check ( .error(1'b1) );
		end
		if (outUseValid != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					outusevalid_check ( .error(1'b1) );
		end
		if (outUseReady != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					outuseready_check ( .error(1'b1) );
		end
		if (outReadyLatency != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					outreadylatency_check ( .error(1'b1) );
		end
	endgenerate

	ADC_modular_adc_0_avalon_st_adapter_data_format_adapter_0 data_format_adapter_0 (
		.clk               (in_clk_0_clk),                            //   clk.clk
		.reset_n           (~in_rst_0_reset),                         // reset.reset_n
		.in_data           (timing_adapter_0_out_data),               //    in.data
		.in_valid          (timing_adapter_0_out_valid),              //      .valid
		.in_ready          (timing_adapter_0_out_ready),              //      .ready
		.in_startofpacket  (timing_adapter_0_out_startofpacket),      //      .startofpacket
		.in_endofpacket    (timing_adapter_0_out_endofpacket),        //      .endofpacket
		.in_channel        (timing_adapter_0_out_channel),            //      .channel
		.out_data          (data_format_adapter_0_out_data),          //   out.data
		.out_valid         (data_format_adapter_0_out_valid),         //      .valid
		.out_ready         (data_format_adapter_0_out_ready),         //      .ready
		.out_startofpacket (data_format_adapter_0_out_startofpacket), //      .startofpacket
		.out_endofpacket   (data_format_adapter_0_out_endofpacket),   //      .endofpacket
		.out_empty         (data_format_adapter_0_out_empty),         //      .empty
		.out_channel       (data_format_adapter_0_out_channel)        //      .channel
	);

	ADC_modular_adc_0_avalon_st_adapter_timing_adapter_0 timing_adapter_0 (
		.clk               (in_clk_0_clk),                       //   clk.clk
		.reset_n           (~in_rst_0_reset),                    // reset.reset_n
		.in_data           (in_0_data),                          //    in.data
		.in_valid          (in_0_valid),                         //      .valid
		.in_startofpacket  (in_0_startofpacket),                 //      .startofpacket
		.in_endofpacket    (in_0_endofpacket),                   //      .endofpacket
		.in_channel        (in_0_channel),                       //      .channel
		.out_data          (timing_adapter_0_out_data),          //   out.data
		.out_valid         (timing_adapter_0_out_valid),         //      .valid
		.out_ready         (timing_adapter_0_out_ready),         //      .ready
		.out_startofpacket (timing_adapter_0_out_startofpacket), //      .startofpacket
		.out_endofpacket   (timing_adapter_0_out_endofpacket),   //      .endofpacket
		.out_channel       (timing_adapter_0_out_channel)        //      .channel
	);

	ADC_modular_adc_0_avalon_st_adapter_timing_adapter_1 timing_adapter_1 (
		.clk               (in_clk_0_clk),                            //   clk.clk
		.reset_n           (~in_rst_0_reset),                         // reset.reset_n
		.in_data           (data_format_adapter_0_out_data),          //    in.data
		.in_valid          (data_format_adapter_0_out_valid),         //      .valid
		.in_ready          (data_format_adapter_0_out_ready),         //      .ready
		.in_startofpacket  (data_format_adapter_0_out_startofpacket), //      .startofpacket
		.in_endofpacket    (data_format_adapter_0_out_endofpacket),   //      .endofpacket
		.in_empty          (data_format_adapter_0_out_empty),         //      .empty
		.in_channel        (data_format_adapter_0_out_channel),       //      .channel
		.out_data          (out_0_data),                              //   out.data
		.out_valid         (out_0_valid),                             //      .valid
		.out_startofpacket (out_0_startofpacket),                     //      .startofpacket
		.out_endofpacket   (out_0_endofpacket),                       //      .endofpacket
		.out_empty         (out_0_empty),                             //      .empty
		.out_channel       (out_0_channel)                            //      .channel
	);

endmodule
