# sorter.rb

puts "Enter a number, and I'll tell you where it lands..."
a = gets.chomp.to_i

def ifelse(num)
	if (num <= 50) && (num >= 0)
		puts "Number is between 0 and 50"
	elsif (num <= 100) && (num > 50)
		puts "Number is between 50 and 100"
	elsif (num > 100)
		puts "Number is greater than 100"
	else
		puts "Error!"
	end
end

def case_control(num)
	case
	when num < 0
		puts "Error!"
	when num <= 50
		puts "Number is between 0 and 50"
	when num <= 100
		puts "Number is between 50 and 100"
	when num > 100
		puts "Number is greater than 100"
	else
		puts "Error!"
	end
end

ifelse(a)

case_control(a)