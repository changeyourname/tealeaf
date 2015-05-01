# pretty_ellipses.rb

class String
	def pretty_ellipses (length)
		result = self.dup
		initial_length = self.length
		if initial_length > length 
			while result.length > (length - 3) do
				words = result.split
				words.pop
				result = words.join(" ")
			end
			result << "..."
			return result
		else
			return result
		end
	end
end

some_string = 'Fourscore and seven years ago our forefathers'

puts some_string.pretty_ellipses(32)


