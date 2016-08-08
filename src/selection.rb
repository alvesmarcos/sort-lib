#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

module SelectionSort
	# A COPY
	# return a copy of the sorted
	def selection(list)
		copy = []

		(list).each do |v|
			copy << v
		end
		insertion!(copy)
		copy
	end

	# DIRECT access the list
	# return void
	def selection!(list)
		len = list.length-1
		
		for i in 0..len-1
			minimum = i	
			for j in i+1..len
				minimum = j if list[minimum] > list[j]
			end			

			list[i], list[minimum] = list[minimum], list[i] if minimum != i
		end
	end
end