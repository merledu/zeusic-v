// package lab4
// import chisel3._
// import chisel3.util._
// import org.scalatest.FreeSpec
// import chiseltest._
// import chiseltest.experimental.TestOptionBuilder._
// import chiseltest . internal.VerilatorBackendAnnotation
// import scala.util.Random
// import ALUOP._
// class lab4t1test extends FreeSpec with  ChiselScalatestTester{
//     "test" in {
//         test ( new ALUIO ){ c =>
//                 val array = Array (ALU_BEQ,ALU_BNE,ALU_1,ALU_2,ALU_BLT,ALU_BGE,ALU_BLTU,ALU_BGEU)
//                 for (i <- 0 until 100){
//                        val a = Random.nextLong () & 0xFFFFFFFFL
//                        val b = Random.nextLong() & 0xFFFFFFFFL
//                        val opr = Random.nextInt(7)
                       
//                        val func3 = array (7)
//                        val br = 1//Random.nextInt(2)
                       
//                        val result = func3 match{   
//                         case ALU_BEQ => if ( br == 1 & a == b){
//                             1
//                         }else{
//                             0
//                         }
//                         case ALU_BNE =>if ( br == 1 & a != b){
//                             1
//                         }else{
//                             0
//                         }
//                         case ALU_1=> 0
//                         case ALU_2 => 0
//                         case ALU_BLT => if ( br == 1 & a.toInt < b.toInt){
//                             1
//                         }else{
//                             0
//                         }
//                         case ALU_BGE => if (br == 1 & a.toInt > b.toInt){
//                             1
//                         }else{
//                             0
//                         }
//                         case ALU_BLTU => if ( br == 1 & a < b){
//                             1
//                         }else{
//                             0
//                         }
//                         case ALU_BGEU => if (br == 1 & a > b){
//                             1
//                         }else{
//                             0
//                         }
//                     }
//                 c.io.in_A.poke(a.U)
//                 c.io.in_B.poke(b.U)
//                 c.io.funct3.poke(func3.asUInt)
//                 c.io.branch.poke(br.B)
//                 c.io.out.expect(result.B)

//                 c.clock.step(100)
//                 println (c.io.in_A.peek()litValue)
//                 println (c.io.in_B.peek()litValue)
//                 println (c.io.funct3.peek()litValue)
//                 println (c.io.out.peek()litValue)
//                 println (c.io.branch.peek()litValue)
//             }
//         }
//     }    
               

// }
