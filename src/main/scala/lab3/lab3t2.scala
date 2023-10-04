// package lab3
// import chisel3._
// import chisel3.util._
// class LM_IO_Interface_ImmdValGen extends Bundle{
// val instr = Input ( UInt (32. W ) )
// val immd_se = Output ( UInt (32. W ) )
// }
// class Imd extends Module {
//     val io = IO ( new LM_IO_Interface_ImmdValGen)
//     when (io.instr(6,0) === "b0000011".U || io.instr(6,0) === "b0001111".U || io.instr(6,0) === "b0010011".U ||io.instr(6,0) === "b0011011".U || io.instr(6,0) === "b0100011".U || io.instr(6,0) === "b1110011".U){//itupe
//         io.immd_se := io.instr(31,20)
//     }.elsewhen(io.instr(6,0)==="b0100011".U){//stype
//         io.immd_se := Cat(io.instr(31,25),io.instr(11,7))
//     }.elsewhen(io.instr(6,0)==="b1100011".U){//sbtype
//         io.immd_se:= Cat(io.instr(31),io.instr(7),io.instr(30,25),io.instr(11,8))

//     }.elsewhen  (io.instr(6,0)==="b0010111".U || io.instr(6,0)==="b0110111".U){//utype
//         io.immd_se := io.instr(31,12)
//     }.elsewhen (io.instr(6,0)=== "b1101111".U){//uj type
//         io.immd_se := Cat(io.instr(31),io.instr(19,12),io.instr(20),io.instr(30,21))
//     }.otherwise{
//         io.immd_se := 0.U
//     }
    
// }

