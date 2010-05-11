start = Time.now
require 'stringio'
def palindrome?(str)
  str = str.to_s unless(str.is_a? String)
  return true if str.length == 1
  half = str.length/2
  prefix = str[0...half]
  suffix = str[(-half)...str.length]
  prefix == suffix.reverse
end

def binary_palindrome?(num)
  s = ""
  sio = StringIO.new(s)
  sio.printf('%b',num)
  sio.close
  if palindrome? s
    s
  else
    false
  end   
end

def double_palindrome?(num)
  palindrome? num && binary_palindrome?(num)
end


sum = 0
(1...1_000_000).each do |num|
  if palindrome?(num) && (b = binary_palindrome?(num))
    sum += num   
    puts "#{num},#{b}"
  end
end

puts sum

puts Time.now - start