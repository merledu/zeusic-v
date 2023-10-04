package lab3
import ALUOP._
import chisel3._
import chisel3.util._
object ALUOP {
// ALU Operations , may expand / modify in future
val ALU_BEQ= 0. U (3. W )
val ALU_BNE= 1. U (3. W )
val ALU_BLT= 4. U (3. W )
val ALU_BGE= 5. U (3. W )
val ALU_BLTU= 6. U (3. W )
val ALU_BGEU= 7. U (3. W )
}
class ALUIO extends Module {
    val io = IO(new Bundle{
        val in_A= Input ( UInt ( 32. W ) )
        val in_B= Input ( UInt ( 32. W ) )
        val funct3= Input(UInt(3.W))
        val branch= Input(Bool ( ))
        val out= Output (  Bool( ) )
    
    })
    when (io.funct3 === ALU_BEQ && io.branch === 1.U && io.in_A === io.in_B ){
        io.out := 1.B

    }.elsewhen (io.funct3 === ALU_BNE && io.branch === 1.U && io.in_A =/= io.in_B ){
        io.out := 1.B
    }.elsewhen (io.funct3 === ALU_BLT && io.branch === 1.U && io.in_A < io.in_B ){
        io.out := 1.B 
    }.elsewhen (io.funct3=== ALU_BLTU && io.branch === 1.U && io.in_A < io.in_B ){
        io.out := 1.B       
    }.elsewhen (io.funct3 === ALU_BGEU && io.branch === 1.U && io.in_A > io.in_B ){
        io.out := 1.B
    }.otherwise{
        io.out := 0.B  
    }     
}
    