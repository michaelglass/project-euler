#!/usr/bin/env ruby
up_to = -1
up_to = ARGV[0].to_i if(ARGV.size == 1)

up_to = 600851475143 if up_to <= 0

#find smallest/largest range...

def factor(num)
  return false if(num < 4)
  return 2 if num & 1 == 0
  
  (3..(num/2)).step(2) do |test|
    return test if num % test == 0
  end
  false
end

def factor_all(num)
  factors = []

  factor = -1
  while(factor = factor(num))
    factors << factor
    num /= factor
  end
  
  factors << num
  factors
end  

accum = 1
puts (factor_all up_to).last
