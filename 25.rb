#!/usr/bin/env ruby
require 'time_this'
cur, last = 1,1

term = 2
while(cur.to_s.length < 1000)
  cur, last = (cur+last), cur #need faster algorithm.
  term += 1
end


puts term