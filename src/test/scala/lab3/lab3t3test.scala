// package lab3
// import chisel3._
// import chisel3.tester._
// import org.scalatest.FreeSpec
// class lab3task3test extends FreeSpec with ChiselScalatestTester{
//     "testt" in {
//         test(new lab3t3()){a =>
//         a.io.in.poke("b00".U)
//         a.clock.step(20)
//         a.io.out.bits.expect("b0000".U)
//         a.io.out.valid.expect(0.B)
//         }
//     }
// }