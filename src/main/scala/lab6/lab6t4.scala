// package lab6
// import chisel3._
// import chisel3.util._
// class up_down_counter  extends Module {
//     val io = IO ( new Bundle {
//         val out = Output ( UInt ( 4. W ) )
//         val up_down = Input ( Bool () )
//     })
//     val counter = dontTouch(RegInit(0.U(4.W)))
//     val counter2 =dontTouch(RegInit(15.U(4.W)))


//     when (io.up_down === 1.U){
//         counter := counter + 1.U
//     }.elsewhen(io.up_down === 0.U){
//         counter2 := counter2 - 1.U
        
//     }.otherwise{
//         counter := 0.U
//     }
//     io.out := io.up_down
// }    