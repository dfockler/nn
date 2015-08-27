module NN
  module Utils
    ##
    # Performs the sigmoid function
    # @param t [Numeric]
    # @return [Float]
    def self.sigmoid(t)
      1 / (1 + Math.exp(-t))
    end

    def self.sigmoid_prime(t)
      sigmoid(t) * (1 - sigmoid(t))
    end

    def self.perceptron(t)
      t > 0 ? 1 : 0
    end
  end
end