#!/usr/bin/env ruby
up_to = -1
up_to = ARGV[0].to_i if(ARGV.size == 1)

up_to = 4000000 if up_to <= 0

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
while(current <= up_to)
  accum += current
  tmp = current * 4 + last
  last = current
  current = tmp
end


puts accum

