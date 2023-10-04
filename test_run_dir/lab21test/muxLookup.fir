;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit muxLookup : 
  module muxLookup : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in0 : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, flip in3 : UInt<1>, flip in4 : UInt<1>, flip in5 : UInt<1>, flip in6 : UInt<1>, flip in7 : UInt<1>, flip sel : UInt<3>, out : UInt<1>}
    
    node _io_out_T = eq(UInt<1>("h01"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_1 = mux(_io_out_T, io.in1, io.in0) @[Mux.scala 80:57]
    node _io_out_T_2 = eq(UInt<2>("h02"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_3 = mux(_io_out_T_2, io.in2, _io_out_T_1) @[Mux.scala 80:57]
    node _io_out_T_4 = eq(UInt<2>("h03"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_5 = mux(_io_out_T_4, io.in3, _io_out_T_3) @[Mux.scala 80:57]
    node _io_out_T_6 = eq(UInt<3>("h04"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_7 = mux(_io_out_T_6, io.in4, _io_out_T_5) @[Mux.scala 80:57]
    node _io_out_T_8 = eq(UInt<3>("h05"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_9 = mux(_io_out_T_8, io.in5, _io_out_T_7) @[Mux.scala 80:57]
    node _io_out_T_10 = eq(UInt<3>("h06"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_11 = mux(_io_out_T_10, io.in6, _io_out_T_9) @[Mux.scala 80:57]
    node _io_out_T_12 = eq(UInt<3>("h07"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_13 = mux(_io_out_T_12, io.in7, _io_out_T_11) @[Mux.scala 80:57]
    io.out <= _io_out_T_13 @[lab21.scala 17:14]
    
