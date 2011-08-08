module SemiAutoTest
  def self.repeat_from_here
    loop do
      $stdout.print "semi> "
      input = $stdin.gets
      if input
        command = input.strip
      end

      case command
      when nil, /^q/i
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
end
