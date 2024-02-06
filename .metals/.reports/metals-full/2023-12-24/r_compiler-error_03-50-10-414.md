file://<WORKSPACE>/src/test/scala/snn/neurontest.scala
### java.lang.IndexOutOfBoundsException: 0

occurred in the presentation compiler.

action parameters:
offset: 227
uri: file://<WORKSPACE>/src/test/scala/snn/neurontest.scala
text:
```scala
package snn
import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
class neurontest extends FreeSpec with ChiselScalatestTester{
    "lif" in{
        test(new LIFNeuron){ a =>
            a.io.spikeInput.poke()@@
             a.io.threshold.poke(10.U)
             a.io.leak.poke(8.U)
             a.io.spikeWeight.poke(12.U)
             a.clock.step(1)

        }

    }
}

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