#!/usr/bin/env ruby
# Read the log file and process each line
File.open('log_file.txt', 'r') do |file|
  file.each_line do |line|
    if line.include?("Receive SMS") || line.include?("Sent SMS")
      sender = line[/from:(\S+)/, 1]
      receiver = line[/to:(\S+)/, 1]
      flags = line[/flags:([\d:-]+)/, 1]

      puts "#{sender},#{receiver},#{flags}"
    end
  end
end
