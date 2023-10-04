// package lab7
// import chisel3._
// class state_machine extends Module {
//     val io = IO(new Bundle{
//         val f1 = Input(Bool())
//         val f2 = Input(Bool())
//         val r1 = Input(Bool())
//         val r2 = Input(Bool())
//         val out = Output(UInt(3.W))
//     })
//     val s0 = 0.U
//     val s1 = 1.U
//     val s2 = 2.U
//     val s3 = 3.U
//     val s4 = 4.U
//     val s5 = 5.U
//     val state = RegInit(0.U(3.W))
//     io.out := 0.U
//     when (state === s0){
//         when (io.f1===0.B && io.f2 === 0.B){
//             state := s0
//             io.out := 0.U
//         }.elsewhen(io.f1 === 1.B && io.f2 === 0.B){
//                 state := s1
//                 io.out := 0.U
//         }.elsewhen(io.f1 === 0.B && io.f2 === 1.B){
//                 state := s5
//                 io.out := 0.U
//         }.elsewhen(io.f1 === 1.B && io.f2 === 1.B){
//                 state := s1
//                 io.out := 0 .U
//         }.otherwise{
//                 state := s1 
//         }       
//     }.elsewhen ( state === s1){
//         when (io.f1===0.B && io.r1 ===0.B){
//                     state := s0
//                     io.out := 0.U
//         }.elsewhen(io.f1 === 1.B){
//                     state := s2
//                     io.out := 0.U
//         }.elsewhen(io.f1 === 0.B && io.r1 === 1.B){
//                     state := s0
//                     io.out := 0.U
//         }.otherwise{
//                     state := s2
//         }     
//     }.elsewhen ( state === s2){
//         when (io.f1===0.B && io.r1 ===0.B){
//                 state := s2
//                 io.out := 3.U
//         }.elsewhen(io.f1 === 1.B){
//                     state := s3 
//                     io.out := 3.U
//         }.elsewhen(io.f1 === 0.B && io.r1 === 1.B){
//                     state := s1
//                     io.out := 3.U
//         }.otherwise{
//                     state := s3
//         }
//     }.elsewhen ( state === s3){
//         when (state === s3){
//                 state := s0
//                 io.out := 0.U
//         }.otherwise{
//                 state := s4
//         }
   
//     }.elsewhen ( state === s4){
//         when (io.f2===1.B){
//                 state := s3
//                 io.out := 7.U
//         }.elsewhen(io.f2 === 0.B && io.r2 === 0.B){
//                 state := s4
//                 io.out := 7.U
//         }.elsewhen(io.f2 === 0.B && io.r2 === 1.B){
//                 state := s5
//                 io.out := 7.U
//         }.otherwise{
//                 state := s5
//         }
//     }.elsewhen ( state === s5){
//         when (io.f2=== 1.B){
//                 state := s4
//                 io.out := 0.U
//         }.elsewhen(io.f2 === 0.B && io.r2 === 0.B){
//                 state := s5
//                 io.out := 0.U
//         }.elsewhen(io.f2 === 0.B && io.r2 === 1.B){
//                 state := s0
//                 io.out := 0.U
//         }.otherwise{
//                 io.out := 1.U
//         }    
//     }.otherwise{
//         state := 1.U
//     }
// }    
       