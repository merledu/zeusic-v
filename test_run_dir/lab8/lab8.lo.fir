circuit lab8 :
  module lab8 :
    input clock : Clock
    input reset : UInt<1>
    input io_enable : UInt<1>
    input io_write : UInt<1>
    input io_addr : UInt<10>
    input io_mask_0 : UInt<1>
    input io_mask_1 : UInt<1>
    input io_mask_2 : UInt<1>
    input io_mask_3 : UInt<1>
    input io_dataIn_0 : UInt<8>
    input io_dataIn_1 : UInt<8>
    input io_dataIn_2 : UInt<8>
    input io_dataIn_3 : UInt<8>
    output io_dataOut_0 : UInt<8>
    output io_dataOut_1 : UInt<8>
    output io_dataOut_2 : UInt<8>
    output io_dataOut_3 : UInt<8>

    mem mem_0 : @[lab8.scala 14:27]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    mem mem_1 : @[lab8.scala 14:27]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    mem mem_2 : @[lab8.scala 14:27]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    mem mem_3 : @[lab8.scala 14:27]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    node _GEN_0 = validif(io_mask_0, io_dataIn_0)
    node _GEN_1 = mux(io_mask_0, UInt<1>("h1"), UInt<1>("h0"))
    node _GEN_2 = validif(io_mask_1, io_dataIn_1)
    node _GEN_3 = mux(io_mask_1, UInt<1>("h1"), UInt<1>("h0"))
    node _GEN_4 = validif(io_mask_2, io_dataIn_2)
    node _GEN_5 = mux(io_mask_2, UInt<1>("h1"), UInt<1>("h0"))
    node _GEN_6 = validif(io_mask_3, io_dataIn_3)
    node _GEN_7 = mux(io_mask_3, UInt<1>("h1"), UInt<1>("h0"))
    node _GEN_8 = validif(io_enable, io_addr) @[lab8.scala 16:28 lab8.scala 16:28]
    node _WIRE = _GEN_8 @[lab8.scala 16:28]
    node _T = or(_WIRE, UInt<10>("h0")) @[lab8.scala 16:28]
    node _T_1 = bits(_T, 9, 0) @[lab8.scala 16:28]
    node _GEN_9 = mux(io_enable, UInt<1>("h1"), UInt<1>("h0")) @[lab8.scala 16:28 lab8.scala 16:28 lab8.scala 14:27]
    node _GEN_10 = validif(io_enable, _T_1) @[lab8.scala 16:28 lab8.scala 16:28]
    node _GEN_11 = validif(io_enable, clock) @[lab8.scala 16:28 lab8.scala 16:28]
    io_dataOut_0 <= mem_0.MPORT_1.data @[lab8.scala 16:16]
    io_dataOut_1 <= mem_1.MPORT_1.data @[lab8.scala 16:16]
    io_dataOut_2 <= mem_2.MPORT_1.data @[lab8.scala 16:16]
    io_dataOut_3 <= mem_3.MPORT_1.data @[lab8.scala 16:16]
    mem_0.MPORT_1.addr <= _GEN_10
    mem_1.MPORT_1.addr <= _GEN_10
    mem_2.MPORT_1.addr <= _GEN_10
    mem_3.MPORT_1.addr <= _GEN_10
    mem_0.MPORT_1.en <= _GEN_9
    mem_1.MPORT_1.en <= _GEN_9
    mem_2.MPORT_1.en <= _GEN_9
    mem_3.MPORT_1.en <= _GEN_9
    mem_0.MPORT_1.clk <= _GEN_11
    mem_1.MPORT_1.clk <= _GEN_11
    mem_2.MPORT_1.clk <= _GEN_11
    mem_3.MPORT_1.clk <= _GEN_11
    mem_0.MPORT.addr <= io_addr
    mem_1.MPORT.addr <= io_addr
    mem_2.MPORT.addr <= io_addr
    mem_3.MPORT.addr <= io_addr
    mem_0.MPORT.en <= UInt<1>("h1")
    mem_1.MPORT.en <= UInt<1>("h1")
    mem_2.MPORT.en <= UInt<1>("h1")
    mem_3.MPORT.en <= UInt<1>("h1")
    mem_0.MPORT.clk <= clock
    mem_1.MPORT.clk <= clock
    mem_2.MPORT.clk <= clock
    mem_3.MPORT.clk <= clock
    mem_0.MPORT.data <= _GEN_0
    mem_1.MPORT.data <= _GEN_2
    mem_2.MPORT.data <= _GEN_4
    mem_3.MPORT.data <= _GEN_6
    mem_0.MPORT.mask <= _GEN_1
    mem_1.MPORT.mask <= _GEN_3
    mem_2.MPORT.mask <= _GEN_5
    mem_3.MPORT.mask <= _GEN_7
