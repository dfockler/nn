require 'nn'
require 'pp'

# Run this example using `ruby -Ilib examples/single_bit_adder.rb` from the root directory

Struct.new("Input", :value, :weight)

# Our two input bits
input1 = Struct::Input.new(1, -2)
input2 = Struct::Input.new(1, -2)

layer = NN::NetworkLayer.new(3)

# These all represent NAND gates
a = NN::Node.new(layer, [input1, input2])
b = NN::Node.new(layer, [input1, a.output])
c = NN::Node.new(layer, [input2, a.output])
d = NN::Node.new(layer, [a.output, a.output])
e = NN::Node.new(layer, [b.output, c.output])
puts "Sum is #{e.output.value}, Carry is #{d.output.value}"
