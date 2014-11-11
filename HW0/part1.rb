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
test_array=[1,2,3,4,5,6]
puts sum []
puts sum
puts sum test_array
puts max_2_sum []
puts max_2_sum
puts max_2_sum test_array