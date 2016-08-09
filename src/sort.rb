#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

require './insertion'
require './merge'
require './selection'
require './quick'
require './heap'

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
