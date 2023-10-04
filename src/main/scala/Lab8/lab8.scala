// package Lab8
// import chisel3._
// import chisel3.util._
// class  lab8 extends Module {
//     val width : Int = 8
//     val io = IO ( new Bundle {
//         val enable = Input ( Bool () )
//         val write = Input ( Bool () )
//         val addr = Input ( UInt(10. W ) )
//         val mask = Vec(4,Input ( Bool()))
//         val dataIn = Vec(4,Input ( UInt ( width . W ) ))
//         val in = Input (UInt(4.W))
//         val dataOut = Vec(4,Output ( UInt( width . W ) ))
        
//     })
// // Create a 32 - Bit wide memory that is Byte - masked
//     val mem = SyncReadMem (1024 , Vec (4 , UInt ( width . W ) ) )
//     val a = io.mask(0)
//     val b = io.mask (1)
//     val c  = io.mask(2)
//     val d = io.mask(3)
//     val e = Cat(a,b,c,d)
//     when (e(0.U) === 1.U || e(1.U) === 1.U || e(2.U) === 1.U || e(3.U) === 1.U ){
//         mem.write(io.addr, io.dataIn, io.mask)
//         io.dataOut := mem.read(io.addr , io.enable)
//     }.otherwise {
//         io.dataOut(0) := 0.U
//         io.dataOut(1) := 0.U
//         io.dataOut(2) := 0.U
//         io.dataOut(3) := 0.U
//     }
// }       