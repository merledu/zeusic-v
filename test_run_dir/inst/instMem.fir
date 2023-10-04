;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit instMem : 
  module instMem : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip addr : UInt<32>, instr : UInt<32>}
    
    cmem Amem : UInt<32>[1024] @[instMem.scala 13:19]
    node _io_instr_T = dshr(io.addr, UInt<2>("h02")) @[instMem.scala 15:32]
    node _io_instr_T_1 = bits(_io_instr_T, 9, 0) @[instMem.scala 15:22]
    infer mport io_instr_MPORT = Amem[_io_instr_T_1], clock @[instMem.scala 15:22]
    io.instr <= io_instr_MPORT @[instMem.scala 15:14]
    
