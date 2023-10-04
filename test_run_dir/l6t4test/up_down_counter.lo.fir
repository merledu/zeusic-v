circuit up_down_counter :
  module up_down_counter :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<4>
    input io_up_down : UInt<1>

    reg counter : UInt<4>, clock with :
      reset => (UInt<1>("h0"), counter) @[lab6t4.scala 9:36]
    reg counter2 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), counter2) @[lab6t4.scala 10:36]
    node _T = eq(io_up_down, UInt<1>("h1")) @[lab6t4.scala 13:22]
    node _counter_T = add(counter, UInt<1>("h1")) @[lab6t4.scala 14:28]
    node _counter_T_1 = tail(_counter_T, 1) @[lab6t4.scala 14:28]
    node _T_1 = eq(io_up_down, UInt<1>("h0")) @[lab6t4.scala 15:27]
    node _counter2_T = sub(counter2, UInt<1>("h1")) @[lab6t4.scala 16:30]
    node _counter2_T_1 = tail(_counter2_T, 1) @[lab6t4.scala 16:30]
    node _GEN_0 = mux(_T_1, _counter2_T_1, counter2) @[lab6t4.scala 15:35 lab6t4.scala 16:18 lab6t4.scala 10:36]
    node _GEN_1 = mux(_T_1, counter, UInt<1>("h0")) @[lab6t4.scala 15:35 lab6t4.scala 9:36 lab6t4.scala 19:17]
    node _GEN_2 = mux(_T, _counter_T_1, _GEN_1) @[lab6t4.scala 13:30 lab6t4.scala 14:17]
    node _GEN_3 = mux(_T, counter2, _GEN_0) @[lab6t4.scala 13:30 lab6t4.scala 10:36]
    io_out <= io_up_down @[lab6t4.scala 21:12]
    counter <= mux(reset, UInt<4>("h0"), _GEN_2) @[lab6t4.scala 9:36 lab6t4.scala 9:36]
    counter2 <= mux(reset, UInt<4>("hf"), _GEN_3) @[lab6t4.scala 10:36 lab6t4.scala 10:36]
