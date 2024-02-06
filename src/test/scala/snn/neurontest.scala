package snn
import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
class neurontest extends FreeSpec with ChiselScalatestTester{
    "lif" in{
        test(new LIFNeuron(2)){ a =>
             a.io.spikeInput.poke(1.B)
             a.io.synapse(0).poke(4.U)
             a.clock.step(1)
             a.io.spikeInput.poke(0.B)
             a.io.synapse(1).poke(5.U)
             a.clock.step(1)
            //  a.io.spikeInput.poke(1.B)
            //  a.io.synapse.poke(6.U)
            //  a.clock.step(1)
            

        }

    }
}
