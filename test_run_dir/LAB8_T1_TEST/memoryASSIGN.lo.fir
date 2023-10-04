circuit memoryASSIGN :
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

  module Arbiter :
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

    node _GEN_0 = mux(io_in_2_valid, UInt<2>("h2"), UInt<2>("h3")) @[Arbiter.scala 126:27 Arbiter.scala 127:17 Arbiter.scala 123:13]
    node _GEN_1 = mux(io_in_2_valid, io_in_2_bits, io_in_3_bits) @[Arbiter.scala 126:27 Arbiter.scala 128:19 Arbiter.scala 124:15]
    node _GEN_2 = mux(io_in_1_valid, UInt<1>("h1"), _GEN_0) @[Arbiter.scala 126:27 Arbiter.scala 127:17]
    node _GEN_3 = mux(io_in_1_valid, io_in_1_bits, _GEN_1) @[Arbiter.scala 126:27 Arbiter.scala 128:19]
    node _GEN_4 = mux(io_in_0_valid, UInt<1>("h0"), _GEN_2) @[Arbiter.scala 126:27 Arbiter.scala 127:17]
    node _GEN_5 = mux(io_in_0_valid, io_in_0_bits, _GEN_3) @[Arbiter.scala 126:27 Arbiter.scala 128:19]
    node _grant_T = or(io_in_0_valid, io_in_1_valid) @[Arbiter.scala 31:68]
    node _grant_T_1 = or(_grant_T, io_in_2_valid) @[Arbiter.scala 31:68]
    node grant_1 = eq(io_in_0_valid, UInt<1>("h0")) @[Arbiter.scala 31:78]
    node grant_2 = eq(_grant_T, UInt<1>("h0")) @[Arbiter.scala 31:78]
    node grant_3 = eq(_grant_T_1, UInt<1>("h0")) @[Arbiter.scala 31:78]
    node _io_in_0_ready_T = and(UInt<1>("h1"), io_out_ready) @[Arbiter.scala 134:19]
    node _io_in_1_ready_T = and(grant_1, io_out_ready) @[Arbiter.scala 134:19]
    node _io_in_2_ready_T = and(grant_2, io_out_ready) @[Arbiter.scala 134:19]
    node _io_in_3_ready_T = and(grant_3, io_out_ready) @[Arbiter.scala 134:19]
    node _io_out_valid_T = eq(grant_3, UInt<1>("h0")) @[Arbiter.scala 135:19]
    node _io_out_valid_T_1 = or(_io_out_valid_T, io_in_3_valid) @[Arbiter.scala 135:31]
    io_in_0_ready <= _io_in_0_ready_T @[Arbiter.scala 134:14]
    io_in_1_ready <= _io_in_1_ready_T @[Arbiter.scala 134:14]
    io_in_2_ready <= _io_in_2_ready_T @[Arbiter.scala 134:14]
    io_in_3_ready <= _io_in_3_ready_T @[Arbiter.scala 134:14]
    io_out_valid <= _io_out_valid_T_1 @[Arbiter.scala 135:16]
    io_out_bits <= _GEN_5
    io_chosen <= _GEN_4

  module memoryASSIGN :
    input clock : Clock
    input reset : UInt<1>
    output io_memory_0 : UInt<32>
    output io_memory_1 : UInt<32>
    output io_memory_2 : UInt<32>
    output io_memory_3 : UInt<32>
    output io_requestor_0_ready : UInt<1>
    input io_requestor_0_valid : UInt<1>
    input io_requestor_0_bits : UInt<32>
    output io_requestor_1_ready : UInt<1>
    input io_requestor_1_valid : UInt<1>
    input io_requestor_1_bits : UInt<32>
    output io_requestor_2_ready : UInt<1>
    input io_requestor_2_valid : UInt<1>
    input io_requestor_2_bits : UInt<32>
    output io_requestor_3_ready : UInt<1>
    input io_requestor_3_valid : UInt<1>
    input io_requestor_3_bits : UInt<32>
    input io_Readaddr : UInt<5>
    input io_Writeaddr : UInt<5>

    inst q0 of Queue @[Decoupled.scala 296:21]
    inst q1 of Queue @[Decoupled.scala 296:21]
    inst q2 of Queue @[Decoupled.scala 296:21]
    inst q3 of Queue @[Decoupled.scala 296:21]
    inst arb_priority of Arbiter @[practice.scala 16:31]
    mem mem_0 : @[practice.scala 24:26]
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
    mem mem_1 : @[practice.scala 24:26]
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
    mem mem_2 : @[practice.scala 24:26]
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
    mem mem_3 : @[practice.scala 24:26]
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
    reg data_0 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), data_0) @[practice.scala 25:17]
    reg data_1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), data_1) @[practice.scala 25:17]
    reg data_2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), data_2) @[practice.scala 25:17]
    reg data_3 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), data_3) @[practice.scala 25:17]
    node _GEN_0 = mux(io_requestor_3_valid, UInt<1>("h0"), data_0) @[practice.scala 44:39 practice.scala 45:17 practice.scala 25:17]
    node _GEN_1 = mux(io_requestor_3_valid, UInt<1>("h0"), data_1) @[practice.scala 44:39 practice.scala 46:17 practice.scala 25:17]
    node _GEN_2 = mux(io_requestor_3_valid, UInt<1>("h0"), data_2) @[practice.scala 44:39 practice.scala 47:17 practice.scala 25:17]
    node _GEN_3 = mux(io_requestor_3_valid, arb_priority.io_out_bits, data_3) @[practice.scala 44:39 practice.scala 48:17 practice.scala 25:17]
    node _GEN_4 = validif(io_requestor_3_valid, io_Writeaddr) @[practice.scala 44:39]
    node _GEN_5 = validif(io_requestor_3_valid, clock) @[practice.scala 44:39]
    node _GEN_6 = mux(io_requestor_3_valid, UInt<1>("h1"), UInt<1>("h0")) @[practice.scala 44:39 practice.scala 24:26]
    node _GEN_7 = validif(io_requestor_3_valid, UInt<1>("h1")) @[practice.scala 44:39]
    node _GEN_8 = validif(io_requestor_3_valid, data_0) @[practice.scala 44:39]
    node _GEN_9 = validif(io_requestor_3_valid, data_1) @[practice.scala 44:39]
    node _GEN_10 = validif(io_requestor_3_valid, data_2) @[practice.scala 44:39]
    node _GEN_11 = validif(io_requestor_3_valid, data_3) @[practice.scala 44:39]
    node _GEN_12 = mux(io_requestor_2_valid, UInt<1>("h0"), _GEN_0) @[practice.scala 38:39 practice.scala 39:17]
    node _GEN_13 = mux(io_requestor_2_valid, UInt<1>("h0"), _GEN_1) @[practice.scala 38:39 practice.scala 40:17]
    node _GEN_14 = mux(io_requestor_2_valid, arb_priority.io_out_bits, _GEN_2) @[practice.scala 38:39 practice.scala 41:17]
    node _GEN_15 = mux(io_requestor_2_valid, UInt<1>("h0"), _GEN_3) @[practice.scala 38:39 practice.scala 42:17]
    node _GEN_16 = validif(io_requestor_2_valid, io_Writeaddr) @[practice.scala 38:39]
    node _GEN_17 = validif(io_requestor_2_valid, clock) @[practice.scala 38:39]
    node _GEN_18 = mux(io_requestor_2_valid, UInt<1>("h1"), UInt<1>("h0")) @[practice.scala 38:39 practice.scala 24:26]
    node _GEN_19 = validif(io_requestor_2_valid, UInt<1>("h1")) @[practice.scala 38:39]
    node _GEN_20 = validif(io_requestor_2_valid, data_0) @[practice.scala 38:39]
    node _GEN_21 = validif(io_requestor_2_valid, data_1) @[practice.scala 38:39]
    node _GEN_22 = validif(io_requestor_2_valid, data_2) @[practice.scala 38:39]
    node _GEN_23 = validif(io_requestor_2_valid, data_3) @[practice.scala 38:39]
    node _GEN_24 = validif(eq(io_requestor_2_valid, UInt<1>("h0")), _GEN_4) @[practice.scala 38:39]
    node _GEN_25 = validif(eq(io_requestor_2_valid, UInt<1>("h0")), _GEN_5) @[practice.scala 38:39]
    node _GEN_26 = mux(io_requestor_2_valid, UInt<1>("h0"), _GEN_6) @[practice.scala 38:39 practice.scala 24:26]
    node _GEN_27 = validif(eq(io_requestor_2_valid, UInt<1>("h0")), _GEN_7) @[practice.scala 38:39]
    node _GEN_28 = validif(eq(io_requestor_2_valid, UInt<1>("h0")), _GEN_8) @[practice.scala 38:39]
    node _GEN_29 = validif(eq(io_requestor_2_valid, UInt<1>("h0")), _GEN_9) @[practice.scala 38:39]
    node _GEN_30 = validif(eq(io_requestor_2_valid, UInt<1>("h0")), _GEN_10) @[practice.scala 38:39]
    node _GEN_31 = validif(eq(io_requestor_2_valid, UInt<1>("h0")), _GEN_11) @[practice.scala 38:39]
    node _GEN_32 = mux(io_requestor_1_valid, UInt<1>("h0"), _GEN_12) @[practice.scala 32:39 practice.scala 33:17]
    node _GEN_33 = mux(io_requestor_1_valid, arb_priority.io_out_bits, _GEN_13) @[practice.scala 32:39 practice.scala 34:17]
    node _GEN_34 = mux(io_requestor_1_valid, UInt<1>("h0"), _GEN_14) @[practice.scala 32:39 practice.scala 35:17]
    node _GEN_35 = mux(io_requestor_1_valid, UInt<1>("h0"), _GEN_15) @[practice.scala 32:39 practice.scala 36:17]
    node _GEN_36 = validif(io_requestor_1_valid, io_Writeaddr) @[practice.scala 32:39]
    node _GEN_37 = validif(io_requestor_1_valid, clock) @[practice.scala 32:39]
    node _GEN_38 = mux(io_requestor_1_valid, UInt<1>("h1"), UInt<1>("h0")) @[practice.scala 32:39 practice.scala 24:26]
    node _GEN_39 = validif(io_requestor_1_valid, UInt<1>("h1")) @[practice.scala 32:39]
    node _GEN_40 = validif(io_requestor_1_valid, data_0) @[practice.scala 32:39]
    node _GEN_41 = validif(io_requestor_1_valid, data_1) @[practice.scala 32:39]
    node _GEN_42 = validif(io_requestor_1_valid, data_2) @[practice.scala 32:39]
    node _GEN_43 = validif(io_requestor_1_valid, data_3) @[practice.scala 32:39]
    node _GEN_44 = validif(eq(io_requestor_1_valid, UInt<1>("h0")), _GEN_16) @[practice.scala 32:39]
    node _GEN_45 = validif(eq(io_requestor_1_valid, UInt<1>("h0")), _GEN_17) @[practice.scala 32:39]
    node _GEN_46 = mux(io_requestor_1_valid, UInt<1>("h0"), _GEN_18) @[practice.scala 32:39 practice.scala 24:26]
    node _GEN_47 = validif(eq(io_requestor_1_valid, UInt<1>("h0")), _GEN_19) @[practice.scala 32:39]
    node _GEN_48 = validif(eq(io_requestor_1_valid, UInt<1>("h0")), _GEN_20) @[practice.scala 32:39]
    node _GEN_49 = validif(eq(io_requestor_1_valid, UInt<1>("h0")), _GEN_21) @[practice.scala 32:39]
    node _GEN_50 = validif(eq(io_requestor_1_valid, UInt<1>("h0")), _GEN_22) @[practice.scala 32:39]
    node _GEN_51 = validif(eq(io_requestor_1_valid, UInt<1>("h0")), _GEN_23) @[practice.scala 32:39]
    node _GEN_52 = validif(eq(io_requestor_1_valid, UInt<1>("h0")), _GEN_24) @[practice.scala 32:39]
    node _GEN_53 = validif(eq(io_requestor_1_valid, UInt<1>("h0")), _GEN_25) @[practice.scala 32:39]
    node _GEN_54 = mux(io_requestor_1_valid, UInt<1>("h0"), _GEN_26) @[practice.scala 32:39 practice.scala 24:26]
    node _GEN_55 = validif(eq(io_requestor_1_valid, UInt<1>("h0")), _GEN_27) @[practice.scala 32:39]
    node _GEN_56 = validif(eq(io_requestor_1_valid, UInt<1>("h0")), _GEN_28) @[practice.scala 32:39]
    node _GEN_57 = validif(eq(io_requestor_1_valid, UInt<1>("h0")), _GEN_29) @[practice.scala 32:39]
    node _GEN_58 = validif(eq(io_requestor_1_valid, UInt<1>("h0")), _GEN_30) @[practice.scala 32:39]
    node _GEN_59 = validif(eq(io_requestor_1_valid, UInt<1>("h0")), _GEN_31) @[practice.scala 32:39]
    node _GEN_60 = mux(io_requestor_0_valid, arb_priority.io_out_bits, _GEN_32) @[practice.scala 26:34 practice.scala 27:17]
    node _GEN_61 = mux(io_requestor_0_valid, UInt<1>("h0"), _GEN_33) @[practice.scala 26:34 practice.scala 28:17]
    node _GEN_62 = mux(io_requestor_0_valid, UInt<1>("h0"), _GEN_34) @[practice.scala 26:34 practice.scala 29:17]
    node _GEN_63 = mux(io_requestor_0_valid, UInt<1>("h0"), _GEN_35) @[practice.scala 26:34 practice.scala 30:17]
    node _GEN_64 = validif(io_requestor_0_valid, io_Writeaddr) @[practice.scala 26:34]
    node _GEN_65 = validif(io_requestor_0_valid, clock) @[practice.scala 26:34]
    node _GEN_66 = mux(io_requestor_0_valid, UInt<1>("h1"), UInt<1>("h0")) @[practice.scala 26:34 practice.scala 24:26]
    node _GEN_67 = validif(io_requestor_0_valid, UInt<1>("h1")) @[practice.scala 26:34]
    node _GEN_68 = validif(io_requestor_0_valid, data_0) @[practice.scala 26:34]
    node _GEN_69 = validif(io_requestor_0_valid, data_1) @[practice.scala 26:34]
    node _GEN_70 = validif(io_requestor_0_valid, data_2) @[practice.scala 26:34]
    node _GEN_71 = validif(io_requestor_0_valid, data_3) @[practice.scala 26:34]
    node _GEN_72 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_36) @[practice.scala 26:34]
    node _GEN_73 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_37) @[practice.scala 26:34]
    node _GEN_74 = mux(io_requestor_0_valid, UInt<1>("h0"), _GEN_38) @[practice.scala 26:34 practice.scala 24:26]
    node _GEN_75 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_39) @[practice.scala 26:34]
    node _GEN_76 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_40) @[practice.scala 26:34]
    node _GEN_77 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_41) @[practice.scala 26:34]
    node _GEN_78 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_42) @[practice.scala 26:34]
    node _GEN_79 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_43) @[practice.scala 26:34]
    node _GEN_80 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_44) @[practice.scala 26:34]
    node _GEN_81 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_45) @[practice.scala 26:34]
    node _GEN_82 = mux(io_requestor_0_valid, UInt<1>("h0"), _GEN_46) @[practice.scala 26:34 practice.scala 24:26]
    node _GEN_83 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_47) @[practice.scala 26:34]
    node _GEN_84 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_48) @[practice.scala 26:34]
    node _GEN_85 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_49) @[practice.scala 26:34]
    node _GEN_86 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_50) @[practice.scala 26:34]
    node _GEN_87 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_51) @[practice.scala 26:34]
    node _GEN_88 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_52) @[practice.scala 26:34]
    node _GEN_89 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_53) @[practice.scala 26:34]
    node _GEN_90 = mux(io_requestor_0_valid, UInt<1>("h0"), _GEN_54) @[practice.scala 26:34 practice.scala 24:26]
    node _GEN_91 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_55) @[practice.scala 26:34]
    node _GEN_92 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_56) @[practice.scala 26:34]
    node _GEN_93 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_57) @[practice.scala 26:34]
    node _GEN_94 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_58) @[practice.scala 26:34]
    node _GEN_95 = validif(eq(io_requestor_0_valid, UInt<1>("h0")), _GEN_59) @[practice.scala 26:34]
    io_memory_0 <= mem_0.MPORT_4.data @[practice.scala 52:14]
    io_memory_1 <= mem_1.MPORT_4.data @[practice.scala 52:14]
    io_memory_2 <= mem_2.MPORT_4.data @[practice.scala 52:14]
    io_memory_3 <= mem_3.MPORT_4.data @[practice.scala 52:14]
    io_requestor_0_ready <= q0.io_enq_ready @[Decoupled.scala 299:17]
    io_requestor_1_ready <= q1.io_enq_ready @[Decoupled.scala 299:17]
    io_requestor_2_ready <= q2.io_enq_ready @[Decoupled.scala 299:17]
    io_requestor_3_ready <= q3.io_enq_ready @[Decoupled.scala 299:17]
    q0.clock <= clock
    q0.reset <= reset
    q0.io_enq_valid <= io_requestor_0_valid @[Decoupled.scala 297:22]
    q0.io_enq_bits <= io_requestor_0_bits @[Decoupled.scala 298:21]
    q0.io_deq_ready <= arb_priority.io_in_0_ready @[practice.scala 19:32]
    q1.clock <= clock
    q1.reset <= reset
    q1.io_enq_valid <= io_requestor_1_valid @[Decoupled.scala 297:22]
    q1.io_enq_bits <= io_requestor_1_bits @[Decoupled.scala 298:21]
    q1.io_deq_ready <= arb_priority.io_in_1_ready @[practice.scala 20:32]
    q2.clock <= clock
    q2.reset <= reset
    q2.io_enq_valid <= io_requestor_2_valid @[Decoupled.scala 297:22]
    q2.io_enq_bits <= io_requestor_2_bits @[Decoupled.scala 298:21]
    q2.io_deq_ready <= arb_priority.io_in_2_ready @[practice.scala 21:32]
    q3.clock <= clock
    q3.reset <= reset
    q3.io_enq_valid <= io_requestor_3_valid @[Decoupled.scala 297:22]
    q3.io_enq_bits <= io_requestor_3_bits @[Decoupled.scala 298:21]
    q3.io_deq_ready <= arb_priority.io_in_3_ready @[practice.scala 22:32]
    arb_priority.clock <= clock
    arb_priority.reset <= reset
    arb_priority.io_in_0_valid <= q0.io_deq_valid @[practice.scala 19:32]
    arb_priority.io_in_0_bits <= q0.io_deq_bits @[practice.scala 19:32]
    arb_priority.io_in_1_valid <= q1.io_deq_valid @[practice.scala 20:32]
    arb_priority.io_in_1_bits <= q1.io_deq_bits @[practice.scala 20:32]
    arb_priority.io_in_2_valid <= q2.io_deq_valid @[practice.scala 21:32]
    arb_priority.io_in_2_bits <= q2.io_deq_bits @[practice.scala 21:32]
    arb_priority.io_in_3_valid <= q3.io_deq_valid @[practice.scala 22:32]
    arb_priority.io_in_3_bits <= q3.io_deq_bits @[practice.scala 22:32]
    arb_priority.io_out_ready <= UInt<1>("h1") @[practice.scala 23:31]
    mem_0.MPORT_4.addr <= io_Readaddr @[practice.scala 52:24]
    mem_1.MPORT_4.addr <= io_Readaddr @[practice.scala 52:24]
    mem_2.MPORT_4.addr <= io_Readaddr @[practice.scala 52:24]
    mem_3.MPORT_4.addr <= io_Readaddr @[practice.scala 52:24]
    mem_0.MPORT_4.en <= UInt<1>("h1") @[practice.scala 52:24]
    mem_1.MPORT_4.en <= UInt<1>("h1") @[practice.scala 52:24]
    mem_2.MPORT_4.en <= UInt<1>("h1") @[practice.scala 52:24]
    mem_3.MPORT_4.en <= UInt<1>("h1") @[practice.scala 52:24]
    mem_0.MPORT_4.clk <= clock @[practice.scala 52:24]
    mem_1.MPORT_4.clk <= clock @[practice.scala 52:24]
    mem_2.MPORT_4.clk <= clock @[practice.scala 52:24]
    mem_3.MPORT_4.clk <= clock @[practice.scala 52:24]
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
    data_0 <= _GEN_60
    data_1 <= _GEN_61
    data_2 <= _GEN_62
    data_3 <= _GEN_63
