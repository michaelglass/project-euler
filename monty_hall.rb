#!/usr/bin/env ruby
num_trials = 0
without_switch = 0
with_switch = 0
times_switch = 0
while(true) do
  num_trials+=1
  prizes = [:goat, :goat, :ferrari].shuffle
  puts 'choose a door (1-3)'
  picked = gets.strip.to_i-1
  puts 'switch? y/n'
  switch = gets.strip == 'y'
  times_switch += 1 if switch
  if prizes[picked] == :ferrari && !switch
    without_switch += 1
    puts "ferrari!"
  elsif prizes[picked] != :ferrari && switch
    with_switch += 1
    puts "ferrari!"
  else
    puts "goat!"
  end
  
  # without_switch += 1 if prizes[picked] == :ferrari
  # with_switch += 1 if prizes[picked] == :goat
  switch_percentage = 0 unless times_switch == 0
  puts "trial #{num_trials}: success with switch: #{with_switch}(#{(with_switch.to_f*100/(times_switch)).to_i}%); without: #{without_switch}(#{(without_switch.to_f*100/(num_trials-times_switch)).to_i}%)"
end
