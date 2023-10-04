module ALU(
  input         clock,
  input         reset,
  input  [31:0] io_in_A,
  input  [31:0] io_in_B,
  input  [3:0]  io_alu_Op,
  output [31:0] io_out
);
  wire [31:0] _out_T_4 = io_in_A + io_in_B; // @[lab4t1.scala 40:66]
  assign io_out = io_alu_Op == 4'h0 | io_alu_Op == 4'h1 ? _out_T_4 : 32'h0; // @[lab4t1.scala 40:8]
endmodule
