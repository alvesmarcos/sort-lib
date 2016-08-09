#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

require '../src/insertion'
require '../src/merge'
require '../src/selection'
require '../src/quick'
require '../src/heap'

module Sort	
	extend InsertionSort
	extend MergeSort
	extend SelectionSort
	extend QuickSort
	extend HeapSort

	def self.sorted?(list)
		list == list.sort
	end
end
