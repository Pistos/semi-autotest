require_relative 'spec_helper'
require_relative '../lib/thing.rb'

describe 'The thing under test' do
  before :each do
    loop do
      $stdout.print "semi> "
      input = $stdin.gets
      if input
        command = input.strip
      end

      case command
      when nil, 'q', 'quit'
        break
      when ""
        # Run test(s) once.
        pid = fork
        if pid
          Process.wait pid
        else
          break
        end
      else
        puts "Unknown command: #{command.inspect}"
      end
    end
  end

  it 'should sum integers' do
    Thing.sum( 1, 1 ).should == 2
  end
end
