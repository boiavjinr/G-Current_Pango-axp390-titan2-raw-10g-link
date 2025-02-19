// Created by IP Generator (Version 2023.2-SP1 build 147282)
// Instantiation Template
//
// Insert the following codes into your Verilog file.
//   * Change the_instance_name to your own instance name.
//   * Change the signal names in the port associations


fifo_512x44 the_instance_name (
  .wr_clk(wr_clk),                    // input
  .wr_rst(wr_rst),                    // input
  .wr_en(wr_en),                      // input
  .wr_data(wr_data),                  // input [71:0]
  .wr_full(wr_full),                  // output
  .wr_water_level(wr_water_level),    // output [9:0]
  .almost_full(almost_full),          // output
  .rd_clk(rd_clk),                    // input
  .rd_rst(rd_rst),                    // input
  .rd_en(rd_en),                      // input
  .rd_data(rd_data),                  // output [71:0]
  .rd_empty(rd_empty),                // output
  .almost_empty(almost_empty)         // output
);
