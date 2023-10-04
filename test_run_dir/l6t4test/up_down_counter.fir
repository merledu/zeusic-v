;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit up_down_counter : 
  module up_down_counter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<4>, flip up_down : UInt<1>}
    
    reg counter : UInt<4>, clock with : (reset => (reset, UInt<4>("h00"))) @[lab6t4.scala 9:36]
    reg counter2 : UInt<4>, clock with : (reset => (reset, UInt<4>("h0f"))) @[lab6t4.scala 10:36]
    node _T = eq(io.up_down, UInt<1>("h01")) @[lab6t4.scala 13:22]
    when _T : @[lab6t4.scala 13:30]
      node _counter_T = add(counter, UInt<1>("h01")) @[lab6t4.scala 14:28]
      node _counter_T_1 = tail(_counter_T, 1) @[lab6t4.scala 14:28]
      counter <= _counter_T_1 @[lab6t4.scala 14:17]
      skip @[lab6t4.scala 13:30]
    else : @[lab6t4.scala 15:35]
      node _T_1 = eq(io.up_down, UInt<1>("h00")) @[lab6t4.scala 15:27]
      when _T_1 : @[lab6t4.scala 15:35]
        node _counter2_T = sub(counter2, UInt<1>("h01")) @[lab6t4.scala 16:30]
        node _counter2_T_1 = tail(_counter2_T, 1) @[lab6t4.scala 16:30]
        counter2 <= _counter2_T_1 @[lab6t4.scala 16:18]
        skip @[lab6t4.scala 15:35]
      else : @[lab6t4.scala 18:16]
        counter <= UInt<1>("h00") @[lab6t4.scala 19:17]
        skip @[lab6t4.scala 18:16]
    io.out <= io.up_down @[lab6t4.scala 21:12]
    
