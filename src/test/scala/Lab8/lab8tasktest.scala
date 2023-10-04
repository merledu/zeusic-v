// package Lab8
// import chisel3._
// import chisel3.tester._
// import org.scalatest.FreeSpec
// class lab8tasktest extends FreeSpec with ChiselScalatestTester{
//     "tt" in {
//         test(new lab8task){a =>
//         a.io.req(0).bits.poke(10.U)
//         a.io.req(1).bits.poke(20.U)
//         a.io.req(2).bits.poke(30.U)
//         a.io.req(3).bits.poke(40.U)
//         a.io.req(0).valid.poke(0.B)
//         a.io.req(1).valid.poke(0.B)
//         a.io.req(2).valid.poke(1.B)
//         a.io.req(3).valid.poke(0.B)
//         a.io.waddr.poke(4.U)
//         a.io.raddr.poke(4.U)
//         a.clock.step(10)
//         }
        

//     }
// }