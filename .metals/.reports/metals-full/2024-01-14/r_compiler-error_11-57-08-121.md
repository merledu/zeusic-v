file://<WORKSPACE>/src/main/scala/snn/neuron.scala
### java.lang.AssertionError: assertion failed: duplicate module class experimental$#3147; previous was module class experimental$#3145

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
	dotty.tools.dotc.core.Scopes$MutableScope.enter(Scopes.scala:271)
	dotty.tools.dotc.core.SymDenotations$ClassDenotation.enterNoReplace(SymDenotations.scala:2042)
	dotty.tools.dotc.core.SymDenotations$ClassDenotation.enter(SymDenotations.scala:2033)
	dotty.tools.dotc.core.SymbolLoaders$.enterNew(SymbolLoaders.scala:43)
	dotty.tools.dotc.core.SymbolLoaders$.enterModule(SymbolLoaders.scala:66)
	dotty.tools.dotc.core.SymbolLoaders$.enterClassAndModule(SymbolLoaders.scala:109)
	dotty.tools.dotc.core.SymbolLoaders$.initializeFromClassPath(SymbolLoaders.scala:198)
	dotty.tools.dotc.core.SymbolLoaders$PackageLoader.enterClasses$$anonfun$1(SymbolLoaders.scala:271)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:15)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:10)
	scala.collection.immutable.Vector.foreach(Vector.scala:1895)
	dotty.tools.dotc.core.SymbolLoaders$PackageLoader.enterClasses(SymbolLoaders.scala:271)
	dotty.tools.dotc.core.SymbolLoaders$PackageLoader.doComplete(SymbolLoaders.scala:292)
	dotty.tools.dotc.core.SymbolLoader.complete(SymbolLoaders.scala:341)
	dotty.tools.dotc.core.SymDenotations$SymDenotation.completeFrom(SymDenotations.scala:174)
	dotty.tools.dotc.core.Denotations$Denotation.completeInfo$1(Denotations.scala:187)
	dotty.tools.dotc.core.Denotations$Denotation.info(Denotations.scala:189)
	dotty.tools.dotc.core.SymDenotations$SymDenotation.ensureCompleted(SymDenotations.scala:393)
	dotty.tools.dotc.core.SymDenotations$SymDenotation.flags(SymDenotations.scala:66)
	dotty.tools.dotc.core.SymDenotations$ModuleCompleter.complete(SymDenotations.scala:2777)
	dotty.tools.dotc.core.SymDenotations$SymDenotation.completeFrom(SymDenotations.scala:174)
	dotty.tools.dotc.core.Denotations$Denotation.completeInfo$1(Denotations.scala:187)
	dotty.tools.dotc.core.Denotations$Denotation.info(Denotations.scala:189)
	dotty.tools.dotc.core.Denotations$.select$1(Denotations.scala:1306)
	dotty.tools.dotc.core.Denotations$.recurSimple$1(Denotations.scala:1336)
	dotty.tools.dotc.core.Denotations$.recur$1(Denotations.scala:1338)
	dotty.tools.dotc.core.Denotations$.staticRef$$anonfun$1(Denotations.scala:1343)
	dotty.tools.dotc.util.GenericHashMap.getOrElseUpdate(GenericHashMap.scala:134)
	dotty.tools.dotc.core.Denotations$.staticRef(Denotations.scala:1343)
	dotty.tools.dotc.core.Symbols$.requiredClass(Symbols.scala:898)
	dotty.tools.dotc.core.Definitions.TargetNameAnnot(Definitions.scala:1039)
	dotty.tools.dotc.core.SymDenotations$SymDenotation.targetName(SymDenotations.scala:573)
	dotty.tools.dotc.core.Denotations$SingleDenotation.matches(Denotations.scala:1006)
	dotty.tools.dotc.core.Denotations$Denotation.mergeDenot$1(Denotations.scala:409)
	dotty.tools.dotc.core.Denotations$Denotation.meet(Denotations.scala:499)
	dotty.tools.dotc.core.Denotations$DenotUnion.toDenot(Denotations.scala:1229)
	dotty.tools.dotc.core.SymDenotations$ClassDenotation.findMember(SymDenotations.scala:2145)
	dotty.tools.dotc.core.Types$Type.go$1(Types.scala:695)
	dotty.tools.dotc.core.Types$Type.goThis$1(Types.scala:801)
	dotty.tools.dotc.core.Types$Type.go$1(Types.scala:712)
	dotty.tools.dotc.core.Types$Type.findMember(Types.scala:874)
	dotty.tools.dotc.core.ContextOps$.denotNamed(ContextOps.scala:38)
	dotty.tools.dotc.typer.Typer.loop$1(Typer.scala:451)
	dotty.tools.dotc.typer.Typer.findRefRecur$1(Typer.scala:514)
	dotty.tools.dotc.typer.Typer.findRef(Typer.scala:517)
	dotty.tools.dotc.typer.Typer.typedIdent(Typer.scala:576)
	dotty.tools.dotc.typer.Typer.typedNamed$1(Typer.scala:3016)
	dotty.tools.dotc.typer.Typer.typedUnadapted(Typer.scala:3111)
	dotty.tools.dotc.typer.Typer.typed(Typer.scala:3184)
	dotty.tools.dotc.typer.Typer.typed(Typer.scala:3188)
	dotty.tools.dotc.typer.Typer.typedExpr(Typer.scala:3300)
	dotty.tools.dotc.typer.Typer.typedPackageDef(Typer.scala:2803)
	dotty.tools.dotc.typer.Typer.typedUnnamed$1(Typer.scala:3081)
	dotty.tools.dotc.typer.Typer.typedUnadapted(Typer.scala:3112)
	dotty.tools.dotc.typer.Typer.typed(Typer.scala:3184)
	dotty.tools.dotc.typer.Typer.typed(Typer.scala:3188)
	dotty.tools.dotc.typer.Typer.typedExpr(Typer.scala:3300)
	dotty.tools.dotc.typer.TyperPhase.typeCheck$$anonfun$1(TyperPhase.scala:44)
	dotty.tools.dotc.typer.TyperPhase.typeCheck$$anonfun$adapted$1(TyperPhase.scala:54)
	scala.Function0.apply$mcV$sp(Function0.scala:42)
	dotty.tools.dotc.core.Phases$Phase.monitor(Phases.scala:440)
	dotty.tools.dotc.typer.TyperPhase.typeCheck(TyperPhase.scala:54)
	dotty.tools.dotc.typer.TyperPhase.runOn$$anonfun$3(TyperPhase.scala:88)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:15)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:10)
	scala.collection.immutable.List.foreach(List.scala:333)
	dotty.tools.dotc.typer.TyperPhase.runOn(TyperPhase.scala:88)
	dotty.tools.dotc.Run.runPhases$1$$anonfun$1(Run.scala:246)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:15)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:10)
	scala.collection.ArrayOps$.foreach$extension(ArrayOps.scala:1321)
	dotty.tools.dotc.Run.runPhases$1(Run.scala:262)
	dotty.tools.dotc.Run.compileUnits$$anonfun$1(Run.scala:270)
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

java.lang.AssertionError: assertion failed: duplicate module class experimental$#3147; previous was module class experimental$#3145