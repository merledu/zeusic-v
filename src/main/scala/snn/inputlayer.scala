package snn

import chisel3._
import chisel3.util._

class inputlayer extends Module{
    val io = IO(new Bundle{
        val in = Vec (5,Input(Bool()))
        val in2 = Vec(10,Input(UInt(8.W)))
        val out= Output(Bool()) 
    })
    
    val n1 = Module(new LIFNeuron(1))
    val n2 = Module(new LIFNeuron(1))
    val n3 = Module(new LIFNeuron(1))
    val n4 = Module(new LIFNeuron(1))
    val n5 = Module(new LIFNeuron(1))
    val n6 = Module(new LIFNeuron(5))
    n1.io.spikeInput := io.in(0) 
    n2.io.spikeInput := io.in(1)
    n3.io.spikeInput := io.in(2)
    n4.io.spikeInput := io.in(3) 
    n5.io.spikeInput :=  io.in(4)
    n1.io.synapse(0) := io.in2(0)
    n2.io.synapse(0) :=  io.in2(1)
    n3.io.synapse(0):= io.in2(2)
    n4.io.synapse(0) :=io.in2(3) 
    n5.io.synapse(0)  := io.in2(4) 
    n6.io.synapse(0) := io.in2(5)
    n6.io.synapse(1)  := io.in2(6)
    n6.io.synapse(2):= io.in2(7)
    n6.io.synapse(3) := io.in2(8)
    n6.io.synapse(4) := io.in2(9)
    io.out := n6.io.neuronOutput   
    
    

    
    
    n6.io.spikeInput := n1.io.neuronOutput
    n6.io.spikeInput := n2.io.neuronOutput
    n6.io.spikeInput := n3.io.neuronOutput
    n6.io.spikeInput := n4.io.neuronOutput
    n6.io.spikeInput := n5.io.neuronOutput 
     
}

    
