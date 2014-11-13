#!/usr/bin/env ruby
def hello(name="")
	result="Hello, #{name}"
end
def starts_with_consonant? (s)
	result=false
	if(s=~ /\A[^aeiou]/)
		result=true
	end
	return result
end
def binary_multiple_of_4?(s)
	bin=s.to_i(2)
	return false if bin==0 && s.to_i!=0
	result=bin%4==0
end
puts hello
puts hello "Juan"
puts starts_with_consonant? "elela"
puts starts_with_consonant? "css"
puts starts_with_consonant? "aes"
puts starts_with_consonant? "zaz"
puts "------"
puts binary_multiple_of_4? "4"
puts binary_multiple_of_4? "1001"
puts binary_multiple_of_4? "10000"
puts binary_multiple_of_4? "100100"
