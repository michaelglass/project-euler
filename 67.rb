#!/usr/bin/env ruby
require 'time_this'

triangle = []
IO.foreach('triangle.txt') do |line|
  triangle << (line.split(/\s+/).collect {|each| each.to_i})
end


#try just easiest, largest path

def look_ahead(i,j,triangle,number)
  return 0 unless triangle[i] && triangle[i][j]
  return triangle[i][j] if number == 0
  left = right = triangle[i][j]
  left += look_ahead(i+1,j,triangle,number-1)
  right += look_ahead(i+1,j+1,triangle,number-1)
  if left > right
    left
  else
    right
  end
end

accum = 0


look_ahead = 20
(0...(triangle.length)).step(look_ahead) do |row_ind|
  accum+= look_ahead(row_ind+1,col,triangle,look_ahead)
end

puts accum

# puts look_ahead(0,0,triangle,triangle.length+2)