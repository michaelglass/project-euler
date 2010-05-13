#!/usr/bin/env ruby
require 'time_this'

up_to = -1
up_to = ARGV[0].to_i if(ARGV.size == 1)

up_to = 1000 if up_to <= 0
up_to -= 1
accum = 0

#3s..
(3..up_to).step(3) do |multiple_of_3|
  accum += multiple_of_3
end

(5..up_to).step(5) do |multiple_of_5|
  accum += multiple_of_5# if multiple_of_5 % 3 != 0
end

(15..up_to).step(15) do |multiple_of_15|
  accum -= multiple_of_15
end

puts accum