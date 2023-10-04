circuit Riscv :
  module pc :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<32>
    output io_out1 : UInt<32>
    output io_out2 : UInt<32>

    reg pc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), pc) @[pc.scala 14:21]
    node _io_out2_T = add(pc, UInt<3>("h4")) @[pc.scala 17:18]
    node _io_out2_T_1 = tail(_io_out2_T, 1) @[pc.scala 17:18]
    io_out1 <= pc @[pc.scala 16:13]
    io_out2 <= _io_out2_T_1 @[pc.scala 17:13]
    pc <= mux(reset, UInt<32>("h0"), io_in) @[pc.scala 14:21 pc.scala 14:21 pc.scala 15:8]

  module instMem :
    input clock : Clock
    input reset : UInt<1>
    input io_addr : UInt<32>
    output io_instr : UInt<32>

    mem Amem : @[instMem.scala 12:19]
      data-type => UInt<32>
      depth => 32
      read-latency => 0
      write-latency => 1
      reader => io_instr_MPORT
      read-under-write => undefined
    node _io_instr_T = bits(io_addr, 4, 0) @[instMem.scala 14:22]
    io_instr <= Amem.io_instr_MPORT.data @[instMem.scala 14:14]
    Amem.io_instr_MPORT.addr <= _io_instr_T @[instMem.scala 14:22]
    Amem.io_instr_MPORT.en <= UInt<1>("h1") @[instMem.scala 14:22]
    Amem.io_instr_MPORT.clk <= clock @[instMem.scala 14:22]

  module register :
    input clock : Clock
    input reset : UInt<1>
    input io_rs1 : UInt<5>
    input io_rs2 : UInt<5>
    input io_rd : UInt<5>
    input io_write_data : UInt<32>
    input io_wen : UInt<1>
    output io_read1 : UInt<32>
    output io_read2 : UInt<32>

    reg regs_0 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_0) @[register.scala 15:23]
    reg regs_1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_1) @[register.scala 15:23]
    reg regs_2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_2) @[register.scala 15:23]
    reg regs_3 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_3) @[register.scala 15:23]
    reg regs_4 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_4) @[register.scala 15:23]
    reg regs_5 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_5) @[register.scala 15:23]
    reg regs_6 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_6) @[register.scala 15:23]
    reg regs_7 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_7) @[register.scala 15:23]
    reg regs_8 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_8) @[register.scala 15:23]
    reg regs_9 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_9) @[register.scala 15:23]
    reg regs_10 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_10) @[register.scala 15:23]
    reg regs_11 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_11) @[register.scala 15:23]
    reg regs_12 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_12) @[register.scala 15:23]
    reg regs_13 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_13) @[register.scala 15:23]
    reg regs_14 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_14) @[register.scala 15:23]
    reg regs_15 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_15) @[register.scala 15:23]
    reg regs_16 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_16) @[register.scala 15:23]
    reg regs_17 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_17) @[register.scala 15:23]
    reg regs_18 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_18) @[register.scala 15:23]
    reg regs_19 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_19) @[register.scala 15:23]
    reg regs_20 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_20) @[register.scala 15:23]
    reg regs_21 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_21) @[register.scala 15:23]
    reg regs_22 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_22) @[register.scala 15:23]
    reg regs_23 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_23) @[register.scala 15:23]
    reg regs_24 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_24) @[register.scala 15:23]
    reg regs_25 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_25) @[register.scala 15:23]
    reg regs_26 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_26) @[register.scala 15:23]
    reg regs_27 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_27) @[register.scala 15:23]
    reg regs_28 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_28) @[register.scala 15:23]
    reg regs_29 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_29) @[register.scala 15:23]
    reg regs_30 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_30) @[register.scala 15:23]
    reg regs_31 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_31) @[register.scala 15:23]
    node _io_read1_T = orr(io_rs1) @[register.scala 17:37]
    node _GEN_0 = validif(eq(UInt<1>("h0"), io_rs1), regs_0) @[register.scala 17:23 register.scala 17:23]
    node _GEN_1 = mux(eq(UInt<1>("h1"), io_rs1), regs_1, _GEN_0) @[register.scala 17:23 register.scala 17:23]
    node _GEN_2 = mux(eq(UInt<2>("h2"), io_rs1), regs_2, _GEN_1) @[register.scala 17:23 register.scala 17:23]
    node _GEN_3 = mux(eq(UInt<2>("h3"), io_rs1), regs_3, _GEN_2) @[register.scala 17:23 register.scala 17:23]
    node _GEN_4 = mux(eq(UInt<3>("h4"), io_rs1), regs_4, _GEN_3) @[register.scala 17:23 register.scala 17:23]
    node _GEN_5 = mux(eq(UInt<3>("h5"), io_rs1), regs_5, _GEN_4) @[register.scala 17:23 register.scala 17:23]
    node _GEN_6 = mux(eq(UInt<3>("h6"), io_rs1), regs_6, _GEN_5) @[register.scala 17:23 register.scala 17:23]
    node _GEN_7 = mux(eq(UInt<3>("h7"), io_rs1), regs_7, _GEN_6) @[register.scala 17:23 register.scala 17:23]
    node _GEN_8 = mux(eq(UInt<4>("h8"), io_rs1), regs_8, _GEN_7) @[register.scala 17:23 register.scala 17:23]
    node _GEN_9 = mux(eq(UInt<4>("h9"), io_rs1), regs_9, _GEN_8) @[register.scala 17:23 register.scala 17:23]
    node _GEN_10 = mux(eq(UInt<4>("ha"), io_rs1), regs_10, _GEN_9) @[register.scala 17:23 register.scala 17:23]
    node _GEN_11 = mux(eq(UInt<4>("hb"), io_rs1), regs_11, _GEN_10) @[register.scala 17:23 register.scala 17:23]
    node _GEN_12 = mux(eq(UInt<4>("hc"), io_rs1), regs_12, _GEN_11) @[register.scala 17:23 register.scala 17:23]
    node _GEN_13 = mux(eq(UInt<4>("hd"), io_rs1), regs_13, _GEN_12) @[register.scala 17:23 register.scala 17:23]
    node _GEN_14 = mux(eq(UInt<4>("he"), io_rs1), regs_14, _GEN_13) @[register.scala 17:23 register.scala 17:23]
    node _GEN_15 = mux(eq(UInt<4>("hf"), io_rs1), regs_15, _GEN_14) @[register.scala 17:23 register.scala 17:23]
    node _GEN_16 = mux(eq(UInt<5>("h10"), io_rs1), regs_16, _GEN_15) @[register.scala 17:23 register.scala 17:23]
    node _GEN_17 = mux(eq(UInt<5>("h11"), io_rs1), regs_17, _GEN_16) @[register.scala 17:23 register.scala 17:23]
    node _GEN_18 = mux(eq(UInt<5>("h12"), io_rs1), regs_18, _GEN_17) @[register.scala 17:23 register.scala 17:23]
    node _GEN_19 = mux(eq(UInt<5>("h13"), io_rs1), regs_19, _GEN_18) @[register.scala 17:23 register.scala 17:23]
    node _GEN_20 = mux(eq(UInt<5>("h14"), io_rs1), regs_20, _GEN_19) @[register.scala 17:23 register.scala 17:23]
    node _GEN_21 = mux(eq(UInt<5>("h15"), io_rs1), regs_21, _GEN_20) @[register.scala 17:23 register.scala 17:23]
    node _GEN_22 = mux(eq(UInt<5>("h16"), io_rs1), regs_22, _GEN_21) @[register.scala 17:23 register.scala 17:23]
    node _GEN_23 = mux(eq(UInt<5>("h17"), io_rs1), regs_23, _GEN_22) @[register.scala 17:23 register.scala 17:23]
    node _GEN_24 = mux(eq(UInt<5>("h18"), io_rs1), regs_24, _GEN_23) @[register.scala 17:23 register.scala 17:23]
    node _GEN_25 = mux(eq(UInt<5>("h19"), io_rs1), regs_25, _GEN_24) @[register.scala 17:23 register.scala 17:23]
    node _GEN_26 = mux(eq(UInt<5>("h1a"), io_rs1), regs_26, _GEN_25) @[register.scala 17:23 register.scala 17:23]
    node _GEN_27 = mux(eq(UInt<5>("h1b"), io_rs1), regs_27, _GEN_26) @[register.scala 17:23 register.scala 17:23]
    node _GEN_28 = mux(eq(UInt<5>("h1c"), io_rs1), regs_28, _GEN_27) @[register.scala 17:23 register.scala 17:23]
    node _GEN_29 = mux(eq(UInt<5>("h1d"), io_rs1), regs_29, _GEN_28) @[register.scala 17:23 register.scala 17:23]
    node _GEN_30 = mux(eq(UInt<5>("h1e"), io_rs1), regs_30, _GEN_29) @[register.scala 17:23 register.scala 17:23]
    node _GEN_31 = mux(eq(UInt<5>("h1f"), io_rs1), regs_31, _GEN_30) @[register.scala 17:23 register.scala 17:23]
    node _regs_io_rs1 = _GEN_31 @[register.scala 17:23]
    node _io_read1_T_1 = mux(_io_read1_T, _regs_io_rs1, UInt<1>("h0")) @[register.scala 17:23]
    node _io_read2_T = orr(io_rs2) @[register.scala 18:37]
    node _GEN_32 = validif(eq(UInt<1>("h0"), io_rs2), regs_0) @[register.scala 18:23 register.scala 18:23]
    node _GEN_33 = mux(eq(UInt<1>("h1"), io_rs2), regs_1, _GEN_32) @[register.scala 18:23 register.scala 18:23]
    node _GEN_34 = mux(eq(UInt<2>("h2"), io_rs2), regs_2, _GEN_33) @[register.scala 18:23 register.scala 18:23]
    node _GEN_35 = mux(eq(UInt<2>("h3"), io_rs2), regs_3, _GEN_34) @[register.scala 18:23 register.scala 18:23]
    node _GEN_36 = mux(eq(UInt<3>("h4"), io_rs2), regs_4, _GEN_35) @[register.scala 18:23 register.scala 18:23]
    node _GEN_37 = mux(eq(UInt<3>("h5"), io_rs2), regs_5, _GEN_36) @[register.scala 18:23 register.scala 18:23]
    node _GEN_38 = mux(eq(UInt<3>("h6"), io_rs2), regs_6, _GEN_37) @[register.scala 18:23 register.scala 18:23]
    node _GEN_39 = mux(eq(UInt<3>("h7"), io_rs2), regs_7, _GEN_38) @[register.scala 18:23 register.scala 18:23]
    node _GEN_40 = mux(eq(UInt<4>("h8"), io_rs2), regs_8, _GEN_39) @[register.scala 18:23 register.scala 18:23]
    node _GEN_41 = mux(eq(UInt<4>("h9"), io_rs2), regs_9, _GEN_40) @[register.scala 18:23 register.scala 18:23]
    node _GEN_42 = mux(eq(UInt<4>("ha"), io_rs2), regs_10, _GEN_41) @[register.scala 18:23 register.scala 18:23]
    node _GEN_43 = mux(eq(UInt<4>("hb"), io_rs2), regs_11, _GEN_42) @[register.scala 18:23 register.scala 18:23]
    node _GEN_44 = mux(eq(UInt<4>("hc"), io_rs2), regs_12, _GEN_43) @[register.scala 18:23 register.scala 18:23]
    node _GEN_45 = mux(eq(UInt<4>("hd"), io_rs2), regs_13, _GEN_44) @[register.scala 18:23 register.scala 18:23]
    node _GEN_46 = mux(eq(UInt<4>("he"), io_rs2), regs_14, _GEN_45) @[register.scala 18:23 register.scala 18:23]
    node _GEN_47 = mux(eq(UInt<4>("hf"), io_rs2), regs_15, _GEN_46) @[register.scala 18:23 register.scala 18:23]
    node _GEN_48 = mux(eq(UInt<5>("h10"), io_rs2), regs_16, _GEN_47) @[register.scala 18:23 register.scala 18:23]
    node _GEN_49 = mux(eq(UInt<5>("h11"), io_rs2), regs_17, _GEN_48) @[register.scala 18:23 register.scala 18:23]
    node _GEN_50 = mux(eq(UInt<5>("h12"), io_rs2), regs_18, _GEN_49) @[register.scala 18:23 register.scala 18:23]
    node _GEN_51 = mux(eq(UInt<5>("h13"), io_rs2), regs_19, _GEN_50) @[register.scala 18:23 register.scala 18:23]
    node _GEN_52 = mux(eq(UInt<5>("h14"), io_rs2), regs_20, _GEN_51) @[register.scala 18:23 register.scala 18:23]
    node _GEN_53 = mux(eq(UInt<5>("h15"), io_rs2), regs_21, _GEN_52) @[register.scala 18:23 register.scala 18:23]
    node _GEN_54 = mux(eq(UInt<5>("h16"), io_rs2), regs_22, _GEN_53) @[register.scala 18:23 register.scala 18:23]
    node _GEN_55 = mux(eq(UInt<5>("h17"), io_rs2), regs_23, _GEN_54) @[register.scala 18:23 register.scala 18:23]
    node _GEN_56 = mux(eq(UInt<5>("h18"), io_rs2), regs_24, _GEN_55) @[register.scala 18:23 register.scala 18:23]
    node _GEN_57 = mux(eq(UInt<5>("h19"), io_rs2), regs_25, _GEN_56) @[register.scala 18:23 register.scala 18:23]
    node _GEN_58 = mux(eq(UInt<5>("h1a"), io_rs2), regs_26, _GEN_57) @[register.scala 18:23 register.scala 18:23]
    node _GEN_59 = mux(eq(UInt<5>("h1b"), io_rs2), regs_27, _GEN_58) @[register.scala 18:23 register.scala 18:23]
    node _GEN_60 = mux(eq(UInt<5>("h1c"), io_rs2), regs_28, _GEN_59) @[register.scala 18:23 register.scala 18:23]
    node _GEN_61 = mux(eq(UInt<5>("h1d"), io_rs2), regs_29, _GEN_60) @[register.scala 18:23 register.scala 18:23]
    node _GEN_62 = mux(eq(UInt<5>("h1e"), io_rs2), regs_30, _GEN_61) @[register.scala 18:23 register.scala 18:23]
    node _GEN_63 = mux(eq(UInt<5>("h1f"), io_rs2), regs_31, _GEN_62) @[register.scala 18:23 register.scala 18:23]
    node _regs_io_rs2 = _GEN_63 @[register.scala 18:23]
    node _io_read2_T_1 = mux(_io_read2_T, _regs_io_rs2, UInt<1>("h0")) @[register.scala 18:23]
    node _T = orr(io_rd) @[register.scala 19:27]
    node _T_1 = and(io_wen, _T) @[register.scala 19:19]
    node _regs_io_rd = io_write_data @[register.scala 20:22 register.scala 20:22]
    node _GEN_64 = mux(eq(UInt<1>("h0"), io_rd), _regs_io_rd, regs_0) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_65 = mux(eq(UInt<1>("h1"), io_rd), _regs_io_rd, regs_1) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_66 = mux(eq(UInt<2>("h2"), io_rd), _regs_io_rd, regs_2) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_67 = mux(eq(UInt<2>("h3"), io_rd), _regs_io_rd, regs_3) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_68 = mux(eq(UInt<3>("h4"), io_rd), _regs_io_rd, regs_4) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_69 = mux(eq(UInt<3>("h5"), io_rd), _regs_io_rd, regs_5) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_70 = mux(eq(UInt<3>("h6"), io_rd), _regs_io_rd, regs_6) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_71 = mux(eq(UInt<3>("h7"), io_rd), _regs_io_rd, regs_7) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_72 = mux(eq(UInt<4>("h8"), io_rd), _regs_io_rd, regs_8) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_73 = mux(eq(UInt<4>("h9"), io_rd), _regs_io_rd, regs_9) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_74 = mux(eq(UInt<4>("ha"), io_rd), _regs_io_rd, regs_10) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_75 = mux(eq(UInt<4>("hb"), io_rd), _regs_io_rd, regs_11) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_76 = mux(eq(UInt<4>("hc"), io_rd), _regs_io_rd, regs_12) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_77 = mux(eq(UInt<4>("hd"), io_rd), _regs_io_rd, regs_13) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_78 = mux(eq(UInt<4>("he"), io_rd), _regs_io_rd, regs_14) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_79 = mux(eq(UInt<4>("hf"), io_rd), _regs_io_rd, regs_15) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_80 = mux(eq(UInt<5>("h10"), io_rd), _regs_io_rd, regs_16) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_81 = mux(eq(UInt<5>("h11"), io_rd), _regs_io_rd, regs_17) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_82 = mux(eq(UInt<5>("h12"), io_rd), _regs_io_rd, regs_18) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_83 = mux(eq(UInt<5>("h13"), io_rd), _regs_io_rd, regs_19) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_84 = mux(eq(UInt<5>("h14"), io_rd), _regs_io_rd, regs_20) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_85 = mux(eq(UInt<5>("h15"), io_rd), _regs_io_rd, regs_21) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_86 = mux(eq(UInt<5>("h16"), io_rd), _regs_io_rd, regs_22) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_87 = mux(eq(UInt<5>("h17"), io_rd), _regs_io_rd, regs_23) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_88 = mux(eq(UInt<5>("h18"), io_rd), _regs_io_rd, regs_24) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_89 = mux(eq(UInt<5>("h19"), io_rd), _regs_io_rd, regs_25) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_90 = mux(eq(UInt<5>("h1a"), io_rd), _regs_io_rd, regs_26) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_91 = mux(eq(UInt<5>("h1b"), io_rd), _regs_io_rd, regs_27) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_92 = mux(eq(UInt<5>("h1c"), io_rd), _regs_io_rd, regs_28) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_93 = mux(eq(UInt<5>("h1d"), io_rd), _regs_io_rd, regs_29) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_94 = mux(eq(UInt<5>("h1e"), io_rd), _regs_io_rd, regs_30) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_95 = mux(eq(UInt<5>("h1f"), io_rd), _regs_io_rd, regs_31) @[register.scala 20:22 register.scala 20:22 register.scala 15:23]
    node _GEN_96 = mux(_T_1, _GEN_64, regs_0) @[register.scala 19:33 register.scala 15:23]
    node _GEN_97 = mux(_T_1, _GEN_65, regs_1) @[register.scala 19:33 register.scala 15:23]
    node _GEN_98 = mux(_T_1, _GEN_66, regs_2) @[register.scala 19:33 register.scala 15:23]
    node _GEN_99 = mux(_T_1, _GEN_67, regs_3) @[register.scala 19:33 register.scala 15:23]
    node _GEN_100 = mux(_T_1, _GEN_68, regs_4) @[register.scala 19:33 register.scala 15:23]
    node _GEN_101 = mux(_T_1, _GEN_69, regs_5) @[register.scala 19:33 register.scala 15:23]
    node _GEN_102 = mux(_T_1, _GEN_70, regs_6) @[register.scala 19:33 register.scala 15:23]
    node _GEN_103 = mux(_T_1, _GEN_71, regs_7) @[register.scala 19:33 register.scala 15:23]
    node _GEN_104 = mux(_T_1, _GEN_72, regs_8) @[register.scala 19:33 register.scala 15:23]
    node _GEN_105 = mux(_T_1, _GEN_73, regs_9) @[register.scala 19:33 register.scala 15:23]
    node _GEN_106 = mux(_T_1, _GEN_74, regs_10) @[register.scala 19:33 register.scala 15:23]
    node _GEN_107 = mux(_T_1, _GEN_75, regs_11) @[register.scala 19:33 register.scala 15:23]
    node _GEN_108 = mux(_T_1, _GEN_76, regs_12) @[register.scala 19:33 register.scala 15:23]
    node _GEN_109 = mux(_T_1, _GEN_77, regs_13) @[register.scala 19:33 register.scala 15:23]
    node _GEN_110 = mux(_T_1, _GEN_78, regs_14) @[register.scala 19:33 register.scala 15:23]
    node _GEN_111 = mux(_T_1, _GEN_79, regs_15) @[register.scala 19:33 register.scala 15:23]
    node _GEN_112 = mux(_T_1, _GEN_80, regs_16) @[register.scala 19:33 register.scala 15:23]
    node _GEN_113 = mux(_T_1, _GEN_81, regs_17) @[register.scala 19:33 register.scala 15:23]
    node _GEN_114 = mux(_T_1, _GEN_82, regs_18) @[register.scala 19:33 register.scala 15:23]
    node _GEN_115 = mux(_T_1, _GEN_83, regs_19) @[register.scala 19:33 register.scala 15:23]
    node _GEN_116 = mux(_T_1, _GEN_84, regs_20) @[register.scala 19:33 register.scala 15:23]
    node _GEN_117 = mux(_T_1, _GEN_85, regs_21) @[register.scala 19:33 register.scala 15:23]
    node _GEN_118 = mux(_T_1, _GEN_86, regs_22) @[register.scala 19:33 register.scala 15:23]
    node _GEN_119 = mux(_T_1, _GEN_87, regs_23) @[register.scala 19:33 register.scala 15:23]
    node _GEN_120 = mux(_T_1, _GEN_88, regs_24) @[register.scala 19:33 register.scala 15:23]
    node _GEN_121 = mux(_T_1, _GEN_89, regs_25) @[register.scala 19:33 register.scala 15:23]
    node _GEN_122 = mux(_T_1, _GEN_90, regs_26) @[register.scala 19:33 register.scala 15:23]
    node _GEN_123 = mux(_T_1, _GEN_91, regs_27) @[register.scala 19:33 register.scala 15:23]
    node _GEN_124 = mux(_T_1, _GEN_92, regs_28) @[register.scala 19:33 register.scala 15:23]
    node _GEN_125 = mux(_T_1, _GEN_93, regs_29) @[register.scala 19:33 register.scala 15:23]
    node _GEN_126 = mux(_T_1, _GEN_94, regs_30) @[register.scala 19:33 register.scala 15:23]
    node _GEN_127 = mux(_T_1, _GEN_95, regs_31) @[register.scala 19:33 register.scala 15:23]
    node _regs_WIRE_0 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_1 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_2 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_3 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_4 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_5 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_6 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_7 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_8 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_9 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_10 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_11 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_12 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_13 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_14 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_15 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_16 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_17 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_18 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_19 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_20 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_21 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_22 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_23 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_24 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_25 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_26 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_27 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_28 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_29 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_30 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    node _regs_WIRE_31 = UInt<32>("h0") @[register.scala 15:31 register.scala 15:31]
    io_read1 <= _io_read1_T_1 @[register.scala 17:16]
    io_read2 <= _io_read2_T_1 @[register.scala 18:16]
    regs_0 <= mux(reset, _regs_WIRE_0, _GEN_96) @[register.scala 15:23 register.scala 15:23]
    regs_1 <= mux(reset, _regs_WIRE_1, _GEN_97) @[register.scala 15:23 register.scala 15:23]
    regs_2 <= mux(reset, _regs_WIRE_2, _GEN_98) @[register.scala 15:23 register.scala 15:23]
    regs_3 <= mux(reset, _regs_WIRE_3, _GEN_99) @[register.scala 15:23 register.scala 15:23]
    regs_4 <= mux(reset, _regs_WIRE_4, _GEN_100) @[register.scala 15:23 register.scala 15:23]
    regs_5 <= mux(reset, _regs_WIRE_5, _GEN_101) @[register.scala 15:23 register.scala 15:23]
    regs_6 <= mux(reset, _regs_WIRE_6, _GEN_102) @[register.scala 15:23 register.scala 15:23]
    regs_7 <= mux(reset, _regs_WIRE_7, _GEN_103) @[register.scala 15:23 register.scala 15:23]
    regs_8 <= mux(reset, _regs_WIRE_8, _GEN_104) @[register.scala 15:23 register.scala 15:23]
    regs_9 <= mux(reset, _regs_WIRE_9, _GEN_105) @[register.scala 15:23 register.scala 15:23]
    regs_10 <= mux(reset, _regs_WIRE_10, _GEN_106) @[register.scala 15:23 register.scala 15:23]
    regs_11 <= mux(reset, _regs_WIRE_11, _GEN_107) @[register.scala 15:23 register.scala 15:23]
    regs_12 <= mux(reset, _regs_WIRE_12, _GEN_108) @[register.scala 15:23 register.scala 15:23]
    regs_13 <= mux(reset, _regs_WIRE_13, _GEN_109) @[register.scala 15:23 register.scala 15:23]
    regs_14 <= mux(reset, _regs_WIRE_14, _GEN_110) @[register.scala 15:23 register.scala 15:23]
    regs_15 <= mux(reset, _regs_WIRE_15, _GEN_111) @[register.scala 15:23 register.scala 15:23]
    regs_16 <= mux(reset, _regs_WIRE_16, _GEN_112) @[register.scala 15:23 register.scala 15:23]
    regs_17 <= mux(reset, _regs_WIRE_17, _GEN_113) @[register.scala 15:23 register.scala 15:23]
    regs_18 <= mux(reset, _regs_WIRE_18, _GEN_114) @[register.scala 15:23 register.scala 15:23]
    regs_19 <= mux(reset, _regs_WIRE_19, _GEN_115) @[register.scala 15:23 register.scala 15:23]
    regs_20 <= mux(reset, _regs_WIRE_20, _GEN_116) @[register.scala 15:23 register.scala 15:23]
    regs_21 <= mux(reset, _regs_WIRE_21, _GEN_117) @[register.scala 15:23 register.scala 15:23]
    regs_22 <= mux(reset, _regs_WIRE_22, _GEN_118) @[register.scala 15:23 register.scala 15:23]
    regs_23 <= mux(reset, _regs_WIRE_23, _GEN_119) @[register.scala 15:23 register.scala 15:23]
    regs_24 <= mux(reset, _regs_WIRE_24, _GEN_120) @[register.scala 15:23 register.scala 15:23]
    regs_25 <= mux(reset, _regs_WIRE_25, _GEN_121) @[register.scala 15:23 register.scala 15:23]
    regs_26 <= mux(reset, _regs_WIRE_26, _GEN_122) @[register.scala 15:23 register.scala 15:23]
    regs_27 <= mux(reset, _regs_WIRE_27, _GEN_123) @[register.scala 15:23 register.scala 15:23]
    regs_28 <= mux(reset, _regs_WIRE_28, _GEN_124) @[register.scala 15:23 register.scala 15:23]
    regs_29 <= mux(reset, _regs_WIRE_29, _GEN_125) @[register.scala 15:23 register.scala 15:23]
    regs_30 <= mux(reset, _regs_WIRE_30, _GEN_126) @[register.scala 15:23 register.scala 15:23]
    regs_31 <= mux(reset, _regs_WIRE_31, _GEN_127) @[register.scala 15:23 register.scala 15:23]

  module control :
    input clock : Clock
    input reset : UInt<1>
    input io_op_code : UInt<7>
    output io_memwrite : UInt<1>
    output io_branch : UInt<1>
    output io_memread : UInt<1>
    output io_regwrite : UInt<1>
    output io_memtoreg : UInt<1>
    output io_aluop : UInt<3>
    output io_op_a_sel : UInt<2>
    output io_op_b_sel : UInt<1>
    output io_ex_sel : UInt<2>
    output io_nxt_pc : UInt<3>

    node _T = eq(io_op_code, UInt<4>("hf")) @[control.scala 28:21]
    node _T_1 = eq(io_op_code, UInt<5>("h13")) @[control.scala 28:52]
    node _T_2 = or(_T, _T_1) @[control.scala 28:38]
    node _T_3 = eq(io_op_code, UInt<5>("h1b")) @[control.scala 28:83]
    node _T_4 = or(_T_2, _T_3) @[control.scala 28:69]
    node _T_5 = eq(io_op_code, UInt<7>("h73")) @[control.scala 28:115]
    node _T_6 = or(_T_4, _T_5) @[control.scala 28:101]
    node _T_7 = eq(io_op_code, UInt<7>("h67")) @[control.scala 28:146]
    node _T_8 = or(_T_6, _T_7) @[control.scala 28:132]
    node _T_9 = eq(io_op_code, UInt<2>("h3")) @[control.scala 39:27]
    node _T_10 = eq(io_op_code, UInt<6>("h33")) @[control.scala 53:27]
    node _T_11 = eq(io_op_code, UInt<6>("h3b")) @[control.scala 53:58]
    node _T_12 = or(_T_10, _T_11) @[control.scala 53:44]
    node _T_13 = eq(io_op_code, UInt<6>("h23")) @[control.scala 65:27]
    node _T_14 = eq(io_op_code, UInt<7>("h63")) @[control.scala 76:27]
    node _T_15 = eq(io_op_code, UInt<5>("h17")) @[control.scala 87:27]
    node _T_16 = eq(io_op_code, UInt<6>("h37")) @[control.scala 87:58]
    node _T_17 = or(_T_15, _T_16) @[control.scala 87:44]
    node _T_18 = eq(io_op_code, UInt<7>("h6f")) @[control.scala 99:27]
    node _GEN_0 = mux(_T_18, UInt<1>("h0"), UInt<1>("h0")) @[control.scala 99:44 control.scala 100:21 control.scala 18:17]
    node _GEN_1 = mux(_T_18, UInt<1>("h1"), UInt<1>("h0")) @[control.scala 99:44 control.scala 103:21 control.scala 21:17]
    node _GEN_2 = mux(_T_18, UInt<1>("h0"), UInt<1>("h1")) @[control.scala 99:44 control.scala 107:21 control.scala 25:17]
    node _GEN_3 = mux(_T_18, UInt<2>("h2"), UInt<1>("h0")) @[control.scala 99:44 control.scala 109:19 control.scala 27:15]
    node _GEN_4 = mux(_T_17, UInt<1>("h0"), _GEN_0) @[control.scala 87:75 control.scala 88:21]
    node _GEN_5 = mux(_T_17, UInt<1>("h1"), _GEN_1) @[control.scala 87:75 control.scala 91:21]
    node _GEN_6 = mux(_T_17, UInt<1>("h0"), _GEN_1) @[control.scala 87:75 control.scala 94:21]
    node _GEN_7 = mux(_T_17, UInt<1>("h1"), _GEN_2) @[control.scala 87:75 control.scala 95:21]
    node _GEN_8 = mux(_T_17, UInt<2>("h2"), _GEN_0) @[control.scala 87:75 control.scala 96:19]
    node _GEN_9 = mux(_T_17, UInt<1>("h0"), _GEN_3) @[control.scala 87:75 control.scala 97:19]
    node _GEN_10 = mux(_T_14, UInt<1>("h0"), _GEN_4) @[control.scala 76:44 control.scala 77:21]
    node _GEN_11 = mux(_T_14, UInt<1>("h1"), _GEN_4) @[control.scala 76:44 control.scala 78:19]
    node _GEN_12 = mux(_T_14, UInt<1>("h0"), _GEN_5) @[control.scala 76:44 control.scala 80:21]
    node _GEN_13 = mux(_T_14, UInt<1>("h1"), _GEN_5) @[control.scala 76:44 control.scala 82:18]
    node _GEN_14 = mux(_T_14, UInt<1>("h0"), _GEN_6) @[control.scala 76:44 control.scala 83:21]
    node _GEN_15 = mux(_T_14, UInt<1>("h0"), _GEN_7) @[control.scala 76:44 control.scala 84:21]
    node _GEN_16 = mux(_T_14, UInt<3>("h4"), _GEN_8) @[control.scala 76:44 control.scala 85:19]
    node _GEN_17 = mux(_T_14, UInt<1>("h1"), _GEN_9) @[control.scala 76:44 control.scala 86:19]
    node _GEN_18 = mux(_T_13, UInt<1>("h1"), _GEN_10) @[control.scala 65:44 control.scala 66:21]
    node _GEN_19 = mux(_T_13, UInt<1>("h0"), _GEN_11) @[control.scala 65:44 control.scala 67:19]
    node _GEN_20 = mux(_T_13, UInt<1>("h0"), _GEN_10) @[control.scala 65:44 control.scala 68:20]
    node _GEN_21 = mux(_T_13, UInt<1>("h0"), _GEN_12) @[control.scala 65:44 control.scala 69:21]
    node _GEN_22 = mux(_T_13, UInt<1>("h1"), _GEN_13) @[control.scala 65:44 control.scala 71:18]
    node _GEN_23 = mux(_T_13, UInt<1>("h0"), _GEN_14) @[control.scala 65:44 control.scala 72:21]
    node _GEN_24 = mux(_T_13, UInt<1>("h1"), _GEN_15) @[control.scala 65:44 control.scala 73:21]
    node _GEN_25 = mux(_T_13, UInt<1>("h1"), _GEN_16) @[control.scala 65:44 control.scala 74:19]
    node _GEN_26 = mux(_T_13, UInt<1>("h0"), _GEN_17) @[control.scala 65:44 control.scala 75:19]
    node _GEN_27 = mux(_T_12, UInt<1>("h0"), _GEN_18) @[control.scala 53:75 control.scala 54:21]
    node _GEN_28 = mux(_T_12, UInt<1>("h0"), _GEN_19) @[control.scala 53:75 control.scala 55:19]
    node _GEN_29 = mux(_T_12, UInt<1>("h0"), _GEN_20) @[control.scala 53:75 control.scala 56:20]
    node _GEN_30 = mux(_T_12, UInt<1>("h1"), _GEN_21) @[control.scala 53:75 control.scala 57:21]
    node _GEN_31 = mux(_T_12, UInt<1>("h1"), _GEN_22) @[control.scala 53:75 control.scala 59:18]
    node _GEN_32 = mux(_T_12, UInt<1>("h0"), _GEN_23) @[control.scala 53:75 control.scala 60:21]
    node _GEN_33 = mux(_T_12, UInt<1>("h0"), _GEN_24) @[control.scala 53:75 control.scala 61:21]
    node _GEN_34 = mux(_T_12, UInt<1>("h0"), _GEN_25) @[control.scala 53:75 control.scala 62:19]
    node _GEN_35 = mux(_T_12, UInt<1>("h0"), _GEN_26) @[control.scala 53:75 control.scala 63:19]
    node _GEN_36 = mux(_T_9, UInt<1>("h0"), _GEN_27) @[control.scala 39:44 control.scala 40:21]
    node _GEN_37 = mux(_T_9, UInt<1>("h0"), _GEN_28) @[control.scala 39:44 control.scala 41:19]
    node _GEN_38 = mux(_T_9, UInt<1>("h1"), _GEN_29) @[control.scala 39:44 control.scala 42:20]
    node _GEN_39 = mux(_T_9, UInt<1>("h1"), _GEN_30) @[control.scala 39:44 control.scala 43:21]
    node _GEN_40 = mux(_T_9, UInt<1>("h1"), _GEN_27) @[control.scala 39:44 control.scala 44:21]
    node _GEN_41 = mux(_T_9, UInt<1>("h1"), _GEN_31) @[control.scala 39:44 control.scala 45:18]
    node _GEN_42 = mux(_T_9, UInt<1>("h0"), _GEN_32) @[control.scala 39:44 control.scala 46:21]
    node _GEN_43 = mux(_T_9, UInt<1>("h1"), _GEN_33) @[control.scala 39:44 control.scala 47:21]
    node _GEN_44 = mux(_T_9, UInt<1>("h0"), _GEN_34) @[control.scala 39:44 control.scala 48:19]
    node _GEN_45 = mux(_T_9, UInt<1>("h0"), _GEN_35) @[control.scala 39:44 control.scala 49:19]
    node _GEN_46 = mux(_T_8, UInt<1>("h0"), _GEN_36) @[control.scala 28:164 control.scala 29:21]
    node _GEN_47 = mux(_T_8, UInt<1>("h0"), _GEN_37) @[control.scala 28:164 control.scala 30:19]
    node _GEN_48 = mux(_T_8, UInt<1>("h0"), _GEN_38) @[control.scala 28:164 control.scala 31:20]
    node _GEN_49 = mux(_T_8, UInt<1>("h1"), _GEN_39) @[control.scala 28:164 control.scala 32:21]
    node _GEN_50 = mux(_T_8, UInt<1>("h0"), _GEN_40) @[control.scala 28:164 control.scala 33:21]
    node _GEN_51 = mux(_T_8, UInt<1>("h1"), _GEN_41) @[control.scala 28:164 control.scala 34:18]
    node _GEN_52 = mux(_T_8, UInt<1>("h0"), _GEN_42) @[control.scala 28:164 control.scala 35:21]
    node _GEN_53 = mux(_T_8, UInt<1>("h1"), _GEN_43) @[control.scala 28:164 control.scala 36:21]
    node _GEN_54 = mux(_T_8, UInt<1>("h0"), _GEN_44) @[control.scala 28:164 control.scala 37:19]
    node _GEN_55 = mux(_T_8, UInt<1>("h0"), _GEN_45) @[control.scala 28:164 control.scala 38:19]
    io_memwrite <= _GEN_46
    io_branch <= _GEN_47
    io_memread <= _GEN_48
    io_regwrite <= _GEN_49
    io_memtoreg <= _GEN_50
    io_aluop <= _GEN_51
    io_op_a_sel <= _GEN_52
    io_op_b_sel <= _GEN_53
    io_ex_sel <= bits(_GEN_54, 1, 0)
    io_nxt_pc <= _GEN_55

  module ALU :
    input clock : Clock
    input reset : UInt<1>
    input io_in_a : SInt<32>
    input io_in_b : SInt<32>
    input io_Aluop : UInt<4>
    output io_Result : SInt<32>

    node _T = eq(io_Aluop, UInt<1>("h0")) @[ALU.scala 12:20]
    node _io_Result_T = add(io_in_a, io_in_b) @[ALU.scala 13:30]
    node _io_Result_T_1 = tail(_io_Result_T, 1) @[ALU.scala 13:30]
    node _io_Result_T_2 = asSInt(_io_Result_T_1) @[ALU.scala 13:30]
    node _T_1 = eq(io_Aluop, UInt<1>("h1")) @[ALU.scala 15:25]
    node _io_Result_T_3 = bits(io_in_b, 4, 0) @[ALU.scala 16:40]
    node _io_Result_T_4 = dshl(io_in_a, _io_Result_T_3) @[ALU.scala 16:30]
    node _T_2 = eq(io_Aluop, UInt<2>("h2")) @[ALU.scala 17:25]
    node _io_Result_T_5 = lt(io_in_a, io_in_b) @[ALU.scala 18:40]
    node _io_Result_T_6 = asSInt(_io_Result_T_5) @[ALU.scala 18:51]
    node _io_Result_T_7 = mul(asSInt(UInt<1>("h1")), _io_Result_T_6) @[ALU.scala 18:28]
    node _T_3 = eq(io_Aluop, UInt<3>("h5")) @[ALU.scala 19:25]
    node _io_Result_T_8 = xor(io_in_a, io_in_b) @[ALU.scala 20:30]
    node _io_Result_T_9 = asSInt(_io_Result_T_8) @[ALU.scala 20:30]
    node _T_4 = eq(io_Aluop, UInt<3>("h6")) @[ALU.scala 21:25]
    node _io_Result_T_10 = add(io_in_a, io_in_b) @[ALU.scala 22:30]
    node _io_Result_T_11 = tail(_io_Result_T_10, 1) @[ALU.scala 22:30]
    node _io_Result_T_12 = asSInt(_io_Result_T_11) @[ALU.scala 22:30]
    node _T_5 = eq(io_Aluop, UInt<3>("h7")) @[ALU.scala 23:25]
    node _io_Result_T_13 = add(io_in_a, io_in_b) @[ALU.scala 24:30]
    node _io_Result_T_14 = tail(_io_Result_T_13, 1) @[ALU.scala 24:30]
    node _io_Result_T_15 = asSInt(_io_Result_T_14) @[ALU.scala 24:30]
    node _T_6 = eq(io_Aluop, UInt<4>("h8")) @[ALU.scala 26:25]
    node _io_Result_T_16 = sub(io_in_a, io_in_b) @[ALU.scala 27:30]
    node _io_Result_T_17 = tail(_io_Result_T_16, 1) @[ALU.scala 27:30]
    node _io_Result_T_18 = asSInt(_io_Result_T_17) @[ALU.scala 27:30]
    node _T_7 = eq(io_Aluop, UInt<4>("h9")) @[ALU.scala 29:25]
    node _io_Result_T_19 = lt(io_in_a, io_in_b) @[ALU.scala 30:40]
    node _io_Result_T_20 = asSInt(_io_Result_T_19) @[ALU.scala 30:51]
    node _io_Result_T_21 = mul(asSInt(UInt<1>("h1")), _io_Result_T_20) @[ALU.scala 30:28]
    node _T_8 = eq(io_Aluop, UInt<4>("ha")) @[ALU.scala 31:25]
    node _T_9 = eq(io_Aluop, UInt<4>("hb")) @[ALU.scala 33:25]
    node _T_10 = eq(io_Aluop, UInt<4>("hc")) @[ALU.scala 36:25]
    node _io_Result_T_22 = bits(io_in_b, 4, 0) @[ALU.scala 37:40]
    node _io_Result_T_23 = dshr(io_in_a, _io_Result_T_22) @[ALU.scala 37:30]
    node _T_11 = eq(io_Aluop, UInt<4>("hd")) @[ALU.scala 38:25]
    node _io_Result_T_24 = bits(io_in_b, 4, 0) @[ALU.scala 39:40]
    node _io_Result_T_25 = dshr(io_in_a, _io_Result_T_24) @[ALU.scala 39:30]
    node _GEN_0 = mux(_T_11, _io_Result_T_25, asSInt(UInt<1>("h0"))) @[ALU.scala 38:34 ALU.scala 39:19 ALU.scala 41:19]
    node _GEN_1 = mux(_T_10, _io_Result_T_23, _GEN_0) @[ALU.scala 36:34 ALU.scala 37:19]
    node _GEN_2 = mux(_T_9, io_in_a, _GEN_1) @[ALU.scala 33:34 ALU.scala 34:19]
    node _GEN_3 = mux(_T_8, io_in_a, _GEN_2) @[ALU.scala 31:34 ALU.scala 32:19]
    node _GEN_4 = mux(_T_7, _io_Result_T_21, _GEN_3) @[ALU.scala 29:33 ALU.scala 30:19]
    node _GEN_5 = mux(_T_6, _io_Result_T_18, _GEN_4) @[ALU.scala 26:33 ALU.scala 27:19]
    node _GEN_6 = mux(_T_5, _io_Result_T_15, _GEN_5) @[ALU.scala 23:33 ALU.scala 24:19]
    node _GEN_7 = mux(_T_4, _io_Result_T_12, _GEN_6) @[ALU.scala 21:33 ALU.scala 22:19]
    node _GEN_8 = mux(_T_3, _io_Result_T_9, _GEN_7) @[ALU.scala 19:33 ALU.scala 20:19]
    node _GEN_9 = mux(_T_2, _io_Result_T_7, _GEN_8) @[ALU.scala 17:33 ALU.scala 18:19]
    node _GEN_10 = mux(_T_1, _io_Result_T_4, _GEN_9) @[ALU.scala 15:33 ALU.scala 16:19]
    node _GEN_11 = mux(_T, _io_Result_T_2, _GEN_10) @[ALU.scala 12:28 ALU.scala 13:19]
    io_Result <= asSInt(bits(_GEN_11, 31, 0))

  module alu_control :
    input clock : Clock
    input reset : UInt<1>
    input io_Aluop : UInt<1>
    input io_op_code : UInt<7>
    input io_func3 : UInt<3>
    input io_func7 : UInt<7>
    output io_ctrl : UInt<4>

    node _T = eq(io_Aluop, UInt<1>("h1")) @[alu_control.scala 32:19]
    node _T_1 = eq(io_op_code, UInt<6>("h33")) @[alu_control.scala 33:27]
    node _T_2 = eq(io_func3, UInt<1>("h0")) @[alu_control.scala 33:55]
    node _T_3 = and(_T_1, _T_2) @[alu_control.scala 33:43]
    node _T_4 = eq(io_func7, UInt<1>("h0")) @[alu_control.scala 33:75]
    node _T_5 = and(_T_3, _T_4) @[alu_control.scala 33:63]
    node _T_6 = eq(io_op_code, UInt<5>("h13")) @[alu_control.scala 33:101]
    node _T_7 = eq(io_func3, UInt<1>("h0")) @[alu_control.scala 33:130]
    node _T_8 = and(_T_6, _T_7) @[alu_control.scala 33:118]
    node _T_9 = or(_T_5, _T_8) @[alu_control.scala 33:85]
    node _T_10 = eq(io_op_code, UInt<6>("h33")) @[alu_control.scala 35:32]
    node _T_11 = eq(io_func3, UInt<1>("h1")) @[alu_control.scala 35:60]
    node _T_12 = and(_T_10, _T_11) @[alu_control.scala 35:48]
    node _T_13 = eq(io_func7, UInt<1>("h0")) @[alu_control.scala 35:80]
    node _T_14 = and(_T_12, _T_13) @[alu_control.scala 35:68]
    node _T_15 = eq(io_op_code, UInt<5>("h13")) @[alu_control.scala 35:102]
    node _T_16 = eq(io_func3, UInt<1>("h1")) @[alu_control.scala 35:131]
    node _T_17 = and(_T_15, _T_16) @[alu_control.scala 35:119]
    node _T_18 = eq(io_func7, UInt<1>("h0")) @[alu_control.scala 35:151]
    node _T_19 = and(_T_17, _T_18) @[alu_control.scala 35:139]
    node _T_20 = or(_T_14, _T_19) @[alu_control.scala 35:88]
    node _T_21 = eq(io_op_code, UInt<6>("h33")) @[alu_control.scala 37:32]
    node _T_22 = eq(io_func3, UInt<2>("h2")) @[alu_control.scala 37:61]
    node _T_23 = and(_T_21, _T_22) @[alu_control.scala 37:49]
    node _T_24 = eq(io_func7, UInt<1>("h0")) @[alu_control.scala 37:81]
    node _T_25 = and(_T_23, _T_24) @[alu_control.scala 37:69]
    node _T_26 = eq(io_op_code, UInt<5>("h13")) @[alu_control.scala 37:104]
    node _T_27 = eq(io_func3, UInt<2>("h2")) @[alu_control.scala 37:133]
    node _T_28 = and(_T_26, _T_27) @[alu_control.scala 37:121]
    node _T_29 = or(_T_25, _T_28) @[alu_control.scala 37:90]
    node _T_30 = eq(io_op_code, UInt<7>("h63")) @[alu_control.scala 39:31]
    node _T_31 = eq(io_func3, UInt<1>("h0")) @[alu_control.scala 39:60]
    node _T_32 = and(_T_30, _T_31) @[alu_control.scala 39:48]
    node _T_33 = eq(io_op_code, UInt<7>("h63")) @[alu_control.scala 42:31]
    node _T_34 = eq(io_func3, UInt<3>("h5")) @[alu_control.scala 42:60]
    node _T_35 = and(_T_33, _T_34) @[alu_control.scala 42:48]
    node _T_36 = eq(io_op_code, UInt<6>("h33")) @[alu_control.scala 44:33]
    node _T_37 = eq(io_func3, UInt<3>("h4")) @[alu_control.scala 44:61]
    node _T_38 = and(_T_36, _T_37) @[alu_control.scala 44:49]
    node _T_39 = eq(io_func7, UInt<1>("h0")) @[alu_control.scala 44:81]
    node _T_40 = and(_T_38, _T_39) @[alu_control.scala 44:69]
    node _T_41 = eq(io_op_code, UInt<5>("h13")) @[alu_control.scala 44:107]
    node _T_42 = eq(io_func3, UInt<3>("h4")) @[alu_control.scala 44:136]
    node _T_43 = and(_T_41, _T_42) @[alu_control.scala 44:124]
    node _T_44 = or(_T_40, _T_43) @[alu_control.scala 44:91]
    node _T_45 = eq(io_op_code, UInt<6>("h23")) @[alu_control.scala 46:32]
    node _T_46 = eq(io_func3, UInt<1>("h0")) @[alu_control.scala 46:60]
    node _T_47 = and(_T_45, _T_46) @[alu_control.scala 46:48]
    node _T_48 = eq(io_op_code, UInt<2>("h3")) @[alu_control.scala 48:32]
    node _T_49 = eq(io_func3, UInt<1>("h0")) @[alu_control.scala 48:60]
    node _T_50 = and(_T_48, _T_49) @[alu_control.scala 48:48]
    node _T_51 = eq(io_op_code, UInt<6>("h33")) @[alu_control.scala 50:32]
    node _T_52 = eq(io_func3, UInt<1>("h0")) @[alu_control.scala 50:60]
    node _T_53 = and(_T_51, _T_52) @[alu_control.scala 50:48]
    node _T_54 = eq(io_func7, UInt<6>("h20")) @[alu_control.scala 50:80]
    node _T_55 = and(_T_53, _T_54) @[alu_control.scala 50:68]
    node _T_56 = eq(io_op_code, UInt<6>("h33")) @[alu_control.scala 52:33]
    node _T_57 = eq(io_func3, UInt<2>("h3")) @[alu_control.scala 52:62]
    node _T_58 = and(_T_56, _T_57) @[alu_control.scala 52:50]
    node _T_59 = eq(io_func7, UInt<1>("h0")) @[alu_control.scala 52:82]
    node _T_60 = and(_T_58, _T_59) @[alu_control.scala 52:70]
    node _T_61 = eq(io_op_code, UInt<5>("h13")) @[alu_control.scala 52:106]
    node _T_62 = eq(io_func3, UInt<2>("h3")) @[alu_control.scala 52:135]
    node _T_63 = and(_T_61, _T_62) @[alu_control.scala 52:123]
    node _T_64 = or(_T_60, _T_63) @[alu_control.scala 52:91]
    node _T_65 = eq(io_op_code, UInt<7>("h6f")) @[alu_control.scala 54:31]
    node _T_66 = eq(io_op_code, UInt<7>("h67")) @[alu_control.scala 57:31]
    node _T_67 = eq(io_func3, UInt<1>("h0")) @[alu_control.scala 57:60]
    node _T_68 = and(_T_66, _T_67) @[alu_control.scala 57:48]
    node _T_69 = eq(io_op_code, UInt<6>("h33")) @[alu_control.scala 59:31]
    node _T_70 = eq(io_func3, UInt<3>("h5")) @[alu_control.scala 59:59]
    node _T_71 = and(_T_69, _T_70) @[alu_control.scala 59:47]
    node _T_72 = eq(io_func7, UInt<1>("h0")) @[alu_control.scala 59:79]
    node _T_73 = and(_T_71, _T_72) @[alu_control.scala 59:67]
    node _T_74 = eq(io_op_code, UInt<6>("h33")) @[alu_control.scala 61:31]
    node _T_75 = eq(io_func3, UInt<3>("h5")) @[alu_control.scala 61:59]
    node _T_76 = and(_T_74, _T_75) @[alu_control.scala 61:47]
    node _T_77 = eq(io_func7, UInt<6>("h20")) @[alu_control.scala 61:79]
    node _T_78 = and(_T_76, _T_77) @[alu_control.scala 61:67]
    node _GEN_0 = mux(_T_78, UInt<4>("hd"), UInt<1>("h0")) @[alu_control.scala 61:88 alu_control.scala 62:21 alu_control.scala 64:21]
    node _GEN_1 = mux(_T_73, UInt<4>("hd"), _GEN_0) @[alu_control.scala 59:87 alu_control.scala 60:21]
    node _GEN_2 = mux(_T_68, UInt<4>("hb"), _GEN_1) @[alu_control.scala 57:68 alu_control.scala 58:21]
    node _GEN_3 = mux(_T_65, UInt<4>("ha"), _GEN_2) @[alu_control.scala 54:48 alu_control.scala 55:21]
    node _GEN_4 = mux(_T_64, UInt<4>("h9"), _GEN_3) @[alu_control.scala 52:145 alu_control.scala 53:21]
    node _GEN_5 = mux(_T_55, UInt<4>("h8"), _GEN_4) @[alu_control.scala 50:90 alu_control.scala 51:21]
    node _GEN_6 = mux(_T_50, UInt<4>("h7"), _GEN_5) @[alu_control.scala 48:68 alu_control.scala 49:21]
    node _GEN_7 = mux(_T_47, UInt<4>("h6"), _GEN_6) @[alu_control.scala 46:69 alu_control.scala 47:21]
    node _GEN_8 = mux(_T_44, UInt<4>("h5"), _GEN_7) @[alu_control.scala 44:146 alu_control.scala 45:21]
    node _GEN_9 = mux(_T_35, UInt<4>("h4"), _GEN_8) @[alu_control.scala 42:68 alu_control.scala 43:21]
    node _GEN_10 = mux(_T_32, UInt<4>("h3"), _GEN_9) @[alu_control.scala 39:68 alu_control.scala 40:21]
    node _GEN_11 = mux(_T_29, UInt<4>("h2"), _GEN_10) @[alu_control.scala 37:142 alu_control.scala 38:21]
    node _GEN_12 = mux(_T_20, UInt<4>("h1"), _GEN_11) @[alu_control.scala 35:160 alu_control.scala 36:21]
    node _GEN_13 = mux(_T_9, UInt<4>("h0"), _GEN_12) @[alu_control.scala 33:140 alu_control.scala 34:21]
    node _GEN_14 = mux(_T, _GEN_13, UInt<1>("h0")) @[alu_control.scala 32:27 alu_control.scala 67:17]
    io_ctrl <= _GEN_14

  module imdgen :
    input clock : Clock
    input reset : UInt<1>
    input io_instr : UInt<32>
    input io_pc : UInt<32>
    output io_itype : UInt<32>
    output io_stype : UInt<32>
    output io_sbtype : UInt<32>
    output io_utype : UInt<32>
    output io_ujtype : UInt<32>

    node _T = bits(io_instr, 6, 0) @[imdgen.scala 23:19]
    node _T_1 = eq(_T, UInt<2>("h3")) @[imdgen.scala 23:25]
    node _T_2 = bits(io_instr, 6, 0) @[imdgen.scala 23:52]
    node _T_3 = eq(_T_2, UInt<4>("hf")) @[imdgen.scala 23:58]
    node _T_4 = or(_T_1, _T_3) @[imdgen.scala 23:41]
    node _T_5 = bits(io_instr, 6, 0) @[imdgen.scala 23:85]
    node _T_6 = eq(_T_5, UInt<5>("h13")) @[imdgen.scala 23:91]
    node _T_7 = or(_T_4, _T_6) @[imdgen.scala 23:74]
    node _T_8 = bits(io_instr, 6, 0) @[imdgen.scala 23:118]
    node _T_9 = eq(_T_8, UInt<5>("h1b")) @[imdgen.scala 23:124]
    node _T_10 = or(_T_7, _T_9) @[imdgen.scala 23:108]
    node _T_11 = bits(io_instr, 6, 0) @[imdgen.scala 23:152]
    node _T_12 = eq(_T_11, UInt<7>("h73")) @[imdgen.scala 23:158]
    node _T_13 = or(_T_10, _T_12) @[imdgen.scala 23:141]
    node _T_14 = bits(io_instr, 6, 0) @[imdgen.scala 23:186]
    node _T_15 = eq(_T_14, UInt<7>("h67")) @[imdgen.scala 23:192]
    node _T_16 = or(_T_13, _T_15) @[imdgen.scala 23:175]
    node _io_itype_T = bits(io_instr, 31, 31) @[imdgen.scala 24:41]
    node _io_itype_T_1 = bits(_io_itype_T, 0, 0) @[Bitwise.scala 72:15]
    node io_itype_hi = mux(_io_itype_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node io_itype_lo = bits(io_instr, 31, 20) @[imdgen.scala 24:55]
    node _io_itype_T_2 = cat(io_itype_hi, io_itype_lo) @[Cat.scala 30:58]
    node _T_17 = bits(io_instr, 6, 0) @[imdgen.scala 26:24]
    node _T_18 = eq(_T_17, UInt<6>("h23")) @[imdgen.scala 26:29]
    node _io_stype_T = bits(io_instr, 31, 31) @[imdgen.scala 27:40]
    node _io_stype_T_1 = bits(_io_stype_T, 0, 0) @[Bitwise.scala 72:15]
    node io_stype_hi_hi = mux(_io_stype_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node io_stype_hi_lo = bits(io_instr, 31, 25) @[imdgen.scala 27:54]
    node io_stype_lo = bits(io_instr, 11, 7) @[imdgen.scala 27:70]
    node io_stype_hi = cat(io_stype_hi_hi, io_stype_hi_lo) @[Cat.scala 30:58]
    node _io_stype_T_2 = cat(io_stype_hi, io_stype_lo) @[Cat.scala 30:58]
    node _T_19 = bits(io_instr, 6, 0) @[imdgen.scala 30:24]
    node _T_20 = eq(_T_19, UInt<7>("h63")) @[imdgen.scala 30:29]
    node _io_sbtype_T = bits(io_instr, 31, 31) @[imdgen.scala 31:41]
    node _io_sbtype_T_1 = bits(_io_sbtype_T, 0, 0) @[Bitwise.scala 72:15]
    node io_sbtype_hi_hi_hi = mux(_io_sbtype_T_1, UInt<19>("h7ffff"), UInt<19>("h0")) @[Bitwise.scala 72:12]
    node io_sbtype_hi_hi_lo = bits(io_instr, 31, 31) @[imdgen.scala 31:55]
    node io_sbtype_hi_lo = bits(io_instr, 7, 7) @[imdgen.scala 31:68]
    node _io_sbtype_T_2 = bits(io_instr, 30, 25) @[imdgen.scala 31:80]
    node _io_sbtype_T_3 = asSInt(_io_sbtype_T_2) @[imdgen.scala 31:88]
    node _io_sbtype_T_4 = bits(io_instr, 11, 8) @[imdgen.scala 31:103]
    node _io_sbtype_T_5 = asSInt(_io_sbtype_T_4) @[imdgen.scala 31:110]
    node io_sbtype_lo_hi_lo = asUInt(_io_sbtype_T_5) @[Cat.scala 30:58]
    node io_sbtype_lo_hi_hi = asUInt(_io_sbtype_T_3) @[Cat.scala 30:58]
    node io_sbtype_lo_hi = cat(io_sbtype_lo_hi_hi, io_sbtype_lo_hi_lo) @[Cat.scala 30:58]
    node io_sbtype_lo = cat(io_sbtype_lo_hi, UInt<1>("h0")) @[Cat.scala 30:58]
    node io_sbtype_hi_hi = cat(io_sbtype_hi_hi_hi, io_sbtype_hi_hi_lo) @[Cat.scala 30:58]
    node io_sbtype_hi = cat(io_sbtype_hi_hi, io_sbtype_hi_lo) @[Cat.scala 30:58]
    node _io_sbtype_T_6 = cat(io_sbtype_hi, io_sbtype_lo) @[Cat.scala 30:58]
    node _io_sbtype_T_7 = add(_io_sbtype_T_6, io_pc) @[imdgen.scala 31:122]
    node _io_sbtype_T_8 = tail(_io_sbtype_T_7, 1) @[imdgen.scala 31:122]
    node _T_21 = bits(io_instr, 6, 0) @[imdgen.scala 33:26]
    node _T_22 = eq(_T_21, UInt<5>("h17")) @[imdgen.scala 33:31]
    node _T_23 = bits(io_instr, 6, 0) @[imdgen.scala 33:57]
    node _T_24 = eq(_T_23, UInt<6>("h37")) @[imdgen.scala 33:62]
    node _T_25 = or(_T_22, _T_24) @[imdgen.scala 33:46]
    node _io_utype_T = bits(io_instr, 31, 31) @[imdgen.scala 34:40]
    node _io_utype_T_1 = bits(_io_utype_T, 0, 0) @[Bitwise.scala 72:15]
    node io_utype_hi = mux(_io_utype_T_1, UInt<12>("hfff"), UInt<12>("h0")) @[Bitwise.scala 72:12]
    node io_utype_lo = bits(io_instr, 31, 12) @[imdgen.scala 34:54]
    node _io_utype_T_2 = cat(io_utype_hi, io_utype_lo) @[Cat.scala 30:58]
    node _T_26 = bits(io_instr, 6, 0) @[imdgen.scala 37:25]
    node _T_27 = eq(_T_26, UInt<7>("h6f")) @[imdgen.scala 37:30]
    node _io_ujtype_T = bits(io_instr, 31, 31) @[imdgen.scala 38:42]
    node _io_ujtype_T_1 = bits(_io_ujtype_T, 0, 0) @[Bitwise.scala 72:15]
    node io_ujtype_hi_hi_hi = mux(_io_ujtype_T_1, UInt<11>("h7ff"), UInt<11>("h0")) @[Bitwise.scala 72:12]
    node io_ujtype_hi_hi_lo = bits(io_instr, 31, 31) @[imdgen.scala 38:56]
    node io_ujtype_hi_lo = bits(io_instr, 19, 12) @[imdgen.scala 38:69]
    node io_ujtype_lo_hi_hi = bits(io_instr, 20, 20) @[imdgen.scala 38:85]
    node io_ujtype_lo_hi_lo = bits(io_instr, 30, 21) @[imdgen.scala 38:98]
    node io_ujtype_lo_hi = cat(io_ujtype_lo_hi_hi, io_ujtype_lo_hi_lo) @[Cat.scala 30:58]
    node io_ujtype_lo = cat(io_ujtype_lo_hi, UInt<1>("h0")) @[Cat.scala 30:58]
    node io_ujtype_hi_hi = cat(io_ujtype_hi_hi_hi, io_ujtype_hi_hi_lo) @[Cat.scala 30:58]
    node io_ujtype_hi = cat(io_ujtype_hi_hi, io_ujtype_hi_lo) @[Cat.scala 30:58]
    node _io_ujtype_T_2 = cat(io_ujtype_hi, io_ujtype_lo) @[Cat.scala 30:58]
    node _io_ujtype_T_3 = add(_io_ujtype_T_2, io_pc) @[imdgen.scala 38:111]
    node _io_ujtype_T_4 = tail(_io_ujtype_T_3, 1) @[imdgen.scala 38:111]
    node _GEN_0 = mux(_T_27, _io_ujtype_T_4, UInt<1>("h0")) @[imdgen.scala 37:47 imdgen.scala 38:19 imdgen.scala 22:15]
    node _GEN_1 = mux(_T_25, _io_utype_T_2, UInt<1>("h0")) @[imdgen.scala 33:78 imdgen.scala 34:17 imdgen.scala 21:14]
    node _GEN_2 = mux(_T_25, UInt<1>("h0"), _GEN_0) @[imdgen.scala 33:78 imdgen.scala 22:15]
    node _GEN_3 = mux(_T_20, _io_sbtype_T_8, UInt<1>("h0")) @[imdgen.scala 30:45 imdgen.scala 31:18 imdgen.scala 20:15]
    node _GEN_4 = mux(_T_20, UInt<1>("h0"), _GEN_1) @[imdgen.scala 30:45 imdgen.scala 21:14]
    node _GEN_5 = mux(_T_20, UInt<1>("h0"), _GEN_2) @[imdgen.scala 30:45 imdgen.scala 22:15]
    node _GEN_6 = mux(_T_18, _io_stype_T_2, UInt<1>("h0")) @[imdgen.scala 26:45 imdgen.scala 27:17 imdgen.scala 19:14]
    node _GEN_7 = mux(_T_18, UInt<1>("h0"), _GEN_3) @[imdgen.scala 26:45 imdgen.scala 20:15]
    node _GEN_8 = mux(_T_18, UInt<1>("h0"), _GEN_4) @[imdgen.scala 26:45 imdgen.scala 21:14]
    node _GEN_9 = mux(_T_18, UInt<1>("h0"), _GEN_5) @[imdgen.scala 26:45 imdgen.scala 22:15]
    node _GEN_10 = mux(_T_16, _io_itype_T_2, UInt<1>("h0")) @[imdgen.scala 23:209 imdgen.scala 24:18 imdgen.scala 18:14]
    node _GEN_11 = mux(_T_16, UInt<1>("h0"), _GEN_6) @[imdgen.scala 23:209 imdgen.scala 19:14]
    node _GEN_12 = mux(_T_16, UInt<1>("h0"), _GEN_7) @[imdgen.scala 23:209 imdgen.scala 20:15]
    node _GEN_13 = mux(_T_16, UInt<1>("h0"), _GEN_8) @[imdgen.scala 23:209 imdgen.scala 21:14]
    node _GEN_14 = mux(_T_16, UInt<1>("h0"), _GEN_9) @[imdgen.scala 23:209 imdgen.scala 22:15]
    io_itype <= _GEN_10
    io_stype <= _GEN_11
    io_sbtype <= _GEN_12
    io_utype <= _GEN_13
    io_ujtype <= _GEN_14

  module memory :
    input clock : Clock
    input reset : UInt<1>
    input io_red : UInt<1>
    input io_write : UInt<1>
    input io_addr : UInt<32>
    input io_dataIn : UInt<32>
    output io_dataOut : UInt<32>

    mem mem : @[memory.scala 13:18]
      data-type => UInt<32>
      depth => 1024
      read-latency => 0
      write-latency => 1
      reader => io_dataOut_MPORT
      writer => MPORT
      read-under-write => undefined
    node _T = eq(io_write, UInt<1>("h1")) @[memory.scala 14:20]
    node _T_1 = bits(io_addr, 9, 0)
    node _T_2 = eq(io_red, UInt<1>("h1")) @[memory.scala 16:23]
    node _io_dataOut_T = bits(io_addr, 9, 0) @[memory.scala 17:31]
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

  module Branch :
    input clock : Clock
    input reset : UInt<1>
    input io_in_a : SInt<32>
    input io_in_b : SInt<32>
    output io_branch : UInt<1>
    input io_Aluop : UInt<4>

    node _T = eq(io_Aluop, UInt<2>("h3")) @[Branch.scala 12:21]
    node _T_1 = eq(io_in_a, io_in_b) @[Branch.scala 12:40]
    node _T_2 = and(_T, _T_1) @[Branch.scala 12:29]
    node _T_3 = eq(io_Aluop, UInt<3>("h4")) @[Branch.scala 12:64]
    node _T_4 = gt(io_in_a, io_in_b) @[Branch.scala 12:83]
    node _T_5 = and(_T_3, _T_4) @[Branch.scala 12:72]
    node _T_6 = or(_T_2, _T_5) @[Branch.scala 12:52]
    node _GEN_0 = mux(_T_6, UInt<1>("h1"), UInt<1>("h0")) @[Branch.scala 12:94 Branch.scala 13:19 Branch.scala 16:19]
    io_branch <= _GEN_0

  module Riscv :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<32>

    inst pcounter of pc @[Riscv.scala 9:26]
    inst im of instMem @[Riscv.scala 11:20]
    inst reg of register @[Riscv.scala 13:21]
    inst cu of control @[Riscv.scala 15:21]
    inst alu of ALU @[Riscv.scala 17:21]
    inst ac of alu_control @[Riscv.scala 19:20]
    inst imem of imdgen @[Riscv.scala 21:22]
    inst m of memory @[Riscv.scala 23:18]
    inst b of Branch @[Riscv.scala 25:18]
    node _b_io_in_a_T = asSInt(reg.io_read1) @[Riscv.scala 33:31]
    node _b_io_in_a_T_1 = asSInt(pcounter.io_out2) @[Riscv.scala 34:35]
    node _b_io_in_a_T_2 = asSInt(pcounter.io_out1) @[Riscv.scala 35:35]
    node _b_io_in_a_T_3 = asSInt(reg.io_read1) @[Riscv.scala 36:31]
    node _b_io_in_a_T_4 = eq(UInt<1>("h1"), cu.io_op_a_sel) @[Mux.scala 80:60]
    node _b_io_in_a_T_5 = mux(_b_io_in_a_T_4, _b_io_in_a_T_1, _b_io_in_a_T) @[Mux.scala 80:57]
    node _b_io_in_a_T_6 = eq(UInt<2>("h2"), cu.io_op_a_sel) @[Mux.scala 80:60]
    node _b_io_in_a_T_7 = mux(_b_io_in_a_T_6, _b_io_in_a_T_2, _b_io_in_a_T_5) @[Mux.scala 80:57]
    node _b_io_in_a_T_8 = eq(UInt<2>("h3"), cu.io_op_a_sel) @[Mux.scala 80:60]
    node _b_io_in_a_T_9 = mux(_b_io_in_a_T_8, _b_io_in_a_T_3, _b_io_in_a_T_7) @[Mux.scala 80:57]
    node _im_io_addr_T = bits(pcounter.io_out1, 21, 2) @[Riscv.scala 41:36]
    node _cu_io_op_code_T = bits(im.io_instr, 6, 0) @[Riscv.scala 42:43]
    node _ac_io_op_code_T = bits(im.io_instr, 6, 0) @[Riscv.scala 43:43]
    node _reg_io_rd_T = bits(im.io_instr, 11, 7) @[Riscv.scala 44:39]
    node _ac_io_func3_T = bits(im.io_instr, 14, 12) @[Riscv.scala 45:41]
    node _reg_io_rs1_T = bits(im.io_instr, 19, 15) @[Riscv.scala 46:40]
    node _reg_io_rs2_T = bits(im.io_instr, 24, 20) @[Riscv.scala 47:40]
    node _ac_io_func7_T = bits(im.io_instr, 31, 31) @[Riscv.scala 48:41]
    node _alu_io_in_a_T = asSInt(reg.io_read1) @[Riscv.scala 52:30]
    node _alu_io_in_a_T_1 = asSInt(pcounter.io_out2) @[Riscv.scala 53:35]
    node _alu_io_in_a_T_2 = asSInt(pcounter.io_out1) @[Riscv.scala 54:35]
    node _alu_io_in_a_T_3 = asSInt(reg.io_read1) @[Riscv.scala 55:31]
    node _alu_io_in_a_T_4 = eq(UInt<1>("h1"), cu.io_op_a_sel) @[Mux.scala 80:60]
    node _alu_io_in_a_T_5 = mux(_alu_io_in_a_T_4, _alu_io_in_a_T_1, _alu_io_in_a_T) @[Mux.scala 80:57]
    node _alu_io_in_a_T_6 = eq(UInt<2>("h2"), cu.io_op_a_sel) @[Mux.scala 80:60]
    node _alu_io_in_a_T_7 = mux(_alu_io_in_a_T_6, _alu_io_in_a_T_2, _alu_io_in_a_T_5) @[Mux.scala 80:57]
    node _alu_io_in_a_T_8 = eq(UInt<2>("h3"), cu.io_op_a_sel) @[Mux.scala 80:60]
    node _alu_io_in_a_T_9 = mux(_alu_io_in_a_T_8, _alu_io_in_a_T_3, _alu_io_in_a_T_7) @[Mux.scala 80:57]
    node _ime_T = eq(UInt<1>("h1"), cu.io_ex_sel) @[Mux.scala 80:60]
    node _ime_T_1 = mux(_ime_T, imem.io_stype, imem.io_itype) @[Mux.scala 80:57]
    node _ime_T_2 = eq(UInt<2>("h2"), cu.io_ex_sel) @[Mux.scala 80:60]
    node _ime_T_3 = mux(_ime_T_2, imem.io_utype, _ime_T_1) @[Mux.scala 80:57]
    node _ime_T_4 = eq(UInt<2>("h3"), cu.io_ex_sel) @[Mux.scala 80:60]
    node ime = mux(_ime_T_4, UInt<1>("h0"), _ime_T_3) @[Mux.scala 80:57]
    node _b_io_in_b_T = asSInt(ime) @[Riscv.scala 63:41]
    node _b_io_in_b_T_1 = asSInt(reg.io_read2) @[Riscv.scala 63:61]
    node _b_io_in_b_T_2 = mux(cu.io_op_b_sel, _b_io_in_b_T, _b_io_in_b_T_1) @[Riscv.scala 63:21]
    node _alu_io_in_b_T = asSInt(ime) @[Riscv.scala 64:44]
    node _alu_io_in_b_T_1 = asSInt(reg.io_read2) @[Riscv.scala 64:64]
    node _alu_io_in_b_T_2 = mux(cu.io_op_b_sel, _alu_io_in_b_T, _alu_io_in_b_T_1) @[Riscv.scala 64:24]
    node and = and(b.io_branch, cu.io_branch) @[Riscv.scala 65:27]
    node muxx = mux(and, imem.io_sbtype, pcounter.io_out2) @[Riscv.scala 66:19]
    node _JALR_T = add(reg.io_read1, ime) @[Riscv.scala 67:30]
    node JALR = tail(_JALR_T, 1) @[Riscv.scala 67:30]
    node _muxx2_T = eq(UInt<1>("h0"), cu.io_nxt_pc) @[Mux.scala 80:60]
    node _muxx2_T_1 = mux(_muxx2_T, pcounter.io_out2, UInt<1>("h0")) @[Mux.scala 80:57]
    node _muxx2_T_2 = eq(UInt<1>("h1"), cu.io_nxt_pc) @[Mux.scala 80:60]
    node _muxx2_T_3 = mux(_muxx2_T_2, muxx, _muxx2_T_1) @[Mux.scala 80:57]
    node _muxx2_T_4 = eq(UInt<2>("h2"), cu.io_nxt_pc) @[Mux.scala 80:60]
    node _muxx2_T_5 = mux(_muxx2_T_4, imem.io_ujtype, _muxx2_T_3) @[Mux.scala 80:57]
    node _muxx2_T_6 = eq(UInt<2>("h3"), cu.io_nxt_pc) @[Mux.scala 80:60]
    node muxx2 = mux(_muxx2_T_6, JALR, _muxx2_T_5) @[Mux.scala 80:57]
    node _m_io_addr_T = asUInt(alu.io_Result) @[Riscv.scala 76:34]
    node _mux3_T = asSInt(m.io_dataOut) @[Riscv.scala 80:48]
    node mux3 = mux(cu.io_memtoreg, _mux3_T, alu.io_Result) @[Riscv.scala 80:19]
    node _reg_io_write_data_T = asUInt(mux3) @[Riscv.scala 81:31]
    io_out <= UInt<1>("h1") @[Riscv.scala 27:12]
    pcounter.clock <= clock
    pcounter.reset <= reset
    pcounter.io_in <= muxx2 @[Riscv.scala 75:20]
    im.clock <= clock
    im.reset <= reset
    im.io_addr <= _im_io_addr_T @[Riscv.scala 41:16]
    reg.clock <= clock
    reg.reset <= reset
    reg.io_rs1 <= _reg_io_rs1_T @[Riscv.scala 46:16]
    reg.io_rs2 <= _reg_io_rs2_T @[Riscv.scala 47:16]
    reg.io_rd <= _reg_io_rd_T @[Riscv.scala 44:15]
    reg.io_write_data <= _reg_io_write_data_T @[Riscv.scala 81:23]
    reg.io_wen <= cu.io_regwrite @[Riscv.scala 40:16]
    cu.clock <= clock
    cu.reset <= reset
    cu.io_op_code <= _cu_io_op_code_T @[Riscv.scala 42:19]
    alu.clock <= clock
    alu.reset <= reset
    alu.io_in_a <= _alu_io_in_a_T_9 @[Riscv.scala 51:17]
    alu.io_in_b <= _alu_io_in_b_T_2 @[Riscv.scala 64:17]
    alu.io_Aluop <= ac.io_ctrl @[Riscv.scala 82:18]
    ac.clock <= clock
    ac.reset <= reset
    ac.io_Aluop <= bits(cu.io_aluop, 0, 0) @[Riscv.scala 83:17]
    ac.io_op_code <= _ac_io_op_code_T @[Riscv.scala 43:19]
    ac.io_func3 <= _ac_io_func3_T @[Riscv.scala 45:17]
    ac.io_func7 <= _ac_io_func7_T @[Riscv.scala 48:17]
    imem.clock <= clock
    imem.reset <= reset
    imem.io_instr <= im.io_instr @[Riscv.scala 49:19]
    imem.io_pc <= pcounter.io_out1 @[Riscv.scala 50:16]
    m.clock <= clock
    m.reset <= reset
    m.io_red <= cu.io_memread @[Riscv.scala 79:14]
    m.io_write <= cu.io_memwrite @[Riscv.scala 78:16]
    m.io_addr <= _m_io_addr_T @[Riscv.scala 76:15]
    m.io_dataIn <= reg.io_read2 @[Riscv.scala 77:17]
    b.clock <= clock
    b.reset <= reset
    b.io_in_a <= _b_io_in_a_T_9 @[Riscv.scala 32:15]
    b.io_in_b <= _b_io_in_b_T_2 @[Riscv.scala 63:15]
    b.io_Aluop <= ac.io_ctrl @[Riscv.scala 39:16]
