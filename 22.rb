require 'time_this'
$char_scores = {}
score = 1
('A'..'Z').each do |char|
  $char_scores[char] = score
  score += 1
end

def name_value(name)
  score = 0
  
  chars = name.split //
  chars.each do |char|
    score += $char_scores[char]
  end
  score
end

names = []
scores = {}
lines = 0
IO.foreach('names.txt') do |line|
  line.gsub! /[^A-Z,]/, ""
  names = line.split(',')
end

score = 0
names.sort!
names.each_with_index do |name, index|    
  score += name_value(name) * (index+1)
end
puts score
