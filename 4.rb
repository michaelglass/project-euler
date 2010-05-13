#!/usr/bin/env ruby

require 'time_this'
require 'palindrome'

#brute force...
largest = -1
min = 100
max = 999
(0..(max-min)).each do |first|
  first = max-first #effectively makes the range 999..100
  (0..(first-min)).each do |second|
    second = first - second #effectively makes the range first..100
    product = first * second
    if palindrome?(product) && product > largest
      largest = product
    end
  end
end

puts largest

# palindromes = []
# max = (ARGV[0] || 999).to_i #3 digit number...
# min = 100 #3 digit number...
# up_to = max.even? ? max : max - 1
# 
# (0..(max*2)).each do |sum|
#   #this code makes the products traverse the set in this fashion:
#   # 998 * 998
#   # 997 * 
#   #
#   #
#   sum_delta = 0
# 
#   sum = (max*2) - sum
#   
#   # print '.' if sum % 500 == 0
#   while( (sum/2+sum_delta) < up_to ) 
#     first = sum/2 + sum_delta
#     second = sum/2- sum_delta
#     puts "#{first},#{second}"
#     if(sum %2 != 0)
#       first += 1
#     end
#     product = first * second
#     sum_delta += 1
#     palindromes << product if palindrome? product
#   end
#   
#   exit if sum == 999*2 - 5
# end
# 
# puts "\n",palindromes.max,palindromes.last
