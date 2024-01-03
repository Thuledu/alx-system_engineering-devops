#!/usr/bin/env ruby
# Sample input data representing text messages transactions
input_data = [
  "From: +1234567890 To: +9876543210 Sent: HELLO",
  "From: Alice To: Bob Sent: LOL",
  "From: +447123456789 To: +447987654321 Sent: INFO"
]

# Process the input data and output the required information
input_data.each do |transaction|
  sender = transaction[/From: (\S+)/, 1]
  receiver = transaction[/To: (\S+)/, 1]
  flags = transaction.scan(/Sent: (\S+)/).join(',')

  puts "#{sender},#{receiver},#{flags}"
end
