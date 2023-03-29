#!/usr/bin/env ruby

puts "How tall would you like your pyramid to stand?"
rows = gets.chomp.to_i

for x in 0..rows
  (rows - x).times { print " " }
  x.times { print "* " }
  puts
end