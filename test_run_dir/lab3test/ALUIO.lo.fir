circuit ALUIO :
  module ALUIO :
    input clock : Clock
    input reset : UInt<1>
    input io_in_A : UInt<32>
    input io_in_B : UInt<32>
    input io_funct3 : UInt<3>
    input io_branch : UInt<1>
    output io_out : UInt<1>

    node _T = eq(io_funct3, UInt<3>("h0")) @[lab3t.scala 23:21]
    node _T_1 = eq(io_branch, UInt<1>("h1")) @[lab3t.scala 23:46]
    node _T_2 = and(_T, _T_1) @[lab3t.scala 23:33]
    node _T_3 = eq(io_in_A, io_in_B) @[lab3t.scala 23:65]
    node _T_4 = and(_T_2, _T_3) @[lab3t.scala 23:54]
    node _T_5 = eq(io_funct3, UInt<3>("h1")) @[lab3t.scala 26:27]
    node _T_6 = eq(io_branch, UInt<1>("h1")) @[lab3t.scala 26:52]
    node _T_7 = and(_T_5, _T_6) @[lab3t.scala 26:39]
    node _T_8 = neq(io_in_A, io_in_B) @[lab3t.scala 26:71]
    node _T_9 = and(_T_7, _T_8) @[lab3t.scala 26:60]
    node _T_10 = eq(io_funct3, UInt<3>("h4")) @[lab3t.scala 28:27]
    node _T_11 = eq(io_branch, UInt<1>("h1")) @[lab3t.scala 28:52]
    node _T_12 = and(_T_10, _T_11) @[lab3t.scala 28:39]
    node _T_13 = lt(io_in_A, io_in_B) @[lab3t.scala 28:71]
    node _T_14 = and(_T_12, _T_13) @[lab3t.scala 28:60]
    node _T_15 = eq(io_funct3, UInt<3>("h6")) @[lab3t.scala 30:26]
    node _T_16 = eq(io_branch, UInt<1>("h1")) @[lab3t.scala 30:52]
    node _T_17 = and(_T_15, _T_16) @[lab3t.scala 30:39]
    node _T_18 = lt(io_in_A, io_in_B) @[lab3t.scala 30:71]
    node _T_19 = and(_T_17, _T_18) @[lab3t.scala 30:60]
    node _T_20 = eq(io_funct3, UInt<3>("h7")) @[lab3t.scala 32:27]
    node _T_21 = eq(io_branch, UInt<1>("h1")) @[lab3t.scala 32:53]
    node _T_22 = and(_T_20, _T_21) @[lab3t.scala 32:40]
    node _T_23 = gt(io_in_A, io_in_B) @[lab3t.scala 32:72]
    node _T_24 = and(_T_22, _T_23) @[lab3t.scala 32:61]
    node _GEN_0 = mux(_T_24, UInt<1>("h1"), UInt<1>("h0")) @[lab3t.scala 32:83 lab3t.scala 33:16 lab3t.scala 35:16]
    node _GEN_1 = mux(_T_19, UInt<1>("h1"), _GEN_0) @[lab3t.scala 30:82 lab3t.scala 31:16]
    node _GEN_2 = mux(_T_14, UInt<1>("h1"), _GEN_1) @[lab3t.scala 28:82 lab3t.scala 29:16]
    node _GEN_3 = mux(_T_9, UInt<1>("h1"), _GEN_2) @[lab3t.scala 26:84 lab3t.scala 27:16]
    node _GEN_4 = mux(_T_4, UInt<1>("h1"), _GEN_3) @[lab3t.scala 23:78 lab3t.scala 24:16]
    io_out <= _GEN_4
