// package Lab8
// import chisel3._
// import chisel3.tester._
// import org.scalatest.FreeSpec
// class lab8t extends FreeSpec with ChiselScalatestTester{
//     "laa" in{
//         test(new lab8){a =>
//         a.io.addr.poke(4.U)
//         a.io.dataIn(0).poke(20.U)
//         a.io.dataIn(1).poke(50.U)
//         a.io.dataIn(2).poke(10.U)
//         a.io.dataIn(3).poke(100.U)
//         a.io.enable.poke(1.B)
//         a.io.write.poke(1.B)
//         a.io.mask(0).poke(0.B)
//         a.io.mask(1).poke(0.B)
//         a.io.mask(2).poke(0.B)
//         a.io.mask(3).poke(1.B)
//         a.clock.step(10)
//         }
//     }
// }