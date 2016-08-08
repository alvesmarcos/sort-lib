#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

require "./sort"

numbers = Array.new(10) { rand(1..1000) } 

Sort.insertion!(numbers)
#Sort.heap!(numbers)
#Sort.merge!(numbers)
#Sort.selection!(numbers)
#Sort.quick!(numbers)

puts numbers