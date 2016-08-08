#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

module QuickSort
	# private method
	# return partition part of the list
	def partition(list, b, e)
		pivot = list[e]
		index = b

		(b..e-1).each do |i|
			if pivot >= list[i]
				list[index], list[i] = list[i], list[index]
				index+=1
			end
		end
		list[e], list[index] = list[index], pivot
		index 
	end
	private :partition

	# private method
	# encapsulation quick! and quick
	def helper(list, b, e)
		if b < e
			half = partition(list, b, e)
			helper(list, b, half-1)
			helper(list, half+1, e)
		end
	end
	private :helper

	# DIRECT access the list
	# return void
	def quick!(list)
		helper(list, 0, list.length-1)
	end

	# A COPY
	# return a copy of the sorted
	def quick(list)
		copy = []
		(list).each do |v|
			copy << v
		end
		quick!(copy)
		copy
	end
end