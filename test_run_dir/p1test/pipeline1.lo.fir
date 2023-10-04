circuit pipeline1 :
  module pipeline1 :
    input clock : Clock
    input reset : UInt<1>
    input io_pc_in : SInt<32>
    input io_pc4_in : SInt<32>
    input io_inst_in : SInt<32>
    output io_pc_out : SInt<32>
    output io_pc4_out : SInt<32>
    output io_inst_out : SInt<32>

    reg reg_pc : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_pc) @[pipeline1.scala 13:25]
    reg reg_pc4 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_pc4) @[pipeline1.scala 16:26]
    reg reg_inst : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_inst) @[pipeline1.scala 19:27]
    io_pc_out <= reg_pc @[pipeline1.scala 15:15]
    io_pc4_out <= reg_pc4 @[pipeline1.scala 18:16]
    io_inst_out <= reg_inst @[pipeline1.scala 21:17]
    reg_pc <= mux(reset, asSInt(UInt<32>("h0")), io_pc_in) @[pipeline1.scala 13:25 pipeline1.scala 13:25 pipeline1.scala 14:12]
    reg_pc4 <= mux(reset, asSInt(UInt<32>("h0")), io_pc4_in) @[pipeline1.scala 16:26 pipeline1.scala 16:26 pipeline1.scala 17:13]
    reg_inst <= mux(reset, asSInt(UInt<32>("h0")), io_inst_in) @[pipeline1.scala 19:27 pipeline1.scala 19:27 pipeline1.scala 20:14]
