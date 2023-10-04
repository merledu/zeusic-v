circuit Mux2 :
  module Mux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_in0 : UInt<1>
    input io_in1 : UInt<1>
    input io_in2 : UInt<1>
    input io_in3 : UInt<1>
    input io_s1 : UInt<1>
    input io_s2 : UInt<1>
    output io_o1 : UInt<1>
    output io_o2 : UInt<1>
    output io_o3 : UInt<1>
    output io_o4 : UInt<1>

    node _io_o1_T = mux(io_s2, io_in3, io_in2) @[lab2task2.scala 18:28]
    node _io_o1_T_1 = mux(io_s2, io_in1, io_in0) @[lab2task2.scala 18:53]
    node _io_o1_T_2 = mux(io_s1, _io_o1_T, _io_o1_T_1) @[lab2task2.scala 18:18]
    node _io_o2_T = mux(io_s2, io_in0, io_in3) @[lab2task2.scala 19:28]
    node _io_o2_T_1 = mux(io_s2, io_in2, io_in1) @[lab2task2.scala 19:54]
    node _io_o2_T_2 = mux(io_s1, _io_o2_T, _io_o2_T_1) @[lab2task2.scala 19:18]
    node _io_o3_T = mux(io_s2, io_in1, io_in0) @[lab2task2.scala 20:27]
    node _io_o3_T_1 = mux(io_s2, io_in3, io_in2) @[lab2task2.scala 20:53]
    node _io_o3_T_2 = mux(io_s1, _io_o3_T, _io_o3_T_1) @[lab2task2.scala 20:17]
    node _io_o4_T = mux(io_s2, io_in2, io_in1) @[lab2task2.scala 21:28]
    node _io_o4_T_1 = mux(io_s2, io_in0, io_in3) @[lab2task2.scala 21:54]
    node _io_o4_T_2 = mux(io_s1, _io_o4_T, _io_o4_T_1) @[lab2task2.scala 21:18]
    io_o1 <= _io_o1_T_2 @[lab2task2.scala 18:11]
    io_o2 <= _io_o2_T_2 @[lab2task2.scala 19:11]
    io_o3 <= _io_o3_T_2 @[lab2task2.scala 20:10]
    io_o4 <= _io_o4_T_2 @[lab2task2.scala 21:11]
