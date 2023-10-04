circuit Mux_8to1 :
  module Mux_8to1 :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<8>
    input io_s0 : UInt<1>
    input io_s1 : UInt<1>
    input io_s2 : UInt<1>
    output io_out : UInt<1>

    node _Mux4_to_1_a_T = bits(io_in, 3, 3) @[lab2.scala 13:63]
    node _Mux4_to_1_a_T_1 = bits(io_in, 2, 2) @[lab2.scala 13:77]
    node _Mux4_to_1_a_T_2 = mux(io_s0, _Mux4_to_1_a_T, _Mux4_to_1_a_T_1) @[lab2.scala 13:43]
    node _Mux4_to_1_a_T_3 = bits(io_in, 1, 1) @[lab2.scala 14:29]
    node _Mux4_to_1_a_T_4 = bits(io_in, 0, 0) @[lab2.scala 14:43]
    node _Mux4_to_1_a_T_5 = mux(io_s0, _Mux4_to_1_a_T_3, _Mux4_to_1_a_T_4) @[lab2.scala 14:9]
    node Mux4_to_1_a = mux(io_s1, _Mux4_to_1_a_T_2, _Mux4_to_1_a_T_5) @[lab2.scala 13:27]
    node _Mux4_to_1_b_T = bits(io_in, 7, 7) @[lab2.scala 15:63]
    node _Mux4_to_1_b_T_1 = bits(io_in, 6, 6) @[lab2.scala 15:77]
    node _Mux4_to_1_b_T_2 = mux(io_s0, _Mux4_to_1_b_T, _Mux4_to_1_b_T_1) @[lab2.scala 15:43]
    node _Mux4_to_1_b_T_3 = bits(io_in, 5, 5) @[lab2.scala 16:29]
    node _Mux4_to_1_b_T_4 = bits(io_in, 4, 4) @[lab2.scala 16:43]
    node _Mux4_to_1_b_T_5 = mux(io_s0, _Mux4_to_1_b_T_3, _Mux4_to_1_b_T_4) @[lab2.scala 16:9]
    node Mux4_to_1_b = mux(io_s1, _Mux4_to_1_b_T_2, _Mux4_to_1_b_T_5) @[lab2.scala 15:27]
    node Mux2_to_1 = mux(io_s2, Mux4_to_1_b, Mux4_to_1_a) @[lab2.scala 17:25]
    io_out <= Mux2_to_1 @[lab2.scala 19:14]
