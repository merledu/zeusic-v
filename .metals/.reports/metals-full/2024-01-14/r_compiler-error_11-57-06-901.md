file://<WORKSPACE>/src/main/scala/snn/neuron.scala
### java.lang.AssertionError: assertion failed: phase parser has already been used once; cannot be reused

occurred in the presentation compiler.

action parameters:
uri: file://<WORKSPACE>/src/main/scala/snn/neuron.scala
text:
```scala
package snn

import chisel3._
import chisel3.util._

class LIFNeuron extends Module {
  val io = IO(new Bundle {
    val spikeInput = Input(Bool())
    val synapse = Input(UInt(8.W)) // Assuming 32-bit weight for simplicity
    val neuronOutput = Output(Bool())
  })

  val potentialReg = RegInit(0.U(8.W)) // Using FixedPoint.apply // Assuming 8-bit potential for simplicity
  val vth = RegInit(10.U(8.W)) // Assuming 8-bit threshold for simplicity
  val beta = RegInit(9.U(8.W)) // FixedPoint with 16 bits total width and 8 fractional bits
  
  dontTouch(vth)
  when(potentialReg.asSInt > vth.asSInt) {
    io.neuronOutput := 1.B
    
  }.otherwise {
    io.neuronOutput := 0.B
  }
  potentialReg := (beta * potentialReg )+ (io.spikeInput *io.synapse) - (io.neuronOutput*vth)
}

```



#### Error stacktrace:

```
scala.runtime.Scala3RunTime$.assertFailed(Scala3RunTime.scala:8)
	dotty.tools.dotc.core.Phases$Phase.init(Phases.scala:406)
	dotty.tools.dotc.core.Phases$Phase.init(Phases.scala:420)
	dotty.tools.dotc.core.Phases$PhasesBase.usePhases(Phases.scala:168)
	dotty.tools.dotc.core.Phases$PhasesBase.usePhases$(Phases.scala:37)
	dotty.tools.dotc.core.Contexts$ContextBase.usePhases(Contexts.scala:842)
	dotty.tools.dotc.Run.compileUnits$$anonfun$1(Run.scala:231)
	dotty.tools.dotc.Run.compileUnits$$anonfun$adapted$1(Run.scala:279)
	dotty.tools.dotc.util.Stats$.maybeMonitored(Stats.scala:67)
	dotty.tools.dotc.Run.compileUnits(Run.scala:279)
	dotty.tools.dotc.Run.compileSources(Run.scala:194)
	dotty.tools.dotc.interactive.InteractiveDriver.run(InteractiveDriver.scala:165)
	scala.meta.internal.pc.MetalsDriver.run(MetalsDriver.scala:45)
	scala.meta.internal.pc.SemanticdbTextDocumentProvider.textDocument(SemanticdbTextDocumentProvider.scala:33)
	scala.meta.internal.pc.ScalaPresentationCompiler.semanticdbTextDocument$$anonfun$1(ScalaPresentationCompiler.scala:191)
```
#### Short summary: 

java.lang.AssertionError: assertion failed: phase parser has already been used once; cannot be reused