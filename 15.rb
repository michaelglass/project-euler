#!/usr/bin/env ruby
require 'time_this'
require 'choose'

def num_choices(i,j, max)
  if i == max || j == max
    1
  else
    num_choices(i+1,j, max) + num_choices(i,j+1, max)
  end
end

# (1..10).each do |num|
#   choose = (num*2).choose num
#   brute = num_choices(0,0,num)
#   
#   if choose != brute
#     puts 'wrong'
#   else
#     puts 'right'
#   end
# end

p 40.choose 20