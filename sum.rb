
def sum(num) #guess I could take a 
  return nil if num < 1
  accum = 0

  (1..num).each {|num| accum += (block_given? ? yield(num) : num) }
  accum
end
