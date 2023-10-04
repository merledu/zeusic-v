circuit Mux_2to1 :
  module Mux_2to1 :
    input clock : Clock
    input reset : UInt<1>
    input io_in0 : UInt<1>
    input io_in1 : UInt<1>
    input io_in2 : UInt<1>
    input io_in3 : UInt<1>
    input io_s1 : UInt<1>
    input io_s2 : UInt<1>
    output io_out : UInt<1>

    node _m_T = mux(io_s2, io_in3, io_in2) @[lab2task2.scala 16:27]
    node _m_T_1 = mux(io_s2, io_in1, io_in0) @[lab2task2.scala 16:52]
    node m = mux(io_s1, _m_T, _m_T_1) @[lab2task2.scala 16:17]
    io_out <= m @[lab2task2.scala 17:14]
