#!/usr/bin/env ruby
require 'time_this'

triangle = []
IO.foreach('triangle.txt') do |line|
  triangle << (line.split(/\s+/).collect {|each| each.to_i})
end


#try just easiest, largest path


def look_ahead(i,j,triangle,number)
  return [nil,nil] if triangle[i].nil? || triangle[i][j].nil? #break if this doesnt exist...
  return [triangle[i][j],j] if number == 1 #return this if we've reached 0 lookahead (also, this location)
  left, new_j_l  = look_ahead(i+1,j,triangle,number-1)
  right, new_j_r = look_ahead(i+1,j+1,triangle,number-1)
  if left.nil? || right > left
    return triangle[i][j], j if(right.nil?)
    [right+triangle[i][j], new_j_r]
  else
    [left+triangle[i][j], new_j_l]
  end
end

accum = 0
row = 0


# puts look_ahead(0,0,triangle,3).inspect

look_ahead = 25
(0...triangle.length).step(look_ahead) do |index|
  add_me_l, row_l = look_ahead(index,row,triangle,look_ahead) if triangle[index][row]
  add_me_r, row_r = look_ahead(index,row+1,triangle,look_ahead) if triangle[index][row+1]
  if add_me_r.nil? || add_me_l.to_i > add_me_r #r is nil or smaller...
    add_me, row = add_me_l, row_l
  else
    add_me, row = add_me_r, row_r
  end
  accum += add_me
end

puts accum

# puts look_ahead(0,0,triangle,triangle.length+2)