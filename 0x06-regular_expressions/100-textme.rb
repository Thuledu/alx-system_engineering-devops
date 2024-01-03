#!/usr/bin/env ruby
# Read the log file and process each line
File.open('log_file.txt', 'r') do |file|
  file.each_line do |line|
    if line.include?("Receive SMS") || line.include?("Sent SMS")
      sender_match = line.match(/\[from:(.+?)\]/)
      receiver_match = line.match(/\[to:(.+?)\]/)
      flags_match = line.match(/\[flags:(.+?)\]/)

      sender = sender_match ? sender_match[1] : "Unknown"
      receiver = receiver_match ? receiver_match[1] : "Unknown"
      flags = flags_match ? flags_match[1] : "Unknown"

      puts "#{sender.tr('[]', '')},#{receiver.tr('[]', '')},#{flags}"
    end
  end
end
