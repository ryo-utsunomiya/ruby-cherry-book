require 'minitest/autorun'
require_relative '../lib/rgb'

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#090909', to_hex(9, 9, 9)
    assert_equal '#0a0a0a', to_hex(10, 10, 10)
    assert_equal '#090a64', to_hex(9, 10, 100)
    assert_equal '#ffffff', to_hex(255, 255, 255)
  end

  def test_to_ints
    assert_equal [0, 0, 0], to_ints('#000000')
    assert_equal [9, 9, 9], to_ints('#090909')
    assert_equal [10, 10, 10], to_ints('#0a0a0a')
    assert_equal [9, 10, 100], to_ints('#090a64')
    assert_equal [255, 255, 255], to_ints('#ffffff')
  end
end
