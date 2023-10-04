package lab2
import chisel3._
class LM_IO_Interface extends Bundle{
    val s1 = Input ( Bool () )
    val s2 = Input ( Bool () )
    val s3 = Input ( Bool () )
    val out = Output ( UInt(32.W))
}
class mux5_1 extends Module{
    val io=IO(new LM_IO_Interface())
    when (io.s1===0.B && io.s2===0.B && io.s3===0.B){
        io.out := 0.U
    }.elsewhen (io.s1===0.B && io.s2===0.B && io.s3===1.B){  
        io.out := 8.U  
    }.elsewhen (io.s1===0.B && io.s2===1.B && io.s3===0.B){ 
        io.out := 16.U 
    }.elsewhen (io.s1===0.B && io.s2===1.B && io.s3===1.B){
        io.out := 24.U 
    }.elsewhen (io.s1===1.B){
        io.out :=32.U
    }
}               