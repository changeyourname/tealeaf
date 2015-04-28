# loop_exercises.rb


state = "GO"

while state == "GO"
	puts "Type something in you want made all caps, type 'STOP' to stop"
	user_input = gets.chomp
	if user_input == "STOP"
		state = "STOP"
	end
	puts user_input.upcase
end

some_array = [1,3,5,7,11,13,17]

some_array.each_with_index {|number, index|
	puts "The number is #{number}, and the index is #{index}"
}


puts "I'm going to countdown to zero from a number you give me, okay?"
user_number = gets.chomp.to_i

def recursive_countdown(number)
	if number < 0
		return
	else
		puts number
		recursive_countdown (number - 1)
	end
end

recursive_countdown(user_number)
