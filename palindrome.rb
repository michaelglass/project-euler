#!/usr/bin/env ruby

def palindrome?(str)
  str = str.to_s
  
  return true if str.length == 1
  
  half = str.length/2
  prefix = str[0...half]
  suffix = str[(-half)...str.length]
  # puts prefix, suffix
  prefix == suffix.reverse
end

# unless ARGV.empty?
#   puts palindrome?(ARGV[0]) ? 'true' : 'false'
# end