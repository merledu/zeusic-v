file://<WORKSPACE>/src/main/scala/snn/neuron.scala
### java.lang.IndexOutOfBoundsException: 0

occurred in the presentation compiler.

action parameters:
offset: 479
uri: file://<WORKSPACE>/src/main/scala/snn/neuron.scala
text:
```scala
package snn
import chisel3._
import chisel3.util._

class LIFNeuron extends Module {
  val io = IO(new Bundle {
    val threshold=Input(UInt(8.W))
    val leak=Input(UInt(8.W))
    val spikeInput = Input(Bool())
    val spikeWeight = Input(UInt(8.W)) // Assuming 8-bit weight for simplicity
    val neuronOutput = Output(Bool())
  })

  val potentialReg = RegInit(0.U(8.W)) // Assuming 8-bit potential for simplicity
  val reg = RegInit(0.U(8.W))
  io.neuronOutput := 0.B
  for (@@)
  reg := reg+1.U
  // Leaky integration

  when(reg!=10.U) {
    potentialReg := potentialReg + (io.spikeInput * io.spikeWeight)-io.leak
  }.otherwise {
    when(potentialReg > io.threshold) {
     io.neuronOutput := 1.B
    }.otherwise {
     io.neuronOutput := 0.B
    }
  }

  // Output generation
  
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