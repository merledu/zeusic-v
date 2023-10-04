circuit lab3t3 :
  module lab3t3 :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<2>
    output io_out_valid : UInt<1>
    output io_out_bits : UInt<4>

    node _T = eq(io_in, UInt<1>("h0")) @[lab3t3.scala 9:17]
    node _T_1 = eq(io_in, UInt<1>("h1")) @[lab3t3.scala 11:28]
    node _T_2 = eq(io_in, UInt<2>("h2")) @[lab3t3.scala 13:26]
    node _T_3 = eq(io_in, UInt<2>("h3")) @[lab3t3.scala 15:26]
    node _GEN_0 = mux(_T_3, UInt<2>("h3"), UInt<1>("h0")) @[lab3t3.scala 15:38 lab3t3.scala 16:25 lab3t3.scala 18:25]
    node _GEN_1 = mux(_T_2, UInt<2>("h2"), _GEN_0) @[lab3t3.scala 13:37 lab3t3.scala 14:25]
    node _GEN_2 = mux(_T_1, UInt<1>("h1"), _GEN_1) @[lab3t3.scala 11:40 lab3t3.scala 12:25]
    node _GEN_3 = mux(_T, UInt<1>("h0"), _GEN_2) @[lab3t3.scala 9:29 lab3t3.scala 10:25]
    io_out_valid <= UInt<1>("h0") @[lab3t3.scala 20:19]
    io_out_bits <= _GEN_3
