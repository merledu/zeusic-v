circuit ALUIO :
  module ALUIO :
    input clock : Clock
    input reset : UInt<1>
    input io_in_A : UInt<32>
    input io_in_B : UInt<32>
    input io_funct3 : UInt<3>
    input io_branch : UInt<1>
    output io_out : UInt<1>

    node _T = eq(io_funct3, UInt<3>("h0")) @[lab4t1.scala 25:21]
    node _T_1 = eq(io_branch, UInt<1>("h1")) @[lab4t1.scala 25:46]
    node _T_2 = and(_T, _T_1) @[lab4t1.scala 25:33]
    node _T_3 = eq(io_in_A, io_in_B) @[lab4t1.scala 25:65]
    node _T_4 = and(_T_2, _T_3) @[lab4t1.scala 25:54]
    node _T_5 = eq(io_funct3, UInt<3>("h1")) @[lab4t1.scala 28:27]
    node _T_6 = eq(io_branch, UInt<1>("h1")) @[lab4t1.scala 28:52]
    node _T_7 = and(_T_5, _T_6) @[lab4t1.scala 28:39]
    node _T_8 = neq(io_in_A, io_in_B) @[lab4t1.scala 28:71]
    node _T_9 = and(_T_7, _T_8) @[lab4t1.scala 28:60]
    node _T_10 = eq(io_funct3, UInt<3>("h4")) @[lab4t1.scala 30:27]
    node _T_11 = eq(io_branch, UInt<1>("h1")) @[lab4t1.scala 30:52]
    node _T_12 = and(_T_10, _T_11) @[lab4t1.scala 30:39]
    node _T_13 = asSInt(io_in_A) @[lab4t1.scala 30:71]
    node _T_14 = asSInt(io_in_B) @[lab4t1.scala 30:88]
    node _T_15 = lt(_T_13, _T_14) @[lab4t1.scala 30:78]
    node _T_16 = and(_T_12, _T_15) @[lab4t1.scala 30:60]
    node _T_17 = eq(io_funct3, UInt<3>("h6")) @[lab4t1.scala 32:26]
    node _T_18 = eq(io_branch, UInt<1>("h1")) @[lab4t1.scala 32:52]
    node _T_19 = and(_T_17, _T_18) @[lab4t1.scala 32:39]
    node _T_20 = lt(io_in_A, io_in_B) @[lab4t1.scala 32:77]
    node _T_21 = and(_T_19, _T_20) @[lab4t1.scala 32:60]
    node _T_22 = eq(io_funct3, UInt<3>("h7")) @[lab4t1.scala 34:27]
    node _T_23 = eq(io_branch, UInt<1>("h1")) @[lab4t1.scala 34:53]
    node _T_24 = and(_T_22, _T_23) @[lab4t1.scala 34:40]
    node _T_25 = gt(io_in_A, io_in_B) @[lab4t1.scala 34:72]
    node _T_26 = and(_T_24, _T_25) @[lab4t1.scala 34:61]
    node _GEN_0 = mux(_T_26, UInt<1>("h1"), UInt<1>("h0")) @[lab4t1.scala 34:83 lab4t1.scala 35:16 lab4t1.scala 37:16]
    node _GEN_1 = mux(_T_21, UInt<1>("h1"), _GEN_0) @[lab4t1.scala 32:95 lab4t1.scala 33:16]
    node _GEN_2 = mux(_T_16, UInt<1>("h1"), _GEN_1) @[lab4t1.scala 30:96 lab4t1.scala 31:16]
    node _GEN_3 = mux(_T_9, UInt<1>("h1"), _GEN_2) @[lab4t1.scala 28:84 lab4t1.scala 29:16]
    node _GEN_4 = mux(_T_4, UInt<1>("h1"), _GEN_3) @[lab4t1.scala 25:78 lab4t1.scala 26:16]
    io_out <= _GEN_4
