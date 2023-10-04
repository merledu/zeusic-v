circuit memo :
  module memo :
    input clock : Clock
    input reset : UInt<1>
    input io_red : UInt<1>
    input io_write : UInt<1>
    input io_addr : UInt<8>
    input io_dataIn : UInt<32>
    output io_dataOut : UInt<32>

    mem mem : @[memory.scala 13:18]
      data-type => UInt<32>
      depth => 32
      read-latency => 0
      write-latency => 1
      reader => io_dataOut_MPORT
      writer => MPORT
      read-under-write => undefined
    node _T = eq(io_write, UInt<1>("h1")) @[memory.scala 14:20]
    node _T_1 = bits(io_addr, 4, 0)
    node _T_2 = eq(io_red, UInt<1>("h1")) @[memory.scala 16:23]
    node _io_dataOut_T = bits(io_addr, 4, 0) @[memory.scala 17:31]
    node _GEN_0 = validif(_T_2, _io_dataOut_T) @[memory.scala 16:31 memory.scala 17:31]
    node _GEN_1 = validif(_T_2, clock) @[memory.scala 16:31 memory.scala 17:31]
    node _GEN_2 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[memory.scala 16:31 memory.scala 17:31 memory.scala 13:18]
    node _GEN_3 = mux(_T_2, mem.io_dataOut_MPORT.data, UInt<1>("h0")) @[memory.scala 16:31 memory.scala 17:20 memory.scala 19:20]
    node _GEN_4 = validif(_T, _T_1) @[memory.scala 14:28]
    node _GEN_5 = validif(_T, clock) @[memory.scala 14:28]
    node _GEN_6 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[memory.scala 14:28 memory.scala 13:18]
    node _GEN_7 = validif(_T, UInt<1>("h1")) @[memory.scala 14:28]
    node _GEN_8 = validif(_T, io_dataIn) @[memory.scala 14:28]
    node _GEN_9 = validif(eq(_T, UInt<1>("h0")), _GEN_0) @[memory.scala 14:28]
    node _GEN_10 = validif(eq(_T, UInt<1>("h0")), _GEN_1) @[memory.scala 14:28]
    node _GEN_11 = mux(_T, UInt<1>("h0"), _GEN_2) @[memory.scala 14:28 memory.scala 13:18]
    node _GEN_12 = mux(_T, UInt<1>("h0"), _GEN_3) @[memory.scala 14:28 memory.scala 12:16]
    io_dataOut <= _GEN_12
    mem.io_dataOut_MPORT.addr <= _GEN_9
    mem.io_dataOut_MPORT.en <= _GEN_11
    mem.io_dataOut_MPORT.clk <= _GEN_10
    mem.MPORT.addr <= _GEN_4
    mem.MPORT.en <= _GEN_6
    mem.MPORT.clk <= _GEN_5
    mem.MPORT.data <= _GEN_8
    mem.MPORT.mask <= _GEN_7
