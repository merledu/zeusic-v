// package lab6
// import chisel3._
// import chisel3.tester._
// import org.scalatest.FreeSpec
// class lab6t4test extends FreeSpec with ChiselScalatestTester{
//     "l6t4test" in {
//         test(new up_down_counter){a =>
//         a.io.up_down.poke(0.B)
//         a.io.out.expect(0.U)
//         a.clock.step(20)
//         }
//     }
// }    