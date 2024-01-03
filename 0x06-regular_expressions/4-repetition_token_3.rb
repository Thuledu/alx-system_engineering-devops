#!/usr/bin/env ruby
# Get the input argument
log_entry = ARGV[0]

# Define the regular expression pattern
regex_pattern = /from:(\S+)\s.*to:(\S+)\s.*flags:([\d:-]+)/

# Match the regular expression pattern with the log entry
matches = log_entry.match(regex_pattern)

# Output the matched groups if there is a match
if matches
  sender = matches[1]
  receiver = matches[2]
  flags = matches[3]
  puts "#{sender},#{receiver},#{flags}"
else
  puts "No match found"
end
