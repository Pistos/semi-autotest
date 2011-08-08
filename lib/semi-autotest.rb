require 'pp'
require 'readline'

module SemiAutoTest
  def self.files_reloadable
    @files_reloadable ||= Array.new
  end

  def self.reload_changed_files
    files_reloadable.each do |f|
      begin
        load f
      rescue Exception => e
        $stderr.puts e.inspect
      end
    end
  end

  def self.repeat_from_here
    while input = Readline.readline( 'semi> ', true )
      break  if input.nil?
      command = input.strip

      case command
      when /^q/i
        break
      when /^l/i
        pp files_reloadable
      when /^w(?:\S*) +(\S+)/i
        files_reloadable << $1
      when /^u(?:\S*) +(\S+)/i
        files_reloadable.delete $1
      when ""
        reload_changed_files

        # Run test(s) once.
        pid = fork
        if pid
          Process.wait pid
        else
          break
        end
      else
        puts "Unknown or ill-formatted command: #{command.inspect}"
      end
    end
  end
end
