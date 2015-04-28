puts "Hey, how old are you right now?"
current_age = gets.chomp.to_i

intervals = [10,20,30,40]

for i in intervals do
	puts "In #{i} years, you will be:"
	puts current_age + i
end

