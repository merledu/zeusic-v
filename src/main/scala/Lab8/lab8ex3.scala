// package Lab8
// import chisel3._
// import chisel3.util._
// import chisel3.util.experimental.loadMemoryFromFile
// import scala.io.source
// class memo extends Module{
//     val addr = Input ( UInt ( 32. W ) )
//     val inst = Output ( UInt ( 32 . W ) )
// }
// class InstMem ( initFile : String ) extends Module with Config {
// val io = IO ( new InstMemIO )
// // INST_MEM_LEN in Bytes or INST_MEM_LEN / 4 in words
// val imem = Mem ( INST_MEM_LEN , UInt ( WLEN . W ) )
// loadMemoryFromFile ( imem , initFile )