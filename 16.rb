#!/usr/bin/env ruby
require 'time_this'

accum = 0
(2**1000).to_s.split(//).each {|digit| accum += digit.to_i}
puts accum