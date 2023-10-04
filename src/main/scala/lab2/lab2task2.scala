package lab2
import chisel3._
class LM_IO extends Bundle{
    val in0 = Input ( Bool ( ) )
    val in1 = Input ( Bool ( ) )
    val in2 = Input ( Bool ( ) )
    val in3 = Input ( Bool ( ) )
    val s1 = Input ( Bool () )
    val s2 = Input ( Bool () )
    val o1 = Output ( Bool () )
    val o2 = Output ( Bool () )
    val o3 = Output ( Bool () )
    val o4 = Output ( Bool () )
// UInt (1. W ) )
}
class Mux2 extends Module {
    val io = IO ( new LM_IO() )
    io.o1 := Mux (io.s1,Mux(io.s2,io.in3,io.in2),Mux(io.s2,io.in1,io.in0))
    io.o2 := Mux (io.s1,Mux(io.s2,io.in0,io.in3),Mux (io.s2,io.in2,io.in1))
    io.o3:= Mux (io.s1,Mux(io.s2,io.in1,io.in0),Mux (io.s2,io.in3,io.in2))
    io.o4 := Mux (io.s1,Mux(io.s2,io.in2,io.in1),Mux (io.s2,io.in0,io.in3))
    
    
}    
