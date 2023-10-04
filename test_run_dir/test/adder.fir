;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit adder : 
  module adder : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in_a : UInt<4>, flip in_b : UInt<4>, out : UInt<4>}
    
    node _io_out_T = add(io.in_a, io.in_b) @[lab5t1.scala 9:23]
    node _io_out_T_1 = tail(_io_out_T, 1) @[lab5t1.scala 9:23]
    io.out <= _io_out_T_1 @[lab5t1.scala 9:12]
    
