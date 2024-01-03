#!/usr/bin/env ruby
# Accept the argument from the command line
argument = ARGV[0]

# Create a regular expression to match the word "School"
regex = /School/

# Check if the argument matches the regular expression
if argument.match?(regex)
  puts argument
else
  puts ""
end
