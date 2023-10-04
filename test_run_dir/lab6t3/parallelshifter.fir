;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit parallelshifter : 
  module parallelshifter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<3>, flip load_in : UInt<1>[3], flip load : UInt<1>, out : UInt<1>[3]}
    
    reg r1 : UInt<1>, clock @[lab6t3.scala 11:17]
    reg r2 : UInt<1>, clock @[lab6t3.scala 12:17]
    reg r3 : UInt<1>, clock @[lab6t3.scala 13:17]
    node _T = eq(io.load, UInt<1>("h01")) @[lab6t3.scala 14:19]
    when _T : @[lab6t3.scala 14:27]
      node _r1_T = bits(io.in, 0, 0) @[lab6t3.scala 15:20]
      r1 <= _r1_T @[lab6t3.scala 15:12]
      node _r2_T = bits(io.in, 1, 1) @[lab6t3.scala 16:20]
      r2 <= _r2_T @[lab6t3.scala 16:12]
      node _r3_T = bits(io.in, 2, 2) @[lab6t3.scala 17:20]
      r3 <= _r3_T @[lab6t3.scala 17:12]
      skip @[lab6t3.scala 14:27]
    else : @[lab6t3.scala 18:32]
      node _T_1 = eq(io.load, UInt<1>("h00")) @[lab6t3.scala 18:24]
      when _T_1 : @[lab6t3.scala 18:32]
        r1 <= UInt<1>("h00") @[lab6t3.scala 19:12]
        r2 <= UInt<1>("h00") @[lab6t3.scala 20:12]
        r3 <= UInt<1>("h00") @[lab6t3.scala 21:12]
        skip @[lab6t3.scala 18:32]
    io.out[0] <= r1 @[lab6t3.scala 23:15]
    io.out[1] <= r2 @[lab6t3.scala 24:15]
    io.out[2] <= r3 @[lab6t3.scala 25:15]
    
