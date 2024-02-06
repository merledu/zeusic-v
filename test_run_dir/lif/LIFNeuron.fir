;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit LIFNeuron : 
  module LIFNeuron : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip spikeInput : UInt<1>, flip synapse : UInt<8>[2], neuronOutput : UInt<1>}
    
    reg potentialReg : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[neuron.scala 14:29]
    reg vth : UInt<8>, clock with : (reset => (reset, UInt<8>("h0a"))) @[neuron.scala 15:20]
    reg beta : UInt<8>, clock with : (reset => (reset, UInt<8>("h09"))) @[neuron.scala 16:21]
    reg count : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[neuron.scala 17:22]
    node _T = asSInt(potentialReg) @[neuron.scala 20:21]
    node _T_1 = asSInt(vth) @[neuron.scala 20:34]
    node _T_2 = gt(_T, _T_1) @[neuron.scala 20:28]
    when _T_2 : @[neuron.scala 20:42]
      io.neuronOutput <= UInt<1>("h01") @[neuron.scala 21:21]
      skip @[neuron.scala 20:42]
    else : @[neuron.scala 23:15]
      io.neuronOutput <= UInt<1>("h00") @[neuron.scala 24:21]
      skip @[neuron.scala 23:15]
    node _potentialReg_T = mul(beta, potentialReg) @[neuron.scala 26:24]
    node _potentialReg_T_1 = bits(count, 0, 0)
    node _potentialReg_T_2 = mul(io.spikeInput, io.synapse[_potentialReg_T_1]) @[neuron.scala 26:55]
    node _potentialReg_T_3 = add(_potentialReg_T, _potentialReg_T_2) @[neuron.scala 26:39]
    node _potentialReg_T_4 = tail(_potentialReg_T_3, 1) @[neuron.scala 26:39]
    node _potentialReg_T_5 = mul(io.neuronOutput, vth) @[neuron.scala 26:91]
    node _potentialReg_T_6 = sub(_potentialReg_T_4, _potentialReg_T_5) @[neuron.scala 26:74]
    node _potentialReg_T_7 = tail(_potentialReg_T_6, 1) @[neuron.scala 26:74]
    potentialReg <= _potentialReg_T_7 @[neuron.scala 26:16]
    node _count_T = add(count, UInt<1>("h01")) @[neuron.scala 27:18]
    node _count_T_1 = tail(_count_T, 1) @[neuron.scala 27:18]
    count <= _count_T_1 @[neuron.scala 27:9]
    
