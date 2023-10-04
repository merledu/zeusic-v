// package Lab8
// import chisel3._
// import org.scalatest.FreeSpec
// import chiseltest._
// class practicetest extends FreeSpec with ChiselScalatestTester{
//     "LAB8_T1_TEST" in {
//         test(new memoryASSIGN()){ c =>
//         c.clock.step(2)
//         c.io.requestor(0).bits.poke(4.U)
//         c.io.requestor(1).bits.poke(9.U)
//         c.io.requestor(2).bits.poke(7.U)
//         c.io.requestor(3).bits.poke(8.U)
//         c.io.requestor(0).valid.poke(0.B)
//         c.io.requestor(1).valid.poke(0.B)
//         c.io.requestor(2).valid.poke(0.B)
//         c.io.requestor(3).valid.poke(1.B)
//         c.io.Readaddr.poke(6.U)
//         c.io.Writeaddr.poke(6.U)
//         c.clock.step(20)
        
//         }
//     }
// }

