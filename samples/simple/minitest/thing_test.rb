require 'minitest/autorun'
require 'thing'
require 'rubygems'
require 'semi-autotest'

class TestThing < MiniTest::Unit::TestCase
  def test_sum
    SemiAutoTest.repeat_from_here
    assert_equal 2, Thing.sum( 1, 1 )
  end
end
