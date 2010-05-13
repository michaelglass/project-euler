#!/usr/bin/env ruby
require 'time_this'


def sequence_length(value)
  @steps ||= {1=>1}
  unless @steps[value]
    if value.even?
      @steps[value] = 1 + sequence_length( value / 2 )
    else
      @steps[value] = 1 + sequence_length( value * 3 + 1 )
    end
  end
  
  @steps[value]
end

longest = -1
longest_ind = -1
(1..1_000_000).each do |num|
  var = sequence_length num
  longest, longest_ind = var, num if var > longest
end

puts longest_ind
