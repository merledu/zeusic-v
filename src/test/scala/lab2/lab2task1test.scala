// package lab2
// import chisel3._
// import chisel3.tester._
// import org.scalatest.FreeSpec
// class lab2task1test extends FreeSpec with ChiselScalatestTester{
//     "test1" in{
//         test(new mux5_1()){a =>
//         a.io.s1.poke(0.B)
//         a.io.s2.poke(1.B)
//         a.io.s3.poke(0.B)
//         a.io.out.expect(16.U)
//         a.clock.step(100)
//         }
//     }
// }            