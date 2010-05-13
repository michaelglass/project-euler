#!/usr/bin/env ruby
require 'time_this'
require 'choose'

accum = 0
100.factorial.to_s.split(//).each{|digit| accum += digit.to_i}

puts accum