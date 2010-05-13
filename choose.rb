#!/usr/bin/env ruby

class Integer
  def factorial(starting_with = 1)
    accum = 1
    ((starting_with)..self).each {|num| accum *= num}
    accum
  end
  
  def permutations(permutation_size)
    factorial( self-permutation_size + 1)
  end
  
  
  def choose(combinations_size)
    permutations(combinations_size)/combinations_size.factorial
  end
end
