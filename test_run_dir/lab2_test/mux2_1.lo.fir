circuit mux2_1 :
  module mux2_1 :
    input clock : Clock
    input reset : UInt<1>
    input io_in1 : UInt<32>
    input io_in2 : UInt<32>
    input io_s : UInt<1>
    output io_out : UInt<32>

    node _T = eq(io_s, UInt<1>("h0")) @[lab2.scala 11:15]
    node _GEN_0 = mux(_T, io_in1, io_in2) @[lab2.scala 11:22 lab2.scala 12:16 lab2.scala 14:16]
    io_out <= _GEN_0
