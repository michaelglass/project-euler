#!/usr/bin/env ruby
up_to = -1
up_to = ARGV[0].to_i if(ARGV.size == 1)

up_to = 100 if up_to <= 0

def sum_of_squares(num)
  return nil if num < 1
  accum = 0
  (1..num).each do |unit|
    accum += unit**2
  end
  accum
end

def sum(num)
  return nil if num < 1
  accum = 0
  (1..num).each do |unit|
    accum += unit
  end
  accum
end

def square_of_sum(num)
  sum(num)**2
end

puts ( square_of_sum(up_to) - sum_of_squares(up_to) )