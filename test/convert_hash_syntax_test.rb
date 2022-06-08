require 'minitest/autorun'
require_relative '../lib/convert_hash_syntax'

class ConvertLengthTest < Minitest::Test
  def test_convert_hash_syntax
    old = <<~TEXT
      {
        :name => 'Alice',
        :age=>20,
        :gender  =>  :female
      }
    TEXT
    expected = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
    assert_equal expected, convert_hash_syntax(old)
  end
end
