circuit instMem :
  module instMem :
    input clock : Clock
    input reset : UInt<1>
    input io_addr : UInt<32>
    output io_instr : UInt<32>

    mem Amem : @[instMem.scala 13:19]
      data-type => UInt<32>
      depth => 1024
      read-latency => 0
      write-latency => 1
      reader => io_instr_MPORT
      read-under-write => undefined
    node _io_instr_T = dshr(io_addr, UInt<2>("h2")) @[instMem.scala 15:32]
    node _io_instr_T_1 = bits(_io_instr_T, 9, 0) @[instMem.scala 15:22]
    io_instr <= Amem.io_instr_MPORT.data @[instMem.scala 15:14]
    Amem.io_instr_MPORT.addr <= _io_instr_T_1 @[instMem.scala 15:22]
    Amem.io_instr_MPORT.en <= UInt<1>("h1") @[instMem.scala 15:22]
    Amem.io_instr_MPORT.clk <= clock @[instMem.scala 15:22]
