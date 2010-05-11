def palindrome?(str)
  str = str.to_s unless(str.is_a? String)
  half = str.length/2
  prefix = str[0...half]
  suffix = str[(-half)...str.length]
  prefix == suffix.reverse
end

start = Time.now

palindromes = []
max = 999
(0..(max*2)).each do |sum|
  sum_delta = 0
  sum = (max*2) - sum
  puts sum if sum % 1000 == 0
  while( (sum/2+sum_delta) < (max/2)*2 )
    first = sum/2 + sum_delta
    second = sum/2- sum_delta
    if(sum %2 != 0)
      first += 1
    end
    product = first * second
    sum_delta += 1
    palindromes << product if palindrome? product
  end
end
  
puts palindromes.max

puts Time.now-start