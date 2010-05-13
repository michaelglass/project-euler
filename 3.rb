#!/usr/bin/env ruby
require 'time_this'

require 'prime'
up_to = (ARGV[0] || 600851475143).to_i
# 
# #find smallest/largest range...
# 
#   def factor(num)
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


puts Prime.prime_division(up_to).last.first