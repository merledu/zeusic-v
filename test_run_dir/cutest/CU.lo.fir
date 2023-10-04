circuit CU :
  module CU :
    input clock : Clock
    input reset : UInt<1>
    input io_op_code : UInt<7>
    output io_memwrite : UInt<1>
    output io_branch : UInt<1>
    output io_memread : UInt<1>
    output io_regwrite : UInt<1>
    output io_memtoreg : UInt<1>
    output io_aluop : UInt<3>
    output io_op_a_sel : UInt<3>
    output io_op_b_sel : UInt<1>
    output io_ex_sel : UInt<3>
    output io_nxt_pc : UInt<4>

    node _T = eq(io_op_code, UInt<2>("h3")) @[control.scala 28:21]
    node _T_1 = eq(io_op_code, UInt<4>("hf")) @[control.scala 28:52]
    node _T_2 = or(_T, _T_1) @[control.scala 28:38]
    node _T_3 = eq(io_op_code, UInt<5>("h13")) @[control.scala 28:83]
    node _T_4 = or(_T_2, _T_3) @[control.scala 28:69]
    node _T_5 = eq(io_op_code, UInt<5>("h1b")) @[control.scala 28:114]
    node _T_6 = or(_T_4, _T_5) @[control.scala 28:100]
    node _T_7 = eq(io_op_code, UInt<7>("h73")) @[control.scala 28:146]
    node _T_8 = or(_T_6, _T_7) @[control.scala 28:132]
    node _T_9 = eq(io_op_code, UInt<7>("h67")) @[control.scala 28:177]
    node _T_10 = or(_T_8, _T_9) @[control.scala 28:163]
    node _T_11 = eq(io_op_code, UInt<6>("h33")) @[control.scala 40:27]
    node _T_12 = eq(io_op_code, UInt<6>("h3b")) @[control.scala 40:58]
    node _T_13 = or(_T_11, _T_12) @[control.scala 40:44]
    node _T_14 = eq(io_op_code, UInt<6>("h23")) @[control.scala 52:27]
    node _T_15 = eq(io_op_code, UInt<7>("h63")) @[control.scala 63:27]
    node _T_16 = eq(io_op_code, UInt<5>("h17")) @[control.scala 74:27]
    node _T_17 = eq(io_op_code, UInt<6>("h37")) @[control.scala 74:58]
    node _T_18 = or(_T_16, _T_17) @[control.scala 74:44]
    node _T_19 = eq(io_op_code, UInt<7>("h6f")) @[control.scala 86:27]
    node _GEN_0 = mux(_T_19, UInt<1>("h0"), UInt<1>("h0")) @[control.scala 86:44 control.scala 87:21 control.scala 18:17]
    node _GEN_1 = mux(_T_19, UInt<1>("h1"), UInt<1>("h0")) @[control.scala 86:44 control.scala 90:21 control.scala 21:17]
    node _GEN_2 = mux(_T_19, UInt<1>("h0"), UInt<1>("h1")) @[control.scala 86:44 control.scala 94:21 control.scala 25:17]
    node _GEN_3 = mux(_T_19, UInt<2>("h2"), UInt<1>("h0")) @[control.scala 86:44 control.scala 96:19 control.scala 27:15]
    node _GEN_4 = mux(_T_18, UInt<1>("h0"), _GEN_0) @[control.scala 74:75 control.scala 75:21]
    node _GEN_5 = mux(_T_18, UInt<1>("h1"), _GEN_1) @[control.scala 74:75 control.scala 78:21]
    node _GEN_6 = mux(_T_18, UInt<1>("h0"), _GEN_1) @[control.scala 74:75 control.scala 81:21]
    node _GEN_7 = mux(_T_18, UInt<1>("h1"), _GEN_2) @[control.scala 74:75 control.scala 82:21]
    node _GEN_8 = mux(_T_18, UInt<2>("h2"), _GEN_0) @[control.scala 74:75 control.scala 83:19]
    node _GEN_9 = mux(_T_18, UInt<1>("h0"), _GEN_3) @[control.scala 74:75 control.scala 84:19]
    node _GEN_10 = mux(_T_15, UInt<1>("h0"), _GEN_4) @[control.scala 63:44 control.scala 64:21]
    node _GEN_11 = mux(_T_15, UInt<1>("h1"), _GEN_4) @[control.scala 63:44 control.scala 65:19]
    node _GEN_12 = mux(_T_15, UInt<1>("h0"), _GEN_5) @[control.scala 63:44 control.scala 67:21]
    node _GEN_13 = mux(_T_15, UInt<1>("h1"), _GEN_5) @[control.scala 63:44 control.scala 69:18]
    node _GEN_14 = mux(_T_15, UInt<1>("h0"), _GEN_6) @[control.scala 63:44 control.scala 70:21]
    node _GEN_15 = mux(_T_15, UInt<1>("h0"), _GEN_7) @[control.scala 63:44 control.scala 71:21]
    node _GEN_16 = mux(_T_15, UInt<3>("h4"), _GEN_8) @[control.scala 63:44 control.scala 72:19]
    node _GEN_17 = mux(_T_15, UInt<1>("h1"), _GEN_9) @[control.scala 63:44 control.scala 73:19]
    node _GEN_18 = mux(_T_14, UInt<1>("h1"), _GEN_10) @[control.scala 52:44 control.scala 53:21]
    node _GEN_19 = mux(_T_14, UInt<1>("h0"), _GEN_11) @[control.scala 52:44 control.scala 54:19]
    node _GEN_20 = mux(_T_14, UInt<1>("h0"), _GEN_12) @[control.scala 52:44 control.scala 56:21]
    node _GEN_21 = mux(_T_14, UInt<1>("h0"), _GEN_10) @[control.scala 52:44 control.scala 57:21]
    node _GEN_22 = mux(_T_14, UInt<1>("h1"), _GEN_13) @[control.scala 52:44 control.scala 58:18]
    node _GEN_23 = mux(_T_14, UInt<1>("h0"), _GEN_14) @[control.scala 52:44 control.scala 59:21]
    node _GEN_24 = mux(_T_14, UInt<1>("h0"), _GEN_15) @[control.scala 52:44 control.scala 60:21]
    node _GEN_25 = mux(_T_14, UInt<1>("h1"), _GEN_16) @[control.scala 52:44 control.scala 61:19]
    node _GEN_26 = mux(_T_14, UInt<1>("h0"), _GEN_17) @[control.scala 52:44 control.scala 62:19]
    node _GEN_27 = mux(_T_13, UInt<1>("h0"), _GEN_18) @[control.scala 40:75 control.scala 41:21]
    node _GEN_28 = mux(_T_13, UInt<1>("h0"), _GEN_19) @[control.scala 40:75 control.scala 42:19]
    node _GEN_29 = mux(_T_13, UInt<1>("h1"), _GEN_20) @[control.scala 40:75 control.scala 44:21]
    node _GEN_30 = mux(_T_13, UInt<1>("h0"), _GEN_21) @[control.scala 40:75 control.scala 45:21]
    node _GEN_31 = mux(_T_13, UInt<1>("h1"), _GEN_22) @[control.scala 40:75 control.scala 46:18]
    node _GEN_32 = mux(_T_13, UInt<1>("h0"), _GEN_23) @[control.scala 40:75 control.scala 47:21]
    node _GEN_33 = mux(_T_13, UInt<1>("h0"), _GEN_24) @[control.scala 40:75 control.scala 48:21]
    node _GEN_34 = mux(_T_13, UInt<1>("h0"), _GEN_25) @[control.scala 40:75 control.scala 49:19]
    node _GEN_35 = mux(_T_13, UInt<1>("h0"), _GEN_26) @[control.scala 40:75 control.scala 50:19]
    node _GEN_36 = mux(_T_10, UInt<1>("h0"), _GEN_27) @[control.scala 28:195 control.scala 29:21]
    node _GEN_37 = mux(_T_10, UInt<1>("h0"), _GEN_28) @[control.scala 28:195 control.scala 30:19]
    node _GEN_38 = mux(_T_10, UInt<1>("h1"), _GEN_29) @[control.scala 28:195 control.scala 32:21]
    node _GEN_39 = mux(_T_10, UInt<1>("h0"), _GEN_30) @[control.scala 28:195 control.scala 33:21]
    node _GEN_40 = mux(_T_10, UInt<1>("h1"), _GEN_31) @[control.scala 28:195 control.scala 34:18]
    node _GEN_41 = mux(_T_10, UInt<1>("h0"), _GEN_32) @[control.scala 28:195 control.scala 35:21]
    node _GEN_42 = mux(_T_10, UInt<1>("h1"), _GEN_33) @[control.scala 28:195 control.scala 36:21]
    node _GEN_43 = mux(_T_10, UInt<1>("h0"), _GEN_34) @[control.scala 28:195 control.scala 37:19]
    node _GEN_44 = mux(_T_10, UInt<1>("h0"), _GEN_35) @[control.scala 28:195 control.scala 38:19]
    io_memwrite <= _GEN_36
    io_branch <= _GEN_37
    io_memread <= _GEN_36
    io_regwrite <= _GEN_38
    io_memtoreg <= _GEN_39
    io_aluop <= _GEN_40
    io_op_a_sel <= _GEN_41
    io_op_b_sel <= _GEN_42
    io_ex_sel <= _GEN_43
    io_nxt_pc <= _GEN_44
