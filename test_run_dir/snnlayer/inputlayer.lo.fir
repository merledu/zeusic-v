circuit inputlayer :
  module LIFNeuron :
    input clock : Clock
    input reset : UInt<1>
    input io_spikeInput : UInt<1>
    input io_synapse_0 : UInt<8>
    output io_neuronOutput : UInt<1>

    reg potentialReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), potentialReg) @[neuron.scala 13:29]
    reg vth : UInt<8>, clock with :
      reset => (UInt<1>("h0"), vth) @[neuron.scala 14:20]
    reg beta : UInt<8>, clock with :
      reset => (UInt<1>("h0"), beta) @[neuron.scala 15:21]
    reg count : UInt<8>, clock with :
      reset => (UInt<1>("h0"), count) @[neuron.scala 16:22]
    node _T = asSInt(potentialReg) @[neuron.scala 19:21]
    node _T_1 = asSInt(vth) @[neuron.scala 19:34]
    node _T_2 = gt(_T, _T_1) @[neuron.scala 19:28]
    node _GEN_0 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[neuron.scala 19:42 neuron.scala 20:21 neuron.scala 23:21]
    node _potentialReg_T = mul(beta, potentialReg) @[neuron.scala 25:24]
    node _potentialReg_T_1 = mul(io_spikeInput, io_synapse_0) @[neuron.scala 25:55]
    node _potentialReg_T_2 = add(_potentialReg_T, _potentialReg_T_1) @[neuron.scala 25:39]
    node _potentialReg_T_3 = tail(_potentialReg_T_2, 1) @[neuron.scala 25:39]
    node _potentialReg_T_4 = mul(io_neuronOutput, vth) @[neuron.scala 25:91]
    node _potentialReg_T_5 = sub(_potentialReg_T_3, _potentialReg_T_4) @[neuron.scala 25:74]
    node _potentialReg_T_6 = tail(_potentialReg_T_5, 1) @[neuron.scala 25:74]
    node _count_T = add(count, UInt<1>("h1")) @[neuron.scala 26:18]
    node _count_T_1 = tail(_count_T, 1) @[neuron.scala 26:18]
    io_neuronOutput <= _GEN_0
    potentialReg <= mux(reset, UInt<8>("h0"), bits(_potentialReg_T_6, 7, 0)) @[neuron.scala 13:29 neuron.scala 13:29 neuron.scala 25:16]
    vth <= mux(reset, UInt<8>("ha"), vth) @[neuron.scala 14:20 neuron.scala 14:20 neuron.scala 14:20]
    beta <= mux(reset, UInt<8>("h9"), beta) @[neuron.scala 15:21 neuron.scala 15:21 neuron.scala 15:21]
    count <= mux(reset, UInt<8>("h0"), _count_T_1) @[neuron.scala 16:22 neuron.scala 16:22 neuron.scala 26:9]

  module LIFNeuron_5 :
    input clock : Clock
    input reset : UInt<1>
    input io_spikeInput : UInt<1>
    input io_synapse_0 : UInt<8>
    input io_synapse_1 : UInt<8>
    input io_synapse_2 : UInt<8>
    input io_synapse_3 : UInt<8>
    input io_synapse_4 : UInt<8>
    output io_neuronOutput : UInt<1>

    reg potentialReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), potentialReg) @[neuron.scala 13:29]
    reg vth : UInt<8>, clock with :
      reset => (UInt<1>("h0"), vth) @[neuron.scala 14:20]
    reg beta : UInt<8>, clock with :
      reset => (UInt<1>("h0"), beta) @[neuron.scala 15:21]
    reg count : UInt<8>, clock with :
      reset => (UInt<1>("h0"), count) @[neuron.scala 16:22]
    node _T = asSInt(potentialReg) @[neuron.scala 19:21]
    node _T_1 = asSInt(vth) @[neuron.scala 19:34]
    node _T_2 = gt(_T, _T_1) @[neuron.scala 19:28]
    node _GEN_0 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[neuron.scala 19:42 neuron.scala 20:21 neuron.scala 23:21]
    node _potentialReg_T = mul(beta, potentialReg) @[neuron.scala 25:24]
    node _potentialReg_T_1 = bits(count, 2, 0)
    node _GEN_1 = validif(eq(UInt<1>("h0"), _potentialReg_T_1), io_synapse_0) @[neuron.scala 25:55 neuron.scala 25:55]
    node _GEN_2 = mux(eq(UInt<1>("h1"), _potentialReg_T_1), io_synapse_1, _GEN_1) @[neuron.scala 25:55 neuron.scala 25:55]
    node _GEN_3 = mux(eq(UInt<2>("h2"), _potentialReg_T_1), io_synapse_2, _GEN_2) @[neuron.scala 25:55 neuron.scala 25:55]
    node _GEN_4 = mux(eq(UInt<2>("h3"), _potentialReg_T_1), io_synapse_3, _GEN_3) @[neuron.scala 25:55 neuron.scala 25:55]
    node _GEN_5 = mux(eq(UInt<3>("h4"), _potentialReg_T_1), io_synapse_4, _GEN_4) @[neuron.scala 25:55 neuron.scala 25:55]
    node _io_synapse_potentialReg_T_1 = _GEN_5 @[neuron.scala 25:55]
    node _potentialReg_T_2 = mul(io_spikeInput, _io_synapse_potentialReg_T_1) @[neuron.scala 25:55]
    node _potentialReg_T_3 = add(_potentialReg_T, _potentialReg_T_2) @[neuron.scala 25:39]
    node _potentialReg_T_4 = tail(_potentialReg_T_3, 1) @[neuron.scala 25:39]
    node _potentialReg_T_5 = mul(io_neuronOutput, vth) @[neuron.scala 25:91]
    node _potentialReg_T_6 = sub(_potentialReg_T_4, _potentialReg_T_5) @[neuron.scala 25:74]
    node _potentialReg_T_7 = tail(_potentialReg_T_6, 1) @[neuron.scala 25:74]
    node _count_T = add(count, UInt<1>("h1")) @[neuron.scala 26:18]
    node _count_T_1 = tail(_count_T, 1) @[neuron.scala 26:18]
    io_neuronOutput <= _GEN_0
    potentialReg <= mux(reset, UInt<8>("h0"), bits(_potentialReg_T_7, 7, 0)) @[neuron.scala 13:29 neuron.scala 13:29 neuron.scala 25:16]
    vth <= mux(reset, UInt<8>("ha"), vth) @[neuron.scala 14:20 neuron.scala 14:20 neuron.scala 14:20]
    beta <= mux(reset, UInt<8>("h9"), beta) @[neuron.scala 15:21 neuron.scala 15:21 neuron.scala 15:21]
    count <= mux(reset, UInt<8>("h0"), _count_T_1) @[neuron.scala 16:22 neuron.scala 16:22 neuron.scala 26:9]

  module inputlayer :
    input clock : Clock
    input reset : UInt<1>
    input io_in_0 : UInt<1>
    input io_in_1 : UInt<1>
    input io_in_2 : UInt<1>
    input io_in_3 : UInt<1>
    input io_in_4 : UInt<1>
    input io_in2_0 : UInt<8>
    input io_in2_1 : UInt<8>
    input io_in2_2 : UInt<8>
    input io_in2_3 : UInt<8>
    input io_in2_4 : UInt<8>
    input io_in2_5 : UInt<8>
    input io_in2_6 : UInt<8>
    input io_in2_7 : UInt<8>
    input io_in2_8 : UInt<8>
    input io_in2_9 : UInt<8>
    output io_out : UInt<1>

    inst n1 of LIFNeuron @[inputlayer.scala 13:20]
    inst n2 of LIFNeuron @[inputlayer.scala 14:20]
    inst n3 of LIFNeuron @[inputlayer.scala 15:20]
    inst n4 of LIFNeuron @[inputlayer.scala 16:20]
    inst n5 of LIFNeuron @[inputlayer.scala 17:20]
    inst n6 of LIFNeuron_5 @[inputlayer.scala 18:20]
    io_out <= n6.io_neuronOutput @[inputlayer.scala 34:12]
    n1.clock <= clock
    n1.reset <= reset
    n1.io_spikeInput <= io_in_0 @[inputlayer.scala 19:22]
    n1.io_synapse_0 <= io_in2_0 @[inputlayer.scala 24:22]
    n2.clock <= clock
    n2.reset <= reset
    n2.io_spikeInput <= io_in_1 @[inputlayer.scala 20:22]
    n2.io_synapse_0 <= io_in2_1 @[inputlayer.scala 25:22]
    n3.clock <= clock
    n3.reset <= reset
    n3.io_spikeInput <= io_in_2 @[inputlayer.scala 21:22]
    n3.io_synapse_0 <= io_in2_2 @[inputlayer.scala 26:21]
    n4.clock <= clock
    n4.reset <= reset
    n4.io_spikeInput <= io_in_3 @[inputlayer.scala 22:22]
    n4.io_synapse_0 <= io_in2_3 @[inputlayer.scala 27:22]
    n5.clock <= clock
    n5.reset <= reset
    n5.io_spikeInput <= io_in_4 @[inputlayer.scala 23:22]
    n5.io_synapse_0 <= io_in2_4 @[inputlayer.scala 28:23]
    n6.clock <= clock
    n6.reset <= reset
    n6.io_spikeInput <= n5.io_neuronOutput @[inputlayer.scala 44:22]
    n6.io_synapse_0 <= io_in2_5 @[inputlayer.scala 29:22]
    n6.io_synapse_1 <= io_in2_6 @[inputlayer.scala 30:23]
    n6.io_synapse_2 <= io_in2_7 @[inputlayer.scala 31:21]
    n6.io_synapse_3 <= io_in2_8 @[inputlayer.scala 32:22]
    n6.io_synapse_4 <= io_in2_9 @[inputlayer.scala 33:22]
