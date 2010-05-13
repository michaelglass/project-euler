#!/usr/bin/env ruby
require 'time_this'

up_to = (ARGV[0] || 1000).to_i

puts "getting sum of multiples of 3s and 5s up to #{up_to}..."
accum = 0

#sum of 3s
(3..up_to).step(3) do |multiple_of_3|
  accum += multiple_of_3
end
#sum of 5s
(5..up_to).step(5) do |multiple_of_5|
  accum += multiple_of_5# if multiple_of_5 % 3 != 0 <-- another option, below is faster
end

#minus shared multiple...
(15..up_to).step(15) do |multiple_of_15|
  accum -= multiple_of_15
end

puts accum