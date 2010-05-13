#!/usr/bin/env ruby
require 'time_this'

def make_word(num)
  units = ['zero','one','two','three','four','five','six','seven','eight','nine']
  decas = ['','ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
  specials = {10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
              17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}
  
  num = num.to_s.split(//)
  ones = num.pop.to_i
  tens = num.pop.to_i
  hundreds = num.pop.to_i
  thousands = num.pop.to_i
  
  words = []
  words << "one"<<"thousand" if(thousands && thousands >= 1)
  if(hundreds && hundreds > 0)
    words << units[hundreds] << "hundred"
    words << 'and' if(tens != 0 || ones != 0)
  end

  if tens && tens > 0
    if tens == 1
      words << specials[((tens*10) + ones)]
    else
      words << decas[tens]
    end
  end
  if ones && ones > 0
    words << units[ones] unless tens && tens == 1
  end
  words.join(' ')
end
count = 0
(1..1000).each do |num|
  word = make_word(num)
  count_word = word.gsub /\s+/, ''
  puts "#{num} => #{word} (#{count_word})"
  count += count_word.length
end
puts count