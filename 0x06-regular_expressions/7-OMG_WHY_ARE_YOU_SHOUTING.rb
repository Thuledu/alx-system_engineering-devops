#!/usr/bin/env ruby
# Accept the argument from the command line
argument = ARGV[0]

# Regular expression to match only capital letters
regex = /[A-Z]+/

# Find all matches of the regular expression in the argument
matches = argument.scan(regex)

# Join the matches to form the resulting string
result = matches.join('')

# Output the result
puts result
