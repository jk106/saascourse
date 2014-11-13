#!/usr/bin/env ruby
def sum (array=[])
	total=0
	array.each do |element|
		total=total+element
	end
	total
end
def max_2_sum (array=[])
	aux=array.sort.reverse
	(aux[0].nil? ? 0: aux[0]) + (aux[1].nil? ? 0: aux[1])
end
def sum_to_n? (array=[], n)
	result=false
	sums=[]
	array.each_with_index do |item, index|
		sums[index]=item+array[index+1] unless array[index+1].nil?
	end
	sums.each do |item|
		result=true if item==n
	end
	result
end
test_array=[1,2,3,4,5,6,5,7,4,3,2,1]
puts sum []
puts sum
puts sum test_array
puts max_2_sum []
puts max_2_sum
puts max_2_sum test_array
puts sum_to_n? [],2
puts sum_to_n? test_array,2
puts sum_to_n? test_array,11
