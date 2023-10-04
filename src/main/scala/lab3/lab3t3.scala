// package lab3
// import chisel3._
// import chisel3.util._
// class lab3t3 extends Module{
//     val io = IO(new Bundle{
//         val in = Input (UInt(2.W))
//         val out = Valid (Output (UInt(4.W)))
//          })
//     when (io.in === "b00".U){
//             io.out.bits := "b0000".U
//         }.elsewhen ( io.in === "b01".U){
//             io.out.bits := "b0001".U
//         }.elsewhen(io.in ==="b10".U){
//             io.out.bits := "b0010".U
//         }.elsewhen(io.in === "b11".U){
//             io.out.bits := "b0011".U
//         }.otherwise{
//             io.out.bits := 0.U
//         }
//      io.out.valid := 0.B 
// }
    
