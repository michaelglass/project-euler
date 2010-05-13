require 'time_this'
# 1000 = sqrt(c^2 - b^2) + b + c

(0..600).each do |c|
  c = 998-c
  (1..(c-1)).each do |b|
    b = c - b
    break if(b + c + 1 > 1000)
    a = ((c**2 - b**2)**(0.5))
    if (a + b + c) == 1000.0
      puts "#{a},#{b},#{c}"
      puts a*b*c 
      exit
    end
  end
end