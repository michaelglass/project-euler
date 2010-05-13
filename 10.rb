#!/usr/bin/env ruby
require 'time_this'
require 'prime'

accum = 0
Prime.each(2_000_000) {|p| accum += p}
puts accum
