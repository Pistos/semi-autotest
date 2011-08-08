require_relative 'spec_helper'
require 'thing'

describe 'The thing under test' do
  before :each do
    SemiAutoTest.repeat_from_here
  end

  it 'should sum integers' do
    Thing.sum( 1, 1 ).should == 2
  end
end
