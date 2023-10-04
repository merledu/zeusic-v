// package lab6
// import chisel3._
// class counter_xor( val width: Int) extends Module{
//     val io = IO(new Bundle{
//         val out =  Output(  Bool())
//     })
//     val counter = dontTouch(RegInit(0.U(width.W)))
//     val a= 1.U
    
//     when ((counter(3.U) ^ a)===1.U){
//         counter := counter + 1.U
        
//     }.otherwise{
//         counter := 0.U
           
//     }
//     io.out := counter(4.U)
// }