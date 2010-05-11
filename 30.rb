$sums_of_digits = [0, 1, 2**5, 3**5, 4**5, 5**5, 6**5, 7**5, 8**5, 9**5]
def sum_of_fifth_powers(num)
  sum = 0
  num.to_s.split(//).each do |digit|
    sum += $sums_of_digits[digit.to_i]
  end
  sum
end


sum = 0
start = Time.now
(10..200000).each do |num|
  sum += num if num == sum_of_fifth_powers(num)
end

puts sum
puts Time.now - start