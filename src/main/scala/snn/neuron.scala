package snn

import chisel3._
import chisel3.util._


class LIFNeuron( val n: Int) extends Module {
  val io = IO(new Bundle {
    val spikeInput = Input(Bool())
    val synapse = Vec(n,Input ( UInt ( 8. W ) ))
    val neuronOutput = Output(Bool())
  })
  val potentialReg = RegInit(0.U(8.W)) // Using FixedPoint.apply // Assuming 8-bit potential for simplicity
  val vth = RegInit(10.U(8.W)) // Assuming 8-bit threshold for simplicity
  val beta = RegInit(9.U(8.W)) // FixedPoint with 16 bits total width and 8 fractional bits
  val count = RegInit(0.U(8.W))
  
  dontTouch(vth)
  when(potentialReg.asSInt > vth.asSInt) {
    io.neuronOutput := 1.B
    
  }.otherwise {
    io.neuronOutput := 0.B
  }
  potentialReg := beta * potentialReg + io.spikeInput *io.synapse(count) - io.neuronOutput*vth
  count := count + 1.U
}
