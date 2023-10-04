;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab3t3 : 
  module lab3t3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<2>, out : {valid : UInt<1>, bits : UInt<4>}}
    
    node _T = eq(io.in, UInt<1>("h00")) @[lab3t3.scala 9:17]
    when _T : @[lab3t3.scala 9:29]
      io.out.bits <= UInt<1>("h00") @[lab3t3.scala 10:25]
      skip @[lab3t3.scala 9:29]
    else : @[lab3t3.scala 11:40]
      node _T_1 = eq(io.in, UInt<1>("h01")) @[lab3t3.scala 11:28]
      when _T_1 : @[lab3t3.scala 11:40]
        io.out.bits <= UInt<1>("h01") @[lab3t3.scala 12:25]
        skip @[lab3t3.scala 11:40]
      else : @[lab3t3.scala 13:37]
        node _T_2 = eq(io.in, UInt<2>("h02")) @[lab3t3.scala 13:26]
        when _T_2 : @[lab3t3.scala 13:37]
          io.out.bits <= UInt<2>("h02") @[lab3t3.scala 14:25]
          skip @[lab3t3.scala 13:37]
        else : @[lab3t3.scala 15:38]
          node _T_3 = eq(io.in, UInt<2>("h03")) @[lab3t3.scala 15:26]
          when _T_3 : @[lab3t3.scala 15:38]
            io.out.bits <= UInt<2>("h03") @[lab3t3.scala 16:25]
            skip @[lab3t3.scala 15:38]
          else : @[lab3t3.scala 17:20]
            io.out.bits <= UInt<1>("h00") @[lab3t3.scala 18:25]
            skip @[lab3t3.scala 17:20]
    io.out.valid <= UInt<1>("h00") @[lab3t3.scala 20:19]
    
