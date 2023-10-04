circuit muxLookup :
  module muxLookup :
    input clock : Clock
    input reset : UInt<1>
    input io_in0 : UInt<1>
    input io_in1 : UInt<1>
    input io_in2 : UInt<1>
    input io_in3 : UInt<1>
    input io_in4 : UInt<1>
    input io_in5 : UInt<1>
    input io_in6 : UInt<1>
    input io_in7 : UInt<1>
    input io_sel : UInt<3>
    output io_out : UInt<1>

    node _io_out_T = eq(UInt<1>("h1"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_1 = mux(_io_out_T, io_in1, io_in0) @[Mux.scala 80:57]
    node _io_out_T_2 = eq(UInt<2>("h2"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_3 = mux(_io_out_T_2, io_in2, _io_out_T_1) @[Mux.scala 80:57]
    node _io_out_T_4 = eq(UInt<2>("h3"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_5 = mux(_io_out_T_4, io_in3, _io_out_T_3) @[Mux.scala 80:57]
    node _io_out_T_6 = eq(UInt<3>("h4"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_7 = mux(_io_out_T_6, io_in4, _io_out_T_5) @[Mux.scala 80:57]
    node _io_out_T_8 = eq(UInt<3>("h5"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_9 = mux(_io_out_T_8, io_in5, _io_out_T_7) @[Mux.scala 80:57]
    node _io_out_T_10 = eq(UInt<3>("h6"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_11 = mux(_io_out_T_10, io_in6, _io_out_T_9) @[Mux.scala 80:57]
    node _io_out_T_12 = eq(UInt<3>("h7"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_13 = mux(_io_out_T_12, io_in7, _io_out_T_11) @[Mux.scala 80:57]
    io_out <= _io_out_T_13 @[lab21.scala 17:18]
