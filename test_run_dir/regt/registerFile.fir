;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit registerFile : 
  module registerFile : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip rs1 : UInt<5>, flip rs2 : UInt<5>, flip rd : UInt<5>, flip write_data : UInt<32>, flip wen : UInt<1>, read1 : UInt<32>, read2 : UInt<32>}
    
    reg regs : UInt<32>[32], clock @[register.scala 15:20]
    node _io_read1_T = orr(io.rs1) @[register.scala 17:37]
    node _io_read1_T_1 = mux(_io_read1_T, regs[io.rs1], UInt<1>("h00")) @[register.scala 17:23]
    io.read1 <= _io_read1_T_1 @[register.scala 17:16]
    node _io_read2_T = orr(io.rs2) @[register.scala 18:37]
    node _io_read2_T_1 = mux(_io_read2_T, regs[io.rs2], UInt<1>("h00")) @[register.scala 18:23]
    io.read2 <= _io_read2_T_1 @[register.scala 18:16]
    node _T = orr(io.rd) @[register.scala 19:27]
    node _T_1 = and(io.wen, _T) @[register.scala 19:19]
    when _T_1 : @[register.scala 19:33]
      regs[io.rd] <= io.write_data @[register.scala 20:22]
      skip @[register.scala 19:33]
    
