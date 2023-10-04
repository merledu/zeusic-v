;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit pipeline1 : 
  module pipeline1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip pc_in : SInt<32>, flip pc4_in : SInt<32>, flip inst_in : SInt<32>, pc_out : SInt<32>, pc4_out : SInt<32>, inst_out : SInt<32>}
    
    reg reg_pc : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[pipeline1.scala 13:25]
    reg_pc <= io.pc_in @[pipeline1.scala 14:12]
    io.pc_out <= reg_pc @[pipeline1.scala 15:15]
    reg reg_pc4 : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[pipeline1.scala 16:26]
    reg_pc4 <= io.pc4_in @[pipeline1.scala 17:13]
    io.pc4_out <= reg_pc4 @[pipeline1.scala 18:16]
    reg reg_inst : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[pipeline1.scala 19:27]
    reg_inst <= io.inst_in @[pipeline1.scala 20:14]
    io.inst_out <= reg_inst @[pipeline1.scala 21:17]
    
