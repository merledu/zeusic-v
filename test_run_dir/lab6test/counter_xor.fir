;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit counter_xor : 
  module counter_xor : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<1>}
    
    reg counter : UInt<4>, clock with : (reset => (reset, UInt<4>("h00"))) @[lab6t2.scala 7:36]
    node _T = dshr(counter, UInt<2>("h03")) @[lab6t2.scala 10:19]
    node _T_1 = bits(_T, 0, 0) @[lab6t2.scala 10:19]
    node _T_2 = xor(_T_1, UInt<1>("h01")) @[lab6t2.scala 10:25]
    node _T_3 = eq(_T_2, UInt<1>("h01")) @[lab6t2.scala 10:29]
    when _T_3 : @[lab6t2.scala 10:36]
      node _counter_T = add(counter, UInt<1>("h01")) @[lab6t2.scala 11:28]
      node _counter_T_1 = tail(_counter_T, 1) @[lab6t2.scala 11:28]
      counter <= _counter_T_1 @[lab6t2.scala 11:17]
      skip @[lab6t2.scala 10:36]
    else : @[lab6t2.scala 13:16]
      counter <= UInt<1>("h00") @[lab6t2.scala 14:17]
      skip @[lab6t2.scala 13:16]
    node _io_out_T = dshr(counter, UInt<3>("h04")) @[lab6t2.scala 17:22]
    node _io_out_T_1 = bits(_io_out_T, 0, 0) @[lab6t2.scala 17:22]
    io.out <= _io_out_T_1 @[lab6t2.scala 17:12]
    
