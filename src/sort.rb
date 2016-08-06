#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

module Sort
	#insertionsort
	def self.insertion!(list)
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

	#selectionsort
	def self.selection!(list)
		len = list.length-1
		
		for i in 0..len-1
			minimum = i	
			for j in i+1..len
				if list[minimum] > list[j] then minimum = j end
			end			

			if minimum != i then list[i], list[minimum] = list[minimum], list[i] end 
		end
	end
end
