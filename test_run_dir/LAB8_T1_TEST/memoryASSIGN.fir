;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit memoryASSIGN : 
  module Queue : 
    input clock : Clock
    input reset : Reset
    output io : {flip enq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, deq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, count : UInt<2>}
    
    cmem ram : UInt<32>[2] @[Decoupled.scala 218:16]
    reg value : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg value_1 : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg maybe_full : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Decoupled.scala 221:27]
    node ptr_match = eq(value, value_1) @[Decoupled.scala 223:33]
    node _empty_T = eq(maybe_full, UInt<1>("h00")) @[Decoupled.scala 224:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 224:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 225:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 40:37]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 40:37]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 229:17]
      infer mport MPORT = ram[value], clock @[Decoupled.scala 230:8]
      MPORT <= io.enq.bits @[Decoupled.scala 230:24]
      node wrap = eq(value, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T = add(value, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 76:24]
      value <= _value_T_1 @[Counter.scala 76:15]
      skip @[Decoupled.scala 229:17]
    when do_deq : @[Decoupled.scala 233:17]
      node wrap_1 = eq(value_1, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T_2 = add(value_1, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 76:24]
      value_1 <= _value_T_3 @[Counter.scala 76:15]
      skip @[Decoupled.scala 233:17]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 236:16]
    when _T : @[Decoupled.scala 236:28]
      maybe_full <= do_enq @[Decoupled.scala 237:16]
      skip @[Decoupled.scala 236:28]
    node _io_deq_valid_T = eq(empty, UInt<1>("h00")) @[Decoupled.scala 240:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 240:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h00")) @[Decoupled.scala 241:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 241:16]
    infer mport io_deq_bits_MPORT = ram[value_1], clock @[Decoupled.scala 242:21]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 242:15]
    node _ptr_diff_T = sub(value, value_1) @[Decoupled.scala 257:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 257:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 259:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<2>("h02"), UInt<1>("h00")) @[Decoupled.scala 259:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 259:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 259:14]
    
  module Queue_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip enq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, deq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, count : UInt<2>}
    
    cmem ram : UInt<32>[2] @[Decoupled.scala 218:16]
    reg value : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg value_1 : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg maybe_full : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Decoupled.scala 221:27]
    node ptr_match = eq(value, value_1) @[Decoupled.scala 223:33]
    node _empty_T = eq(maybe_full, UInt<1>("h00")) @[Decoupled.scala 224:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 224:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 225:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 40:37]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 40:37]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 229:17]
      infer mport MPORT = ram[value], clock @[Decoupled.scala 230:8]
      MPORT <= io.enq.bits @[Decoupled.scala 230:24]
      node wrap = eq(value, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T = add(value, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 76:24]
      value <= _value_T_1 @[Counter.scala 76:15]
      skip @[Decoupled.scala 229:17]
    when do_deq : @[Decoupled.scala 233:17]
      node wrap_1 = eq(value_1, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T_2 = add(value_1, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 76:24]
      value_1 <= _value_T_3 @[Counter.scala 76:15]
      skip @[Decoupled.scala 233:17]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 236:16]
    when _T : @[Decoupled.scala 236:28]
      maybe_full <= do_enq @[Decoupled.scala 237:16]
      skip @[Decoupled.scala 236:28]
    node _io_deq_valid_T = eq(empty, UInt<1>("h00")) @[Decoupled.scala 240:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 240:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h00")) @[Decoupled.scala 241:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 241:16]
    infer mport io_deq_bits_MPORT = ram[value_1], clock @[Decoupled.scala 242:21]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 242:15]
    node _ptr_diff_T = sub(value, value_1) @[Decoupled.scala 257:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 257:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 259:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<2>("h02"), UInt<1>("h00")) @[Decoupled.scala 259:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 259:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 259:14]
    
  module Queue_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip enq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, deq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, count : UInt<2>}
    
    cmem ram : UInt<32>[2] @[Decoupled.scala 218:16]
    reg value : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg value_1 : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg maybe_full : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Decoupled.scala 221:27]
    node ptr_match = eq(value, value_1) @[Decoupled.scala 223:33]
    node _empty_T = eq(maybe_full, UInt<1>("h00")) @[Decoupled.scala 224:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 224:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 225:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 40:37]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 40:37]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 229:17]
      infer mport MPORT = ram[value], clock @[Decoupled.scala 230:8]
      MPORT <= io.enq.bits @[Decoupled.scala 230:24]
      node wrap = eq(value, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T = add(value, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 76:24]
      value <= _value_T_1 @[Counter.scala 76:15]
      skip @[Decoupled.scala 229:17]
    when do_deq : @[Decoupled.scala 233:17]
      node wrap_1 = eq(value_1, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T_2 = add(value_1, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 76:24]
      value_1 <= _value_T_3 @[Counter.scala 76:15]
      skip @[Decoupled.scala 233:17]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 236:16]
    when _T : @[Decoupled.scala 236:28]
      maybe_full <= do_enq @[Decoupled.scala 237:16]
      skip @[Decoupled.scala 236:28]
    node _io_deq_valid_T = eq(empty, UInt<1>("h00")) @[Decoupled.scala 240:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 240:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h00")) @[Decoupled.scala 241:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 241:16]
    infer mport io_deq_bits_MPORT = ram[value_1], clock @[Decoupled.scala 242:21]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 242:15]
    node _ptr_diff_T = sub(value, value_1) @[Decoupled.scala 257:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 257:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 259:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<2>("h02"), UInt<1>("h00")) @[Decoupled.scala 259:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 259:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 259:14]
    
  module Queue_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip enq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, deq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, count : UInt<2>}
    
    cmem ram : UInt<32>[2] @[Decoupled.scala 218:16]
    reg value : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg value_1 : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg maybe_full : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Decoupled.scala 221:27]
    node ptr_match = eq(value, value_1) @[Decoupled.scala 223:33]
    node _empty_T = eq(maybe_full, UInt<1>("h00")) @[Decoupled.scala 224:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 224:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 225:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 40:37]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 40:37]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 229:17]
      infer mport MPORT = ram[value], clock @[Decoupled.scala 230:8]
      MPORT <= io.enq.bits @[Decoupled.scala 230:24]
      node wrap = eq(value, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T = add(value, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 76:24]
      value <= _value_T_1 @[Counter.scala 76:15]
      skip @[Decoupled.scala 229:17]
    when do_deq : @[Decoupled.scala 233:17]
      node wrap_1 = eq(value_1, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T_2 = add(value_1, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 76:24]
      value_1 <= _value_T_3 @[Counter.scala 76:15]
      skip @[Decoupled.scala 233:17]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 236:16]
    when _T : @[Decoupled.scala 236:28]
      maybe_full <= do_enq @[Decoupled.scala 237:16]
      skip @[Decoupled.scala 236:28]
    node _io_deq_valid_T = eq(empty, UInt<1>("h00")) @[Decoupled.scala 240:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 240:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h00")) @[Decoupled.scala 241:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 241:16]
    infer mport io_deq_bits_MPORT = ram[value_1], clock @[Decoupled.scala 242:21]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 242:15]
    node _ptr_diff_T = sub(value, value_1) @[Decoupled.scala 257:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 257:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 259:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<2>("h02"), UInt<1>("h00")) @[Decoupled.scala 259:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 259:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 259:14]
    
  module Arbiter : 
    input clock : Clock
    input reset : Reset
    output io : {flip in : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt}[4], out : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt}, chosen : UInt<2>}
    
    io.chosen <= UInt<2>("h03") @[Arbiter.scala 123:13]
    io.out.bits <= io.in[3].bits @[Arbiter.scala 124:15]
    when io.in[2].valid : @[Arbiter.scala 126:27]
      io.chosen <= UInt<2>("h02") @[Arbiter.scala 127:17]
      io.out.bits <= io.in[2].bits @[Arbiter.scala 128:19]
      skip @[Arbiter.scala 126:27]
    when io.in[1].valid : @[Arbiter.scala 126:27]
      io.chosen <= UInt<1>("h01") @[Arbiter.scala 127:17]
      io.out.bits <= io.in[1].bits @[Arbiter.scala 128:19]
      skip @[Arbiter.scala 126:27]
    when io.in[0].valid : @[Arbiter.scala 126:27]
      io.chosen <= UInt<1>("h00") @[Arbiter.scala 127:17]
      io.out.bits <= io.in[0].bits @[Arbiter.scala 128:19]
      skip @[Arbiter.scala 126:27]
    node _grant_T = or(io.in[0].valid, io.in[1].valid) @[Arbiter.scala 31:68]
    node _grant_T_1 = or(_grant_T, io.in[2].valid) @[Arbiter.scala 31:68]
    node grant_1 = eq(io.in[0].valid, UInt<1>("h00")) @[Arbiter.scala 31:78]
    node grant_2 = eq(_grant_T, UInt<1>("h00")) @[Arbiter.scala 31:78]
    node grant_3 = eq(_grant_T_1, UInt<1>("h00")) @[Arbiter.scala 31:78]
    node _io_in_0_ready_T = and(UInt<1>("h01"), io.out.ready) @[Arbiter.scala 134:19]
    io.in[0].ready <= _io_in_0_ready_T @[Arbiter.scala 134:14]
    node _io_in_1_ready_T = and(grant_1, io.out.ready) @[Arbiter.scala 134:19]
    io.in[1].ready <= _io_in_1_ready_T @[Arbiter.scala 134:14]
    node _io_in_2_ready_T = and(grant_2, io.out.ready) @[Arbiter.scala 134:19]
    io.in[2].ready <= _io_in_2_ready_T @[Arbiter.scala 134:14]
    node _io_in_3_ready_T = and(grant_3, io.out.ready) @[Arbiter.scala 134:19]
    io.in[3].ready <= _io_in_3_ready_T @[Arbiter.scala 134:14]
    node _io_out_valid_T = eq(grant_3, UInt<1>("h00")) @[Arbiter.scala 135:19]
    node _io_out_valid_T_1 = or(_io_out_valid_T, io.in[3].valid) @[Arbiter.scala 135:31]
    io.out.valid <= _io_out_valid_T_1 @[Arbiter.scala 135:16]
    
  module memoryASSIGN : 
    input clock : Clock
    input reset : UInt<1>
    output io : {memory : UInt<32>[4], flip requestor : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}[4], flip Readaddr : UInt<5>, flip Writeaddr : UInt<5>}
    
    inst q0 of Queue @[Decoupled.scala 296:21]
    q0.clock <= clock
    q0.reset <= reset
    q0.io.enq.valid <= io.requestor[0].valid @[Decoupled.scala 297:22]
    q0.io.enq.bits <= io.requestor[0].bits @[Decoupled.scala 298:21]
    io.requestor[0].ready <= q0.io.enq.ready @[Decoupled.scala 299:17]
    inst q1 of Queue_1 @[Decoupled.scala 296:21]
    q1.clock <= clock
    q1.reset <= reset
    q1.io.enq.valid <= io.requestor[1].valid @[Decoupled.scala 297:22]
    q1.io.enq.bits <= io.requestor[1].bits @[Decoupled.scala 298:21]
    io.requestor[1].ready <= q1.io.enq.ready @[Decoupled.scala 299:17]
    inst q2 of Queue_2 @[Decoupled.scala 296:21]
    q2.clock <= clock
    q2.reset <= reset
    q2.io.enq.valid <= io.requestor[2].valid @[Decoupled.scala 297:22]
    q2.io.enq.bits <= io.requestor[2].bits @[Decoupled.scala 298:21]
    io.requestor[2].ready <= q2.io.enq.ready @[Decoupled.scala 299:17]
    inst q3 of Queue_3 @[Decoupled.scala 296:21]
    q3.clock <= clock
    q3.reset <= reset
    q3.io.enq.valid <= io.requestor[3].valid @[Decoupled.scala 297:22]
    q3.io.enq.bits <= io.requestor[3].bits @[Decoupled.scala 298:21]
    io.requestor[3].ready <= q3.io.enq.ready @[Decoupled.scala 299:17]
    inst arb_priority of Arbiter @[practice.scala 16:31]
    arb_priority.clock <= clock
    arb_priority.reset <= reset
    arb_priority.io.in[0].bits <= q0.io.deq.bits @[practice.scala 19:32]
    arb_priority.io.in[0].valid <= q0.io.deq.valid @[practice.scala 19:32]
    q0.io.deq.ready <= arb_priority.io.in[0].ready @[practice.scala 19:32]
    arb_priority.io.in[1].bits <= q1.io.deq.bits @[practice.scala 20:32]
    arb_priority.io.in[1].valid <= q1.io.deq.valid @[practice.scala 20:32]
    q1.io.deq.ready <= arb_priority.io.in[1].ready @[practice.scala 20:32]
    arb_priority.io.in[2].bits <= q2.io.deq.bits @[practice.scala 21:32]
    arb_priority.io.in[2].valid <= q2.io.deq.valid @[practice.scala 21:32]
    q2.io.deq.ready <= arb_priority.io.in[2].ready @[practice.scala 21:32]
    arb_priority.io.in[3].bits <= q3.io.deq.bits @[practice.scala 22:32]
    arb_priority.io.in[3].valid <= q3.io.deq.valid @[practice.scala 22:32]
    q3.io.deq.ready <= arb_priority.io.in[3].ready @[practice.scala 22:32]
    arb_priority.io.out.ready <= UInt<1>("h01") @[practice.scala 23:31]
    smem mem : UInt<32>[4][1024], undefined @[practice.scala 24:26]
    reg data : UInt[4], clock @[practice.scala 25:17]
    when io.requestor[0].valid : @[practice.scala 26:34]
      data[0] <= arb_priority.io.out.bits @[practice.scala 27:17]
      data[1] <= UInt<1>("h00") @[practice.scala 28:17]
      data[2] <= UInt<1>("h00") @[practice.scala 29:17]
      data[3] <= UInt<1>("h00") @[practice.scala 30:17]
      write mport MPORT = mem[io.Writeaddr], clock
      MPORT[0] <= data[0]
      MPORT[1] <= data[1]
      MPORT[2] <= data[2]
      MPORT[3] <= data[3]
      skip @[practice.scala 26:34]
    else : @[practice.scala 32:39]
      when io.requestor[1].valid : @[practice.scala 32:39]
        data[0] <= UInt<1>("h00") @[practice.scala 33:17]
        data[1] <= arb_priority.io.out.bits @[practice.scala 34:17]
        data[2] <= UInt<1>("h00") @[practice.scala 35:17]
        data[3] <= UInt<1>("h00") @[practice.scala 36:17]
        write mport MPORT_1 = mem[io.Writeaddr], clock
        MPORT_1[0] <= data[0]
        MPORT_1[1] <= data[1]
        MPORT_1[2] <= data[2]
        MPORT_1[3] <= data[3]
        skip @[practice.scala 32:39]
      else : @[practice.scala 38:39]
        when io.requestor[2].valid : @[practice.scala 38:39]
          data[0] <= UInt<1>("h00") @[practice.scala 39:17]
          data[1] <= UInt<1>("h00") @[practice.scala 40:17]
          data[2] <= arb_priority.io.out.bits @[practice.scala 41:17]
          data[3] <= UInt<1>("h00") @[practice.scala 42:17]
          write mport MPORT_2 = mem[io.Writeaddr], clock
          MPORT_2[0] <= data[0]
          MPORT_2[1] <= data[1]
          MPORT_2[2] <= data[2]
          MPORT_2[3] <= data[3]
          skip @[practice.scala 38:39]
        else : @[practice.scala 44:39]
          when io.requestor[3].valid : @[practice.scala 44:39]
            data[0] <= UInt<1>("h00") @[practice.scala 45:17]
            data[1] <= UInt<1>("h00") @[practice.scala 46:17]
            data[2] <= UInt<1>("h00") @[practice.scala 47:17]
            data[3] <= arb_priority.io.out.bits @[practice.scala 48:17]
            write mport MPORT_3 = mem[io.Writeaddr], clock
            MPORT_3[0] <= data[0]
            MPORT_3[1] <= data[1]
            MPORT_3[2] <= data[2]
            MPORT_3[3] <= data[3]
            skip @[practice.scala 44:39]
    read mport MPORT_4 = mem[io.Readaddr], clock @[practice.scala 52:24]
    io.memory[0] <= MPORT_4[0] @[practice.scala 52:14]
    io.memory[1] <= MPORT_4[1] @[practice.scala 52:14]
    io.memory[2] <= MPORT_4[2] @[practice.scala 52:14]
    io.memory[3] <= MPORT_4[3] @[practice.scala 52:14]
    
