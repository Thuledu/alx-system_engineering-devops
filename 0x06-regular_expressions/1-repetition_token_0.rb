#!/usr/bin/env ruby
# Create a regular expression
regex = /School/

# Accept the argument from the command line
argument = ARGV[0]

# Pass the argument to the regular expression matching method
match_result = argument.match(regex)

# Output the result
puts match_result
