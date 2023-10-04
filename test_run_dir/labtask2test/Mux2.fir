;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Mux2 : 
  module Mux2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in0 : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, flip in3 : UInt<1>, flip s1 : UInt<1>, flip s2 : UInt<1>, o1 : UInt<1>, o2 : UInt<1>, o3 : UInt<1>, o4 : UInt<1>}
    
    node _io_o1_T = mux(io.s2, io.in3, io.in2) @[lab2task2.scala 18:28]
    node _io_o1_T_1 = mux(io.s2, io.in1, io.in0) @[lab2task2.scala 18:53]
    node _io_o1_T_2 = mux(io.s1, _io_o1_T, _io_o1_T_1) @[lab2task2.scala 18:18]
    io.o1 <= _io_o1_T_2 @[lab2task2.scala 18:11]
    node _io_o2_T = mux(io.s2, io.in0, io.in3) @[lab2task2.scala 19:28]
    node _io_o2_T_1 = mux(io.s2, io.in2, io.in1) @[lab2task2.scala 19:54]
    node _io_o2_T_2 = mux(io.s1, _io_o2_T, _io_o2_T_1) @[lab2task2.scala 19:18]
    io.o2 <= _io_o2_T_2 @[lab2task2.scala 19:11]
    node _io_o3_T = mux(io.s2, io.in1, io.in0) @[lab2task2.scala 20:27]
    node _io_o3_T_1 = mux(io.s2, io.in3, io.in2) @[lab2task2.scala 20:53]
    node _io_o3_T_2 = mux(io.s1, _io_o3_T, _io_o3_T_1) @[lab2task2.scala 20:17]
    io.o3 <= _io_o3_T_2 @[lab2task2.scala 20:10]
    node _io_o4_T = mux(io.s2, io.in2, io.in1) @[lab2task2.scala 21:28]
    node _io_o4_T_1 = mux(io.s2, io.in0, io.in3) @[lab2task2.scala 21:54]
    node _io_o4_T_2 = mux(io.s1, _io_o4_T, _io_o4_T_1) @[lab2task2.scala 21:18]
    io.o4 <= _io_o4_T_2 @[lab2task2.scala 21:11]
    
