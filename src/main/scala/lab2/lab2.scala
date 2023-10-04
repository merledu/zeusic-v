package lab2
import chisel3._
class IO_Interface extends Bundle {
    val in1 = Input ( UInt (32. W ) )
    val in2 = Input ( UInt (32. W ) )
    val s = Input ( Bool () )
    val out = Output ( UInt() )
}    
class mux2_1 extends Module{
    val io = IO (new IO_Interface())
    when (io.s===0.B){
        io.out := io.in1
    }.otherwise{
        io.out :=io.in2
    }

}   
