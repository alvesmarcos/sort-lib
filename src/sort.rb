#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

# MODULE SORT

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
end
