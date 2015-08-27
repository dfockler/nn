require 'minitest/autorun'
require 'nn'

class TestNode < Minitest::Test

  def setup
    layer = NN::NetworkLayer.new(12)
    input = NN::Input.new(1.2, 0)
    @node = NN::Node.new(layer, [input])
  end

  def test_output
    assert_kind_of NN::Input, @node.output
  end

end