// package lab2
// import chisel3._
// import chisel3.tester._
// import org.scalatest.FreeSpec
// class lab2test extends FreeSpec with ChiselScalatestTester{
//     "lab2 test" in{
//         test(new mux2_1()){a =>
//         a.io.in1.poke(10.U)
//         a.io.in2.poke(11.U)
//         a.io.s.poke(1.B)
//         a.io.out.expect(11.U)
//         a.clock.step(20)

//         }
//     }
// }