#!/usr/bin/env ruby
require 'time_this'
require 'prime'


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

def factors_from_prime_factors(factor_arr) #can i do this faster??  MATH!
  factor_arr = factor_arr.dup
  factors = [] #1 is considered a factor...
  prime_factors = factor_arr.length
  factor_arr = factor_arr.dup
  
  factor_arr.each_with_index do |factor, index|
    factor1, pow1 = factor
    (1..pow1).each do |power1|
      factors << factor1**power1
      ((index+1)...factor_arr.length).each do |ind|
        factor2, pow2 = factor_arr[ind]
        (1..pow2).each do |power2|
          factors << factor1**power1 * factor2**power2
        end
      end
    end
  end
  factors.sort
end

def factors(num)
  factor_arr = Prime.prime_division num
  factors_from_prime_factors(factor_arr)
end

# num_divisors = -1
# while num_divisors < 500
#   # exit if(Time.now - START_TIME > 60)
#   (rand*1000).to_i.times {TriangleGen.next}
#   num_factors = factors(TriangleGen.next).length
#   if num_factors > num_divisors
#     num_divisors = num_factors 
#     puts "#{TriangleGen.current}th (#{TriangleGen.sum}) => #{num_factors}"
#   end
# end
