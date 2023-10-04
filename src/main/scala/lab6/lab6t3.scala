// package lab6
// import chisel3._
// class parallelshifter extends Module{
//     val io = IO (new Bundle{
//         val in = Input (UInt(3.W))
//         val load_in = Vec(3,Input (Bool()))
//         val load = Input(Bool())
//         val out = Vec(3,Output(Bool()))
        
//     })
//     val r1 = Reg(UInt(1.W))
//     val r2 = Reg(UInt(1.W))
//     val r3 = Reg(UInt(1.W))
//     when (io.load === 1.U){
//         r1 := io.in(0)
//         r2 := io.in(1)
//         r3 := io.in(2)
//     }.elsewhen(io.load === 0.U){
//         r1 := 0.U
//         r2 := 0.U
//         r3 := 0.U 
//     } 
//     io.out(0) := r1
//     io.out(1) := r2
//     io.out(2) := r3
// }    