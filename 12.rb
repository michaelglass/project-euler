#!/usr/bin/env ruby
require 'time_this'
require 'prime'
require 'set'

class TriangleGen
  def self.next
    @@current ||= 0
    @@sum ||= 0
    @@current += 1
    @@sum += @@current
    @@sum
  end
  
  def self.current
    @@current
  end

  def self.sum
    @@sum
  end
end

def num_divisors(num)
  divisors = 1
  Prime.prime_division(num).each do |num, pow|
    divisors *= pow+1
  end
  divisors
end


while((divisors = num_divisors(TriangleGen.next)) < 500)
end

puts [divisors, TriangleGen.current, TriangleGen.sum].inspect


