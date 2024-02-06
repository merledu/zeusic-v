;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit inputlayer : 
  module LIFNeuron : 
    input clock : Clock
    input reset : Reset
    output io : {flip spikeInput : UInt<1>, flip synapse : UInt<8>[1], neuronOutput : UInt<1>}
    
    reg potentialReg : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[neuron.scala 13:29]
    reg vth : UInt<8>, clock with : (reset => (reset, UInt<8>("h0a"))) @[neuron.scala 14:20]
    reg beta : UInt<8>, clock with : (reset => (reset, UInt<8>("h09"))) @[neuron.scala 15:21]
    reg count : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[neuron.scala 16:22]
    node _T = asSInt(potentialReg) @[neuron.scala 19:21]
    node _T_1 = asSInt(vth) @[neuron.scala 19:34]
    node _T_2 = gt(_T, _T_1) @[neuron.scala 19:28]
    when _T_2 : @[neuron.scala 19:42]
      io.neuronOutput <= UInt<1>("h01") @[neuron.scala 20:21]
      skip @[neuron.scala 19:42]
    else : @[neuron.scala 22:15]
      io.neuronOutput <= UInt<1>("h00") @[neuron.scala 23:21]
      skip @[neuron.scala 22:15]
    node _potentialReg_T = mul(beta, potentialReg) @[neuron.scala 25:24]
    node _potentialReg_T_1 = mul(io.spikeInput, io.synapse[UInt<1>("h00")]) @[neuron.scala 25:55]
    node _potentialReg_T_2 = add(_potentialReg_T, _potentialReg_T_1) @[neuron.scala 25:39]
    node _potentialReg_T_3 = tail(_potentialReg_T_2, 1) @[neuron.scala 25:39]
    node _potentialReg_T_4 = mul(io.neuronOutput, vth) @[neuron.scala 25:91]
    node _potentialReg_T_5 = sub(_potentialReg_T_3, _potentialReg_T_4) @[neuron.scala 25:74]
    node _potentialReg_T_6 = tail(_potentialReg_T_5, 1) @[neuron.scala 25:74]
    potentialReg <= _potentialReg_T_6 @[neuron.scala 25:16]
    node _count_T = add(count, UInt<1>("h01")) @[neuron.scala 26:18]
    node _count_T_1 = tail(_count_T, 1) @[neuron.scala 26:18]
    count <= _count_T_1 @[neuron.scala 26:9]
    
  module LIFNeuron_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip spikeInput : UInt<1>, flip synapse : UInt<8>[1], neuronOutput : UInt<1>}
    
    reg potentialReg : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[neuron.scala 13:29]
    reg vth : UInt<8>, clock with : (reset => (reset, UInt<8>("h0a"))) @[neuron.scala 14:20]
    reg beta : UInt<8>, clock with : (reset => (reset, UInt<8>("h09"))) @[neuron.scala 15:21]
    reg count : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[neuron.scala 16:22]
    node _T = asSInt(potentialReg) @[neuron.scala 19:21]
    node _T_1 = asSInt(vth) @[neuron.scala 19:34]
    node _T_2 = gt(_T, _T_1) @[neuron.scala 19:28]
    when _T_2 : @[neuron.scala 19:42]
      io.neuronOutput <= UInt<1>("h01") @[neuron.scala 20:21]
      skip @[neuron.scala 19:42]
    else : @[neuron.scala 22:15]
      io.neuronOutput <= UInt<1>("h00") @[neuron.scala 23:21]
      skip @[neuron.scala 22:15]
    node _potentialReg_T = mul(beta, potentialReg) @[neuron.scala 25:24]
    node _potentialReg_T_1 = mul(io.spikeInput, io.synapse[UInt<1>("h00")]) @[neuron.scala 25:55]
    node _potentialReg_T_2 = add(_potentialReg_T, _potentialReg_T_1) @[neuron.scala 25:39]
    node _potentialReg_T_3 = tail(_potentialReg_T_2, 1) @[neuron.scala 25:39]
    node _potentialReg_T_4 = mul(io.neuronOutput, vth) @[neuron.scala 25:91]
    node _potentialReg_T_5 = sub(_potentialReg_T_3, _potentialReg_T_4) @[neuron.scala 25:74]
    node _potentialReg_T_6 = tail(_potentialReg_T_5, 1) @[neuron.scala 25:74]
    potentialReg <= _potentialReg_T_6 @[neuron.scala 25:16]
    node _count_T = add(count, UInt<1>("h01")) @[neuron.scala 26:18]
    node _count_T_1 = tail(_count_T, 1) @[neuron.scala 26:18]
    count <= _count_T_1 @[neuron.scala 26:9]
    
  module LIFNeuron_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip spikeInput : UInt<1>, flip synapse : UInt<8>[1], neuronOutput : UInt<1>}
    
    reg potentialReg : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[neuron.scala 13:29]
    reg vth : UInt<8>, clock with : (reset => (reset, UInt<8>("h0a"))) @[neuron.scala 14:20]
    reg beta : UInt<8>, clock with : (reset => (reset, UInt<8>("h09"))) @[neuron.scala 15:21]
    reg count : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[neuron.scala 16:22]
    node _T = asSInt(potentialReg) @[neuron.scala 19:21]
    node _T_1 = asSInt(vth) @[neuron.scala 19:34]
    node _T_2 = gt(_T, _T_1) @[neuron.scala 19:28]
    when _T_2 : @[neuron.scala 19:42]
      io.neuronOutput <= UInt<1>("h01") @[neuron.scala 20:21]
      skip @[neuron.scala 19:42]
    else : @[neuron.scala 22:15]
      io.neuronOutput <= UInt<1>("h00") @[neuron.scala 23:21]
      skip @[neuron.scala 22:15]
    node _potentialReg_T = mul(beta, potentialReg) @[neuron.scala 25:24]
    node _potentialReg_T_1 = mul(io.spikeInput, io.synapse[UInt<1>("h00")]) @[neuron.scala 25:55]
    node _potentialReg_T_2 = add(_potentialReg_T, _potentialReg_T_1) @[neuron.scala 25:39]
    node _potentialReg_T_3 = tail(_potentialReg_T_2, 1) @[neuron.scala 25:39]
    node _potentialReg_T_4 = mul(io.neuronOutput, vth) @[neuron.scala 25:91]
    node _potentialReg_T_5 = sub(_potentialReg_T_3, _potentialReg_T_4) @[neuron.scala 25:74]
    node _potentialReg_T_6 = tail(_potentialReg_T_5, 1) @[neuron.scala 25:74]
    potentialReg <= _potentialReg_T_6 @[neuron.scala 25:16]
    node _count_T = add(count, UInt<1>("h01")) @[neuron.scala 26:18]
    node _count_T_1 = tail(_count_T, 1) @[neuron.scala 26:18]
    count <= _count_T_1 @[neuron.scala 26:9]
    
  module LIFNeuron_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip spikeInput : UInt<1>, flip synapse : UInt<8>[1], neuronOutput : UInt<1>}
    
    reg potentialReg : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[neuron.scala 13:29]
    reg vth : UInt<8>, clock with : (reset => (reset, UInt<8>("h0a"))) @[neuron.scala 14:20]
    reg beta : UInt<8>, clock with : (reset => (reset, UInt<8>("h09"))) @[neuron.scala 15:21]
    reg count : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[neuron.scala 16:22]
    node _T = asSInt(potentialReg) @[neuron.scala 19:21]
    node _T_1 = asSInt(vth) @[neuron.scala 19:34]
    node _T_2 = gt(_T, _T_1) @[neuron.scala 19:28]
    when _T_2 : @[neuron.scala 19:42]
      io.neuronOutput <= UInt<1>("h01") @[neuron.scala 20:21]
      skip @[neuron.scala 19:42]
    else : @[neuron.scala 22:15]
      io.neuronOutput <= UInt<1>("h00") @[neuron.scala 23:21]
      skip @[neuron.scala 22:15]
    node _potentialReg_T = mul(beta, potentialReg) @[neuron.scala 25:24]
    node _potentialReg_T_1 = mul(io.spikeInput, io.synapse[UInt<1>("h00")]) @[neuron.scala 25:55]
    node _potentialReg_T_2 = add(_potentialReg_T, _potentialReg_T_1) @[neuron.scala 25:39]
    node _potentialReg_T_3 = tail(_potentialReg_T_2, 1) @[neuron.scala 25:39]
    node _potentialReg_T_4 = mul(io.neuronOutput, vth) @[neuron.scala 25:91]
    node _potentialReg_T_5 = sub(_potentialReg_T_3, _potentialReg_T_4) @[neuron.scala 25:74]
    node _potentialReg_T_6 = tail(_potentialReg_T_5, 1) @[neuron.scala 25:74]
    potentialReg <= _potentialReg_T_6 @[neuron.scala 25:16]
    node _count_T = add(count, UInt<1>("h01")) @[neuron.scala 26:18]
    node _count_T_1 = tail(_count_T, 1) @[neuron.scala 26:18]
    count <= _count_T_1 @[neuron.scala 26:9]
    
  module LIFNeuron_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip spikeInput : UInt<1>, flip synapse : UInt<8>[1], neuronOutput : UInt<1>}
    
    reg potentialReg : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[neuron.scala 13:29]
    reg vth : UInt<8>, clock with : (reset => (reset, UInt<8>("h0a"))) @[neuron.scala 14:20]
    reg beta : UInt<8>, clock with : (reset => (reset, UInt<8>("h09"))) @[neuron.scala 15:21]
    reg count : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[neuron.scala 16:22]
    node _T = asSInt(potentialReg) @[neuron.scala 19:21]
    node _T_1 = asSInt(vth) @[neuron.scala 19:34]
    node _T_2 = gt(_T, _T_1) @[neuron.scala 19:28]
    when _T_2 : @[neuron.scala 19:42]
      io.neuronOutput <= UInt<1>("h01") @[neuron.scala 20:21]
      skip @[neuron.scala 19:42]
    else : @[neuron.scala 22:15]
      io.neuronOutput <= UInt<1>("h00") @[neuron.scala 23:21]
      skip @[neuron.scala 22:15]
    node _potentialReg_T = mul(beta, potentialReg) @[neuron.scala 25:24]
    node _potentialReg_T_1 = mul(io.spikeInput, io.synapse[UInt<1>("h00")]) @[neuron.scala 25:55]
    node _potentialReg_T_2 = add(_potentialReg_T, _potentialReg_T_1) @[neuron.scala 25:39]
    node _potentialReg_T_3 = tail(_potentialReg_T_2, 1) @[neuron.scala 25:39]
    node _potentialReg_T_4 = mul(io.neuronOutput, vth) @[neuron.scala 25:91]
    node _potentialReg_T_5 = sub(_potentialReg_T_3, _potentialReg_T_4) @[neuron.scala 25:74]
    node _potentialReg_T_6 = tail(_potentialReg_T_5, 1) @[neuron.scala 25:74]
    potentialReg <= _potentialReg_T_6 @[neuron.scala 25:16]
    node _count_T = add(count, UInt<1>("h01")) @[neuron.scala 26:18]
    node _count_T_1 = tail(_count_T, 1) @[neuron.scala 26:18]
    count <= _count_T_1 @[neuron.scala 26:9]
    
  module LIFNeuron_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip spikeInput : UInt<1>, flip synapse : UInt<8>[5], neuronOutput : UInt<1>}
    
    reg potentialReg : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[neuron.scala 13:29]
    reg vth : UInt<8>, clock with : (reset => (reset, UInt<8>("h0a"))) @[neuron.scala 14:20]
    reg beta : UInt<8>, clock with : (reset => (reset, UInt<8>("h09"))) @[neuron.scala 15:21]
    reg count : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[neuron.scala 16:22]
    node _T = asSInt(potentialReg) @[neuron.scala 19:21]
    node _T_1 = asSInt(vth) @[neuron.scala 19:34]
    node _T_2 = gt(_T, _T_1) @[neuron.scala 19:28]
    when _T_2 : @[neuron.scala 19:42]
      io.neuronOutput <= UInt<1>("h01") @[neuron.scala 20:21]
      skip @[neuron.scala 19:42]
    else : @[neuron.scala 22:15]
      io.neuronOutput <= UInt<1>("h00") @[neuron.scala 23:21]
      skip @[neuron.scala 22:15]
    node _potentialReg_T = mul(beta, potentialReg) @[neuron.scala 25:24]
    node _potentialReg_T_1 = bits(count, 2, 0)
    node _potentialReg_T_2 = mul(io.spikeInput, io.synapse[_potentialReg_T_1]) @[neuron.scala 25:55]
    node _potentialReg_T_3 = add(_potentialReg_T, _potentialReg_T_2) @[neuron.scala 25:39]
    node _potentialReg_T_4 = tail(_potentialReg_T_3, 1) @[neuron.scala 25:39]
    node _potentialReg_T_5 = mul(io.neuronOutput, vth) @[neuron.scala 25:91]
    node _potentialReg_T_6 = sub(_potentialReg_T_4, _potentialReg_T_5) @[neuron.scala 25:74]
    node _potentialReg_T_7 = tail(_potentialReg_T_6, 1) @[neuron.scala 25:74]
    potentialReg <= _potentialReg_T_7 @[neuron.scala 25:16]
    node _count_T = add(count, UInt<1>("h01")) @[neuron.scala 26:18]
    node _count_T_1 = tail(_count_T, 1) @[neuron.scala 26:18]
    count <= _count_T_1 @[neuron.scala 26:9]
    
  module inputlayer : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<1>[5], flip in2 : UInt<8>[10], out : UInt<1>}
    
    inst n1 of LIFNeuron @[inputlayer.scala 13:20]
    n1.clock <= clock
    n1.reset <= reset
    inst n2 of LIFNeuron_1 @[inputlayer.scala 14:20]
    n2.clock <= clock
    n2.reset <= reset
    inst n3 of LIFNeuron_2 @[inputlayer.scala 15:20]
    n3.clock <= clock
    n3.reset <= reset
    inst n4 of LIFNeuron_3 @[inputlayer.scala 16:20]
    n4.clock <= clock
    n4.reset <= reset
    inst n5 of LIFNeuron_4 @[inputlayer.scala 17:20]
    n5.clock <= clock
    n5.reset <= reset
    inst n6 of LIFNeuron_5 @[inputlayer.scala 18:20]
    n6.clock <= clock
    n6.reset <= reset
    n1.io.spikeInput <= io.in[0] @[inputlayer.scala 19:22]
    n2.io.spikeInput <= io.in[1] @[inputlayer.scala 20:22]
    n3.io.spikeInput <= io.in[2] @[inputlayer.scala 21:22]
    n4.io.spikeInput <= io.in[3] @[inputlayer.scala 22:22]
    n5.io.spikeInput <= io.in[4] @[inputlayer.scala 23:22]
    n1.io.synapse[0] <= io.in2[0] @[inputlayer.scala 24:22]
    n2.io.synapse[0] <= io.in2[1] @[inputlayer.scala 25:22]
    n3.io.synapse[0] <= io.in2[2] @[inputlayer.scala 26:21]
    n4.io.synapse[0] <= io.in2[3] @[inputlayer.scala 27:22]
    n5.io.synapse[0] <= io.in2[4] @[inputlayer.scala 28:23]
    n6.io.synapse[0] <= io.in2[5] @[inputlayer.scala 29:22]
    n6.io.synapse[1] <= io.in2[6] @[inputlayer.scala 30:23]
    n6.io.synapse[2] <= io.in2[7] @[inputlayer.scala 31:21]
    n6.io.synapse[3] <= io.in2[8] @[inputlayer.scala 32:22]
    n6.io.synapse[4] <= io.in2[9] @[inputlayer.scala 33:22]
    io.out <= n6.io.neuronOutput @[inputlayer.scala 34:12]
    n6.io.spikeInput <= n1.io.neuronOutput @[inputlayer.scala 40:22]
    n6.io.spikeInput <= n2.io.neuronOutput @[inputlayer.scala 41:22]
    n6.io.spikeInput <= n3.io.neuronOutput @[inputlayer.scala 42:22]
    n6.io.spikeInput <= n4.io.neuronOutput @[inputlayer.scala 43:22]
    n6.io.spikeInput <= n5.io.neuronOutput @[inputlayer.scala 44:22]
    
