require_relative 'spec_helper'
require 'thing'

describe 'The thing under test' do
  it 'should sum integers' do
    SemiAutoTest.repeat_from_here
    Thing.sum( 1, 1 ).should == 2
  end
end
