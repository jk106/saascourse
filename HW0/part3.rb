#!/usr/bin/env ruby
class BookInStock
	attr_accessor :isbn
	attr_accessor :price
	def initialize(isbn_as_string, price)
		@price=price
		raise ArgumentError, "ISBN should not be empty" unless isbn_as_string.length>0
		i=isbn_as_string.to_i()
		raise ArgumentError, "ISBN should not be negative" unless i>0
		@isbn=i
	end

	def price_as_string
		p="%2.2f" % @price
		return "$#{p}"
	end
end

book=BookInStock.new("1",20)
puts book.price_as_string