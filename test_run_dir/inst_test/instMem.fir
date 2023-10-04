;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit instMem : 
  module instMem : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip addr : UInt<32>, instr : UInt<32>}
    
    cmem Amem : UInt<32>[32] @[instMem.scala 12:19]
    node _io_instr_T = bits(io.addr, 4, 0) @[instMem.scala 14:22]
    infer mport io_instr_MPORT = Amem[_io_instr_T], clock @[instMem.scala 14:22]
    io.instr <= io_instr_MPORT @[instMem.scala 14:14]
    
