;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit memo : 
  module memo : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip red : UInt<1>, flip write : UInt<1>, flip addr : UInt<8>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    io.dataOut <= UInt<1>("h00") @[memory.scala 12:16]
    cmem mem : UInt<32>[32] @[memory.scala 13:18]
    node _T = eq(io.write, UInt<1>("h01")) @[memory.scala 14:20]
    when _T : @[memory.scala 14:28]
      node _T_1 = bits(io.addr, 4, 0)
      write mport MPORT = mem[_T_1], clock
      MPORT <= io.dataIn
      skip @[memory.scala 14:28]
    else : @[memory.scala 16:31]
      node _T_2 = eq(io.red, UInt<1>("h01")) @[memory.scala 16:23]
      when _T_2 : @[memory.scala 16:31]
        node _io_dataOut_T = bits(io.addr, 4, 0) @[memory.scala 17:31]
        read mport io_dataOut_MPORT = mem[_io_dataOut_T], clock @[memory.scala 17:31]
        io.dataOut <= io_dataOut_MPORT @[memory.scala 17:20]
        skip @[memory.scala 16:31]
      else : @[memory.scala 18:16]
        io.dataOut <= UInt<1>("h00") @[memory.scala 19:20]
        skip @[memory.scala 18:16]
    
