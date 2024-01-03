#!/usr/bin/env ruby
# Accept the argument from the command line
argument = ARGV[0]

# Regular expression to match a 10-digit phone number
regex = /^\d{10}$/

# Check if the argument matches the regular expression and output the result
puts argument.match?(regex) ? argument : ""
