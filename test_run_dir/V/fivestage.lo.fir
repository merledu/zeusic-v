circuit fivestage :
  module forwarding :
    input clock : Clock
    input reset : UInt<1>
    input io_p2_regWrite : UInt<1>
    input io_p2_rd : UInt<5>
    input io_p1_rs1 : UInt<5>
    input io_p1_rs2 : UInt<5>
    input io_p1_rd : UInt<5>
    input io_p3_regwrite : UInt<1>
    input io_p3_rd : UInt<5>
    output io_f_a : UInt<2>
    output io_f_b : UInt<2>

    node _T = neq(io_p2_rd, UInt<1>("h0")) @[forwarding.scala 19:21]
    node _T_1 = eq(io_p2_rd, io_p1_rs1) @[forwarding.scala 19:50]
    node _T_2 = and(_T, _T_1) @[forwarding.scala 19:37]
    node _T_3 = neq(io_p2_rd, UInt<1>("h0")) @[forwarding.scala 23:27]
    node _T_4 = bits(_T_3, 0, 0) @[forwarding.scala 23:36]
    node _T_5 = eq(io_p2_rd, io_p1_rs2) @[forwarding.scala 23:57]
    node _T_6 = eq(io_p2_rd, io_p1_rs1) @[forwarding.scala 23:83]
    node _T_7 = and(_T_5, _T_6) @[forwarding.scala 23:71]
    node _T_8 = and(_T_4, _T_7) @[forwarding.scala 23:44]
    node _T_9 = eq(io_p1_rd, UInt<1>("h0")) @[forwarding.scala 27:26]
    node _T_10 = bits(_T_9, 0, 0) @[forwarding.scala 27:35]
    node _T_11 = eq(io_p3_rd, io_p1_rs2) @[forwarding.scala 27:56]
    node _T_12 = and(_T_10, _T_11) @[forwarding.scala 27:43]
    node _T_13 = neq(io_p3_rd, UInt<1>("h0")) @[forwarding.scala 31:44]
    node _T_14 = and(io_p3_regwrite, _T_13) @[forwarding.scala 31:32]
    node _T_15 = bits(_T_14, 0, 0) @[forwarding.scala 31:54]
    node _T_16 = eq(io_p3_rd, io_p1_rs1) @[forwarding.scala 31:75]
    node _T_17 = eq(io_p3_rd, io_p1_rs2) @[forwarding.scala 31:101]
    node _T_18 = and(_T_16, _T_17) @[forwarding.scala 31:89]
    node _T_19 = and(_T_15, _T_18) @[forwarding.scala 31:62]
    node _T_20 = neq(io_p2_rd, UInt<1>("h0")) @[forwarding.scala 35:45]
    node _T_21 = and(io_p2_regWrite, _T_20) @[forwarding.scala 35:33]
    node _T_22 = bits(_T_21, 0, 0) @[forwarding.scala 35:55]
    node _T_23 = eq(io_p2_rd, io_p1_rs1) @[forwarding.scala 35:75]
    node _T_24 = and(_T_22, _T_23) @[forwarding.scala 35:63]
    node _T_25 = eq(io_p3_rd, io_p1_rs2) @[forwarding.scala 35:101]
    node _T_26 = and(_T_24, _T_25) @[forwarding.scala 35:89]
    node _T_27 = neq(io_p3_rd, UInt<1>("h0")) @[forwarding.scala 40:44]
    node _T_28 = and(io_p3_regwrite, _T_27) @[forwarding.scala 40:32]
    node _T_29 = bits(_T_28, 0, 0) @[forwarding.scala 40:54]
    node _T_30 = eq(io_p3_rd, io_p1_rs1) @[forwarding.scala 40:74]
    node _T_31 = and(_T_29, _T_30) @[forwarding.scala 40:62]
    node _T_32 = neq(io_p2_rd, UInt<1>("h0")) @[forwarding.scala 44:45]
    node _T_33 = and(io_p2_regWrite, _T_32) @[forwarding.scala 44:33]
    node _T_34 = bits(_T_33, 0, 0) @[forwarding.scala 44:55]
    node _T_35 = eq(io_p2_rd, io_p1_rs1) @[forwarding.scala 44:75]
    node _T_36 = and(_T_34, _T_35) @[forwarding.scala 44:63]
    node _T_37 = eq(io_p3_rd, io_p1_rs2) @[forwarding.scala 44:101]
    node _T_38 = and(_T_36, _T_37) @[forwarding.scala 44:89]
    node _T_39 = neq(io_p2_rd, UInt<1>("h0")) @[forwarding.scala 50:45]
    node _T_40 = and(io_p2_regWrite, _T_39) @[forwarding.scala 50:33]
    node _T_41 = bits(_T_40, 0, 0) @[forwarding.scala 50:55]
    node _T_42 = eq(io_p2_rd, io_p1_rs2) @[forwarding.scala 50:76]
    node _T_43 = eq(io_p3_rd, io_p1_rs1) @[forwarding.scala 50:103]
    node _T_44 = and(_T_42, _T_43) @[forwarding.scala 50:90]
    node _T_45 = and(_T_41, _T_44) @[forwarding.scala 50:63]
    node _T_46 = neq(io_p2_rd, UInt<1>("h0")) @[forwarding.scala 55:46]
    node _T_47 = and(io_p2_regWrite, _T_46) @[forwarding.scala 55:34]
    node _T_48 = bits(_T_47, 0, 0) @[forwarding.scala 55:56]
    node _T_49 = eq(io_p2_rd, io_p1_rs2) @[forwarding.scala 55:76]
    node _T_50 = and(_T_48, _T_49) @[forwarding.scala 55:64]
    node _T_51 = eq(io_p3_rd, io_p1_rs1) @[forwarding.scala 55:103]
    node _T_52 = and(_T_50, _T_51) @[forwarding.scala 55:90]
    node _T_53 = eq(io_p3_regwrite, UInt<1>("h1")) @[forwarding.scala 59:26]
    node _T_54 = neq(io_p3_regwrite, UInt<1>("h0")) @[forwarding.scala 59:52]
    node _T_55 = and(_T_53, _T_54) @[forwarding.scala 59:34]
    node _T_56 = eq(io_p2_regWrite, UInt<1>("h1")) @[forwarding.scala 59:81]
    node _T_57 = neq(io_p2_rd, UInt<1>("h0")) @[forwarding.scala 59:102]
    node _T_58 = and(_T_56, _T_57) @[forwarding.scala 59:90]
    node _T_59 = eq(io_p2_rd, io_p1_rs1) @[forwarding.scala 59:124]
    node _T_60 = and(_T_58, _T_59) @[forwarding.scala 59:111]
    node _T_61 = eq(io_p2_rd, io_p1_rs2) @[forwarding.scala 59:152]
    node _T_62 = and(_T_60, _T_61) @[forwarding.scala 59:139]
    node _T_63 = not(_T_62) @[forwarding.scala 59:63]
    node _T_64 = and(_T_55, _T_63) @[forwarding.scala 59:60]
    node _T_65 = eq(io_p3_rd, io_p1_rs1) @[forwarding.scala 59:180]
    node _T_66 = and(_T_64, _T_65) @[forwarding.scala 59:168]
    node _T_67 = eq(io_p3_rd, io_p1_rs2) @[forwarding.scala 59:208]
    node _T_68 = and(_T_66, _T_67) @[forwarding.scala 59:195]
    node _T_69 = eq(io_p3_regwrite, UInt<1>("h1")) @[forwarding.scala 64:32]
    node _T_70 = neq(io_p3_regwrite, UInt<1>("h0")) @[forwarding.scala 64:58]
    node _T_71 = and(_T_69, _T_70) @[forwarding.scala 64:40]
    node _T_72 = eq(io_p2_regWrite, UInt<1>("h1")) @[forwarding.scala 64:86]
    node _T_73 = neq(io_p2_rd, UInt<1>("h0")) @[forwarding.scala 64:108]
    node _T_74 = and(_T_72, _T_73) @[forwarding.scala 64:95]
    node _T_75 = eq(io_p2_rd, io_p1_rs2) @[forwarding.scala 64:130]
    node _T_76 = and(_T_74, _T_75) @[forwarding.scala 64:117]
    node _T_77 = not(_T_76) @[forwarding.scala 64:69]
    node _T_78 = and(_T_71, _T_77) @[forwarding.scala 64:66]
    node _T_79 = eq(io_p3_rd, io_p1_rs2) @[forwarding.scala 64:159]
    node _T_80 = and(_T_78, _T_79) @[forwarding.scala 64:146]
    node _T_81 = eq(io_p3_regwrite, UInt<1>("h1")) @[forwarding.scala 68:32]
    node _T_82 = neq(io_p3_rd, UInt<1>("h0")) @[forwarding.scala 68:52]
    node _T_83 = and(_T_81, _T_82) @[forwarding.scala 68:40]
    node _T_84 = eq(io_p2_regWrite, UInt<1>("h1")) @[forwarding.scala 68:81]
    node _T_85 = neq(io_p2_rd, UInt<1>("h0")) @[forwarding.scala 68:103]
    node _T_86 = and(_T_84, _T_85) @[forwarding.scala 68:90]
    node _T_87 = eq(io_p2_rd, io_p1_rs2) @[forwarding.scala 68:125]
    node _T_88 = and(_T_86, _T_87) @[forwarding.scala 68:112]
    node _T_89 = not(_T_88) @[forwarding.scala 68:63]
    node _T_90 = and(_T_83, _T_89) @[forwarding.scala 68:60]
    node _T_91 = eq(io_p3_rd, io_p1_rs1) @[forwarding.scala 68:155]
    node _T_92 = and(_T_90, _T_91) @[forwarding.scala 68:142]
    node _GEN_0 = mux(_T_92, UInt<2>("h2"), UInt<1>("h1")) @[forwarding.scala 68:171 forwarding.scala 69:12 forwarding.scala 58:16]
    node _GEN_1 = mux(_T_80, UInt<2>("h2"), UInt<2>("h2")) @[forwarding.scala 64:175 forwarding.scala 66:16 forwarding.scala 57:16]
    node _GEN_2 = mux(_T_80, UInt<1>("h1"), _GEN_0) @[forwarding.scala 64:175 forwarding.scala 58:16]
    node _GEN_3 = mux(_T_68, UInt<2>("h2"), _GEN_2) @[forwarding.scala 59:224 forwarding.scala 61:16]
    node _GEN_4 = mux(_T_68, UInt<2>("h2"), _GEN_1) @[forwarding.scala 59:224 forwarding.scala 62:16]
    node _GEN_5 = mux(_T_52, _GEN_4, UInt<1>("h0")) @[forwarding.scala 56:5 forwarding.scala 95:16]
    node _GEN_6 = mux(_T_52, _GEN_3, UInt<1>("h0")) @[forwarding.scala 56:5 forwarding.scala 94:16]
    node _GEN_7 = mux(_T_45, UInt<1>("h0"), _GEN_5) @[forwarding.scala 51:5 forwarding.scala 52:16]
    node _GEN_8 = mux(_T_45, UInt<1>("h0"), _GEN_6) @[forwarding.scala 51:5 forwarding.scala 53:16]
    node _GEN_9 = mux(_T_38, UInt<2>("h2"), _GEN_7) @[forwarding.scala 45:5 forwarding.scala 46:16]
    node _GEN_10 = mux(_T_38, UInt<1>("h1"), _GEN_8) @[forwarding.scala 45:5 forwarding.scala 47:16]
    node _GEN_11 = mux(_T_31, UInt<1>("h1"), _GEN_10) @[forwarding.scala 40:90 forwarding.scala 41:16]
    node _GEN_12 = mux(_T_31, UInt<1>("h0"), _GEN_9) @[forwarding.scala 40:90 forwarding.scala 42:16]
    node _GEN_13 = mux(_T_26, UInt<2>("h2"), _GEN_12) @[forwarding.scala 36:5 forwarding.scala 37:16]
    node _GEN_14 = mux(_T_26, UInt<1>("h1"), _GEN_11) @[forwarding.scala 36:5 forwarding.scala 38:16]
    node _GEN_15 = mux(_T_19, UInt<2>("h2"), _GEN_14) @[forwarding.scala 31:118 forwarding.scala 32:17]
    node _GEN_16 = mux(_T_19, UInt<1>("h0"), _GEN_13) @[forwarding.scala 31:118 forwarding.scala 33:16]
    node _GEN_17 = mux(_T_12, UInt<1>("h0"), _GEN_15) @[forwarding.scala 27:72 forwarding.scala 28:17]
    node _GEN_18 = mux(_T_12, UInt<1>("h0"), _GEN_16) @[forwarding.scala 27:72 forwarding.scala 29:16]
    node _GEN_19 = mux(_T_8, UInt<2>("h2"), _GEN_17) @[forwarding.scala 23:100 forwarding.scala 24:17]
    node _GEN_20 = mux(_T_8, UInt<1>("h0"), _GEN_18) @[forwarding.scala 23:100 forwarding.scala 25:16]
    node _GEN_21 = mux(_T_2, UInt<2>("h2"), _GEN_20) @[forwarding.scala 19:67 forwarding.scala 20:16]
    node _GEN_22 = mux(_T_2, UInt<2>("h2"), _GEN_19) @[forwarding.scala 19:67 forwarding.scala 21:16]
    io_f_a <= _GEN_22
    io_f_b <= _GEN_21

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

  module register :
    input clock : Clock
    input reset : UInt<1>
    input io_rs1 : UInt<5>
    input io_rs2 : UInt<5>
    input io_rd : UInt<5>
    input io_p4_rd : UInt<5>
    input io_p3_rd : SInt<32>
    input io_write_data : SInt<32>
    input io_wen : UInt<1>
    output io_read1 : SInt<32>
    output io_read2 : SInt<32>

    reg regs_0 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_0) @[register.scala 20:23]
    reg regs_1 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_1) @[register.scala 20:23]
    reg regs_2 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_2) @[register.scala 20:23]
    reg regs_3 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_3) @[register.scala 20:23]
    reg regs_4 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_4) @[register.scala 20:23]
    reg regs_5 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_5) @[register.scala 20:23]
    reg regs_6 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_6) @[register.scala 20:23]
    reg regs_7 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_7) @[register.scala 20:23]
    reg regs_8 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_8) @[register.scala 20:23]
    reg regs_9 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_9) @[register.scala 20:23]
    reg regs_10 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_10) @[register.scala 20:23]
    reg regs_11 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_11) @[register.scala 20:23]
    reg regs_12 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_12) @[register.scala 20:23]
    reg regs_13 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_13) @[register.scala 20:23]
    reg regs_14 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_14) @[register.scala 20:23]
    reg regs_15 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_15) @[register.scala 20:23]
    reg regs_16 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_16) @[register.scala 20:23]
    reg regs_17 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_17) @[register.scala 20:23]
    reg regs_18 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_18) @[register.scala 20:23]
    reg regs_19 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_19) @[register.scala 20:23]
    reg regs_20 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_20) @[register.scala 20:23]
    reg regs_21 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_21) @[register.scala 20:23]
    reg regs_22 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_22) @[register.scala 20:23]
    reg regs_23 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_23) @[register.scala 20:23]
    reg regs_24 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_24) @[register.scala 20:23]
    reg regs_25 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_25) @[register.scala 20:23]
    reg regs_26 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_26) @[register.scala 20:23]
    reg regs_27 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_27) @[register.scala 20:23]
    reg regs_28 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_28) @[register.scala 20:23]
    reg regs_29 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_29) @[register.scala 20:23]
    reg regs_30 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_30) @[register.scala 20:23]
    reg regs_31 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), regs_31) @[register.scala 20:23]
    node _GEN_0 = validif(eq(UInt<1>("h0"), io_rs1), regs_0) @[register.scala 24:18 register.scala 24:18]
    node _GEN_1 = mux(eq(UInt<1>("h1"), io_rs1), regs_1, _GEN_0) @[register.scala 24:18 register.scala 24:18]
    node _GEN_2 = mux(eq(UInt<2>("h2"), io_rs1), regs_2, _GEN_1) @[register.scala 24:18 register.scala 24:18]
    node _GEN_3 = mux(eq(UInt<2>("h3"), io_rs1), regs_3, _GEN_2) @[register.scala 24:18 register.scala 24:18]
    node _GEN_4 = mux(eq(UInt<3>("h4"), io_rs1), regs_4, _GEN_3) @[register.scala 24:18 register.scala 24:18]
    node _GEN_5 = mux(eq(UInt<3>("h5"), io_rs1), regs_5, _GEN_4) @[register.scala 24:18 register.scala 24:18]
    node _GEN_6 = mux(eq(UInt<3>("h6"), io_rs1), regs_6, _GEN_5) @[register.scala 24:18 register.scala 24:18]
    node _GEN_7 = mux(eq(UInt<3>("h7"), io_rs1), regs_7, _GEN_6) @[register.scala 24:18 register.scala 24:18]
    node _GEN_8 = mux(eq(UInt<4>("h8"), io_rs1), regs_8, _GEN_7) @[register.scala 24:18 register.scala 24:18]
    node _GEN_9 = mux(eq(UInt<4>("h9"), io_rs1), regs_9, _GEN_8) @[register.scala 24:18 register.scala 24:18]
    node _GEN_10 = mux(eq(UInt<4>("ha"), io_rs1), regs_10, _GEN_9) @[register.scala 24:18 register.scala 24:18]
    node _GEN_11 = mux(eq(UInt<4>("hb"), io_rs1), regs_11, _GEN_10) @[register.scala 24:18 register.scala 24:18]
    node _GEN_12 = mux(eq(UInt<4>("hc"), io_rs1), regs_12, _GEN_11) @[register.scala 24:18 register.scala 24:18]
    node _GEN_13 = mux(eq(UInt<4>("hd"), io_rs1), regs_13, _GEN_12) @[register.scala 24:18 register.scala 24:18]
    node _GEN_14 = mux(eq(UInt<4>("he"), io_rs1), regs_14, _GEN_13) @[register.scala 24:18 register.scala 24:18]
    node _GEN_15 = mux(eq(UInt<4>("hf"), io_rs1), regs_15, _GEN_14) @[register.scala 24:18 register.scala 24:18]
    node _GEN_16 = mux(eq(UInt<5>("h10"), io_rs1), regs_16, _GEN_15) @[register.scala 24:18 register.scala 24:18]
    node _GEN_17 = mux(eq(UInt<5>("h11"), io_rs1), regs_17, _GEN_16) @[register.scala 24:18 register.scala 24:18]
    node _GEN_18 = mux(eq(UInt<5>("h12"), io_rs1), regs_18, _GEN_17) @[register.scala 24:18 register.scala 24:18]
    node _GEN_19 = mux(eq(UInt<5>("h13"), io_rs1), regs_19, _GEN_18) @[register.scala 24:18 register.scala 24:18]
    node _GEN_20 = mux(eq(UInt<5>("h14"), io_rs1), regs_20, _GEN_19) @[register.scala 24:18 register.scala 24:18]
    node _GEN_21 = mux(eq(UInt<5>("h15"), io_rs1), regs_21, _GEN_20) @[register.scala 24:18 register.scala 24:18]
    node _GEN_22 = mux(eq(UInt<5>("h16"), io_rs1), regs_22, _GEN_21) @[register.scala 24:18 register.scala 24:18]
    node _GEN_23 = mux(eq(UInt<5>("h17"), io_rs1), regs_23, _GEN_22) @[register.scala 24:18 register.scala 24:18]
    node _GEN_24 = mux(eq(UInt<5>("h18"), io_rs1), regs_24, _GEN_23) @[register.scala 24:18 register.scala 24:18]
    node _GEN_25 = mux(eq(UInt<5>("h19"), io_rs1), regs_25, _GEN_24) @[register.scala 24:18 register.scala 24:18]
    node _GEN_26 = mux(eq(UInt<5>("h1a"), io_rs1), regs_26, _GEN_25) @[register.scala 24:18 register.scala 24:18]
    node _GEN_27 = mux(eq(UInt<5>("h1b"), io_rs1), regs_27, _GEN_26) @[register.scala 24:18 register.scala 24:18]
    node _GEN_28 = mux(eq(UInt<5>("h1c"), io_rs1), regs_28, _GEN_27) @[register.scala 24:18 register.scala 24:18]
    node _GEN_29 = mux(eq(UInt<5>("h1d"), io_rs1), regs_29, _GEN_28) @[register.scala 24:18 register.scala 24:18]
    node _GEN_30 = mux(eq(UInt<5>("h1e"), io_rs1), regs_30, _GEN_29) @[register.scala 24:18 register.scala 24:18]
    node _GEN_31 = mux(eq(UInt<5>("h1f"), io_rs1), regs_31, _GEN_30) @[register.scala 24:18 register.scala 24:18]
    node _GEN_32 = validif(eq(UInt<1>("h0"), io_rs2), regs_0) @[register.scala 25:18 register.scala 25:18]
    node _GEN_33 = mux(eq(UInt<1>("h1"), io_rs2), regs_1, _GEN_32) @[register.scala 25:18 register.scala 25:18]
    node _GEN_34 = mux(eq(UInt<2>("h2"), io_rs2), regs_2, _GEN_33) @[register.scala 25:18 register.scala 25:18]
    node _GEN_35 = mux(eq(UInt<2>("h3"), io_rs2), regs_3, _GEN_34) @[register.scala 25:18 register.scala 25:18]
    node _GEN_36 = mux(eq(UInt<3>("h4"), io_rs2), regs_4, _GEN_35) @[register.scala 25:18 register.scala 25:18]
    node _GEN_37 = mux(eq(UInt<3>("h5"), io_rs2), regs_5, _GEN_36) @[register.scala 25:18 register.scala 25:18]
    node _GEN_38 = mux(eq(UInt<3>("h6"), io_rs2), regs_6, _GEN_37) @[register.scala 25:18 register.scala 25:18]
    node _GEN_39 = mux(eq(UInt<3>("h7"), io_rs2), regs_7, _GEN_38) @[register.scala 25:18 register.scala 25:18]
    node _GEN_40 = mux(eq(UInt<4>("h8"), io_rs2), regs_8, _GEN_39) @[register.scala 25:18 register.scala 25:18]
    node _GEN_41 = mux(eq(UInt<4>("h9"), io_rs2), regs_9, _GEN_40) @[register.scala 25:18 register.scala 25:18]
    node _GEN_42 = mux(eq(UInt<4>("ha"), io_rs2), regs_10, _GEN_41) @[register.scala 25:18 register.scala 25:18]
    node _GEN_43 = mux(eq(UInt<4>("hb"), io_rs2), regs_11, _GEN_42) @[register.scala 25:18 register.scala 25:18]
    node _GEN_44 = mux(eq(UInt<4>("hc"), io_rs2), regs_12, _GEN_43) @[register.scala 25:18 register.scala 25:18]
    node _GEN_45 = mux(eq(UInt<4>("hd"), io_rs2), regs_13, _GEN_44) @[register.scala 25:18 register.scala 25:18]
    node _GEN_46 = mux(eq(UInt<4>("he"), io_rs2), regs_14, _GEN_45) @[register.scala 25:18 register.scala 25:18]
    node _GEN_47 = mux(eq(UInt<4>("hf"), io_rs2), regs_15, _GEN_46) @[register.scala 25:18 register.scala 25:18]
    node _GEN_48 = mux(eq(UInt<5>("h10"), io_rs2), regs_16, _GEN_47) @[register.scala 25:18 register.scala 25:18]
    node _GEN_49 = mux(eq(UInt<5>("h11"), io_rs2), regs_17, _GEN_48) @[register.scala 25:18 register.scala 25:18]
    node _GEN_50 = mux(eq(UInt<5>("h12"), io_rs2), regs_18, _GEN_49) @[register.scala 25:18 register.scala 25:18]
    node _GEN_51 = mux(eq(UInt<5>("h13"), io_rs2), regs_19, _GEN_50) @[register.scala 25:18 register.scala 25:18]
    node _GEN_52 = mux(eq(UInt<5>("h14"), io_rs2), regs_20, _GEN_51) @[register.scala 25:18 register.scala 25:18]
    node _GEN_53 = mux(eq(UInt<5>("h15"), io_rs2), regs_21, _GEN_52) @[register.scala 25:18 register.scala 25:18]
    node _GEN_54 = mux(eq(UInt<5>("h16"), io_rs2), regs_22, _GEN_53) @[register.scala 25:18 register.scala 25:18]
    node _GEN_55 = mux(eq(UInt<5>("h17"), io_rs2), regs_23, _GEN_54) @[register.scala 25:18 register.scala 25:18]
    node _GEN_56 = mux(eq(UInt<5>("h18"), io_rs2), regs_24, _GEN_55) @[register.scala 25:18 register.scala 25:18]
    node _GEN_57 = mux(eq(UInt<5>("h19"), io_rs2), regs_25, _GEN_56) @[register.scala 25:18 register.scala 25:18]
    node _GEN_58 = mux(eq(UInt<5>("h1a"), io_rs2), regs_26, _GEN_57) @[register.scala 25:18 register.scala 25:18]
    node _GEN_59 = mux(eq(UInt<5>("h1b"), io_rs2), regs_27, _GEN_58) @[register.scala 25:18 register.scala 25:18]
    node _GEN_60 = mux(eq(UInt<5>("h1c"), io_rs2), regs_28, _GEN_59) @[register.scala 25:18 register.scala 25:18]
    node _GEN_61 = mux(eq(UInt<5>("h1d"), io_rs2), regs_29, _GEN_60) @[register.scala 25:18 register.scala 25:18]
    node _GEN_62 = mux(eq(UInt<5>("h1e"), io_rs2), regs_30, _GEN_61) @[register.scala 25:18 register.scala 25:18]
    node _GEN_63 = mux(eq(UInt<5>("h1f"), io_rs2), regs_31, _GEN_62) @[register.scala 25:18 register.scala 25:18]
    node _T = eq(io_wen, UInt<1>("h1")) @[register.scala 27:21]
    node _T_1 = eq(io_rd, UInt<1>("h0")) @[register.scala 28:28]
    node _regs_io_rd = pad(asSInt(UInt<1>("h0")), 32) @[register.scala 29:37 register.scala 29:37]
    node _GEN_64 = mux(eq(UInt<1>("h0"), io_rd), _regs_io_rd, asSInt(UInt<1>("h0"))) @[register.scala 29:37 register.scala 29:37 register.scala 21:11]
    node _GEN_65 = mux(eq(UInt<1>("h1"), io_rd), _regs_io_rd, regs_1) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_66 = mux(eq(UInt<2>("h2"), io_rd), _regs_io_rd, regs_2) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_67 = mux(eq(UInt<2>("h3"), io_rd), _regs_io_rd, regs_3) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_68 = mux(eq(UInt<3>("h4"), io_rd), _regs_io_rd, regs_4) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_69 = mux(eq(UInt<3>("h5"), io_rd), _regs_io_rd, regs_5) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_70 = mux(eq(UInt<3>("h6"), io_rd), _regs_io_rd, regs_6) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_71 = mux(eq(UInt<3>("h7"), io_rd), _regs_io_rd, regs_7) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_72 = mux(eq(UInt<4>("h8"), io_rd), _regs_io_rd, regs_8) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_73 = mux(eq(UInt<4>("h9"), io_rd), _regs_io_rd, regs_9) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_74 = mux(eq(UInt<4>("ha"), io_rd), _regs_io_rd, regs_10) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_75 = mux(eq(UInt<4>("hb"), io_rd), _regs_io_rd, regs_11) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_76 = mux(eq(UInt<4>("hc"), io_rd), _regs_io_rd, regs_12) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_77 = mux(eq(UInt<4>("hd"), io_rd), _regs_io_rd, regs_13) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_78 = mux(eq(UInt<4>("he"), io_rd), _regs_io_rd, regs_14) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_79 = mux(eq(UInt<4>("hf"), io_rd), _regs_io_rd, regs_15) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_80 = mux(eq(UInt<5>("h10"), io_rd), _regs_io_rd, regs_16) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_81 = mux(eq(UInt<5>("h11"), io_rd), _regs_io_rd, regs_17) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_82 = mux(eq(UInt<5>("h12"), io_rd), _regs_io_rd, regs_18) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_83 = mux(eq(UInt<5>("h13"), io_rd), _regs_io_rd, regs_19) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_84 = mux(eq(UInt<5>("h14"), io_rd), _regs_io_rd, regs_20) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_85 = mux(eq(UInt<5>("h15"), io_rd), _regs_io_rd, regs_21) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_86 = mux(eq(UInt<5>("h16"), io_rd), _regs_io_rd, regs_22) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_87 = mux(eq(UInt<5>("h17"), io_rd), _regs_io_rd, regs_23) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_88 = mux(eq(UInt<5>("h18"), io_rd), _regs_io_rd, regs_24) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_89 = mux(eq(UInt<5>("h19"), io_rd), _regs_io_rd, regs_25) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_90 = mux(eq(UInt<5>("h1a"), io_rd), _regs_io_rd, regs_26) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_91 = mux(eq(UInt<5>("h1b"), io_rd), _regs_io_rd, regs_27) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_92 = mux(eq(UInt<5>("h1c"), io_rd), _regs_io_rd, regs_28) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_93 = mux(eq(UInt<5>("h1d"), io_rd), _regs_io_rd, regs_29) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_94 = mux(eq(UInt<5>("h1e"), io_rd), _regs_io_rd, regs_30) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _GEN_95 = mux(eq(UInt<5>("h1f"), io_rd), _regs_io_rd, regs_31) @[register.scala 29:37 register.scala 29:37 register.scala 20:23]
    node _T_2 = eq(io_rs1, io_p4_rd) @[register.scala 30:25]
    node _T_3 = eq(io_rs2, io_p4_rd) @[register.scala 30:47]
    node _T_4 = and(_T_2, _T_3) @[register.scala 30:38]
    node _T_5 = eq(io_rs1, io_p4_rd) @[register.scala 34:24]
    node _T_6 = eq(io_rs2, io_p4_rd) @[register.scala 38:24]
    node _regs_io_rd_0 = io_write_data @[register.scala 43:37 register.scala 43:37]
    node _GEN_96 = mux(eq(UInt<1>("h0"), io_rd), _regs_io_rd_0, asSInt(UInt<1>("h0"))) @[register.scala 43:37 register.scala 43:37 register.scala 21:11]
    node _GEN_97 = mux(eq(UInt<1>("h1"), io_rd), _regs_io_rd_0, regs_1) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_98 = mux(eq(UInt<2>("h2"), io_rd), _regs_io_rd_0, regs_2) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_99 = mux(eq(UInt<2>("h3"), io_rd), _regs_io_rd_0, regs_3) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_100 = mux(eq(UInt<3>("h4"), io_rd), _regs_io_rd_0, regs_4) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_101 = mux(eq(UInt<3>("h5"), io_rd), _regs_io_rd_0, regs_5) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_102 = mux(eq(UInt<3>("h6"), io_rd), _regs_io_rd_0, regs_6) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_103 = mux(eq(UInt<3>("h7"), io_rd), _regs_io_rd_0, regs_7) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_104 = mux(eq(UInt<4>("h8"), io_rd), _regs_io_rd_0, regs_8) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_105 = mux(eq(UInt<4>("h9"), io_rd), _regs_io_rd_0, regs_9) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_106 = mux(eq(UInt<4>("ha"), io_rd), _regs_io_rd_0, regs_10) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_107 = mux(eq(UInt<4>("hb"), io_rd), _regs_io_rd_0, regs_11) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_108 = mux(eq(UInt<4>("hc"), io_rd), _regs_io_rd_0, regs_12) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_109 = mux(eq(UInt<4>("hd"), io_rd), _regs_io_rd_0, regs_13) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_110 = mux(eq(UInt<4>("he"), io_rd), _regs_io_rd_0, regs_14) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_111 = mux(eq(UInt<4>("hf"), io_rd), _regs_io_rd_0, regs_15) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_112 = mux(eq(UInt<5>("h10"), io_rd), _regs_io_rd_0, regs_16) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_113 = mux(eq(UInt<5>("h11"), io_rd), _regs_io_rd_0, regs_17) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_114 = mux(eq(UInt<5>("h12"), io_rd), _regs_io_rd_0, regs_18) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_115 = mux(eq(UInt<5>("h13"), io_rd), _regs_io_rd_0, regs_19) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_116 = mux(eq(UInt<5>("h14"), io_rd), _regs_io_rd_0, regs_20) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_117 = mux(eq(UInt<5>("h15"), io_rd), _regs_io_rd_0, regs_21) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_118 = mux(eq(UInt<5>("h16"), io_rd), _regs_io_rd_0, regs_22) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_119 = mux(eq(UInt<5>("h17"), io_rd), _regs_io_rd_0, regs_23) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_120 = mux(eq(UInt<5>("h18"), io_rd), _regs_io_rd_0, regs_24) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_121 = mux(eq(UInt<5>("h19"), io_rd), _regs_io_rd_0, regs_25) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_122 = mux(eq(UInt<5>("h1a"), io_rd), _regs_io_rd_0, regs_26) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_123 = mux(eq(UInt<5>("h1b"), io_rd), _regs_io_rd_0, regs_27) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_124 = mux(eq(UInt<5>("h1c"), io_rd), _regs_io_rd_0, regs_28) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_125 = mux(eq(UInt<5>("h1d"), io_rd), _regs_io_rd_0, regs_29) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_126 = mux(eq(UInt<5>("h1e"), io_rd), _regs_io_rd_0, regs_30) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _GEN_127 = mux(eq(UInt<5>("h1f"), io_rd), _regs_io_rd_0, regs_31) @[register.scala 43:37 register.scala 43:37 register.scala 20:23]
    node _regs_io_rs2 = _GEN_63 @[register.scala 25:18]
    node _GEN_128 = mux(_T_6, io_write_data, _regs_io_rs2) @[register.scala 38:38 register.scala 39:16 register.scala 25:18]
    node _GEN_129 = mux(_T_6, asSInt(UInt<1>("h0")), _GEN_96) @[register.scala 38:38 register.scala 21:11]
    node _GEN_130 = mux(_T_6, regs_1, _GEN_97) @[register.scala 38:38 register.scala 20:23]
    node _GEN_131 = mux(_T_6, regs_2, _GEN_98) @[register.scala 38:38 register.scala 20:23]
    node _GEN_132 = mux(_T_6, regs_3, _GEN_99) @[register.scala 38:38 register.scala 20:23]
    node _GEN_133 = mux(_T_6, regs_4, _GEN_100) @[register.scala 38:38 register.scala 20:23]
    node _GEN_134 = mux(_T_6, regs_5, _GEN_101) @[register.scala 38:38 register.scala 20:23]
    node _GEN_135 = mux(_T_6, regs_6, _GEN_102) @[register.scala 38:38 register.scala 20:23]
    node _GEN_136 = mux(_T_6, regs_7, _GEN_103) @[register.scala 38:38 register.scala 20:23]
    node _GEN_137 = mux(_T_6, regs_8, _GEN_104) @[register.scala 38:38 register.scala 20:23]
    node _GEN_138 = mux(_T_6, regs_9, _GEN_105) @[register.scala 38:38 register.scala 20:23]
    node _GEN_139 = mux(_T_6, regs_10, _GEN_106) @[register.scala 38:38 register.scala 20:23]
    node _GEN_140 = mux(_T_6, regs_11, _GEN_107) @[register.scala 38:38 register.scala 20:23]
    node _GEN_141 = mux(_T_6, regs_12, _GEN_108) @[register.scala 38:38 register.scala 20:23]
    node _GEN_142 = mux(_T_6, regs_13, _GEN_109) @[register.scala 38:38 register.scala 20:23]
    node _GEN_143 = mux(_T_6, regs_14, _GEN_110) @[register.scala 38:38 register.scala 20:23]
    node _GEN_144 = mux(_T_6, regs_15, _GEN_111) @[register.scala 38:38 register.scala 20:23]
    node _GEN_145 = mux(_T_6, regs_16, _GEN_112) @[register.scala 38:38 register.scala 20:23]
    node _GEN_146 = mux(_T_6, regs_17, _GEN_113) @[register.scala 38:38 register.scala 20:23]
    node _GEN_147 = mux(_T_6, regs_18, _GEN_114) @[register.scala 38:38 register.scala 20:23]
    node _GEN_148 = mux(_T_6, regs_19, _GEN_115) @[register.scala 38:38 register.scala 20:23]
    node _GEN_149 = mux(_T_6, regs_20, _GEN_116) @[register.scala 38:38 register.scala 20:23]
    node _GEN_150 = mux(_T_6, regs_21, _GEN_117) @[register.scala 38:38 register.scala 20:23]
    node _GEN_151 = mux(_T_6, regs_22, _GEN_118) @[register.scala 38:38 register.scala 20:23]
    node _GEN_152 = mux(_T_6, regs_23, _GEN_119) @[register.scala 38:38 register.scala 20:23]
    node _GEN_153 = mux(_T_6, regs_24, _GEN_120) @[register.scala 38:38 register.scala 20:23]
    node _GEN_154 = mux(_T_6, regs_25, _GEN_121) @[register.scala 38:38 register.scala 20:23]
    node _GEN_155 = mux(_T_6, regs_26, _GEN_122) @[register.scala 38:38 register.scala 20:23]
    node _GEN_156 = mux(_T_6, regs_27, _GEN_123) @[register.scala 38:38 register.scala 20:23]
    node _GEN_157 = mux(_T_6, regs_28, _GEN_124) @[register.scala 38:38 register.scala 20:23]
    node _GEN_158 = mux(_T_6, regs_29, _GEN_125) @[register.scala 38:38 register.scala 20:23]
    node _GEN_159 = mux(_T_6, regs_30, _GEN_126) @[register.scala 38:38 register.scala 20:23]
    node _GEN_160 = mux(_T_6, regs_31, _GEN_127) @[register.scala 38:38 register.scala 20:23]
    node _regs_io_rs1 = _GEN_31 @[register.scala 24:18]
    node _GEN_161 = mux(_T_5, io_write_data, _regs_io_rs1) @[register.scala 34:38 register.scala 35:16 register.scala 24:18]
    node _GEN_162 = mux(_T_5, io_p3_rd, _GEN_128) @[register.scala 34:38 register.scala 36:16]
    node _GEN_163 = mux(_T_5, asSInt(UInt<1>("h0")), _GEN_129) @[register.scala 34:38 register.scala 21:11]
    node _GEN_164 = mux(_T_5, regs_1, _GEN_130) @[register.scala 34:38 register.scala 20:23]
    node _GEN_165 = mux(_T_5, regs_2, _GEN_131) @[register.scala 34:38 register.scala 20:23]
    node _GEN_166 = mux(_T_5, regs_3, _GEN_132) @[register.scala 34:38 register.scala 20:23]
    node _GEN_167 = mux(_T_5, regs_4, _GEN_133) @[register.scala 34:38 register.scala 20:23]
    node _GEN_168 = mux(_T_5, regs_5, _GEN_134) @[register.scala 34:38 register.scala 20:23]
    node _GEN_169 = mux(_T_5, regs_6, _GEN_135) @[register.scala 34:38 register.scala 20:23]
    node _GEN_170 = mux(_T_5, regs_7, _GEN_136) @[register.scala 34:38 register.scala 20:23]
    node _GEN_171 = mux(_T_5, regs_8, _GEN_137) @[register.scala 34:38 register.scala 20:23]
    node _GEN_172 = mux(_T_5, regs_9, _GEN_138) @[register.scala 34:38 register.scala 20:23]
    node _GEN_173 = mux(_T_5, regs_10, _GEN_139) @[register.scala 34:38 register.scala 20:23]
    node _GEN_174 = mux(_T_5, regs_11, _GEN_140) @[register.scala 34:38 register.scala 20:23]
    node _GEN_175 = mux(_T_5, regs_12, _GEN_141) @[register.scala 34:38 register.scala 20:23]
    node _GEN_176 = mux(_T_5, regs_13, _GEN_142) @[register.scala 34:38 register.scala 20:23]
    node _GEN_177 = mux(_T_5, regs_14, _GEN_143) @[register.scala 34:38 register.scala 20:23]
    node _GEN_178 = mux(_T_5, regs_15, _GEN_144) @[register.scala 34:38 register.scala 20:23]
    node _GEN_179 = mux(_T_5, regs_16, _GEN_145) @[register.scala 34:38 register.scala 20:23]
    node _GEN_180 = mux(_T_5, regs_17, _GEN_146) @[register.scala 34:38 register.scala 20:23]
    node _GEN_181 = mux(_T_5, regs_18, _GEN_147) @[register.scala 34:38 register.scala 20:23]
    node _GEN_182 = mux(_T_5, regs_19, _GEN_148) @[register.scala 34:38 register.scala 20:23]
    node _GEN_183 = mux(_T_5, regs_20, _GEN_149) @[register.scala 34:38 register.scala 20:23]
    node _GEN_184 = mux(_T_5, regs_21, _GEN_150) @[register.scala 34:38 register.scala 20:23]
    node _GEN_185 = mux(_T_5, regs_22, _GEN_151) @[register.scala 34:38 register.scala 20:23]
    node _GEN_186 = mux(_T_5, regs_23, _GEN_152) @[register.scala 34:38 register.scala 20:23]
    node _GEN_187 = mux(_T_5, regs_24, _GEN_153) @[register.scala 34:38 register.scala 20:23]
    node _GEN_188 = mux(_T_5, regs_25, _GEN_154) @[register.scala 34:38 register.scala 20:23]
    node _GEN_189 = mux(_T_5, regs_26, _GEN_155) @[register.scala 34:38 register.scala 20:23]
    node _GEN_190 = mux(_T_5, regs_27, _GEN_156) @[register.scala 34:38 register.scala 20:23]
    node _GEN_191 = mux(_T_5, regs_28, _GEN_157) @[register.scala 34:38 register.scala 20:23]
    node _GEN_192 = mux(_T_5, regs_29, _GEN_158) @[register.scala 34:38 register.scala 20:23]
    node _GEN_193 = mux(_T_5, regs_30, _GEN_159) @[register.scala 34:38 register.scala 20:23]
    node _GEN_194 = mux(_T_5, regs_31, _GEN_160) @[register.scala 34:38 register.scala 20:23]
    node _GEN_195 = mux(_T_4, io_write_data, _GEN_161) @[register.scala 30:63 register.scala 31:16]
    node _GEN_196 = mux(_T_4, io_write_data, _GEN_162) @[register.scala 30:63 register.scala 32:16]
    node _GEN_197 = mux(_T_4, asSInt(UInt<1>("h0")), _GEN_163) @[register.scala 30:63 register.scala 21:11]
    node _GEN_198 = mux(_T_4, regs_1, _GEN_164) @[register.scala 30:63 register.scala 20:23]
    node _GEN_199 = mux(_T_4, regs_2, _GEN_165) @[register.scala 30:63 register.scala 20:23]
    node _GEN_200 = mux(_T_4, regs_3, _GEN_166) @[register.scala 30:63 register.scala 20:23]
    node _GEN_201 = mux(_T_4, regs_4, _GEN_167) @[register.scala 30:63 register.scala 20:23]
    node _GEN_202 = mux(_T_4, regs_5, _GEN_168) @[register.scala 30:63 register.scala 20:23]
    node _GEN_203 = mux(_T_4, regs_6, _GEN_169) @[register.scala 30:63 register.scala 20:23]
    node _GEN_204 = mux(_T_4, regs_7, _GEN_170) @[register.scala 30:63 register.scala 20:23]
    node _GEN_205 = mux(_T_4, regs_8, _GEN_171) @[register.scala 30:63 register.scala 20:23]
    node _GEN_206 = mux(_T_4, regs_9, _GEN_172) @[register.scala 30:63 register.scala 20:23]
    node _GEN_207 = mux(_T_4, regs_10, _GEN_173) @[register.scala 30:63 register.scala 20:23]
    node _GEN_208 = mux(_T_4, regs_11, _GEN_174) @[register.scala 30:63 register.scala 20:23]
    node _GEN_209 = mux(_T_4, regs_12, _GEN_175) @[register.scala 30:63 register.scala 20:23]
    node _GEN_210 = mux(_T_4, regs_13, _GEN_176) @[register.scala 30:63 register.scala 20:23]
    node _GEN_211 = mux(_T_4, regs_14, _GEN_177) @[register.scala 30:63 register.scala 20:23]
    node _GEN_212 = mux(_T_4, regs_15, _GEN_178) @[register.scala 30:63 register.scala 20:23]
    node _GEN_213 = mux(_T_4, regs_16, _GEN_179) @[register.scala 30:63 register.scala 20:23]
    node _GEN_214 = mux(_T_4, regs_17, _GEN_180) @[register.scala 30:63 register.scala 20:23]
    node _GEN_215 = mux(_T_4, regs_18, _GEN_181) @[register.scala 30:63 register.scala 20:23]
    node _GEN_216 = mux(_T_4, regs_19, _GEN_182) @[register.scala 30:63 register.scala 20:23]
    node _GEN_217 = mux(_T_4, regs_20, _GEN_183) @[register.scala 30:63 register.scala 20:23]
    node _GEN_218 = mux(_T_4, regs_21, _GEN_184) @[register.scala 30:63 register.scala 20:23]
    node _GEN_219 = mux(_T_4, regs_22, _GEN_185) @[register.scala 30:63 register.scala 20:23]
    node _GEN_220 = mux(_T_4, regs_23, _GEN_186) @[register.scala 30:63 register.scala 20:23]
    node _GEN_221 = mux(_T_4, regs_24, _GEN_187) @[register.scala 30:63 register.scala 20:23]
    node _GEN_222 = mux(_T_4, regs_25, _GEN_188) @[register.scala 30:63 register.scala 20:23]
    node _GEN_223 = mux(_T_4, regs_26, _GEN_189) @[register.scala 30:63 register.scala 20:23]
    node _GEN_224 = mux(_T_4, regs_27, _GEN_190) @[register.scala 30:63 register.scala 20:23]
    node _GEN_225 = mux(_T_4, regs_28, _GEN_191) @[register.scala 30:63 register.scala 20:23]
    node _GEN_226 = mux(_T_4, regs_29, _GEN_192) @[register.scala 30:63 register.scala 20:23]
    node _GEN_227 = mux(_T_4, regs_30, _GEN_193) @[register.scala 30:63 register.scala 20:23]
    node _GEN_228 = mux(_T_4, regs_31, _GEN_194) @[register.scala 30:63 register.scala 20:23]
    node _GEN_229 = mux(_T_1, _GEN_64, _GEN_197) @[register.scala 28:43]
    node _GEN_230 = mux(_T_1, _GEN_65, _GEN_198) @[register.scala 28:43]
    node _GEN_231 = mux(_T_1, _GEN_66, _GEN_199) @[register.scala 28:43]
    node _GEN_232 = mux(_T_1, _GEN_67, _GEN_200) @[register.scala 28:43]
    node _GEN_233 = mux(_T_1, _GEN_68, _GEN_201) @[register.scala 28:43]
    node _GEN_234 = mux(_T_1, _GEN_69, _GEN_202) @[register.scala 28:43]
    node _GEN_235 = mux(_T_1, _GEN_70, _GEN_203) @[register.scala 28:43]
    node _GEN_236 = mux(_T_1, _GEN_71, _GEN_204) @[register.scala 28:43]
    node _GEN_237 = mux(_T_1, _GEN_72, _GEN_205) @[register.scala 28:43]
    node _GEN_238 = mux(_T_1, _GEN_73, _GEN_206) @[register.scala 28:43]
    node _GEN_239 = mux(_T_1, _GEN_74, _GEN_207) @[register.scala 28:43]
    node _GEN_240 = mux(_T_1, _GEN_75, _GEN_208) @[register.scala 28:43]
    node _GEN_241 = mux(_T_1, _GEN_76, _GEN_209) @[register.scala 28:43]
    node _GEN_242 = mux(_T_1, _GEN_77, _GEN_210) @[register.scala 28:43]
    node _GEN_243 = mux(_T_1, _GEN_78, _GEN_211) @[register.scala 28:43]
    node _GEN_244 = mux(_T_1, _GEN_79, _GEN_212) @[register.scala 28:43]
    node _GEN_245 = mux(_T_1, _GEN_80, _GEN_213) @[register.scala 28:43]
    node _GEN_246 = mux(_T_1, _GEN_81, _GEN_214) @[register.scala 28:43]
    node _GEN_247 = mux(_T_1, _GEN_82, _GEN_215) @[register.scala 28:43]
    node _GEN_248 = mux(_T_1, _GEN_83, _GEN_216) @[register.scala 28:43]
    node _GEN_249 = mux(_T_1, _GEN_84, _GEN_217) @[register.scala 28:43]
    node _GEN_250 = mux(_T_1, _GEN_85, _GEN_218) @[register.scala 28:43]
    node _GEN_251 = mux(_T_1, _GEN_86, _GEN_219) @[register.scala 28:43]
    node _GEN_252 = mux(_T_1, _GEN_87, _GEN_220) @[register.scala 28:43]
    node _GEN_253 = mux(_T_1, _GEN_88, _GEN_221) @[register.scala 28:43]
    node _GEN_254 = mux(_T_1, _GEN_89, _GEN_222) @[register.scala 28:43]
    node _GEN_255 = mux(_T_1, _GEN_90, _GEN_223) @[register.scala 28:43]
    node _GEN_256 = mux(_T_1, _GEN_91, _GEN_224) @[register.scala 28:43]
    node _GEN_257 = mux(_T_1, _GEN_92, _GEN_225) @[register.scala 28:43]
    node _GEN_258 = mux(_T_1, _GEN_93, _GEN_226) @[register.scala 28:43]
    node _GEN_259 = mux(_T_1, _GEN_94, _GEN_227) @[register.scala 28:43]
    node _GEN_260 = mux(_T_1, _GEN_95, _GEN_228) @[register.scala 28:43]
    node _GEN_261 = mux(_T_1, _regs_io_rs1, _GEN_195) @[register.scala 28:43 register.scala 24:18]
    node _GEN_262 = mux(_T_1, _regs_io_rs2, _GEN_196) @[register.scala 28:43 register.scala 25:18]
    node _GEN_263 = mux(_T, _GEN_229, asSInt(UInt<1>("h0"))) @[register.scala 27:29 register.scala 21:11]
    node _GEN_264 = mux(_T, _GEN_230, regs_1) @[register.scala 27:29 register.scala 20:23]
    node _GEN_265 = mux(_T, _GEN_231, regs_2) @[register.scala 27:29 register.scala 20:23]
    node _GEN_266 = mux(_T, _GEN_232, regs_3) @[register.scala 27:29 register.scala 20:23]
    node _GEN_267 = mux(_T, _GEN_233, regs_4) @[register.scala 27:29 register.scala 20:23]
    node _GEN_268 = mux(_T, _GEN_234, regs_5) @[register.scala 27:29 register.scala 20:23]
    node _GEN_269 = mux(_T, _GEN_235, regs_6) @[register.scala 27:29 register.scala 20:23]
    node _GEN_270 = mux(_T, _GEN_236, regs_7) @[register.scala 27:29 register.scala 20:23]
    node _GEN_271 = mux(_T, _GEN_237, regs_8) @[register.scala 27:29 register.scala 20:23]
    node _GEN_272 = mux(_T, _GEN_238, regs_9) @[register.scala 27:29 register.scala 20:23]
    node _GEN_273 = mux(_T, _GEN_239, regs_10) @[register.scala 27:29 register.scala 20:23]
    node _GEN_274 = mux(_T, _GEN_240, regs_11) @[register.scala 27:29 register.scala 20:23]
    node _GEN_275 = mux(_T, _GEN_241, regs_12) @[register.scala 27:29 register.scala 20:23]
    node _GEN_276 = mux(_T, _GEN_242, regs_13) @[register.scala 27:29 register.scala 20:23]
    node _GEN_277 = mux(_T, _GEN_243, regs_14) @[register.scala 27:29 register.scala 20:23]
    node _GEN_278 = mux(_T, _GEN_244, regs_15) @[register.scala 27:29 register.scala 20:23]
    node _GEN_279 = mux(_T, _GEN_245, regs_16) @[register.scala 27:29 register.scala 20:23]
    node _GEN_280 = mux(_T, _GEN_246, regs_17) @[register.scala 27:29 register.scala 20:23]
    node _GEN_281 = mux(_T, _GEN_247, regs_18) @[register.scala 27:29 register.scala 20:23]
    node _GEN_282 = mux(_T, _GEN_248, regs_19) @[register.scala 27:29 register.scala 20:23]
    node _GEN_283 = mux(_T, _GEN_249, regs_20) @[register.scala 27:29 register.scala 20:23]
    node _GEN_284 = mux(_T, _GEN_250, regs_21) @[register.scala 27:29 register.scala 20:23]
    node _GEN_285 = mux(_T, _GEN_251, regs_22) @[register.scala 27:29 register.scala 20:23]
    node _GEN_286 = mux(_T, _GEN_252, regs_23) @[register.scala 27:29 register.scala 20:23]
    node _GEN_287 = mux(_T, _GEN_253, regs_24) @[register.scala 27:29 register.scala 20:23]
    node _GEN_288 = mux(_T, _GEN_254, regs_25) @[register.scala 27:29 register.scala 20:23]
    node _GEN_289 = mux(_T, _GEN_255, regs_26) @[register.scala 27:29 register.scala 20:23]
    node _GEN_290 = mux(_T, _GEN_256, regs_27) @[register.scala 27:29 register.scala 20:23]
    node _GEN_291 = mux(_T, _GEN_257, regs_28) @[register.scala 27:29 register.scala 20:23]
    node _GEN_292 = mux(_T, _GEN_258, regs_29) @[register.scala 27:29 register.scala 20:23]
    node _GEN_293 = mux(_T, _GEN_259, regs_30) @[register.scala 27:29 register.scala 20:23]
    node _GEN_294 = mux(_T, _GEN_260, regs_31) @[register.scala 27:29 register.scala 20:23]
    node _GEN_295 = mux(_T, _GEN_261, _regs_io_rs1) @[register.scala 27:29 register.scala 24:18]
    node _GEN_296 = mux(_T, _GEN_262, _regs_io_rs2) @[register.scala 27:29 register.scala 25:18]
    node _regs_WIRE_0 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_1 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_2 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_3 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_4 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_5 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_6 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_7 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_8 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_9 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_10 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_11 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_12 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_13 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_14 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_15 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_16 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_17 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_18 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_19 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_20 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_21 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_22 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_23 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_24 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_25 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_26 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_27 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_28 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_29 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_30 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    node _regs_WIRE_31 = asSInt(UInt<32>("h0")) @[register.scala 20:31 register.scala 20:31]
    io_read1 <= _GEN_295
    io_read2 <= _GEN_296
    regs_0 <= mux(reset, _regs_WIRE_0, _GEN_263) @[register.scala 20:23 register.scala 20:23]
    regs_1 <= mux(reset, _regs_WIRE_1, _GEN_264) @[register.scala 20:23 register.scala 20:23]
    regs_2 <= mux(reset, _regs_WIRE_2, _GEN_265) @[register.scala 20:23 register.scala 20:23]
    regs_3 <= mux(reset, _regs_WIRE_3, _GEN_266) @[register.scala 20:23 register.scala 20:23]
    regs_4 <= mux(reset, _regs_WIRE_4, _GEN_267) @[register.scala 20:23 register.scala 20:23]
    regs_5 <= mux(reset, _regs_WIRE_5, _GEN_268) @[register.scala 20:23 register.scala 20:23]
    regs_6 <= mux(reset, _regs_WIRE_6, _GEN_269) @[register.scala 20:23 register.scala 20:23]
    regs_7 <= mux(reset, _regs_WIRE_7, _GEN_270) @[register.scala 20:23 register.scala 20:23]
    regs_8 <= mux(reset, _regs_WIRE_8, _GEN_271) @[register.scala 20:23 register.scala 20:23]
    regs_9 <= mux(reset, _regs_WIRE_9, _GEN_272) @[register.scala 20:23 register.scala 20:23]
    regs_10 <= mux(reset, _regs_WIRE_10, _GEN_273) @[register.scala 20:23 register.scala 20:23]
    regs_11 <= mux(reset, _regs_WIRE_11, _GEN_274) @[register.scala 20:23 register.scala 20:23]
    regs_12 <= mux(reset, _regs_WIRE_12, _GEN_275) @[register.scala 20:23 register.scala 20:23]
    regs_13 <= mux(reset, _regs_WIRE_13, _GEN_276) @[register.scala 20:23 register.scala 20:23]
    regs_14 <= mux(reset, _regs_WIRE_14, _GEN_277) @[register.scala 20:23 register.scala 20:23]
    regs_15 <= mux(reset, _regs_WIRE_15, _GEN_278) @[register.scala 20:23 register.scala 20:23]
    regs_16 <= mux(reset, _regs_WIRE_16, _GEN_279) @[register.scala 20:23 register.scala 20:23]
    regs_17 <= mux(reset, _regs_WIRE_17, _GEN_280) @[register.scala 20:23 register.scala 20:23]
    regs_18 <= mux(reset, _regs_WIRE_18, _GEN_281) @[register.scala 20:23 register.scala 20:23]
    regs_19 <= mux(reset, _regs_WIRE_19, _GEN_282) @[register.scala 20:23 register.scala 20:23]
    regs_20 <= mux(reset, _regs_WIRE_20, _GEN_283) @[register.scala 20:23 register.scala 20:23]
    regs_21 <= mux(reset, _regs_WIRE_21, _GEN_284) @[register.scala 20:23 register.scala 20:23]
    regs_22 <= mux(reset, _regs_WIRE_22, _GEN_285) @[register.scala 20:23 register.scala 20:23]
    regs_23 <= mux(reset, _regs_WIRE_23, _GEN_286) @[register.scala 20:23 register.scala 20:23]
    regs_24 <= mux(reset, _regs_WIRE_24, _GEN_287) @[register.scala 20:23 register.scala 20:23]
    regs_25 <= mux(reset, _regs_WIRE_25, _GEN_288) @[register.scala 20:23 register.scala 20:23]
    regs_26 <= mux(reset, _regs_WIRE_26, _GEN_289) @[register.scala 20:23 register.scala 20:23]
    regs_27 <= mux(reset, _regs_WIRE_27, _GEN_290) @[register.scala 20:23 register.scala 20:23]
    regs_28 <= mux(reset, _regs_WIRE_28, _GEN_291) @[register.scala 20:23 register.scala 20:23]
    regs_29 <= mux(reset, _regs_WIRE_29, _GEN_292) @[register.scala 20:23 register.scala 20:23]
    regs_30 <= mux(reset, _regs_WIRE_30, _GEN_293) @[register.scala 20:23 register.scala 20:23]
    regs_31 <= mux(reset, _regs_WIRE_31, _GEN_294) @[register.scala 20:23 register.scala 20:23]

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
    output io_imtype : UInt<32>

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
    node _io_imtype_T = bits(io_instr, 31, 31) @[imdgen.scala 24:42]
    node _io_imtype_T_1 = bits(_io_imtype_T, 0, 0) @[Bitwise.scala 72:15]
    node io_imtype_hi = mux(_io_imtype_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node io_imtype_lo = bits(io_instr, 31, 20) @[imdgen.scala 24:56]
    node _io_imtype_T_2 = cat(io_imtype_hi, io_imtype_lo) @[Cat.scala 30:58]
    node _T_17 = bits(io_instr, 6, 0) @[imdgen.scala 26:24]
    node _T_18 = eq(_T_17, UInt<6>("h23")) @[imdgen.scala 26:29]
    node _io_imtype_T_3 = bits(io_instr, 31, 31) @[imdgen.scala 27:41]
    node _io_imtype_T_4 = bits(_io_imtype_T_3, 0, 0) @[Bitwise.scala 72:15]
    node io_imtype_hi_hi = mux(_io_imtype_T_4, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node io_imtype_hi_lo = bits(io_instr, 31, 25) @[imdgen.scala 27:55]
    node io_imtype_lo_1 = bits(io_instr, 11, 7) @[imdgen.scala 27:71]
    node io_imtype_hi_1 = cat(io_imtype_hi_hi, io_imtype_hi_lo) @[Cat.scala 30:58]
    node _io_imtype_T_5 = cat(io_imtype_hi_1, io_imtype_lo_1) @[Cat.scala 30:58]
    node _T_19 = bits(io_instr, 6, 0) @[imdgen.scala 30:24]
    node _T_20 = eq(_T_19, UInt<7>("h63")) @[imdgen.scala 30:29]
    node _io_imtype_T_6 = bits(io_instr, 31, 31) @[imdgen.scala 31:41]
    node _io_imtype_T_7 = bits(_io_imtype_T_6, 0, 0) @[Bitwise.scala 72:15]
    node io_imtype_hi_hi_hi = mux(_io_imtype_T_7, UInt<19>("h7ffff"), UInt<19>("h0")) @[Bitwise.scala 72:12]
    node io_imtype_hi_hi_lo = bits(io_instr, 31, 31) @[imdgen.scala 31:55]
    node io_imtype_hi_lo_1 = bits(io_instr, 7, 7) @[imdgen.scala 31:68]
    node _io_imtype_T_8 = bits(io_instr, 30, 25) @[imdgen.scala 31:80]
    node _io_imtype_T_9 = asSInt(_io_imtype_T_8) @[imdgen.scala 31:88]
    node _io_imtype_T_10 = bits(io_instr, 11, 8) @[imdgen.scala 31:103]
    node _io_imtype_T_11 = asSInt(_io_imtype_T_10) @[imdgen.scala 31:110]
    node io_imtype_lo_hi_lo = asUInt(_io_imtype_T_11) @[Cat.scala 30:58]
    node io_imtype_lo_hi_hi = asUInt(_io_imtype_T_9) @[Cat.scala 30:58]
    node io_imtype_lo_hi = cat(io_imtype_lo_hi_hi, io_imtype_lo_hi_lo) @[Cat.scala 30:58]
    node io_imtype_lo_2 = cat(io_imtype_lo_hi, UInt<1>("h0")) @[Cat.scala 30:58]
    node io_imtype_hi_hi_1 = cat(io_imtype_hi_hi_hi, io_imtype_hi_hi_lo) @[Cat.scala 30:58]
    node io_imtype_hi_2 = cat(io_imtype_hi_hi_1, io_imtype_hi_lo_1) @[Cat.scala 30:58]
    node _io_imtype_T_12 = cat(io_imtype_hi_2, io_imtype_lo_2) @[Cat.scala 30:58]
    node _io_imtype_T_13 = add(_io_imtype_T_12, io_pc) @[imdgen.scala 31:122]
    node _io_imtype_T_14 = tail(_io_imtype_T_13, 1) @[imdgen.scala 31:122]
    node _T_21 = bits(io_instr, 6, 0) @[imdgen.scala 33:26]
    node _T_22 = eq(_T_21, UInt<5>("h17")) @[imdgen.scala 33:31]
    node _T_23 = bits(io_instr, 6, 0) @[imdgen.scala 33:57]
    node _T_24 = eq(_T_23, UInt<6>("h37")) @[imdgen.scala 33:62]
    node _T_25 = or(_T_22, _T_24) @[imdgen.scala 33:46]
    node _io_imtype_T_15 = bits(io_instr, 31, 31) @[imdgen.scala 34:41]
    node _io_imtype_T_16 = bits(_io_imtype_T_15, 0, 0) @[Bitwise.scala 72:15]
    node io_imtype_hi_3 = mux(_io_imtype_T_16, UInt<12>("hfff"), UInt<12>("h0")) @[Bitwise.scala 72:12]
    node io_imtype_lo_3 = bits(io_instr, 31, 12) @[imdgen.scala 34:55]
    node _io_imtype_T_17 = cat(io_imtype_hi_3, io_imtype_lo_3) @[Cat.scala 30:58]
    node _T_26 = bits(io_instr, 6, 0) @[imdgen.scala 37:25]
    node _T_27 = eq(_T_26, UInt<7>("h6f")) @[imdgen.scala 37:30]
    node _io_imtype_T_18 = bits(io_instr, 31, 31) @[imdgen.scala 38:42]
    node _io_imtype_T_19 = bits(_io_imtype_T_18, 0, 0) @[Bitwise.scala 72:15]
    node io_imtype_hi_hi_hi_1 = mux(_io_imtype_T_19, UInt<11>("h7ff"), UInt<11>("h0")) @[Bitwise.scala 72:12]
    node io_imtype_hi_hi_lo_1 = bits(io_instr, 31, 31) @[imdgen.scala 38:56]
    node io_imtype_hi_lo_2 = bits(io_instr, 19, 12) @[imdgen.scala 38:69]
    node io_imtype_lo_hi_hi_1 = bits(io_instr, 20, 20) @[imdgen.scala 38:85]
    node io_imtype_lo_hi_lo_1 = bits(io_instr, 30, 21) @[imdgen.scala 38:98]
    node io_imtype_lo_hi_1 = cat(io_imtype_lo_hi_hi_1, io_imtype_lo_hi_lo_1) @[Cat.scala 30:58]
    node io_imtype_lo_4 = cat(io_imtype_lo_hi_1, UInt<1>("h0")) @[Cat.scala 30:58]
    node io_imtype_hi_hi_2 = cat(io_imtype_hi_hi_hi_1, io_imtype_hi_hi_lo_1) @[Cat.scala 30:58]
    node io_imtype_hi_4 = cat(io_imtype_hi_hi_2, io_imtype_hi_lo_2) @[Cat.scala 30:58]
    node _io_imtype_T_20 = cat(io_imtype_hi_4, io_imtype_lo_4) @[Cat.scala 30:58]
    node _io_imtype_T_21 = add(_io_imtype_T_20, io_pc) @[imdgen.scala 38:111]
    node _io_imtype_T_22 = tail(_io_imtype_T_21, 1) @[imdgen.scala 38:111]
    node _GEN_0 = mux(_T_27, _io_imtype_T_22, UInt<1>("h0")) @[imdgen.scala 37:47 imdgen.scala 38:19 imdgen.scala 18:15]
    node _GEN_1 = mux(_T_25, _io_imtype_T_17, _GEN_0) @[imdgen.scala 33:78 imdgen.scala 34:18]
    node _GEN_2 = mux(_T_20, _io_imtype_T_14, _GEN_1) @[imdgen.scala 30:45 imdgen.scala 31:18]
    node _GEN_3 = mux(_T_18, _io_imtype_T_5, _GEN_2) @[imdgen.scala 26:45 imdgen.scala 27:18]
    node _GEN_4 = mux(_T_16, _io_imtype_T_2, _GEN_3) @[imdgen.scala 23:209 imdgen.scala 24:19]
    io_imtype <= _GEN_4

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
    input io_rs1 : UInt<5>
    input io_rs2 : UInt<5>
    input io_func3 : UInt<3>
    output io_output : UInt<1>

    node _T = eq(io_func3, UInt<1>("h0")) @[Branch.scala 12:19]
    node _T_1 = eq(io_rs1, io_rs2) @[Branch.scala 13:18]
    node _GEN_0 = mux(_T_1, UInt<1>("h1"), UInt<1>("h0")) @[Branch.scala 13:29 Branch.scala 14:19 Branch.scala 16:19]
    node _T_2 = eq(io_func3, UInt<1>("h1")) @[Branch.scala 18:24]
    node _T_3 = neq(io_rs1, io_rs2) @[Branch.scala 20:18]
    node _GEN_1 = mux(_T_3, UInt<1>("h1"), UInt<1>("h0")) @[Branch.scala 20:29 Branch.scala 21:19 Branch.scala 23:19]
    node _T_4 = eq(io_func3, UInt<3>("h4")) @[Branch.scala 26:24]
    node _T_5 = lt(io_rs1, io_rs2) @[Branch.scala 27:18]
    node _GEN_2 = mux(_T_5, UInt<1>("h1"), UInt<1>("h0")) @[Branch.scala 27:27 Branch.scala 28:19 Branch.scala 30:19]
    node _T_6 = eq(io_func3, UInt<3>("h5")) @[Branch.scala 32:24]
    node _T_7 = geq(io_rs1, io_rs2) @[Branch.scala 33:18]
    node _GEN_3 = mux(_T_7, UInt<1>("h1"), UInt<1>("h0")) @[Branch.scala 33:28 Branch.scala 34:19 Branch.scala 36:19]
    node _T_8 = eq(io_func3, UInt<3>("h6")) @[Branch.scala 38:25]
    node _T_9 = gt(io_rs1, io_rs2) @[Branch.scala 39:18]
    node _GEN_4 = mux(_T_9, UInt<1>("h1"), UInt<1>("h0")) @[Branch.scala 39:27 Branch.scala 40:19 Branch.scala 42:19]
    node _T_10 = eq(io_func3, UInt<4>("h8")) @[Branch.scala 44:21]
    node _T_11 = leq(io_rs1, io_rs2) @[Branch.scala 45:18]
    node _GEN_5 = mux(_T_11, UInt<1>("h1"), UInt<1>("h0")) @[Branch.scala 45:28 Branch.scala 46:19 Branch.scala 48:19]
    node _GEN_6 = mux(_T_10, _GEN_5, UInt<1>("h0")) @[Branch.scala 44:29 Branch.scala 51:15]
    node _GEN_7 = mux(_T_8, _GEN_4, _GEN_6) @[Branch.scala 38:33]
    node _GEN_8 = mux(_T_6, _GEN_3, _GEN_7) @[Branch.scala 32:32]
    node _GEN_9 = mux(_T_4, _GEN_2, _GEN_8) @[Branch.scala 26:32]
    node _GEN_10 = mux(_T_2, _GEN_1, _GEN_9) @[Branch.scala 18:32]
    node _GEN_11 = mux(_T, _GEN_0, _GEN_10) @[Branch.scala 12:27]
    io_output <= _GEN_11

  module pipeline1 :
    input clock : Clock
    input reset : UInt<1>
    input io_pc_in : UInt<32>
    input io_pc4_in : UInt<32>
    input io_inst_in : UInt<32>
    output io_pc_out : UInt<32>
    output io_pc4_out : UInt<32>
    output io_inst_out : UInt<32>

    reg reg_pc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_pc) @[pipeline1.scala 13:25]
    reg reg_pc4 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_pc4) @[pipeline1.scala 16:26]
    reg reg_inst : UInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_inst) @[pipeline1.scala 19:27]
    io_pc_out <= reg_pc @[pipeline1.scala 15:15]
    io_pc4_out <= reg_pc4 @[pipeline1.scala 18:16]
    io_inst_out <= reg_inst @[pipeline1.scala 21:17]
    reg_pc <= mux(reset, UInt<32>("h0"), io_pc_in) @[pipeline1.scala 13:25 pipeline1.scala 13:25 pipeline1.scala 14:12]
    reg_pc4 <= mux(reset, UInt<32>("h0"), io_pc4_in) @[pipeline1.scala 16:26 pipeline1.scala 16:26 pipeline1.scala 17:13]
    reg_inst <= mux(reset, UInt<32>("h0"), io_inst_in) @[pipeline1.scala 19:27 pipeline1.scala 19:27 pipeline1.scala 20:14]

  module pipeline2 :
    input clock : Clock
    input reset : UInt<1>
    input io_IF_pc : UInt<32>
    input io_rs1_add_in : UInt<5>
    input io_rs2_add_in : UInt<5>
    input io_rs1 : SInt<32>
    input io_rs2 : SInt<32>
    input io_imme_in : UInt<32>
    input io_rd_add_in : UInt<5>
    input io_func3_in : UInt<3>
    input io_func7_in : UInt<1>
    input io_ctrl_memwr_in : UInt<1>
    input io_ctrl_memrd_in : UInt<1>
    input io_ctrl_branch_in : UInt<1>
    input io_ctrl_regwr_in : UInt<1>
    input io_ctrl_memtoreg_in : UInt<1>
    input io_ctrl_Aluop_in : UInt<3>
    input io_ctrl_Alu_src : UInt<1>
    input io_ctrl_a_sel : UInt<2>
    input io_ctrl_nxt_pc : UInt<3>
    output io_IF_pc_out : UInt<32>
    output io_rs1_add_out : UInt<5>
    output io_rs2_add_out : UInt<5>
    output io_rs1_out : SInt<32>
    output io_rs2_out : SInt<32>
    output io_imme_out : UInt<32>
    output io_rd_add_out : UInt<5>
    output io_func3_out : UInt<3>
    output io_func7_out : UInt<1>
    output io_ctrl_memwr_out : UInt<1>
    output io_ctrl_memrd_out : UInt<1>
    output io_ctrl_branch_out : UInt<1>
    output io_ctrl_regwr_out : UInt<1>
    output io_ctrl_memtoreg_out : UInt<1>
    output io_ctrl_Aluop_out : UInt<3>
    output io_ctrl_a_sel_out : UInt<2>
    output io_op_Alu_src_out : UInt<1>
    output io_nxt_pc_out : UInt<3>

    reg reg_if_pc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_if_pc) @[pipeline2.scala 47:27]
    reg reg_rs1_add_in : UInt<5>, clock with :
      reset => (UInt<1>("h0"), reg_rs1_add_in) @[pipeline2.scala 48:32]
    reg reg_rs2_add_in : UInt<5>, clock with :
      reset => (UInt<1>("h0"), reg_rs2_add_in) @[pipeline2.scala 49:32]
    reg reg_rs1_in : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_rs1_in) @[pipeline2.scala 50:28]
    reg reg_rs2_in : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_rs2_in) @[pipeline2.scala 51:28]
    reg reg_imme_in : UInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_imme_in) @[pipeline2.scala 52:29]
    reg reg_rd_add_in : UInt<5>, clock with :
      reset => (UInt<1>("h0"), reg_rd_add_in) @[pipeline2.scala 53:31]
    reg reg_func3_in : UInt<3>, clock with :
      reset => (UInt<1>("h0"), reg_func3_in) @[pipeline2.scala 54:30]
    reg reg_func7_in : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg_func7_in) @[pipeline2.scala 55:30]
    reg reg_memwr_in : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg_memwr_in) @[pipeline2.scala 56:30]
    reg reg_memrd_in : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg_memrd_in) @[pipeline2.scala 57:30]
    reg reg_branch_in : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg_branch_in) @[pipeline2.scala 58:31]
    reg reg_memtoreg_in : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg_memtoreg_in) @[pipeline2.scala 59:33]
    reg reg_Aluop_in : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg_Aluop_in) @[pipeline2.scala 60:30]
    reg reg_a_sel_in : UInt<2>, clock with :
      reset => (UInt<1>("h0"), reg_a_sel_in) @[pipeline2.scala 61:30]
    reg reg_Alu_src_in : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg_Alu_src_in) @[pipeline2.scala 63:33]
    reg regwr_in : UInt<1>, clock with :
      reset => (UInt<1>("h0"), regwr_in) @[pipeline2.scala 64:27]
    reg reg_nxtpc_in : UInt<3>, clock with :
      reset => (UInt<1>("h0"), reg_nxtpc_in) @[pipeline2.scala 65:30]
    io_IF_pc_out <= reg_if_pc @[pipeline2.scala 86:18]
    io_rs1_add_out <= reg_rs1_add_in @[pipeline2.scala 87:20]
    io_rs2_add_out <= reg_rs2_add_in @[pipeline2.scala 88:20]
    io_rs1_out <= reg_rs1_in @[pipeline2.scala 89:16]
    io_rs2_out <= reg_rs2_in @[pipeline2.scala 90:16]
    io_imme_out <= reg_imme_in @[pipeline2.scala 91:17]
    io_rd_add_out <= reg_rd_add_in @[pipeline2.scala 92:19]
    io_func3_out <= reg_func3_in @[pipeline2.scala 93:18]
    io_func7_out <= reg_func7_in @[pipeline2.scala 94:18]
    io_ctrl_memwr_out <= reg_memwr_in @[pipeline2.scala 95:23]
    io_ctrl_memrd_out <= reg_memrd_in @[pipeline2.scala 96:23]
    io_ctrl_branch_out <= reg_branch_in @[pipeline2.scala 97:24]
    io_ctrl_regwr_out <= regwr_in @[pipeline2.scala 98:23]
    io_ctrl_memtoreg_out <= reg_memtoreg_in @[pipeline2.scala 99:26]
    io_ctrl_Aluop_out <= reg_Aluop_in @[pipeline2.scala 100:23]
    io_ctrl_a_sel_out <= reg_a_sel_in @[pipeline2.scala 101:24]
    io_op_Alu_src_out <= reg_Alu_src_in @[pipeline2.scala 103:23]
    io_nxt_pc_out <= reg_nxtpc_in @[pipeline2.scala 104:19]
    reg_if_pc <= mux(reset, UInt<32>("h0"), io_IF_pc) @[pipeline2.scala 47:27 pipeline2.scala 47:27 pipeline2.scala 67:15]
    reg_rs1_add_in <= mux(reset, UInt<5>("h0"), io_rs1_add_in) @[pipeline2.scala 48:32 pipeline2.scala 48:32 pipeline2.scala 68:20]
    reg_rs2_add_in <= mux(reset, UInt<5>("h0"), io_rs2_add_in) @[pipeline2.scala 49:32 pipeline2.scala 49:32 pipeline2.scala 69:20]
    reg_rs1_in <= mux(reset, asSInt(UInt<32>("h0")), io_rs1) @[pipeline2.scala 50:28 pipeline2.scala 50:28 pipeline2.scala 70:16]
    reg_rs2_in <= mux(reset, asSInt(UInt<32>("h0")), io_rs2) @[pipeline2.scala 51:28 pipeline2.scala 51:28 pipeline2.scala 71:16]
    reg_imme_in <= mux(reset, UInt<32>("h0"), io_imme_in) @[pipeline2.scala 52:29 pipeline2.scala 52:29 pipeline2.scala 72:17]
    reg_rd_add_in <= mux(reset, UInt<5>("h0"), io_rd_add_in) @[pipeline2.scala 53:31 pipeline2.scala 53:31 pipeline2.scala 73:19]
    reg_func3_in <= mux(reset, UInt<3>("h0"), io_func3_in) @[pipeline2.scala 54:30 pipeline2.scala 54:30 pipeline2.scala 74:18]
    reg_func7_in <= mux(reset, UInt<1>("h0"), io_func7_in) @[pipeline2.scala 55:30 pipeline2.scala 55:30 pipeline2.scala 75:18]
    reg_memwr_in <= mux(reset, UInt<1>("h0"), io_ctrl_memwr_in) @[pipeline2.scala 56:30 pipeline2.scala 56:30 pipeline2.scala 76:18]
    reg_memrd_in <= mux(reset, UInt<1>("h0"), io_ctrl_memrd_in) @[pipeline2.scala 57:30 pipeline2.scala 57:30 pipeline2.scala 77:18]
    reg_branch_in <= mux(reset, UInt<1>("h0"), io_ctrl_branch_in) @[pipeline2.scala 58:31 pipeline2.scala 58:31 pipeline2.scala 78:19]
    reg_memtoreg_in <= mux(reset, UInt<1>("h0"), io_ctrl_memtoreg_in) @[pipeline2.scala 59:33 pipeline2.scala 59:33 pipeline2.scala 79:21]
    reg_Aluop_in <= mux(reset, UInt<1>("h0"), bits(io_ctrl_Aluop_in, 0, 0)) @[pipeline2.scala 60:30 pipeline2.scala 60:30 pipeline2.scala 80:18]
    reg_a_sel_in <= mux(reset, UInt<2>("h0"), io_ctrl_a_sel) @[pipeline2.scala 61:30 pipeline2.scala 61:30 pipeline2.scala 81:18]
    reg_Alu_src_in <= mux(reset, UInt<1>("h0"), io_ctrl_Alu_src) @[pipeline2.scala 63:33 pipeline2.scala 63:33 pipeline2.scala 83:20]
    regwr_in <= mux(reset, UInt<1>("h0"), io_ctrl_regwr_in) @[pipeline2.scala 64:27 pipeline2.scala 64:27 pipeline2.scala 66:14]
    reg_nxtpc_in <= mux(reset, UInt<3>("h0"), io_ctrl_nxt_pc) @[pipeline2.scala 65:30 pipeline2.scala 65:30 pipeline2.scala 84:18]

  module pipeline3 :
    input clock : Clock
    input reset : UInt<1>
    input io_memwr : UInt<1>
    input io_memrd : UInt<1>
    input io_memtoreg : UInt<1>
    input io_rs2 : SInt<32>
    input io_rdadd : UInt<5>
    input io_rs2add : UInt<5>
    input io_alu_output : SInt<32>
    input io_regwr : UInt<1>
    input io_branch : UInt<1>
    input io_p2_pc : UInt<32>
    output io_memwr_out : UInt<1>
    output io_memrd_out : UInt<1>
    output io_memtoreg_out : UInt<1>
    output io_rs2_out : SInt<32>
    output io_rdadd_out : UInt<5>
    output io_rs2add_out : UInt<5>
    output io_alu_output_out : SInt<32>
    output io_regwr_out : UInt<1>
    output io_p2_pc_out : UInt<32>
    output io_branch_out : UInt<1>

    reg reg1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg1) @[pipeline3.scala 28:23]
    reg reg2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg2) @[pipeline3.scala 29:23]
    reg reg3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg3) @[pipeline3.scala 30:23]
    reg reg4 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg4) @[pipeline3.scala 31:23]
    reg reg5 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), reg5) @[pipeline3.scala 32:23]
    reg reg6 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), reg6) @[pipeline3.scala 33:23]
    reg reg7 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg7) @[pipeline3.scala 34:23]
    reg reg8 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg8) @[pipeline3.scala 35:23]
    reg reg9 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), reg9) @[pipeline3.scala 36:23]
    reg reg10 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg10) @[pipeline3.scala 37:23]
    io_memwr_out <= reg1 @[pipeline3.scala 50:18]
    io_memrd_out <= reg2 @[pipeline3.scala 51:18]
    io_memtoreg_out <= reg3 @[pipeline3.scala 52:21]
    io_rs2_out <= reg4 @[pipeline3.scala 53:16]
    io_rdadd_out <= reg5 @[pipeline3.scala 54:18]
    io_rs2add_out <= reg6 @[pipeline3.scala 55:19]
    io_alu_output_out <= reg7 @[pipeline3.scala 56:23]
    io_regwr_out <= reg8 @[pipeline3.scala 57:19]
    io_p2_pc_out <= reg9 @[pipeline3.scala 58:18]
    io_branch_out <= reg10 @[pipeline3.scala 59:19]
    reg1 <= mux(reset, UInt<1>("h0"), io_memwr) @[pipeline3.scala 28:23 pipeline3.scala 28:23 pipeline3.scala 39:10]
    reg2 <= mux(reset, UInt<1>("h0"), io_memrd) @[pipeline3.scala 29:23 pipeline3.scala 29:23 pipeline3.scala 40:9]
    reg3 <= mux(reset, UInt<1>("h0"), io_memtoreg) @[pipeline3.scala 30:23 pipeline3.scala 30:23 pipeline3.scala 41:9]
    reg4 <= mux(reset, asSInt(UInt<32>("h0")), io_rs2) @[pipeline3.scala 31:23 pipeline3.scala 31:23 pipeline3.scala 42:9]
    reg5 <= mux(reset, UInt<5>("h0"), io_rdadd) @[pipeline3.scala 32:23 pipeline3.scala 32:23 pipeline3.scala 43:9]
    reg6 <= mux(reset, UInt<5>("h0"), io_rs2add) @[pipeline3.scala 33:23 pipeline3.scala 33:23 pipeline3.scala 44:9]
    reg7 <= mux(reset, asSInt(UInt<32>("h0")), io_alu_output) @[pipeline3.scala 34:23 pipeline3.scala 34:23 pipeline3.scala 45:9]
    reg8 <= mux(reset, UInt<1>("h0"), io_regwr) @[pipeline3.scala 35:23 pipeline3.scala 35:23 pipeline3.scala 46:10]
    reg9 <= mux(reset, UInt<32>("h0"), io_p2_pc) @[pipeline3.scala 36:23 pipeline3.scala 36:23 pipeline3.scala 47:10]
    reg10 <= mux(reset, UInt<1>("h0"), io_branch) @[pipeline3.scala 37:23 pipeline3.scala 37:23 pipeline3.scala 48:10]

  module pipeline4 :
    input clock : Clock
    input reset : UInt<1>
    input io_regwr : UInt<1>
    input io_memtoreg : UInt<1>
    input io_rdadd : UInt<5>
    input io_memrd : UInt<1>
    input io_alu_output : SInt<32>
    input io_data_mem : UInt<32>
    output io_regwr_out : UInt<1>
    output io_memtoreg_out : UInt<1>
    output io_rdadd_out : UInt<5>
    output io_memrd_out : UInt<1>
    output io_alu_output_out : SInt<32>
    output io_data_mem_out : UInt<32>

    reg r1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), r1) @[pipeline4.scala 20:21]
    reg r2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), r2) @[pipeline4.scala 21:21]
    reg r3 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), r3) @[pipeline4.scala 22:21]
    reg r4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), r4) @[pipeline4.scala 23:21]
    reg r5 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), r5) @[pipeline4.scala 24:21]
    reg r6 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), r6) @[pipeline4.scala 25:21]
    io_regwr_out <= r1 @[pipeline4.scala 33:18]
    io_memtoreg_out <= r2 @[pipeline4.scala 34:21]
    io_rdadd_out <= r3 @[pipeline4.scala 35:18]
    io_memrd_out <= r4 @[pipeline4.scala 36:18]
    io_alu_output_out <= r5 @[pipeline4.scala 37:23]
    io_data_mem_out <= r6 @[pipeline4.scala 38:21]
    r1 <= mux(reset, UInt<1>("h0"), io_regwr) @[pipeline4.scala 20:21 pipeline4.scala 20:21 pipeline4.scala 26:8]
    r2 <= mux(reset, UInt<1>("h0"), io_memtoreg) @[pipeline4.scala 21:21 pipeline4.scala 21:21 pipeline4.scala 27:8]
    r3 <= mux(reset, UInt<5>("h0"), io_rdadd) @[pipeline4.scala 22:21 pipeline4.scala 22:21 pipeline4.scala 28:8]
    r4 <= mux(reset, UInt<1>("h0"), io_memrd) @[pipeline4.scala 23:21 pipeline4.scala 23:21 pipeline4.scala 29:8]
    r5 <= mux(reset, asSInt(UInt<32>("h0")), io_alu_output) @[pipeline4.scala 24:21 pipeline4.scala 24:21 pipeline4.scala 30:8]
    r6 <= mux(reset, UInt<32>("h0"), io_data_mem) @[pipeline4.scala 25:21 pipeline4.scala 25:21 pipeline4.scala 31:8]

  module hazardDetect :
    input clock : Clock
    input reset : UInt<1>
    input io_p1_inst : UInt<32>
    input io_p2_memrd : UInt<1>
    input io_p2_rd : UInt<5>
    input io_pc_in : UInt<32>
    input io_current_pc : UInt<32>
    output io_inst_fwd : UInt<1>
    output io_pc_fwd : UInt<1>
    output io_ctrl_frwd : UInt<1>
    output io_inst_out : UInt<32>
    output io_pc_out : UInt<32>
    output io_current_pc_out : UInt<32>
    input io_rs1 : UInt<5>
    input io_rs2 : UInt<5>

    node _T = eq(io_p2_memrd, UInt<1>("h1")) @[hazardDetect.scala 21:24]
    node _T_1 = eq(io_p2_rd, io_rs1) @[hazardDetect.scala 21:47]
    node _T_2 = eq(io_p2_rd, io_rs2) @[hazardDetect.scala 21:73]
    node _T_3 = or(_T_1, _T_2) @[hazardDetect.scala 21:60]
    node _T_4 = and(_T, _T_3) @[hazardDetect.scala 21:33]
    node _GEN_0 = mux(_T_4, UInt<1>("h1"), UInt<1>("h0")) @[hazardDetect.scala 21:86 hazardDetect.scala 22:21 hazardDetect.scala 30:21]
    node _GEN_1 = mux(_T_4, io_p1_inst, io_p1_inst) @[hazardDetect.scala 21:86 hazardDetect.scala 25:21 hazardDetect.scala 33:21]
    node _GEN_2 = mux(_T_4, io_pc_in, io_pc_in) @[hazardDetect.scala 21:86 hazardDetect.scala 26:19 hazardDetect.scala 34:19]
    node _GEN_3 = mux(_T_4, io_current_pc, io_current_pc) @[hazardDetect.scala 21:86 hazardDetect.scala 27:27 hazardDetect.scala 35:27]
    io_inst_fwd <= _GEN_0
    io_pc_fwd <= _GEN_0
    io_ctrl_frwd <= _GEN_0
    io_inst_out <= _GEN_1
    io_pc_out <= _GEN_2
    io_current_pc_out <= _GEN_3

  module fivestage :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<32>

    inst fu of forwarding @[fivestage.scala 9:20]
    inst pcounter of pc @[fivestage.scala 11:26]
    inst im of instMem @[fivestage.scala 13:20]
    inst reg of register @[fivestage.scala 15:21]
    inst cu of control @[fivestage.scala 17:21]
    inst alu of ALU @[fivestage.scala 19:21]
    inst ac of alu_control @[fivestage.scala 21:20]
    inst imem of imdgen @[fivestage.scala 23:22]
    inst m of memory @[fivestage.scala 25:18]
    inst b of Branch @[fivestage.scala 27:18]
    inst p1 of pipeline1 @[fivestage.scala 29:20]
    inst p2 of pipeline2 @[fivestage.scala 31:20]
    inst p3 of pipeline3 @[fivestage.scala 33:20]
    inst p4 of pipeline4 @[fivestage.scala 35:20]
    inst hd of hazardDetect @[fivestage.scala 37:20]
    node _cu_io_op_code_T = bits(p1.io_inst_out, 6, 0) @[fivestage.scala 86:36]
    node _reg_io_rs1_T = bits(p1.io_inst_out, 19, 15) @[fivestage.scala 87:33]
    node _reg_io_rs2_T = bits(p1.io_inst_out, 24, 20) @[fivestage.scala 90:33]
    node _T = bits(p1.io_inst_out, 6, 0) @[fivestage.scala 93:24]
    node _T_1 = eq(_T, UInt<6>("h23")) @[fivestage.scala 93:30]
    node _p2_io_rd_add_in_T = bits(p1.io_inst_out, 11, 7) @[fivestage.scala 96:42]
    node _GEN_0 = mux(_T_1, UInt<1>("h0"), _p2_io_rd_add_in_T) @[fivestage.scala 93:47 fivestage.scala 94:25 fivestage.scala 96:25]
    node _p2_io_func3_in_T = bits(p1.io_inst_out, 14, 12) @[fivestage.scala 100:37]
    node _p2_io_func7_in_T = bits(p1.io_inst_out, 30, 30) @[fivestage.scala 101:37]
    node _p3_io_p2_pc_T = add(p2.io_IF_pc_out, p2.io_imme_out) @[fivestage.scala 134:45]
    node _p3_io_p2_pc_T_1 = tail(_p3_io_p2_pc_T, 1) @[fivestage.scala 134:45]
    node _mux1_T = asUInt(p2.io_rs2_out) @[fivestage.scala 135:72]
    node mux1 = mux(p2.io_op_Alu_src_out, p2.io_imme_out, _mux1_T) @[fivestage.scala 135:19]
    node and = and(p3.io_branch_out, UInt<1>("h0")) @[fivestage.scala 151:32]
    node _m_io_addr_T = asUInt(p3.io_alu_output_out) @[fivestage.scala 152:41]
    node _mux2_T = asSInt(p4.io_data_mem_out) @[fivestage.scala 169:60]
    node mux2 = mux(p4.io_memtoreg_out, _mux2_T, p4.io_alu_output_out) @[fivestage.scala 169:19]
    node _pcounter_io_in_T = mux(and, p3.io_p2_pc_out, pcounter.io_out2) @[fivestage.scala 172:26]
    node _p2_io_rs1_add_in_T = bits(p1.io_inst_out, 19, 15) @[fivestage.scala 174:39]
    node _p2_io_rs2_add_in_T = bits(p1.io_inst_out, 24, 20) @[fivestage.scala 175:39]
    node _alu_io_in_a_T = eq(UInt<1>("h0"), fu.io_f_a) @[Mux.scala 80:60]
    node _alu_io_in_a_T_1 = mux(_alu_io_in_a_T, p2.io_rs1_out, asSInt(UInt<1>("h0"))) @[Mux.scala 80:57]
    node _alu_io_in_a_T_2 = eq(UInt<1>("h1"), fu.io_f_a) @[Mux.scala 80:60]
    node _alu_io_in_a_T_3 = mux(_alu_io_in_a_T_2, mux2, _alu_io_in_a_T_1) @[Mux.scala 80:57]
    node _alu_io_in_a_T_4 = eq(UInt<2>("h2"), fu.io_f_a) @[Mux.scala 80:60]
    node _alu_io_in_a_T_5 = mux(_alu_io_in_a_T_4, p3.io_alu_output_out, _alu_io_in_a_T_3) @[Mux.scala 80:57]
    node _muxx_T = asSInt(mux1) @[fivestage.scala 187:25]
    node _muxx_T_1 = eq(UInt<1>("h0"), fu.io_f_b) @[Mux.scala 80:60]
    node _muxx_T_2 = mux(_muxx_T_1, _muxx_T, asSInt(UInt<1>("h0"))) @[Mux.scala 80:57]
    node _muxx_T_3 = eq(UInt<1>("h1"), fu.io_f_b) @[Mux.scala 80:60]
    node _muxx_T_4 = mux(_muxx_T_3, mux2, _muxx_T_2) @[Mux.scala 80:57]
    node _muxx_T_5 = eq(UInt<2>("h2"), fu.io_f_b) @[Mux.scala 80:60]
    node muxx = mux(_muxx_T_5, p3.io_alu_output_out, _muxx_T_4) @[Mux.scala 80:57]
    node _T_2 = eq(p3.io_rdadd_out, p2.io_rs2_add_out) @[fivestage.scala 194:27]
    node _T_3 = eq(p4.io_rdadd_out, p2.io_rs2_add_out) @[fivestage.scala 197:31]
    node _GEN_1 = mux(_T_3, mux2, asSInt(UInt<1>("h0"))) @[fivestage.scala 197:53 fivestage.scala 198:19 fivestage.scala 201:19]
    node _GEN_2 = mux(_T_2, p3.io_alu_output_out, _GEN_1) @[fivestage.scala 194:49 fivestage.scala 195:15]
    node _m_io_dataIn_T = asUInt(p3.io_rs2_out) @[fivestage.scala 203:36]
    node _hd_io_rs1_T = bits(p1.io_inst_out, 19, 15) @[fivestage.scala 210:32]
    node _hd_io_rs2_T = bits(p1.io_inst_out, 24, 20) @[fivestage.scala 211:32]
    node _T_4 = eq(hd.io_inst_fwd, UInt<1>("h1")) @[fivestage.scala 216:25]
    node _T_5 = eq(hd.io_pc_fwd, UInt<1>("h1")) @[fivestage.scala 223:24]
    node _GEN_3 = mux(_T_5, hd.io_pc_in, pcounter.io_out2) @[fivestage.scala 223:32 fivestage.scala 224:24 fivestage.scala 227:20]
    node _T_6 = eq(hd.io_ctrl_frwd, UInt<1>("h1")) @[fivestage.scala 229:27]
    node _GEN_4 = mux(_T_6, UInt<1>("h0"), cu.io_op_a_sel) @[fivestage.scala 229:34 fivestage.scala 238:26 fivestage.scala 244:26]
    node _GEN_5 = mux(_T_6, UInt<1>("h0"), cu.io_op_b_sel) @[fivestage.scala 229:34 fivestage.scala 231:28 fivestage.scala 245:28]
    node _GEN_6 = mux(_T_6, UInt<1>("h0"), cu.io_branch) @[fivestage.scala 229:34 fivestage.scala 232:30 fivestage.scala 246:30]
    node _GEN_7 = mux(_T_6, UInt<1>("h0"), cu.io_memread) @[fivestage.scala 229:34 fivestage.scala 233:29 fivestage.scala 247:29]
    node _GEN_8 = mux(_T_6, UInt<1>("h0"), cu.io_memtoreg) @[fivestage.scala 229:34 fivestage.scala 234:32 fivestage.scala 248:32]
    node _GEN_9 = mux(_T_6, UInt<1>("h0"), cu.io_regwrite) @[fivestage.scala 229:34 fivestage.scala 235:29 fivestage.scala 249:29]
    node _GEN_10 = mux(_T_6, UInt<1>("h0"), cu.io_memwrite) @[fivestage.scala 229:34 fivestage.scala 236:29 fivestage.scala 250:29]
    node _GEN_11 = mux(_T_6, UInt<1>("h0"), cu.io_aluop) @[fivestage.scala 229:34 fivestage.scala 237:29 fivestage.scala 251:29]
    node _GEN_12 = mux(_T_6, UInt<1>("h0"), cu.io_nxt_pc) @[fivestage.scala 229:34 fivestage.scala 240:27 fivestage.scala 254:27]
    node _b_io_func3_T = bits(p1.io_inst_out, 14, 12) @[fivestage.scala 260:33]
    node _T_7 = eq(hd.io_pc_fwd, UInt<1>("h1")) @[fivestage.scala 261:23]
    node _T_8 = eq(cu.io_nxt_pc, UInt<1>("h1")) @[fivestage.scala 265:23]
    node _T_9 = eq(b.io_output, UInt<1>("h1")) @[fivestage.scala 266:24]
    node _T_10 = eq(cu.io_branch, UInt<1>("h1")) @[fivestage.scala 266:48]
    node _T_11 = and(_T_9, _T_10) @[fivestage.scala 266:32]
    node _GEN_13 = mux(_T_11, imem.io_imtype, pcounter.io_out2) @[fivestage.scala 266:57 fivestage.scala 267:24 fivestage.scala 272:24]
    node _GEN_14 = mux(_T_11, UInt<1>("h0"), hd.io_pc_out) @[fivestage.scala 266:57 fivestage.scala 268:21 fivestage.scala 218:21]
    node _GEN_15 = mux(_T_11, UInt<1>("h0"), UInt<1>("h0")) @[fivestage.scala 266:57 fivestage.scala 269:22 fivestage.scala 54:18]
    node _GEN_16 = mux(_T_11, UInt<1>("h0"), hd.io_inst_out) @[fivestage.scala 266:57 fivestage.scala 270:23 fivestage.scala 217:23]
    node _GEN_17 = mux(_T_8, _GEN_13, _GEN_3) @[fivestage.scala 265:32]
    node _GEN_18 = mux(_T_8, _GEN_14, hd.io_pc_out) @[fivestage.scala 265:32 fivestage.scala 218:21]
    node _GEN_19 = mux(_T_8, _GEN_15, UInt<1>("h0")) @[fivestage.scala 265:32 fivestage.scala 54:18]
    node _GEN_20 = mux(_T_8, _GEN_16, hd.io_inst_out) @[fivestage.scala 265:32 fivestage.scala 217:23]
    node _GEN_21 = mux(_T_7, hd.io_pc_out, _GEN_17) @[fivestage.scala 261:35 fivestage.scala 262:24]
    node _GEN_22 = mux(_T_7, hd.io_pc_out, _GEN_18) @[fivestage.scala 261:35 fivestage.scala 218:21]
    node _GEN_23 = mux(_T_7, UInt<1>("h0"), _GEN_19) @[fivestage.scala 261:35 fivestage.scala 54:18]
    node _GEN_24 = mux(_T_7, hd.io_inst_out, _GEN_20) @[fivestage.scala 261:35 fivestage.scala 217:23]
    node _GEN_25 = mux(_T_4, _GEN_24, im.io_instr) @[fivestage.scala 216:33 fivestage.scala 84:19]
    node _GEN_26 = mux(_T_4, _GEN_22, pcounter.io_out1) @[fivestage.scala 216:33 fivestage.scala 83:17]
    node _GEN_27 = mux(_T_4, _GEN_21, _pcounter_io_in_T) @[fivestage.scala 216:33 fivestage.scala 172:20]
    node _GEN_28 = mux(_T_4, _GEN_4, cu.io_op_a_sel) @[fivestage.scala 216:33 fivestage.scala 107:22]
    node _GEN_29 = mux(_T_4, _GEN_5, cu.io_op_b_sel) @[fivestage.scala 216:33 fivestage.scala 121:24]
    node _GEN_30 = mux(_T_4, _GEN_6, cu.io_branch) @[fivestage.scala 216:33 fivestage.scala 116:26]
    node _GEN_31 = mux(_T_4, _GEN_7, cu.io_memread) @[fivestage.scala 216:33 fivestage.scala 118:25]
    node _GEN_32 = mux(_T_4, _GEN_8, cu.io_memtoreg) @[fivestage.scala 216:33 fivestage.scala 114:28]
    node _GEN_33 = mux(_T_4, _GEN_9, cu.io_regwrite) @[fivestage.scala 216:33 fivestage.scala 113:25]
    node _GEN_34 = mux(_T_4, _GEN_10, cu.io_memwrite) @[fivestage.scala 216:33 fivestage.scala 117:25]
    node _GEN_35 = mux(_T_4, _GEN_11, cu.io_aluop) @[fivestage.scala 216:33 fivestage.scala 120:25]
    node _GEN_36 = mux(_T_4, _GEN_12, cu.io_nxt_pc) @[fivestage.scala 216:33 fivestage.scala 109:23]
    node _GEN_37 = mux(_T_4, reg.io_rs1, UInt<1>("h0")) @[fivestage.scala 216:33 fivestage.scala 258:14 fivestage.scala 56:14]
    node _GEN_38 = mux(_T_4, reg.io_rs2, UInt<1>("h0")) @[fivestage.scala 216:33 fivestage.scala 259:14 fivestage.scala 57:14]
    node _GEN_39 = mux(_T_4, _b_io_func3_T, UInt<1>("h0")) @[fivestage.scala 216:33 fivestage.scala 260:16 fivestage.scala 58:16]
    node _GEN_40 = mux(_T_4, _GEN_23, UInt<1>("h0")) @[fivestage.scala 216:33 fivestage.scala 54:18]
    io_out <= UInt<1>("h1") @[fivestage.scala 39:12]
    fu.clock <= clock
    fu.reset <= reset
    fu.io_p2_regWrite <= p3.io_regwr @[fivestage.scala 73:23]
    fu.io_p2_rd <= p3.io_rdadd_out @[fivestage.scala 72:17]
    fu.io_p1_rs1 <= p2.io_rs1_add_out @[fivestage.scala 65:18]
    fu.io_p1_rs2 <= p2.io_rs2_add_out @[fivestage.scala 70:18]
    fu.io_p1_rd <= p2.io_rd_add_out @[fivestage.scala 76:17]
    fu.io_p3_regwrite <= p4.io_regwr_out @[fivestage.scala 75:23]
    fu.io_p3_rd <= p4.io_rdadd_out @[fivestage.scala 74:17]
    pcounter.clock <= clock
    pcounter.reset <= reset
    pcounter.io_in <= _GEN_27
    im.clock <= clock
    im.reset <= reset
    im.io_addr <= pcounter.io_out1 @[fivestage.scala 82:16]
    reg.clock <= clock
    reg.reset <= reset
    reg.io_rs1 <= _reg_io_rs1_T @[fivestage.scala 87:16]
    reg.io_rs2 <= _reg_io_rs2_T @[fivestage.scala 90:16]
    reg.io_rd <= p4.io_rdadd_out @[fivestage.scala 171:15]
    reg.io_p4_rd <= p4.io_rdadd_out @[fivestage.scala 204:18]
    reg.io_p3_rd <= p3.io_alu_output_out @[fivestage.scala 205:17]
    reg.io_write_data <= mux2 @[fivestage.scala 170:24]
    reg.io_wen <= p4.io_regwr_out @[fivestage.scala 167:17]
    cu.clock <= clock
    cu.reset <= reset
    cu.io_op_code <= _cu_io_op_code_T @[fivestage.scala 86:19]
    alu.clock <= clock
    alu.reset <= reset
    alu.io_in_a <= _alu_io_in_a_T_5 @[fivestage.scala 180:17]
    alu.io_in_b <= muxx @[fivestage.scala 193:17]
    alu.io_Aluop <= ac.io_ctrl @[fivestage.scala 143:18]
    ac.clock <= clock
    ac.reset <= reset
    ac.io_Aluop <= bits(p2.io_ctrl_Aluop_out, 0, 0) @[fivestage.scala 142:17]
    ac.io_op_code <= UInt<1>("h0") @[fivestage.scala 41:19]
    ac.io_func3 <= p2.io_func3_out @[fivestage.scala 140:17]
    ac.io_func7 <= p2.io_func7_out @[fivestage.scala 141:17]
    imem.clock <= clock
    imem.reset <= reset
    imem.io_instr <= p1.io_inst_out @[fivestage.scala 99:19]
    imem.io_pc <= UInt<1>("h0") @[fivestage.scala 45:16]
    m.clock <= clock
    m.reset <= reset
    m.io_red <= p3.io_memrd_out @[fivestage.scala 162:14]
    m.io_write <= p3.io_memwr_out @[fivestage.scala 160:16]
    m.io_addr <= _m_io_addr_T @[fivestage.scala 152:15]
    m.io_dataIn <= _m_io_dataIn_T @[fivestage.scala 203:17]
    b.clock <= clock
    b.reset <= reset
    b.io_rs1 <= _GEN_37
    b.io_rs2 <= _GEN_38
    b.io_func3 <= _GEN_39
    p1.clock <= clock
    p1.reset <= reset
    p1.io_pc_in <= _GEN_26
    p1.io_pc4_in <= _GEN_40
    p1.io_inst_in <= _GEN_25
    p2.clock <= clock
    p2.reset <= reset
    p2.io_IF_pc <= p1.io_pc_in @[fivestage.scala 103:17]
    p2.io_rs1_add_in <= _p2_io_rs1_add_in_T @[fivestage.scala 174:22]
    p2.io_rs2_add_in <= _p2_io_rs2_add_in_T @[fivestage.scala 175:22]
    p2.io_rs1 <= reg.io_read1 @[fivestage.scala 104:15]
    p2.io_rs2 <= reg.io_read2 @[fivestage.scala 105:15]
    p2.io_imme_in <= imem.io_imtype @[fivestage.scala 106:19]
    p2.io_rd_add_in <= _GEN_0
    p2.io_func3_in <= _p2_io_func3_in_T @[fivestage.scala 100:20]
    p2.io_func7_in <= _p2_io_func7_in_T @[fivestage.scala 101:20]
    p2.io_ctrl_memwr_in <= _GEN_34
    p2.io_ctrl_memrd_in <= _GEN_31
    p2.io_ctrl_branch_in <= _GEN_30
    p2.io_ctrl_regwr_in <= _GEN_33
    p2.io_ctrl_memtoreg_in <= _GEN_32
    p2.io_ctrl_Aluop_in <= _GEN_35
    p2.io_ctrl_Alu_src <= _GEN_29
    p2.io_ctrl_a_sel <= _GEN_28
    p2.io_ctrl_nxt_pc <= _GEN_36
    p3.clock <= clock
    p3.reset <= reset
    p3.io_memwr <= p2.io_ctrl_memwr_out @[fivestage.scala 127:17]
    p3.io_memrd <= p2.io_ctrl_memrd_out @[fivestage.scala 128:17]
    p3.io_memtoreg <= p2.io_ctrl_memtoreg_out @[fivestage.scala 123:19]
    p3.io_rs2 <= _GEN_2
    p3.io_rdadd <= p2.io_rd_add_out @[fivestage.scala 144:17]
    p3.io_rs2add <= UInt<1>("h0") @[fivestage.scala 49:18]
    p3.io_alu_output <= alu.io_Result @[fivestage.scala 138:22]
    p3.io_regwr <= p2.io_ctrl_regwr_out @[fivestage.scala 124:19]
    p3.io_branch <= UInt<1>("h0") @[fivestage.scala 145:18]
    p3.io_p2_pc <= _p3_io_p2_pc_T_1 @[fivestage.scala 134:17]
    p4.clock <= clock
    p4.reset <= reset
    p4.io_regwr <= p3.io_regwr_out @[fivestage.scala 149:17]
    p4.io_memtoreg <= p3.io_memtoreg_out @[fivestage.scala 148:20]
    p4.io_rdadd <= p3.io_rdadd_out @[fivestage.scala 166:17]
    p4.io_memrd <= UInt<1>("h0") @[fivestage.scala 50:16]
    p4.io_alu_output <= p3.io_alu_output_out @[fivestage.scala 165:21]
    p4.io_data_mem <= m.io_dataOut @[fivestage.scala 164:20]
    hd.clock <= clock
    hd.reset <= reset
    hd.io_p1_inst <= p1.io_inst_out @[fivestage.scala 209:19]
    hd.io_p2_memrd <= p2.io_ctrl_memrd_out @[fivestage.scala 212:20]
    hd.io_p2_rd <= p2.io_ctrl_memrd_out @[fivestage.scala 213:17]
    hd.io_pc_in <= p1.io_pc4_out @[fivestage.scala 214:17]
    hd.io_current_pc <= p1.io_pc_out @[fivestage.scala 215:22]
    hd.io_rs1 <= _hd_io_rs1_T @[fivestage.scala 210:15]
    hd.io_rs2 <= _hd_io_rs2_T @[fivestage.scala 211:15]
