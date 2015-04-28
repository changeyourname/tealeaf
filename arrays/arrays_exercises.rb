# arrays_exercises.rb

arr = [1,3,5,6,7,9,11]

number = 3

if arr.include?(number)
	puts "Yep, that #{number} is in there..."
end

puts "Now for the final act, a program that iterates and adds two to things!"

arr = [1,2,54,1,3,22]
arr_new = []

arr.each {|x| arr_new << (x + 2)}

p arr
p arr_new