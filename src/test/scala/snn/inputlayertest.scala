package snn
import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
class inputlayertest extends FreeSpec with ChiselScalatestTester{
    "snnlayer" in {
        test(new inputlayer){n =>
            n.io.in(0).poke(1.B)
            n.io.in(1).poke(1.B)
            n.io.in(2).poke(1.B)
            n.io.in(3).poke(1.B)
            n.io.in(4).poke(1.B)
            n.io.in2(0).poke(1.B)
            n.io.in2(1).poke(10.U)
            n.io.in2(2).poke(11.U)
            n.io.in2(3).poke(12.U)
            n.io.in2(4).poke(13.U)
            n.io.in2(5).poke(14.U)
            n.io.in2(6).poke(15.U)
            n.io.in2(7).poke(16.U)
            n.io.in2(8).poke(17.U)
            n.io.in2(9).poke(18.U)
            n.clock.step(2)
            
            
            




        }}}

            
 
        
    