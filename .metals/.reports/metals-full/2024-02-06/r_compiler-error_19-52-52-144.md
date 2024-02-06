file://<WORKSPACE>/src/test/scala/snn/inputlayertest.scala
### java.lang.IndexOutOfBoundsException: 0

occurred in the presentation compiler.

action parameters:
offset: 743
uri: file://<WORKSPACE>/src/test/scala/snn/inputlayertest.scala
text:
```scala
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
            n.clock.step(0@@)
            
            
            




        }}}

            
 
        
    
```



#### Error stacktrace:

```
scala.collection.LinearSeqOps.apply(LinearSeq.scala:131)
	scala.collection.LinearSeqOps.apply$(LinearSeq.scala:128)
	scala.collection.immutable.List.apply(List.scala:79)
	dotty.tools.dotc.util.Signatures$.countParams(Signatures.scala:501)
	dotty.tools.dotc.util.Signatures$.applyCallInfo(Signatures.scala:186)
	dotty.tools.dotc.util.Signatures$.computeSignatureHelp(Signatures.scala:94)
	dotty.tools.dotc.util.Signatures$.signatureHelp(Signatures.scala:63)
	scala.meta.internal.pc.MetalsSignatures$.signatures(MetalsSignatures.scala:17)
	scala.meta.internal.pc.SignatureHelpProvider$.signatureHelp(SignatureHelpProvider.scala:51)
	scala.meta.internal.pc.ScalaPresentationCompiler.signatureHelp$$anonfun$1(ScalaPresentationCompiler.scala:388)
```
#### Short summary: 

java.lang.IndexOutOfBoundsException: 0