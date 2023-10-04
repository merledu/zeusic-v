;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab8 : 
  module lab8 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip enable : UInt<1>, flip write : UInt<1>, flip addr : UInt<10>, flip mask : UInt<1>[4], flip dataIn : UInt<8>[4], flip in : UInt<4>, dataOut : UInt<8>[4]}
    
    smem mem : UInt<8>[4][1024], undefined @[lab8.scala 17:27]
    node e_lo = cat(io.mask[2], io.mask[3]) @[Cat.scala 30:58]
    node e_hi = cat(io.mask[0], io.mask[1]) @[Cat.scala 30:58]
    node e = cat(e_hi, e_lo) @[Cat.scala 30:58]
    node _T = dshr(e, UInt<1>("h00")) @[lab8.scala 23:12]
    node _T_1 = bits(_T, 0, 0) @[lab8.scala 23:12]
    node _T_2 = eq(_T_1, UInt<1>("h01")) @[lab8.scala 23:18]
    node _T_3 = dshr(e, UInt<1>("h01")) @[lab8.scala 23:30]
    node _T_4 = bits(_T_3, 0, 0) @[lab8.scala 23:30]
    node _T_5 = eq(_T_4, UInt<1>("h01")) @[lab8.scala 23:36]
    node _T_6 = or(_T_2, _T_5) @[lab8.scala 23:26]
    node _T_7 = dshr(e, UInt<2>("h02")) @[lab8.scala 23:48]
    node _T_8 = bits(_T_7, 0, 0) @[lab8.scala 23:48]
    node _T_9 = eq(_T_8, UInt<1>("h01")) @[lab8.scala 23:54]
    node _T_10 = or(_T_6, _T_9) @[lab8.scala 23:44]
    node _T_11 = dshr(e, UInt<2>("h03")) @[lab8.scala 23:66]
    node _T_12 = bits(_T_11, 0, 0) @[lab8.scala 23:66]
    node _T_13 = eq(_T_12, UInt<1>("h01")) @[lab8.scala 23:72]
    node _T_14 = or(_T_10, _T_13) @[lab8.scala 23:62]
    when _T_14 : @[lab8.scala 23:81]
      write mport MPORT = mem[io.addr], clock
      when io.mask[0] :
        MPORT[0] <= io.dataIn[0]
        skip
      when io.mask[1] :
        MPORT[1] <= io.dataIn[1]
        skip
      when io.mask[2] :
        MPORT[2] <= io.dataIn[2]
        skip
      when io.mask[3] :
        MPORT[3] <= io.dataIn[3]
        skip
      wire _WIRE : UInt @[lab8.scala 25:31]
      _WIRE is invalid @[lab8.scala 25:31]
      when io.enable : @[lab8.scala 25:31]
        _WIRE <= io.addr @[lab8.scala 25:31]
        node _T_15 = or(_WIRE, UInt<10>("h00")) @[lab8.scala 25:31]
        node _T_16 = bits(_T_15, 9, 0) @[lab8.scala 25:31]
        read mport MPORT_1 = mem[_T_16], clock @[lab8.scala 25:31]
        skip @[lab8.scala 25:31]
      io.dataOut[0] <= MPORT_1[0] @[lab8.scala 25:20]
      io.dataOut[1] <= MPORT_1[1] @[lab8.scala 25:20]
      io.dataOut[2] <= MPORT_1[2] @[lab8.scala 25:20]
      io.dataOut[3] <= MPORT_1[3] @[lab8.scala 25:20]
      skip @[lab8.scala 23:81]
    else : @[lab8.scala 26:17]
      io.dataOut[0] <= UInt<1>("h00") @[lab8.scala 27:23]
      io.dataOut[1] <= UInt<1>("h00") @[lab8.scala 28:23]
      io.dataOut[2] <= UInt<1>("h00") @[lab8.scala 29:23]
      io.dataOut[3] <= UInt<1>("h00") @[lab8.scala 30:23]
      skip @[lab8.scala 26:17]
    
