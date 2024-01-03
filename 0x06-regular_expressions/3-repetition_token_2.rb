#!/usr/bin/env ruby
# Accept the argument from the command line
argument = ARGV[0]

# Regular expression to match the word "School"
regex = /School/

# Check if the argument matches the regular expression and output the result
puts argument.match?(regex) ? argument : ""
