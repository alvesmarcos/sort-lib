#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

require '../src/sort.rb' #TODO

numbers = Array.new(200) { rand(1..999) } 
Sort.heap!(numbers)
puts Sort.sorted?(numbers)

max = gets.to_i
arr = Array.new(max)

puts "Input"
for i in 0..max-1
	arr[i] = gets.to_i
end

Sort.heap!(arr)

puts "Output"
arr.each do |v|
	puts v
end