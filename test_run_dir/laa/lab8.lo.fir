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
    input io_in : UInt<4>
    output io_dataOut_0 : UInt<8>
    output io_dataOut_1 : UInt<8>
    output io_dataOut_2 : UInt<8>
    output io_dataOut_3 : UInt<8>

    mem mem_0 : @[lab8.scala 17:27]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    mem mem_1 : @[lab8.scala 17:27]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    mem mem_2 : @[lab8.scala 17:27]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    mem mem_3 : @[lab8.scala 17:27]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    node e_lo = cat(io_mask_2, io_mask_3) @[Cat.scala 30:58]
    node e_hi = cat(io_mask_0, io_mask_1) @[Cat.scala 30:58]
    node e = cat(e_hi, e_lo) @[Cat.scala 30:58]
    node _T = dshr(e, UInt<1>("h0")) @[lab8.scala 23:12]
    node _T_1 = bits(_T, 0, 0) @[lab8.scala 23:12]
    node _T_2 = eq(_T_1, UInt<1>("h1")) @[lab8.scala 23:18]
    node _T_3 = dshr(e, UInt<1>("h1")) @[lab8.scala 23:30]
    node _T_4 = bits(_T_3, 0, 0) @[lab8.scala 23:30]
    node _T_5 = eq(_T_4, UInt<1>("h1")) @[lab8.scala 23:36]
    node _T_6 = or(_T_2, _T_5) @[lab8.scala 23:26]
    node _T_7 = dshr(e, UInt<2>("h2")) @[lab8.scala 23:48]
    node _T_8 = bits(_T_7, 0, 0) @[lab8.scala 23:48]
    node _T_9 = eq(_T_8, UInt<1>("h1")) @[lab8.scala 23:54]
    node _T_10 = or(_T_6, _T_9) @[lab8.scala 23:44]
    node _T_11 = dshr(e, UInt<2>("h3")) @[lab8.scala 23:66]
    node _T_12 = bits(_T_11, 0, 0) @[lab8.scala 23:66]
    node _T_13 = eq(_T_12, UInt<1>("h1")) @[lab8.scala 23:72]
    node _T_14 = or(_T_10, _T_13) @[lab8.scala 23:62]
    node _GEN_0 = validif(io_mask_0, io_dataIn_0)
    node _GEN_1 = mux(io_mask_0, UInt<1>("h1"), UInt<1>("h0"))
    node _GEN_2 = validif(io_mask_1, io_dataIn_1)
    node _GEN_3 = mux(io_mask_1, UInt<1>("h1"), UInt<1>("h0"))
    node _GEN_4 = validif(io_mask_2, io_dataIn_2)
    node _GEN_5 = mux(io_mask_2, UInt<1>("h1"), UInt<1>("h0"))
    node _GEN_6 = validif(io_mask_3, io_dataIn_3)
    node _GEN_7 = mux(io_mask_3, UInt<1>("h1"), UInt<1>("h0"))
    node _GEN_8 = validif(io_enable, io_addr) @[lab8.scala 25:31 lab8.scala 25:31]
    node _WIRE = _GEN_8 @[lab8.scala 25:31]
    node _T_15 = or(_WIRE, UInt<10>("h0")) @[lab8.scala 25:31]
    node _T_16 = bits(_T_15, 9, 0) @[lab8.scala 25:31]
    node _GEN_9 = mux(io_enable, UInt<1>("h1"), UInt<1>("h0")) @[lab8.scala 25:31 lab8.scala 25:31 lab8.scala 17:27]
    node _GEN_10 = validif(io_enable, _T_16) @[lab8.scala 25:31 lab8.scala 25:31]
    node _GEN_11 = validif(io_enable, clock) @[lab8.scala 25:31 lab8.scala 25:31]
    node _GEN_12 = validif(_T_14, io_addr) @[lab8.scala 23:81]
    node _GEN_13 = validif(_T_14, clock) @[lab8.scala 23:81]
    node _GEN_14 = mux(_T_14, UInt<1>("h1"), UInt<1>("h0")) @[lab8.scala 23:81 lab8.scala 17:27]
    node _GEN_15 = validif(_T_14, _GEN_1) @[lab8.scala 23:81]
    node _GEN_16 = validif(_T_14, _GEN_3) @[lab8.scala 23:81]
    node _GEN_17 = validif(_T_14, _GEN_5) @[lab8.scala 23:81]
    node _GEN_18 = validif(_T_14, _GEN_7) @[lab8.scala 23:81]
    node _GEN_19 = validif(_T_14, _GEN_0) @[lab8.scala 23:81]
    node _GEN_20 = validif(_T_14, _GEN_2) @[lab8.scala 23:81]
    node _GEN_21 = validif(_T_14, _GEN_4) @[lab8.scala 23:81]
    node _GEN_22 = validif(_T_14, _GEN_6) @[lab8.scala 23:81]
    node _GEN_23 = mux(_T_14, _GEN_9, UInt<1>("h0")) @[lab8.scala 23:81 lab8.scala 17:27]
    node _GEN_24 = validif(_T_14, _GEN_10) @[lab8.scala 23:81]
    node _GEN_25 = validif(_T_14, _GEN_11) @[lab8.scala 23:81]
    node _GEN_26 = mux(_T_14, mem_0.MPORT_1.data, UInt<1>("h0")) @[lab8.scala 23:81 lab8.scala 25:20 lab8.scala 27:23]
    node _GEN_27 = mux(_T_14, mem_1.MPORT_1.data, UInt<1>("h0")) @[lab8.scala 23:81 lab8.scala 25:20 lab8.scala 28:23]
    node _GEN_28 = mux(_T_14, mem_2.MPORT_1.data, UInt<1>("h0")) @[lab8.scala 23:81 lab8.scala 25:20 lab8.scala 29:23]
    node _GEN_29 = mux(_T_14, mem_3.MPORT_1.data, UInt<1>("h0")) @[lab8.scala 23:81 lab8.scala 25:20 lab8.scala 30:23]
    io_dataOut_0 <= _GEN_26
    io_dataOut_1 <= _GEN_27
    io_dataOut_2 <= _GEN_28
    io_dataOut_3 <= _GEN_29
    mem_0.MPORT_1.addr <= _GEN_24
    mem_1.MPORT_1.addr <= _GEN_24
    mem_2.MPORT_1.addr <= _GEN_24
    mem_3.MPORT_1.addr <= _GEN_24
    mem_0.MPORT_1.en <= _GEN_23
    mem_1.MPORT_1.en <= _GEN_23
    mem_2.MPORT_1.en <= _GEN_23
    mem_3.MPORT_1.en <= _GEN_23
    mem_0.MPORT_1.clk <= _GEN_25
    mem_1.MPORT_1.clk <= _GEN_25
    mem_2.MPORT_1.clk <= _GEN_25
    mem_3.MPORT_1.clk <= _GEN_25
    mem_0.MPORT.addr <= _GEN_12
    mem_1.MPORT.addr <= _GEN_12
    mem_2.MPORT.addr <= _GEN_12
    mem_3.MPORT.addr <= _GEN_12
    mem_0.MPORT.en <= _GEN_14
    mem_1.MPORT.en <= _GEN_14
    mem_2.MPORT.en <= _GEN_14
    mem_3.MPORT.en <= _GEN_14
    mem_0.MPORT.clk <= _GEN_13
    mem_1.MPORT.clk <= _GEN_13
    mem_2.MPORT.clk <= _GEN_13
    mem_3.MPORT.clk <= _GEN_13
    mem_0.MPORT.data <= _GEN_19
    mem_1.MPORT.data <= _GEN_20
    mem_2.MPORT.data <= _GEN_21
    mem_3.MPORT.data <= _GEN_22
    mem_0.MPORT.mask <= _GEN_15
    mem_1.MPORT.mask <= _GEN_16
    mem_2.MPORT.mask <= _GEN_17
    mem_3.MPORT.mask <= _GEN_18
