
//module TrueDualPortSRAMAsym(
//  input          clock,
//  input          io_a_en, 
//  input  [15:0]  io_a_we, 
//  input  [9:0]   io_a_addr, 
//  input  [127:0] io_a_din, 
//  output [127:0] io_a_dout, 
//  input          io_b_en, 
//  input  [3:0]   io_b_we, 
//  input  [11:0]  io_b_addr, 
//  input  [31:0]  io_b_din, 
//  output [31:0]  io_b_dout 
//);



//TrueDualPortSRAMAsymBram inst11 (
//  .clka(clock),    // input wire clka
//  .ena(io_a_en),      // input wire ena
//  .wea(io_a_we),      // input wire [15 : 0] wea
//  .addra(io_a_addr),  // input wire [9 : 0] addra
//  .dina(io_a_din),    // input wire [127 : 0] dina
//  .douta(io_a_dout),  // output wire [127 : 0] douta
//  .clkb(clock),    // input wire clkb
//  .enb(io_b_en),      // input wire enb
//  .web(io_b_we),      // input wire [3 : 0] web
//  .addrb(io_b_addr),  // input wire [11 : 0] addrb
//  .dinb(io_b_din),    // input wire [31 : 0] dinb
//  .doutb(io_b_dout)  // output wire [31 : 0] doutb
//);
//endmodule

module TrueDualPortSRAM_32_9(
  input         clock,
  input         io_a_en, 
  input  [3:0]  io_a_we, 
  input  [8:0]  io_a_addr, 
  input  [31:0] io_a_din, 
  output [31:0] io_a_dout, 
  input         io_b_en, 
  input  [3:0]  io_b_we, 
  input  [8:0]  io_b_addr, 
  input  [31:0] io_b_din, 
  output [31:0] io_b_dout 
);

DualPortSRAM_32_9 DualPortSRAM_32_9 (
  .clka(clock),    // input wire clka
  .ena(io_a_en),      // input wire ena
  .wea(io_a_we),      // input wire [3 : 0] wea
  .addra(io_a_addr),  // input wire [8 : 0] addra
  .dina(io_a_din),    // input wire [31 : 0] dina
  .douta(io_a_dout),  // output wire [31 : 0] douta
  .clkb(clock),    // input wire clkb
  .enb(io_b_en),      // input wire enb
  .web(io_b_we),      // input wire [3 : 0] web
  .addrb(io_b_addr),  // input wire [8 : 0] addrb
  .dinb(io_b_din),    // input wire [31 : 0] dinb
  .doutb(io_b_dout)  // output wire [31 : 0] doutb
);

endmodule

module TrueDualPortSRAM_32_10(
  input         clock,
  input         io_a_en, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  input  [3:0]  io_a_we, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  input  [9:0]  io_a_addr, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  input  [31:0] io_a_din, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  output [31:0] io_a_dout, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  input         io_b_en, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  input  [3:0]  io_b_we, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  input  [9:0]  io_b_addr, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  input  [31:0] io_b_din, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  output [31:0] io_b_dout // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
);
DualPortSRAM_32_10 DualPortSRAM_32_10_instance (
  .clka(clock),    // input wire clka
  .ena(io_a_en),      // input wire ena
  .wea(io_a_we),      // input wire [3 : 0] wea
  .addra(io_a_addr),  // input wire [9 : 0] addra
  .dina(io_a_din),    // input wire [31 : 0] dina
  .douta(io_a_dout),  // output wire [31 : 0] douta
  .clkb(clock),    // input wire clkb
  .enb(io_b_en),      // input wire enb
  .web(io_b_we),      // input wire [3 : 0] web
  .addrb(io_b_addr),  // input wire [9 : 0] addrb
  .dinb(io_b_din),    // input wire [31 : 0] dinb
  .doutb(io_b_dout)  // output wire [31 : 0] doutb
);

endmodule


module TrueDualPortSRAM_32_11(
  input         clock,
  input         io_a_en, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  input  [3:0]  io_a_we, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  input  [10:0] io_a_addr, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  input  [31:0] io_a_din, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  output [31:0] io_a_dout, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  input         io_b_en, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  input  [3:0]  io_b_we, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  input  [10:0] io_b_addr, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  input  [31:0] io_b_din, // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
  output [31:0] io_b_dout // @[generators/fdra/cgra-mg/src/main/scala/dsa/util/SRAM.scala 22:14]
);
//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG

DualPortSRAM_32_11 SRAM3211instance (
  .clka(clock),    // input wire clka
  .ena(io_a_en),      // input wire ena
  .wea(io_a_we),      // input wire [3 : 0] wea
  .addra(io_a_addr),  // input wire [10 : 0] addra
  .dina(io_a_din),    // input wire [31 : 0] dina
  .douta(io_a_dout),  // output wire [31 : 0] douta
  .clkb(clock),    // input wire clkb
  .enb(io_b_en),      // input wire enb
  .web(io_b_we),      // input wire [3 : 0] web
  .addrb(io_b_addr),  // input wire [10 : 0] addrb
  .dinb(io_b_din),    // input wire [31 : 0] dinb
  .doutb(io_b_dout)  // output wire [31 : 0] doutb
);

endmodule

module TrueDualPortSRAM_16_10(
  input         clock,
  input         io_a_en,
  input  [1:0]  io_a_we,
  input  [9:0]  io_a_addr,
  input  [15:0] io_a_din,
  output [15:0] io_a_dout,
  input         io_b_en,
  input         io_b_we,
  input  [9:0]  io_b_addr,
  input  [15:0] io_b_din,
  output [15:0] io_b_dout
);
DualPortRAM16_10 DualPortRAM16_10_instance (
  .clka(clock),    // input wire clka
  .ena(io_a_en),      // input wire ena
  .wea(io_a_we),      // input wire [0 : 0] wea
  .addra(io_a_addr),  // input wire [9 : 0] addra
  .dina(io_a_din),    // input wire [15 : 0] dina
  .douta(io_a_dout),  // output wire [15 : 0] douta
  .clkb(clock),    // input wire clkb
  .enb(io_b_en),      // input wire enb
  .web(io_b_we),      // input wire [0 : 0] web
  .addrb(io_b_addr),  // input wire [9 : 0] addrb
  .dinb(io_b_din),    // input wire [15 : 0] dinb
  .doutb(io_b_dout)  // output wire [15 : 0] doutb
);
endmodule

module TrueDualPortSRAM_16_9(
  input         clock,
  input         io_a_en,
  input  [1:0]  io_a_we,
  input  [8:0]  io_a_addr,
  input  [15:0] io_a_din,
  output [15:0] io_a_dout,
  input         io_b_en,
  input  [1:0]  io_b_we,
  input  [8:0]  io_b_addr,
  input  [15:0] io_b_din,
  output [15:0] io_b_dout
);

DualPortSRAM_16_9 DualPortSRAM16_9_instance (
  .clka(clock),    // input wire clka
  .ena(io_a_en),      // input wire ena
  .wea(io_a_we),      // input wire [0 : 0] wea
  .addra(io_a_addr),  // input wire [9 : 0] addra
  .dina(io_a_din),    // input wire [15 : 0] dina
  .douta(io_a_dout),  // output wire [15 : 0] douta
  .clkb(clock),    // input wire clkb
  .enb(io_b_en),      // input wire enb
  .web(io_b_we),      // input wire [0 : 0] web
  .addrb(io_b_addr),  // input wire [9 : 0] addrb
  .dinb(io_b_din),    // input wire [15 : 0] dinb
  .doutb(io_b_dout)  // output wire [15 : 0] doutb
);

endmodule 


module TrueDualPortSRAM_128_8(
  input          clock,
  input          io_a_en,
  input  [15:0]  io_a_we,
  input  [7:0]   io_a_addr,
  input  [127:0] io_a_din,
  output [127:0] io_a_dout,
  input          io_b_en,
  input  [7:0]   io_b_addr,
  output [127:0] io_b_dout
);
 DualPortSRAM_128_8 DualPortSRAM_128_8_instance (
  .clka(clock),    // input wire clka
  .ena(io_a_en),      // input wire ena
  .wea(io_a_we),      // input wire [0 : 0] wea
  .addra(io_a_addr),  // input wire [8 : 0] addra
  .dina(io_a_din),    // input wire [63 : 0] dina
  .douta(io_a_dout),  // output wire [63 : 0] douta
  .clkb(clock),    // input wire clkb
  .enb(io_b_en),      // input wire enb
  .web(1'h0),      // input wire [0 : 0] web
  .addrb(io_b_addr),  // input wire [8 : 0] addrb
  .dinb(128'h0),    // input wire [63 : 0] dinb
  .doutb(io_b_dout)  // output wire [63 : 0] doutb
);
endmodule

module TrueDualPortSRAM_64_9(
  input         clock,
  input         io_a_en,
  input  [7:0]  io_a_we,
  input  [8:0]  io_a_addr,
  input  [63:0] io_a_din,
  output [63:0] io_a_dout,
  input         io_b_en,
  input  [8:0]  io_b_addr,
  output [63:0] io_b_dout
);
  DualPortRAM64_9 DualPortRAM64_9_instance (
  .clka(clock),    // input wire clka
  .ena(io_a_en),      // input wire ena
  .wea(io_a_we),      // input wire [0 : 0] wea
  .addra(io_a_addr),  // input wire [8 : 0] addra
  .dina(io_a_din),    // input wire [63 : 0] dina
  .douta(io_a_dout),  // output wire [63 : 0] douta
  .clkb(clock),    // input wire clkb
  .enb(io_b_en),      // input wire enb
  .web(1'h0),      // input wire [0 : 0] web
  .addrb(io_b_addr),  // input wire [8 : 0] addrb
  .dinb(64'h0),    // input wire [63 : 0] dinb
  .doutb(io_b_dout)  // output wire [63 : 0] doutb
);
endmodule