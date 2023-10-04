// package lab7
// import chisel3._
// import chisel3.tester._
// import org.scalatest.FreeSpec
// class lab7t1test extends FreeSpec with ChiselScalatestTester{
//     "l7t1test" in {
//         test(new state_machine){a =>
//         a.io.f1.poke(0.B)
//         a.io.f2.poke(1.B)
//         a.io.r1.poke(0.B)
//         a.io.r2.poke(0.B)
//         a.io.out.expect(0.U)
//         a.clock.step(20)
//         }
//     }
// }    