#!/usr/bin/env ruby
require 'time_this'

triangle=[[75],
[95,64],
[17,47,82],
[18,35,87,10],
[20,4,82,47,65],
[19,1,23,75,3,34],
[88,2,77,73,7,63,67],
[99,65,4,28,6,16,70,92],
[41,41,26,56,83,40,80,70,33],
[41,48,72,33,47,32,37,16,94,29],
[53,71,44,65,25,43,91,52,97,51,14],
[70,11,33,28,77,73,17,78,39,68,17,57],
[91,71,52,38,17,14,91,43,58,50,27,29,48],
[63,66,4,68,89,53,67,30,73,16,69,87,40,31],
[04,62,98,27,23,9,70,98,73,93,38,53,60,4,23]]

#try just easiest, largest path

decisions = [triangle.length, -1]

(1...triangle.length).each do |index| #lookbehind once...
  index = triangle.length - index
  row = triangle[index]
  previous_row = triangle[index-1]
  
end
# def look_ahead(i,j,triangle,number)
#   return [nil,nil] if triangle[i].nil? || triangle[i][j].nil? #break if this doesnt exist...
#   return [triangle[i][j],j] if number == 1 #return this if we've reached 0 lookahead (also, this location)
#   left, new_j_l  = look_ahead(i+1,j,triangle,number-1)
#   right, new_j_r = look_ahead(i+1,j+1,triangle,number-1)
#   if left.nil? || right > left
#     return triangle[i][j], j if(right.nil?)
#     [right+triangle[i][j], new_j_r]
#   else
#     [left+triangle[i][j], new_j_l]
#   end
# end
# 
# accum = 0
# row = 0
# 
# 
# # puts look_ahead(0,0,triangle,3).inspect
# 
# look_ahead = 3
# (0...triangle.length).step(look_ahead) do |index|
#   add_me_l, row_l = look_ahead(index,row,triangle,look_ahead) if triangle[index][row]
#   add_me_r, row_r = look_ahead(index,row+1,triangle,look_ahead) if triangle[index][row+1]
#   if add_me_r.nil? || add_me_l.to_i > add_me_r #r is nil or smaller...
#     add_me, row = add_me_l, row_l
#   else
#     add_me, row = add_me_r, row_r
#   end
#   accum += add_me
# end
# 
# puts accum