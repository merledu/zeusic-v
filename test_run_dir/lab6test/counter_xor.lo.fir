circuit counter_xor :
  module counter_xor :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<1>

    reg counter : UInt<4>, clock with :
      reset => (UInt<1>("h0"), counter) @[lab6t2.scala 7:36]
    node _T = dshr(counter, UInt<2>("h3")) @[lab6t2.scala 10:19]
    node _T_1 = bits(_T, 0, 0) @[lab6t2.scala 10:19]
    node _T_2 = xor(_T_1, UInt<1>("h1")) @[lab6t2.scala 10:25]
    node _T_3 = eq(_T_2, UInt<1>("h1")) @[lab6t2.scala 10:29]
    node _counter_T = add(counter, UInt<1>("h1")) @[lab6t2.scala 11:28]
    node _counter_T_1 = tail(_counter_T, 1) @[lab6t2.scala 11:28]
    node _GEN_0 = mux(_T_3, _counter_T_1, UInt<1>("h0")) @[lab6t2.scala 10:36 lab6t2.scala 11:17 lab6t2.scala 14:17]
    node _io_out_T = dshr(counter, UInt<3>("h4")) @[lab6t2.scala 17:22]
    node _io_out_T_1 = bits(_io_out_T, 0, 0) @[lab6t2.scala 17:22]
    io_out <= _io_out_T_1 @[lab6t2.scala 17:12]
    counter <= mux(reset, UInt<4>("h0"), _GEN_0) @[lab6t2.scala 7:36 lab6t2.scala 7:36]
