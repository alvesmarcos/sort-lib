#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

module InsertionSort
	# A COPY
	# return a copy of the sorted
	def insertion(list)
		copy = []

		(list).each do |v|
			copy << v
		end
		insertion!(copy)
		copy
	end

	# DIRECT access the list
	# return void
	def insertion!(list)
		len = list.length-1
			
		for i in 0..len-1
			if list[i] > list[i+1]		
				index = i-1
				list[i+1], list[i] = list[i], list[i+1] 

				while index >= 0 and list[index] > list[index+1]
					list[index+1], list[index] = list[index], list[index+1]					
					index-=1							
				end
			end
		end
	end
end