file://<WORKSPACE>/src/test/scala/snn/inputlayertest.scala
### java.lang.IndexOutOfBoundsException: 0

occurred in the presentation compiler.

action parameters:
offset: 646
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
            n.n1.io.spikeInput.poke(1.B)
            n.n1.io.synapse(1).poke(11.U)
            n.n2.io.spikeInput.poke(0.B)
            n.n2.io.synapse(1).poke(12.U)
            n.n3.io.spikeInput.poke(1.B)
            n.n3.io.synapse(1).poke(13.U)
            n.n4.io.spikeInput.poke(0.B)
            n.n4.io.synapse(1).poke(14.U)
            n.n5.io.spikeInput.poke(1.B)
            n.n5.io.synapse(1).poke(15.U)
            n.n6.io.synapse(@@).poke(16.U)

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