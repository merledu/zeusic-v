circuit LIFNeuron :
  module LIFNeuron :
    input clock : Clock
    input reset : UInt<1>
    input io_spikeInput : UInt<1>
    input io_synapse_0 : UInt<8>
    input io_synapse_1 : UInt<8>
    output io_neuronOutput : UInt<1>

    reg potentialReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), potentialReg) @[neuron.scala 14:29]
    reg vth : UInt<8>, clock with :
      reset => (UInt<1>("h0"), vth) @[neuron.scala 15:20]
    reg beta : UInt<8>, clock with :
      reset => (UInt<1>("h0"), beta) @[neuron.scala 16:21]
    reg count : UInt<8>, clock with :
      reset => (UInt<1>("h0"), count) @[neuron.scala 17:22]
    node _T = asSInt(potentialReg) @[neuron.scala 20:21]
    node _T_1 = asSInt(vth) @[neuron.scala 20:34]
    node _T_2 = gt(_T, _T_1) @[neuron.scala 20:28]
    node _GEN_0 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[neuron.scala 20:42 neuron.scala 21:21 neuron.scala 24:21]
    node _potentialReg_T = mul(beta, potentialReg) @[neuron.scala 26:24]
    node _potentialReg_T_1 = bits(count, 0, 0)
    node _GEN_1 = validif(eq(UInt<1>("h0"), _potentialReg_T_1), io_synapse_0) @[neuron.scala 26:55 neuron.scala 26:55]
    node _GEN_2 = mux(eq(UInt<1>("h1"), _potentialReg_T_1), io_synapse_1, _GEN_1) @[neuron.scala 26:55 neuron.scala 26:55]
    node _io_synapse_potentialReg_T_1 = _GEN_2 @[neuron.scala 26:55]
    node _potentialReg_T_2 = mul(io_spikeInput, _io_synapse_potentialReg_T_1) @[neuron.scala 26:55]
    node _potentialReg_T_3 = add(_potentialReg_T, _potentialReg_T_2) @[neuron.scala 26:39]
    node _potentialReg_T_4 = tail(_potentialReg_T_3, 1) @[neuron.scala 26:39]
    node _potentialReg_T_5 = mul(io_neuronOutput, vth) @[neuron.scala 26:91]
    node _potentialReg_T_6 = sub(_potentialReg_T_4, _potentialReg_T_5) @[neuron.scala 26:74]
    node _potentialReg_T_7 = tail(_potentialReg_T_6, 1) @[neuron.scala 26:74]
    node _count_T = add(count, UInt<1>("h1")) @[neuron.scala 27:18]
    node _count_T_1 = tail(_count_T, 1) @[neuron.scala 27:18]
    io_neuronOutput <= _GEN_0
    potentialReg <= mux(reset, UInt<8>("h0"), bits(_potentialReg_T_7, 7, 0)) @[neuron.scala 14:29 neuron.scala 14:29 neuron.scala 26:16]
    vth <= mux(reset, UInt<8>("ha"), vth) @[neuron.scala 15:20 neuron.scala 15:20 neuron.scala 15:20]
    beta <= mux(reset, UInt<8>("h9"), beta) @[neuron.scala 16:21 neuron.scala 16:21 neuron.scala 16:21]
    count <= mux(reset, UInt<8>("h0"), _count_T_1) @[neuron.scala 17:22 neuron.scala 17:22 neuron.scala 27:9]
