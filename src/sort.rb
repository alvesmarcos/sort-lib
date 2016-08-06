#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

module Sort
	#selectionsort
	def Sort.selection!(list)
		len = list.length-1
		for i in 0..len-1
			minimum = i
			for j in i+1..len
				if list[minimum] > list[j] then minimum = j end
			end			
			if minimum!=i then list[i], list[minimum] = list[minimum], list[i] end 
		end
	end
end
