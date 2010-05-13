#!/usr/bin/env ruby
require 'time_this'
# a^2 + b^2 = c^2, a<b<c
# exists 1 a+b+c= 1000
# thus:
# 1000 = a + b + sqrt(a*a+b*b)

#...brute forceish
(0..998).each do |a|
  ((a+1)..999).each do |b|
    break if a+b+b == 1000
    c = (a**2 + b**2)**(0.5)
    if (a + b + c) == 1000.0
      puts "#{a.to_i},#{b},#{c}"
      # puts a*b*c 
      exit
    end
  end
end