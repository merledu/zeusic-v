// package practice
// import chisel3._
// class Counter extends Module{
//     val max = (1 << counterBits ) - 1
//     var count = 0
//     when( count == max ) {
//         count = 0
//     }.otherwise {
//         count = count + 1
//     }
// println ( s " counter created with max value $max " )
// }