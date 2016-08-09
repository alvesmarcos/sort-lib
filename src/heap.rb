#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

module HeapSort
	# private method
	# builder max heap
	def heapify(list, index, e)
		child_left = 2*index + 1
		child_right = 2*index + 2
		bigger = index

		bigger = child_left if child_left <= e and list[child_left] > list[bigger]
		bigger = child_right if child_right <= e and list[child_right] > list[bigger]

		if index != bigger
			list[index], list[bigger] = list[bigger], list[index]
			heapify(list, bigger, e)
		end
	end
	private :heapify

	# DIRECT access the list
	# return void
	def heap!(list)
		#heapify
		len = list.length-1
		((len)/2).downto(0) { |b| heapify(list, b, list.length-1) }

		(len).downto(1) do |e|
			list[0], list[e] = list[e], list[0]
			heapify(list, 0, e-1)
		end
	end

	# A COPY
	# return a copy of the sorted
	def heap(list)
		copy = []
		(list).each do |v|
			copy << v
		end
		heap!(copy)
		copy
	end
end