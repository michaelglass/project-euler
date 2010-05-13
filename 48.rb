#!/usr/bin/env ruby
require 'time_this'
require 'sum'
#try brute...

val = (sum(1000) {|val| val**val})

val = val.to_s

puts val[-11..val.length]
puts val[-11..val.length].length
