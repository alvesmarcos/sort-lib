#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

module MergeSort
	# private method
	# return merge left/rigth
	def fuse(left, right)
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
	private :fuse

	# A COPY
	# return a copy of the sorted
	def merge(list) 
		return list if list.length <= 1

		len = list.length/2
		left = list.slice(0, len)
		right = list.slice(len, list.length)

		fuse(merge(left), merge(right))
	end
	
	# DIRECT access the list
	# return void
	def merge!(list)
		copy = []
		copy << merge(list)
		list.clear
		(copy).each do |v|
			list << v
		end
	end
end