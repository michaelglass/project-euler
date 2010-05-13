#!/usr/bin/env ruby
#find smallest/largest range...
require 'time_this'

require 'prime'

#find minimum necessary factors of each from 1 to 20...
needed = {} 
(1..20).each do |num| 
  Prime.prime_division(num).each do |factor, power|
    needed[factor] ||= power
    needed[factor] = power if needed[factor] < power
  end
end

accum = 1
needed.each { |factor, power| accum *= factor**power }

puts accum

# def factor(num)
#   return false if(num < 4)
#   return 2 if num & 1 == 0
#   
#   (3..(num/2)).step(2) do |test|
#     return test if num % test == 0
#   end
#   false
# end
# 
# def factor_all(num)
#   factors = []
# 
#   factor = -1
#   while(factor = factor(num))
#     factors << factor
#     num /= factor
#   end
#   
#   factors << num
#   factors
# end  
# 
# 
# nums_needed_total = {}
# to_factor = 1
# (1..20).each do |num|
#   factors = factor_all(num)
#   nums_needed = {}
#   factors.each do |num|
#     nums_needed[num] ||= 0
#     nums_needed[num] += 1
#   end
#   nums_needed.each do |k,v|
#     nums_needed_total[k] ||= v
#     nums_needed_total[k] = v if nums_needed_total[k] < v 
#   end
# end
# 
# product = 1
# nums_needed_total.each do |k,v|
#   product *= k**v
# end
# 
# puts product