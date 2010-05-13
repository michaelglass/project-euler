#!/usr/bin/env ruby
require 'time_this'

def sum(num) #guess I could take a 
  return nil if num < 1
  accum = 0

  (1..num).each {|num| accum += (block_given? ? yield(num) : num) }
  accum
end

def sum_of_squares(num)
  sum(num) {|num| num**2 }
end


def square_of_sum(num)
  sum(num) ** 2
end

up_to = (ARGV[0] || 100).to_i

puts square_of_sum(up_to) - sum_of_squares(up_to)