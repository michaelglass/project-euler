start = Time.now
cur, last = 1,1

term = 2

while(cur.to_s.length < 10)
  cur, last = cur+last, last #need faster algorithm.
  term += 1
end

puts term
puts Time.now - start