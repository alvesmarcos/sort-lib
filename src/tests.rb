#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

require "./sort"

numbers = Array.new(200) { rand(1..1000) } 

Sort.insertion!(numbers)
#Sort.selection!(numbers)

puts numbers