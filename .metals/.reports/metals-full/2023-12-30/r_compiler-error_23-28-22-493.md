file://<WORKSPACE>/src/main/scala/snn/neuron.scala
### java.lang.IndexOutOfBoundsException: 0

occurred in the presentation compiler.

action parameters:
offset: 501
uri: file://<WORKSPACE>/src/main/scala/snn/neuron.scala
text:
```scala
package snn
import chisel3._
import chisel3.util._

class LIFNeuron extends Module {
  val io = IO(new Bundle {
   
    val spikeInput = Input(Bool())
    val synapse = Input(UInt(32.W)) // Assuming 8-bit weight for simplicity
    val neuronOutput = Output(Bool())
  })

  val potentialReg = RegInit(0.U(8.W)) // Assuming 8-bit potential for simplicity
  
  io.neuronOutput := 0.B
  val vth= RegInit(0.U(8.W))
  //val beta=RegInit(FixedPoint.fromDouble(0.0,16.W,8.BP))
  vth := 1.U
  val beta = 0.9.F(@@)
  when(potentialReg > vth){
  io.neuronOutput :=1.B
  potentialReg := beta*potentialReg + (io.neuronOutput * (io.synapse).asTypeof(FixedPoint(16.W,8.BP)))-io.spikeInput
  }.otherwise{
     io.neuronOutput := 0.B
     potentialReg := beta*potentialReg + (io.neuronOutput * (io.synapse).asTypeof(FixedPoint(16.W,8.BP)))-io.spikeInput
 

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