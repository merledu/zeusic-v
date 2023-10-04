// package lab3
// import chisel3._
// import chisel3.tester._
// import org.scalatest.FreeSpec
// class lab3test extends FreeSpec with ChiselScalatestTester{
//     "lab3test" in{
//         test( new ALUIO()){a =>
//         a.io.in_A.poke(9.U)
//         a.io.in_B.poke(7.U)
//         a.io.funct3.poke(1.U)
//         a.io.branch.poke(1.B)
//         a.io.out.expect(1.B)
//         a.clock.step(20)
//         }

//     }
// }