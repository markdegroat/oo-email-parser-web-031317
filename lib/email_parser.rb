# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser

	attr_accessor :string

	def initialize(string)
		@string = string
	end

	def parse
		#binding.pry
		@string = @string.gsub(/[,]/, " ")
		#binding.pry
		array = @string.split(' ').collect do |email|
			email.strip
		end
		array.uniq
	end

end