module NN
  # A single node in a network
  # Is responsible for reading
  # inputs and outputting the result
  class Node
    attr_accessor :inputs
    attr_reader :layer

    # @param layer [NetworkLayer] Used to get the bias
    # @param inputs [[Input]] Inputs for this node
    def initialize(layer, inputs = [])
      @layer = layer
      @inputs = inputs
    end

    # Outputs the calculated value
    # given the Node's inputs
    # 
    # @return [Input]
    def output
      outputs = []
      sum = @inputs.inject(0.0) do |sum, input|
        sum + (input.value * input.weight)
      end
      # TODO this should be defined by the user
      Input.new(Utils.perceptron(sum + @layer.bias), -2)
    end
  end
end