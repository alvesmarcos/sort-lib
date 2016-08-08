#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

# MODULE SORT

require './insertion'
require './merge'
require './selection'
require './quick'

module Sort	
	extend InsertionSort
	extend MergeSort
	extend SelectionSort
	extend QuickSort
end
