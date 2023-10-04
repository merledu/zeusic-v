circuit parallelshifter :
  module parallelshifter :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<3>
    input io_load_in_0 : UInt<1>
    input io_load_in_1 : UInt<1>
    input io_load_in_2 : UInt<1>
    input io_load : UInt<1>
    output io_out_0 : UInt<1>
    output io_out_1 : UInt<1>
    output io_out_2 : UInt<1>

    reg r1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), r1) @[lab6t3.scala 11:17]
    reg r2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), r2) @[lab6t3.scala 12:17]
    reg r3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), r3) @[lab6t3.scala 13:17]
    node _T = eq(io_load, UInt<1>("h1")) @[lab6t3.scala 14:19]
    node _r1_T = bits(io_in, 0, 0) @[lab6t3.scala 15:20]
    node _r2_T = bits(io_in, 1, 1) @[lab6t3.scala 16:20]
    node _r3_T = bits(io_in, 2, 2) @[lab6t3.scala 17:20]
    node _T_1 = eq(io_load, UInt<1>("h0")) @[lab6t3.scala 18:24]
    node _GEN_0 = mux(_T_1, UInt<1>("h0"), r1) @[lab6t3.scala 18:32 lab6t3.scala 19:12 lab6t3.scala 11:17]
    node _GEN_1 = mux(_T_1, UInt<1>("h0"), r2) @[lab6t3.scala 18:32 lab6t3.scala 20:12 lab6t3.scala 12:17]
    node _GEN_2 = mux(_T_1, UInt<1>("h0"), r3) @[lab6t3.scala 18:32 lab6t3.scala 21:12 lab6t3.scala 13:17]
    node _GEN_3 = mux(_T, _r1_T, _GEN_0) @[lab6t3.scala 14:27 lab6t3.scala 15:12]
    node _GEN_4 = mux(_T, _r2_T, _GEN_1) @[lab6t3.scala 14:27 lab6t3.scala 16:12]
    node _GEN_5 = mux(_T, _r3_T, _GEN_2) @[lab6t3.scala 14:27 lab6t3.scala 17:12]
    io_out_0 <= r1 @[lab6t3.scala 23:15]
    io_out_1 <= r2 @[lab6t3.scala 24:15]
    io_out_2 <= r3 @[lab6t3.scala 25:15]
    r1 <= _GEN_3
    r2 <= _GEN_4
    r3 <= _GEN_5
