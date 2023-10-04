circuit Inst_mem :
  module Inst_mem :
    input clock : Clock
    input reset : UInt<1>
    input io_addr : UInt<20>
    output io_instr : UInt<32>

    mem A_mem : @[instMem.scala 11:20]
      data-type => UInt<32>
      depth => 32
      read-latency => 0
      write-latency => 1
      reader => io_instr_MPORT
      read-under-write => undefined
    node _io_instr_T = div(io_addr, UInt<3>("h4")) @[instMem.scala 13:34]
    node _io_instr_T_1 = bits(_io_instr_T, 4, 0) @[instMem.scala 13:23]
    io_instr <= A_mem.io_instr_MPORT.data @[instMem.scala 13:14]
    A_mem.io_instr_MPORT.addr <= _io_instr_T_1 @[instMem.scala 13:23]
    A_mem.io_instr_MPORT.en <= UInt<1>("h1") @[instMem.scala 13:23]
    A_mem.io_instr_MPORT.clk <= clock @[instMem.scala 13:23]
