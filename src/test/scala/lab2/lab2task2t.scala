// package lab2
// import chisel3._
// import chisel3.tester._
// import org.scalatest.FreeSpec
// class lab2task2t extends FreeSpec with ChiselScalatestTester{
//     "labtask2test" in {
//         test (new Mux2()){b =>
//         b.io.in0.poke(0.B) //A
//         b.io.in1.poke(0.B) //B
//         b.io.in2.poke(1.B) //C
//         b.io.in3.poke(0.B) //D
//         b.io.s1.poke(0.B)
//         b.io.s2.poke(1.B)
//         b.clock.step(20)
//         b.io.o1.expect(0.B)
//         b.io.o2.expect(1.B)
//         b.io.o3.expect(0.B)
//         b.io.o4.expect(0.B)
//         }
//     }   
// }     