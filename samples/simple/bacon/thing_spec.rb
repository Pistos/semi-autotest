require 'rubygems'
require 'bacon'
require 'semi-autotest'
require 'thing'

describe 'the thing' do
  it 'should sum integers' do
    SemiAutoTest.repeat_from_here
    Thing.sum( 1, 1 ).should.equal 2
  end
end
