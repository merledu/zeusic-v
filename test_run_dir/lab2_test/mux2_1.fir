;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit mux2_1 : 
  module mux2_1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in1 : UInt<32>, flip in2 : UInt<32>, flip s : UInt<1>, out : UInt}
    
    node _T = eq(io.s, UInt<1>("h00")) @[lab2.scala 11:15]
    when _T : @[lab2.scala 11:22]
      io.out <= io.in1 @[lab2.scala 12:16]
      skip @[lab2.scala 11:22]
    else : @[lab2.scala 13:16]
      io.out <= io.in2 @[lab2.scala 14:16]
      skip @[lab2.scala 13:16]
    
