#!/usr/bin/env ruby
require 'time_this'
require 'prime'


gen = Prime::EratosthenesGenerator.new #cheating...

10000.times {gen.next}
puts gen.next
  
# $primes = [2,3]
# find_primes = 10001
# 
# def prime?(test)
#   $primes.each {|p| return false if test % p == 0}
#   $primes << test
#   puts "found #{test} (#{$primes.length})" if $primes.length % 1000 == 0
#   true
# end
# 
# test_prime = $primes.last + 2
# while($primes.length < find_primes)
#   test_prime += 2
#   prime?(test_prime)
# end
# 
# puts $primes.last