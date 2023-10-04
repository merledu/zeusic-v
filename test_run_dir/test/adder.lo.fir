circuit adder :
  module adder :
    input clock : Clock
    input reset : UInt<1>
    input io_in_a : UInt<4>
    input io_in_b : UInt<4>
    output io_out : UInt<4>

    node _io_out_T = add(io_in_a, io_in_b) @[lab5t1.scala 9:23]
    node _io_out_T_1 = tail(_io_out_T, 1) @[lab5t1.scala 9:23]
    io_out <= _io_out_T_1 @[lab5t1.scala 9:12]
