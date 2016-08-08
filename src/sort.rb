#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

# MODULE SORT

module Sort
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

	def self.fuse(left, right)
		union = []
		
		until left.empty? || right.empty?
			if left.first > right.first
				union << right.shift
			else
				union << left.shift
			end
		end
		union.concat(left).concat(right)
	end
	
	def self.merge(list) 
		return list if list.length <= 1

		len = list.length/2
		left = list.slice(0, len)
		right = list.slice(len, list.length)

		fuse(merge(left), merge(right))
	end
	
	def self.merge!(list)
		copy = []
		copy << merge(list)
		list.clear
		(copy).each do |v|
			list << v
		end
	end

	def self.selection!(list)
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
