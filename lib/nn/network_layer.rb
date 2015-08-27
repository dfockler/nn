module NN
  # Represents a layer in a Neural Network
  class NetworkLayer
    attr_accessor :bias

    def initialize(bias)
      @bias = bias
    end
  end
end