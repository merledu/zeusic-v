circuit ALU :
  module ALU :
    input clock : Clock
    input reset : UInt<1>
    input io_in_A : UInt<32>
    input io_in_B : UInt<32>
    input io_alu_Op : UInt<4>
    output io_out : UInt<32>

    node _out_T = eq(io_alu_Op, UInt<4>("h0")) @[lab4t3.scala 39:19]
    node _out_T_1 = add(io_in_A, io_in_B) @[lab4t3.scala 39:42]
    node _out_T_2 = tail(_out_T_1, 1) @[lab4t3.scala 39:42]
    node _out_T_3 = eq(io_alu_Op, UInt<4>("h1")) @[lab4t3.scala 40:19]
    node _out_T_4 = sub(io_in_A, io_in_B) @[lab4t3.scala 40:40]
    node _out_T_5 = tail(_out_T_4, 1) @[lab4t3.scala 40:40]
    node _out_T_6 = eq(io_alu_Op, UInt<4>("h7")) @[lab4t3.scala 41:19]
    node _out_T_7 = lt(io_in_A, io_in_B) @[lab4t3.scala 41:49]
    node _out_T_8 = eq(io_alu_Op, UInt<4>("h5")) @[lab4t3.scala 42:19]
    node _out_T_9 = asSInt(io_in_A) @[lab4t3.scala 42:41]
    node _out_T_10 = asSInt(io_in_B) @[lab4t3.scala 42:58]
    node _out_T_11 = lt(_out_T_9, _out_T_10) @[lab4t3.scala 42:48]
    node _out_T_12 = eq(io_alu_Op, UInt<4>("h8")) @[lab4t3.scala 43:19]
    node _out_T_13 = bits(io_in_B, 3, 0) @[lab4t3.scala 43:52]
    node _out_T_14 = dshr(io_in_A, _out_T_13) @[lab4t3.scala 43:42]
    node _out_T_15 = eq(io_alu_Op, UInt<4>("h6")) @[lab4t3.scala 44:19]
    node _out_T_16 = bits(io_in_B, 3, 0) @[lab4t3.scala 44:58]
    node _out_T_17 = dshl(io_in_A, _out_T_16) @[lab4t3.scala 44:48]
    node _out_T_18 = eq(io_alu_Op, UInt<4>("h2")) @[lab4t3.scala 45:19]
    node _out_T_19 = and(io_in_A, io_in_B) @[lab4t3.scala 45:41]
    node _out_T_20 = eq(io_alu_Op, UInt<4>("h3")) @[lab4t3.scala 46:19]
    node _out_T_21 = or(io_in_A, io_in_B) @[lab4t3.scala 46:40]
    node _out_T_22 = eq(io_alu_Op, UInt<4>("h4")) @[lab4t3.scala 47:19]
    node _out_T_23 = xor(io_in_A, io_in_B) @[lab4t3.scala 47:41]
    node _out_T_24 = eq(io_alu_Op, UInt<4>("h9")) @[lab4t3.scala 48:19]
    node _out_T_25 = eq(io_alu_Op, UInt<4>("ha")) @[lab4t3.scala 49:19]
    node _out_T_26 = mux(_out_T_25, io_in_B, UInt<1>("h0")) @[lab4t3.scala 49:8]
    node _out_T_27 = mux(_out_T_24, io_in_A, _out_T_26) @[lab4t3.scala 48:8]
    node _out_T_28 = mux(_out_T_22, _out_T_23, _out_T_27) @[lab4t3.scala 47:8]
    node _out_T_29 = mux(_out_T_20, _out_T_21, _out_T_28) @[lab4t3.scala 46:8]
    node _out_T_30 = mux(_out_T_18, _out_T_19, _out_T_29) @[lab4t3.scala 45:8]
    node _out_T_31 = mux(_out_T_15, _out_T_17, _out_T_30) @[lab4t3.scala 44:8]
    node _out_T_32 = mux(_out_T_12, _out_T_14, _out_T_31) @[lab4t3.scala 43:8]
    node _out_T_33 = mux(_out_T_8, _out_T_11, _out_T_32) @[lab4t3.scala 42:8]
    node _out_T_34 = mux(_out_T_6, _out_T_7, _out_T_33) @[lab4t3.scala 41:8]
    node _out_T_35 = mux(_out_T_3, _out_T_5, _out_T_34) @[lab4t3.scala 40:8]
    node out = mux(_out_T, _out_T_2, _out_T_35) @[lab4t3.scala 39:8]
    io_out <= bits(out, 31, 0) @[lab4t3.scala 50:12]
