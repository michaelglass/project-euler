#!/usr/bin/env ruby
require 'time_this'

up_to = (ARGV[0] || 4000000).to_i

current = 2
last = 0

accum = 0

#brute force ...
# while(current <= up_to)
#   accum += current if (current & 1) == 0
#   tmp = current + last
#   last = current
#   current = tmp
# end

#faster... can still do better but not worrying..
#sequence of evens looks like this
# (0) <-- 
# 2
# 8
# 34
# pattern is F(n) = 4*F(n-1) + F(n-2)
while(current <= up_to)
  accum += current
  tmp = current * 4 + last
  last = current
  current = tmp
end


puts accum

