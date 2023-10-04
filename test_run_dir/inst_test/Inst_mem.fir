;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Inst_mem : 
  module Inst_mem : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip addr : UInt<20>, instr : UInt<32>}
    
    cmem A_mem : UInt<32>[32] @[instMem.scala 11:20]
    node _io_instr_T = div(io.addr, UInt<3>("h04")) @[instMem.scala 13:34]
    node _io_instr_T_1 = bits(_io_instr_T, 4, 0) @[instMem.scala 13:23]
    infer mport io_instr_MPORT = A_mem[_io_instr_T_1], clock @[instMem.scala 13:23]
    io.instr <= io_instr_MPORT @[instMem.scala 13:14]
    
