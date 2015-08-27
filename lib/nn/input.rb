module NN
  class Input
    attr_accessor :value, :weight

    def initialize(value, weight)
      @value = value
      @weight = weight
    end

    def to_s
      @value
    end
  end
end