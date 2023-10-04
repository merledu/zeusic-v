;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Mux_2to1 : 
  module Mux_2to1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in0 : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, flip in3 : UInt<1>, flip s1 : UInt<1>, flip s2 : UInt<1>, out : UInt<1>}
    
    node _m_T = mux(io.s2, io.in3, io.in2) @[lab2task2.scala 16:27]
    node _m_T_1 = mux(io.s2, io.in1, io.in0) @[lab2task2.scala 16:52]
    node m = mux(io.s1, _m_T, _m_T_1) @[lab2task2.scala 16:17]
    io.out <= m @[lab2task2.scala 17:14]
    
