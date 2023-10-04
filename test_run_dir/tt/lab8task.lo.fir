circuit lab8task :
  module RRArbiter :
    input clock : Clock
    input reset : UInt<1>
    output io_in_0_ready : UInt<1>
    input io_in_0_valid : UInt<1>
    input io_in_0_bits : UInt<32>
    output io_in_1_ready : UInt<1>
    input io_in_1_valid : UInt<1>
    input io_in_1_bits : UInt<32>
    output io_in_2_ready : UInt<1>
    input io_in_2_valid : UInt<1>
    input io_in_2_bits : UInt<32>
    output io_in_3_ready : UInt<1>
    input io_in_3_valid : UInt<1>
    input io_in_3_bits : UInt<32>
    input io_out_ready : UInt<1>
    output io_out_valid : UInt<1>
    output io_out_bits : UInt<32>
    output io_chosen : UInt<2>

    node _GEN_0 = validif(eq(UInt<1>("h0"), io_chosen), io_in_0_valid) @[Arbiter.scala 41:16 Arbiter.scala 41:16]
    node _GEN_1 = mux(eq(UInt<1>("h1"), io_chosen), io_in_1_valid, _GEN_0) @[Arbiter.scala 41:16 Arbiter.scala 41:16]
    node _GEN_2 = mux(eq(UInt<2>("h2"), io_chosen), io_in_2_valid, _GEN_1) @[Arbiter.scala 41:16 Arbiter.scala 41:16]
    node _GEN_3 = mux(eq(UInt<2>("h3"), io_chosen), io_in_3_valid, _GEN_2) @[Arbiter.scala 41:16 Arbiter.scala 41:16]
    node _GEN_4 = validif(eq(UInt<1>("h0"), io_chosen), io_in_0_bits) @[Arbiter.scala 42:15 Arbiter.scala 42:15]
    node _GEN_5 = mux(eq(UInt<1>("h1"), io_chosen), io_in_1_bits, _GEN_4) @[Arbiter.scala 42:15 Arbiter.scala 42:15]
    node _GEN_6 = mux(eq(UInt<2>("h2"), io_chosen), io_in_2_bits, _GEN_5) @[Arbiter.scala 42:15 Arbiter.scala 42:15]
    node _GEN_7 = mux(eq(UInt<2>("h3"), io_chosen), io_in_3_bits, _GEN_6) @[Arbiter.scala 42:15 Arbiter.scala 42:15]
    node _ctrl_validMask_grantMask_lastGrant_T = and(io_out_ready, io_out_valid) @[Decoupled.scala 40:37]
    reg lastGrant : UInt<2>, clock with :
      reset => (UInt<1>("h0"), lastGrant) @[Reg.scala 15:16]
    node _GEN_8 = mux(_ctrl_validMask_grantMask_lastGrant_T, io_chosen, lastGrant) @[Reg.scala 16:19 Reg.scala 16:23 Reg.scala 15:16]
    node grantMask_0 = gt(UInt<1>("h0"), lastGrant) @[Arbiter.scala 67:49]
    node grantMask_1 = gt(UInt<1>("h1"), lastGrant) @[Arbiter.scala 67:49]
    node grantMask_2 = gt(UInt<2>("h2"), lastGrant) @[Arbiter.scala 67:49]
    node grantMask_3 = gt(UInt<2>("h3"), lastGrant) @[Arbiter.scala 67:49]
    node validMask_0 = and(io_in_0_valid, grantMask_0) @[Arbiter.scala 68:75]
    node validMask_1 = and(io_in_1_valid, grantMask_1) @[Arbiter.scala 68:75]
    node validMask_2 = and(io_in_2_valid, grantMask_2) @[Arbiter.scala 68:75]
    node validMask_3 = and(io_in_3_valid, grantMask_3) @[Arbiter.scala 68:75]
    node _ctrl_T = or(validMask_0, validMask_1) @[Arbiter.scala 31:68]
    node _ctrl_T_1 = or(_ctrl_T, validMask_2) @[Arbiter.scala 31:68]
    node _ctrl_T_2 = or(_ctrl_T_1, validMask_3) @[Arbiter.scala 31:68]
    node _ctrl_T_3 = or(_ctrl_T_2, io_in_0_valid) @[Arbiter.scala 31:68]
    node _ctrl_T_4 = or(_ctrl_T_3, io_in_1_valid) @[Arbiter.scala 31:68]
    node _ctrl_T_5 = or(_ctrl_T_4, io_in_2_valid) @[Arbiter.scala 31:68]
    node ctrl_1 = eq(validMask_0, UInt<1>("h0")) @[Arbiter.scala 31:78]
    node ctrl_2 = eq(_ctrl_T, UInt<1>("h0")) @[Arbiter.scala 31:78]
    node ctrl_3 = eq(_ctrl_T_1, UInt<1>("h0")) @[Arbiter.scala 31:78]
    node ctrl_4 = eq(_ctrl_T_2, UInt<1>("h0")) @[Arbiter.scala 31:78]
    node ctrl_5 = eq(_ctrl_T_3, UInt<1>("h0")) @[Arbiter.scala 31:78]
    node ctrl_6 = eq(_ctrl_T_4, UInt<1>("h0")) @[Arbiter.scala 31:78]
    node ctrl_7 = eq(_ctrl_T_5, UInt<1>("h0")) @[Arbiter.scala 31:78]
    node _T = and(UInt<1>("h1"), grantMask_0) @[Arbiter.scala 72:34]
    node _T_1 = or(_T, ctrl_4) @[Arbiter.scala 72:50]
    node _T_2 = and(ctrl_1, grantMask_1) @[Arbiter.scala 72:34]
    node _T_3 = or(_T_2, ctrl_5) @[Arbiter.scala 72:50]
    node _T_4 = and(ctrl_2, grantMask_2) @[Arbiter.scala 72:34]
    node _T_5 = or(_T_4, ctrl_6) @[Arbiter.scala 72:50]
    node _T_6 = and(ctrl_3, grantMask_3) @[Arbiter.scala 72:34]
    node _T_7 = or(_T_6, ctrl_7) @[Arbiter.scala 72:50]
    node _io_in_0_ready_T = and(_T_1, io_out_ready) @[Arbiter.scala 60:21]
    node _io_in_1_ready_T = and(_T_3, io_out_ready) @[Arbiter.scala 60:21]
    node _io_in_2_ready_T = and(_T_5, io_out_ready) @[Arbiter.scala 60:21]
    node _io_in_3_ready_T = and(_T_7, io_out_ready) @[Arbiter.scala 60:21]
    node _GEN_9 = mux(io_in_2_valid, UInt<2>("h2"), UInt<2>("h3")) @[Arbiter.scala 77:27 Arbiter.scala 77:36]
    node _GEN_10 = mux(io_in_1_valid, UInt<1>("h1"), _GEN_9) @[Arbiter.scala 77:27 Arbiter.scala 77:36]
    node _GEN_11 = mux(io_in_0_valid, UInt<1>("h0"), _GEN_10) @[Arbiter.scala 77:27 Arbiter.scala 77:36]
    node _GEN_12 = mux(validMask_3, UInt<2>("h3"), _GEN_11) @[Arbiter.scala 79:25 Arbiter.scala 79:34]
    node _GEN_13 = mux(validMask_2, UInt<2>("h2"), _GEN_12) @[Arbiter.scala 79:25 Arbiter.scala 79:34]
    node _GEN_14 = mux(validMask_1, UInt<1>("h1"), _GEN_13) @[Arbiter.scala 79:25 Arbiter.scala 79:34]
    node choice = _GEN_14
    node _io_in_io_chosen_valid = _GEN_3 @[Arbiter.scala 41:16]
    node _io_in_io_chosen_bits = _GEN_7 @[Arbiter.scala 42:15]
    io_in_0_ready <= _io_in_0_ready_T @[Arbiter.scala 60:16]
    io_in_1_ready <= _io_in_1_ready_T @[Arbiter.scala 60:16]
    io_in_2_ready <= _io_in_2_ready_T @[Arbiter.scala 60:16]
    io_in_3_ready <= _io_in_3_ready_T @[Arbiter.scala 60:16]
    io_out_valid <= _io_in_io_chosen_valid @[Arbiter.scala 41:16]
    io_out_bits <= _io_in_io_chosen_bits @[Arbiter.scala 42:15]
    io_chosen <= choice @[Arbiter.scala 40:13]
    lastGrant <= _GEN_8

  module Queue :
    input clock : Clock
    input reset : UInt<1>
    output io_enq_ready : UInt<1>
    input io_enq_valid : UInt<1>
    input io_enq_bits : UInt<32>
    input io_deq_ready : UInt<1>
    output io_deq_valid : UInt<1>
    output io_deq_bits : UInt<32>
    output io_count : UInt<2>

    mem ram : @[Decoupled.scala 218:16]
      data-type => UInt<32>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => io_deq_bits_MPORT
      writer => MPORT
      read-under-write => undefined
    reg value : UInt<1>, clock with :
      reset => (UInt<1>("h0"), value) @[Counter.scala 60:40]
    reg value_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), value_1) @[Counter.scala 60:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maybe_full) @[Decoupled.scala 221:27]
    node ptr_match = eq(value, value_1) @[Decoupled.scala 223:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 224:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 224:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 225:24]
    node _do_enq_T = and(io_enq_ready, io_enq_valid) @[Decoupled.scala 40:37]
    node _do_deq_T = and(io_deq_ready, io_deq_valid) @[Decoupled.scala 40:37]
    node wrap = eq(value, UInt<1>("h1")) @[Counter.scala 72:24]
    node _value_T = add(value, UInt<1>("h1")) @[Counter.scala 76:24]
    node _value_T_1 = tail(_value_T, 1) @[Counter.scala 76:24]
    node do_enq = _do_enq_T
    node _GEN_0 = validif(do_enq, value) @[Decoupled.scala 229:17 Decoupled.scala 230:8]
    node _GEN_1 = validif(do_enq, clock) @[Decoupled.scala 229:17 Decoupled.scala 230:8]
    node _GEN_2 = mux(do_enq, UInt<1>("h1"), UInt<1>("h0")) @[Decoupled.scala 229:17 Decoupled.scala 230:8 Decoupled.scala 218:16]
    node _GEN_3 = validif(do_enq, UInt<1>("h1")) @[Decoupled.scala 229:17 Decoupled.scala 230:24]
    node _GEN_4 = validif(do_enq, io_enq_bits) @[Decoupled.scala 229:17 Decoupled.scala 230:24]
    node _GEN_5 = mux(do_enq, _value_T_1, value) @[Decoupled.scala 229:17 Counter.scala 76:15 Counter.scala 60:40]
    node wrap_1 = eq(value_1, UInt<1>("h1")) @[Counter.scala 72:24]
    node _value_T_2 = add(value_1, UInt<1>("h1")) @[Counter.scala 76:24]
    node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 76:24]
    node do_deq = _do_deq_T
    node _GEN_6 = mux(do_deq, _value_T_3, value_1) @[Decoupled.scala 233:17 Counter.scala 76:15 Counter.scala 60:40]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 236:16]
    node _GEN_7 = mux(_T, do_enq, maybe_full) @[Decoupled.scala 236:28 Decoupled.scala 237:16 Decoupled.scala 221:27]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 240:19]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 241:19]
    node _ptr_diff_T = sub(value, value_1) @[Decoupled.scala 257:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 257:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 259:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<2>("h2"), UInt<1>("h0")) @[Decoupled.scala 259:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 259:62]
    io_enq_ready <= _io_enq_ready_T @[Decoupled.scala 241:16]
    io_deq_valid <= _io_deq_valid_T @[Decoupled.scala 240:16]
    io_deq_bits <= ram.io_deq_bits_MPORT.data @[Decoupled.scala 242:15]
    io_count <= _io_count_T_2 @[Decoupled.scala 259:14]
    ram.io_deq_bits_MPORT.addr <= value_1 @[Decoupled.scala 242:21]
    ram.io_deq_bits_MPORT.en <= UInt<1>("h1") @[Decoupled.scala 242:21]
    ram.io_deq_bits_MPORT.clk <= clock @[Decoupled.scala 242:21]
    ram.MPORT.addr <= _GEN_0
    ram.MPORT.en <= _GEN_2
    ram.MPORT.clk <= _GEN_1
    ram.MPORT.data <= _GEN_4
    ram.MPORT.mask <= _GEN_3
    value <= mux(reset, UInt<1>("h0"), _GEN_5) @[Counter.scala 60:40 Counter.scala 60:40]
    value_1 <= mux(reset, UInt<1>("h0"), _GEN_6) @[Counter.scala 60:40 Counter.scala 60:40]
    maybe_full <= mux(reset, UInt<1>("h0"), _GEN_7) @[Decoupled.scala 221:27 Decoupled.scala 221:27]

  module lab8task :
    input clock : Clock
    input reset : UInt<1>
    output io_req_0_ready : UInt<1>
    input io_req_0_valid : UInt<1>
    input io_req_0_bits : UInt<32>
    output io_req_1_ready : UInt<1>
    input io_req_1_valid : UInt<1>
    input io_req_1_bits : UInt<32>
    output io_req_2_ready : UInt<1>
    input io_req_2_valid : UInt<1>
    input io_req_2_bits : UInt<32>
    output io_req_3_ready : UInt<1>
    input io_req_3_valid : UInt<1>
    input io_req_3_bits : UInt<32>
    input io_waddr : UInt<5>
    input io_raddr : UInt<5>
    output io_memory_0 : UInt<32>
    output io_memory_1 : UInt<32>
    output io_memory_2 : UInt<32>
    output io_memory_3 : UInt<32>

    inst arb_priority of RRArbiter @[lab8task.scala 11:31]
    mem mem_0 : @[lab8task.scala 13:26]
      data-type => UInt<32>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_4
      writer => MPORT
      writer => MPORT_1
      writer => MPORT_2
      writer => MPORT_3
      read-under-write => undefined
    mem mem_1 : @[lab8task.scala 13:26]
      data-type => UInt<32>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_4
      writer => MPORT
      writer => MPORT_1
      writer => MPORT_2
      writer => MPORT_3
      read-under-write => undefined
    mem mem_2 : @[lab8task.scala 13:26]
      data-type => UInt<32>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_4
      writer => MPORT
      writer => MPORT_1
      writer => MPORT_2
      writer => MPORT_3
      read-under-write => undefined
    mem mem_3 : @[lab8task.scala 13:26]
      data-type => UInt<32>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_4
      writer => MPORT
      writer => MPORT_1
      writer => MPORT_2
      writer => MPORT_3
      read-under-write => undefined
    inst q1 of Queue @[Decoupled.scala 296:21]
    inst q2 of Queue @[Decoupled.scala 296:21]
    inst q3 of Queue @[Decoupled.scala 296:21]
    inst q4 of Queue @[Decoupled.scala 296:21]
    reg data_0 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), data_0) @[lab8task.scala 12:18]
    reg data_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), data_1) @[lab8task.scala 12:18]
    reg data_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), data_2) @[lab8task.scala 12:18]
    reg data_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), data_3) @[lab8task.scala 12:18]
    node _GEN_0 = mux(io_req_3_valid, arb_priority.io_out_ready, data_3) @[lab8task.scala 41:32 lab8task.scala 42:17 lab8task.scala 12:18]
    node _GEN_1 = mux(io_req_3_valid, UInt<1>("h0"), data_2) @[lab8task.scala 41:32 lab8task.scala 43:16 lab8task.scala 12:18]
    node _GEN_2 = mux(io_req_3_valid, UInt<1>("h0"), data_1) @[lab8task.scala 41:32 lab8task.scala 44:17 lab8task.scala 12:18]
    node _GEN_3 = mux(io_req_3_valid, UInt<1>("h0"), data_0) @[lab8task.scala 41:32 lab8task.scala 45:16 lab8task.scala 12:18]
    node _GEN_4 = validif(io_req_3_valid, io_waddr) @[lab8task.scala 41:32]
    node _GEN_5 = validif(io_req_3_valid, clock) @[lab8task.scala 41:32]
    node _GEN_6 = mux(io_req_3_valid, UInt<1>("h1"), UInt<1>("h0")) @[lab8task.scala 41:32 lab8task.scala 13:26]
    node _GEN_7 = validif(io_req_3_valid, UInt<1>("h1")) @[lab8task.scala 41:32]
    node _GEN_8 = validif(io_req_3_valid, data_0) @[lab8task.scala 41:32]
    node _GEN_9 = validif(io_req_3_valid, data_1) @[lab8task.scala 41:32]
    node _GEN_10 = validif(io_req_3_valid, data_2) @[lab8task.scala 41:32]
    node _GEN_11 = validif(io_req_3_valid, data_3) @[lab8task.scala 41:32]
    node _GEN_12 = mux(io_req_2_valid, arb_priority.io_out_ready, _GEN_1) @[lab8task.scala 35:32 lab8task.scala 36:17]
    node _GEN_13 = mux(io_req_2_valid, UInt<1>("h0"), _GEN_2) @[lab8task.scala 35:32 lab8task.scala 37:16]
    node _GEN_14 = mux(io_req_2_valid, UInt<1>("h0"), _GEN_0) @[lab8task.scala 35:32 lab8task.scala 38:16]
    node _GEN_15 = mux(io_req_2_valid, UInt<1>("h0"), _GEN_3) @[lab8task.scala 35:32 lab8task.scala 39:16]
    node _GEN_16 = validif(io_req_2_valid, io_waddr) @[lab8task.scala 35:32]
    node _GEN_17 = validif(io_req_2_valid, clock) @[lab8task.scala 35:32]
    node _GEN_18 = mux(io_req_2_valid, UInt<1>("h1"), UInt<1>("h0")) @[lab8task.scala 35:32 lab8task.scala 13:26]
    node _GEN_19 = validif(io_req_2_valid, UInt<1>("h1")) @[lab8task.scala 35:32]
    node _GEN_20 = validif(io_req_2_valid, data_0) @[lab8task.scala 35:32]
    node _GEN_21 = validif(io_req_2_valid, data_1) @[lab8task.scala 35:32]
    node _GEN_22 = validif(io_req_2_valid, data_2) @[lab8task.scala 35:32]
    node _GEN_23 = validif(io_req_2_valid, data_3) @[lab8task.scala 35:32]
    node _GEN_24 = validif(eq(io_req_2_valid, UInt<1>("h0")), _GEN_4) @[lab8task.scala 35:32]
    node _GEN_25 = validif(eq(io_req_2_valid, UInt<1>("h0")), _GEN_5) @[lab8task.scala 35:32]
    node _GEN_26 = mux(io_req_2_valid, UInt<1>("h0"), _GEN_6) @[lab8task.scala 35:32 lab8task.scala 13:26]
    node _GEN_27 = validif(eq(io_req_2_valid, UInt<1>("h0")), _GEN_7) @[lab8task.scala 35:32]
    node _GEN_28 = validif(eq(io_req_2_valid, UInt<1>("h0")), _GEN_8) @[lab8task.scala 35:32]
    node _GEN_29 = validif(eq(io_req_2_valid, UInt<1>("h0")), _GEN_9) @[lab8task.scala 35:32]
    node _GEN_30 = validif(eq(io_req_2_valid, UInt<1>("h0")), _GEN_10) @[lab8task.scala 35:32]
    node _GEN_31 = validif(eq(io_req_2_valid, UInt<1>("h0")), _GEN_11) @[lab8task.scala 35:32]
    node _GEN_32 = mux(io_req_1_valid, arb_priority.io_out_ready, _GEN_13) @[lab8task.scala 29:32 lab8task.scala 30:16]
    node _GEN_33 = mux(io_req_1_valid, UInt<1>("h0"), _GEN_15) @[lab8task.scala 29:32 lab8task.scala 31:16]
    node _GEN_34 = mux(io_req_1_valid, UInt<1>("h0"), _GEN_12) @[lab8task.scala 29:32 lab8task.scala 32:17]
    node _GEN_35 = mux(io_req_1_valid, UInt<1>("h0"), _GEN_14) @[lab8task.scala 29:32 lab8task.scala 33:17]
    node _GEN_36 = validif(io_req_1_valid, io_waddr) @[lab8task.scala 29:32]
    node _GEN_37 = validif(io_req_1_valid, clock) @[lab8task.scala 29:32]
    node _GEN_38 = mux(io_req_1_valid, UInt<1>("h1"), UInt<1>("h0")) @[lab8task.scala 29:32 lab8task.scala 13:26]
    node _GEN_39 = validif(io_req_1_valid, UInt<1>("h1")) @[lab8task.scala 29:32]
    node _GEN_40 = validif(io_req_1_valid, data_0) @[lab8task.scala 29:32]
    node _GEN_41 = validif(io_req_1_valid, data_1) @[lab8task.scala 29:32]
    node _GEN_42 = validif(io_req_1_valid, data_2) @[lab8task.scala 29:32]
    node _GEN_43 = validif(io_req_1_valid, data_3) @[lab8task.scala 29:32]
    node _GEN_44 = validif(eq(io_req_1_valid, UInt<1>("h0")), _GEN_16) @[lab8task.scala 29:32]
    node _GEN_45 = validif(eq(io_req_1_valid, UInt<1>("h0")), _GEN_17) @[lab8task.scala 29:32]
    node _GEN_46 = mux(io_req_1_valid, UInt<1>("h0"), _GEN_18) @[lab8task.scala 29:32 lab8task.scala 13:26]
    node _GEN_47 = validif(eq(io_req_1_valid, UInt<1>("h0")), _GEN_19) @[lab8task.scala 29:32]
    node _GEN_48 = validif(eq(io_req_1_valid, UInt<1>("h0")), _GEN_20) @[lab8task.scala 29:32]
    node _GEN_49 = validif(eq(io_req_1_valid, UInt<1>("h0")), _GEN_21) @[lab8task.scala 29:32]
    node _GEN_50 = validif(eq(io_req_1_valid, UInt<1>("h0")), _GEN_22) @[lab8task.scala 29:32]
    node _GEN_51 = validif(eq(io_req_1_valid, UInt<1>("h0")), _GEN_23) @[lab8task.scala 29:32]
    node _GEN_52 = validif(eq(io_req_1_valid, UInt<1>("h0")), _GEN_24) @[lab8task.scala 29:32]
    node _GEN_53 = validif(eq(io_req_1_valid, UInt<1>("h0")), _GEN_25) @[lab8task.scala 29:32]
    node _GEN_54 = mux(io_req_1_valid, UInt<1>("h0"), _GEN_26) @[lab8task.scala 29:32 lab8task.scala 13:26]
    node _GEN_55 = validif(eq(io_req_1_valid, UInt<1>("h0")), _GEN_27) @[lab8task.scala 29:32]
    node _GEN_56 = validif(eq(io_req_1_valid, UInt<1>("h0")), _GEN_28) @[lab8task.scala 29:32]
    node _GEN_57 = validif(eq(io_req_1_valid, UInt<1>("h0")), _GEN_29) @[lab8task.scala 29:32]
    node _GEN_58 = validif(eq(io_req_1_valid, UInt<1>("h0")), _GEN_30) @[lab8task.scala 29:32]
    node _GEN_59 = validif(eq(io_req_1_valid, UInt<1>("h0")), _GEN_31) @[lab8task.scala 29:32]
    node _GEN_60 = mux(io_req_0_valid, arb_priority.io_out_ready, _GEN_33) @[lab8task.scala 23:27 lab8task.scala 24:17]
    node _GEN_61 = mux(io_req_0_valid, UInt<1>("h0"), _GEN_32) @[lab8task.scala 23:27 lab8task.scala 25:16]
    node _GEN_62 = mux(io_req_0_valid, UInt<1>("h0"), _GEN_34) @[lab8task.scala 23:27 lab8task.scala 26:17]
    node _GEN_63 = mux(io_req_0_valid, UInt<1>("h0"), _GEN_35) @[lab8task.scala 23:27 lab8task.scala 27:16]
    node _GEN_64 = validif(io_req_0_valid, io_waddr) @[lab8task.scala 23:27]
    node _GEN_65 = validif(io_req_0_valid, clock) @[lab8task.scala 23:27]
    node _GEN_66 = mux(io_req_0_valid, UInt<1>("h1"), UInt<1>("h0")) @[lab8task.scala 23:27 lab8task.scala 13:26]
    node _GEN_67 = validif(io_req_0_valid, UInt<1>("h1")) @[lab8task.scala 23:27]
    node _GEN_68 = validif(io_req_0_valid, data_0) @[lab8task.scala 23:27]
    node _GEN_69 = validif(io_req_0_valid, data_1) @[lab8task.scala 23:27]
    node _GEN_70 = validif(io_req_0_valid, data_2) @[lab8task.scala 23:27]
    node _GEN_71 = validif(io_req_0_valid, data_3) @[lab8task.scala 23:27]
    node _GEN_72 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_36) @[lab8task.scala 23:27]
    node _GEN_73 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_37) @[lab8task.scala 23:27]
    node _GEN_74 = mux(io_req_0_valid, UInt<1>("h0"), _GEN_38) @[lab8task.scala 23:27 lab8task.scala 13:26]
    node _GEN_75 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_39) @[lab8task.scala 23:27]
    node _GEN_76 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_40) @[lab8task.scala 23:27]
    node _GEN_77 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_41) @[lab8task.scala 23:27]
    node _GEN_78 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_42) @[lab8task.scala 23:27]
    node _GEN_79 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_43) @[lab8task.scala 23:27]
    node _GEN_80 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_44) @[lab8task.scala 23:27]
    node _GEN_81 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_45) @[lab8task.scala 23:27]
    node _GEN_82 = mux(io_req_0_valid, UInt<1>("h0"), _GEN_46) @[lab8task.scala 23:27 lab8task.scala 13:26]
    node _GEN_83 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_47) @[lab8task.scala 23:27]
    node _GEN_84 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_48) @[lab8task.scala 23:27]
    node _GEN_85 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_49) @[lab8task.scala 23:27]
    node _GEN_86 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_50) @[lab8task.scala 23:27]
    node _GEN_87 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_51) @[lab8task.scala 23:27]
    node _GEN_88 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_52) @[lab8task.scala 23:27]
    node _GEN_89 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_53) @[lab8task.scala 23:27]
    node _GEN_90 = mux(io_req_0_valid, UInt<1>("h0"), _GEN_54) @[lab8task.scala 23:27 lab8task.scala 13:26]
    node _GEN_91 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_55) @[lab8task.scala 23:27]
    node _GEN_92 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_56) @[lab8task.scala 23:27]
    node _GEN_93 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_57) @[lab8task.scala 23:27]
    node _GEN_94 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_58) @[lab8task.scala 23:27]
    node _GEN_95 = validif(eq(io_req_0_valid, UInt<1>("h0")), _GEN_59) @[lab8task.scala 23:27]
    io_req_0_ready <= q1.io_enq_ready @[Decoupled.scala 299:17]
    io_req_1_ready <= q2.io_enq_ready @[Decoupled.scala 299:17]
    io_req_2_ready <= q3.io_enq_ready @[Decoupled.scala 299:17]
    io_req_3_ready <= q4.io_enq_ready @[Decoupled.scala 299:17]
    io_memory_0 <= mem_0.MPORT_4.data @[lab8task.scala 48:15]
    io_memory_1 <= mem_1.MPORT_4.data @[lab8task.scala 48:15]
    io_memory_2 <= mem_2.MPORT_4.data @[lab8task.scala 48:15]
    io_memory_3 <= mem_3.MPORT_4.data @[lab8task.scala 48:15]
    arb_priority.clock <= clock
    arb_priority.reset <= reset
    arb_priority.io_in_0_valid <= q1.io_deq_valid @[lab8task.scala 18:27]
    arb_priority.io_in_0_bits <= q1.io_deq_bits @[lab8task.scala 18:27]
    arb_priority.io_in_1_valid <= q2.io_deq_valid @[lab8task.scala 19:27]
    arb_priority.io_in_1_bits <= q2.io_deq_bits @[lab8task.scala 19:27]
    arb_priority.io_in_2_valid <= q3.io_deq_valid @[lab8task.scala 20:27]
    arb_priority.io_in_2_bits <= q3.io_deq_bits @[lab8task.scala 20:27]
    arb_priority.io_in_3_valid <= q4.io_deq_valid @[lab8task.scala 21:27]
    arb_priority.io_in_3_bits <= q4.io_deq_bits @[lab8task.scala 21:27]
    arb_priority.io_out_ready <= UInt<1>("h1") @[lab8task.scala 22:31]
    data_0 <= _GEN_60
    data_1 <= _GEN_61
    data_2 <= _GEN_62
    data_3 <= _GEN_63
    mem_0.MPORT_4.addr <= io_raddr @[lab8task.scala 48:26]
    mem_1.MPORT_4.addr <= io_raddr @[lab8task.scala 48:26]
    mem_2.MPORT_4.addr <= io_raddr @[lab8task.scala 48:26]
    mem_3.MPORT_4.addr <= io_raddr @[lab8task.scala 48:26]
    mem_0.MPORT_4.en <= UInt<1>("h1") @[lab8task.scala 48:26]
    mem_1.MPORT_4.en <= UInt<1>("h1") @[lab8task.scala 48:26]
    mem_2.MPORT_4.en <= UInt<1>("h1") @[lab8task.scala 48:26]
    mem_3.MPORT_4.en <= UInt<1>("h1") @[lab8task.scala 48:26]
    mem_0.MPORT_4.clk <= clock @[lab8task.scala 48:26]
    mem_1.MPORT_4.clk <= clock @[lab8task.scala 48:26]
    mem_2.MPORT_4.clk <= clock @[lab8task.scala 48:26]
    mem_3.MPORT_4.clk <= clock @[lab8task.scala 48:26]
    mem_0.MPORT.addr <= _GEN_64
    mem_1.MPORT.addr <= _GEN_64
    mem_2.MPORT.addr <= _GEN_64
    mem_3.MPORT.addr <= _GEN_64
    mem_0.MPORT.en <= _GEN_66
    mem_1.MPORT.en <= _GEN_66
    mem_2.MPORT.en <= _GEN_66
    mem_3.MPORT.en <= _GEN_66
    mem_0.MPORT.clk <= _GEN_65
    mem_1.MPORT.clk <= _GEN_65
    mem_2.MPORT.clk <= _GEN_65
    mem_3.MPORT.clk <= _GEN_65
    mem_0.MPORT.data <= _GEN_68
    mem_1.MPORT.data <= _GEN_69
    mem_2.MPORT.data <= _GEN_70
    mem_3.MPORT.data <= _GEN_71
    mem_0.MPORT.mask <= _GEN_67
    mem_1.MPORT.mask <= _GEN_67
    mem_2.MPORT.mask <= _GEN_67
    mem_3.MPORT.mask <= _GEN_67
    mem_0.MPORT_1.addr <= _GEN_72
    mem_1.MPORT_1.addr <= _GEN_72
    mem_2.MPORT_1.addr <= _GEN_72
    mem_3.MPORT_1.addr <= _GEN_72
    mem_0.MPORT_1.en <= _GEN_74
    mem_1.MPORT_1.en <= _GEN_74
    mem_2.MPORT_1.en <= _GEN_74
    mem_3.MPORT_1.en <= _GEN_74
    mem_0.MPORT_1.clk <= _GEN_73
    mem_1.MPORT_1.clk <= _GEN_73
    mem_2.MPORT_1.clk <= _GEN_73
    mem_3.MPORT_1.clk <= _GEN_73
    mem_0.MPORT_1.data <= _GEN_76
    mem_1.MPORT_1.data <= _GEN_77
    mem_2.MPORT_1.data <= _GEN_78
    mem_3.MPORT_1.data <= _GEN_79
    mem_0.MPORT_1.mask <= _GEN_75
    mem_1.MPORT_1.mask <= _GEN_75
    mem_2.MPORT_1.mask <= _GEN_75
    mem_3.MPORT_1.mask <= _GEN_75
    mem_0.MPORT_2.addr <= _GEN_80
    mem_1.MPORT_2.addr <= _GEN_80
    mem_2.MPORT_2.addr <= _GEN_80
    mem_3.MPORT_2.addr <= _GEN_80
    mem_0.MPORT_2.en <= _GEN_82
    mem_1.MPORT_2.en <= _GEN_82
    mem_2.MPORT_2.en <= _GEN_82
    mem_3.MPORT_2.en <= _GEN_82
    mem_0.MPORT_2.clk <= _GEN_81
    mem_1.MPORT_2.clk <= _GEN_81
    mem_2.MPORT_2.clk <= _GEN_81
    mem_3.MPORT_2.clk <= _GEN_81
    mem_0.MPORT_2.data <= _GEN_84
    mem_1.MPORT_2.data <= _GEN_85
    mem_2.MPORT_2.data <= _GEN_86
    mem_3.MPORT_2.data <= _GEN_87
    mem_0.MPORT_2.mask <= _GEN_83
    mem_1.MPORT_2.mask <= _GEN_83
    mem_2.MPORT_2.mask <= _GEN_83
    mem_3.MPORT_2.mask <= _GEN_83
    mem_0.MPORT_3.addr <= _GEN_88
    mem_1.MPORT_3.addr <= _GEN_88
    mem_2.MPORT_3.addr <= _GEN_88
    mem_3.MPORT_3.addr <= _GEN_88
    mem_0.MPORT_3.en <= _GEN_90
    mem_1.MPORT_3.en <= _GEN_90
    mem_2.MPORT_3.en <= _GEN_90
    mem_3.MPORT_3.en <= _GEN_90
    mem_0.MPORT_3.clk <= _GEN_89
    mem_1.MPORT_3.clk <= _GEN_89
    mem_2.MPORT_3.clk <= _GEN_89
    mem_3.MPORT_3.clk <= _GEN_89
    mem_0.MPORT_3.data <= _GEN_92
    mem_1.MPORT_3.data <= _GEN_93
    mem_2.MPORT_3.data <= _GEN_94
    mem_3.MPORT_3.data <= _GEN_95
    mem_0.MPORT_3.mask <= _GEN_91
    mem_1.MPORT_3.mask <= _GEN_91
    mem_2.MPORT_3.mask <= _GEN_91
    mem_3.MPORT_3.mask <= _GEN_91
    q1.clock <= clock
    q1.reset <= reset
    q1.io_enq_valid <= io_req_0_valid @[Decoupled.scala 297:22]
    q1.io_enq_bits <= io_req_0_bits @[Decoupled.scala 298:21]
    q1.io_deq_ready <= arb_priority.io_in_0_ready @[lab8task.scala 18:27]
    q2.clock <= clock
    q2.reset <= reset
    q2.io_enq_valid <= io_req_1_valid @[Decoupled.scala 297:22]
    q2.io_enq_bits <= io_req_1_bits @[Decoupled.scala 298:21]
    q2.io_deq_ready <= arb_priority.io_in_1_ready @[lab8task.scala 19:27]
    q3.clock <= clock
    q3.reset <= reset
    q3.io_enq_valid <= io_req_2_valid @[Decoupled.scala 297:22]
    q3.io_enq_bits <= io_req_2_bits @[Decoupled.scala 298:21]
    q3.io_deq_ready <= arb_priority.io_in_2_ready @[lab8task.scala 20:27]
    q4.clock <= clock
    q4.reset <= reset
    q4.io_enq_valid <= io_req_3_valid @[Decoupled.scala 297:22]
    q4.io_enq_bits <= io_req_3_bits @[Decoupled.scala 298:21]
    q4.io_deq_ready <= arb_priority.io_in_3_ready @[lab8task.scala 21:27]
