# exercises.rb
# The last few before the real deal starts!
# All exercises combined into one .rb file

puts "Exercise 1"

arr = [1,2,3,4,5,6,7,8,9,10]

arr.each {|num| puts num}

puts "Exercise 2"

arr.each do |num|
	puts num unless num < 5
end

puts "Exercise 3"

new_arr = []

arr.each do |num|
	new_arr << num if num.odd?
end

puts new_arr.join(" ")

puts "Exercises 4-6"

arr << 11
puts arr.join(" ")

arr.unshift(0)
puts arr.join(" ")

arr.pop
puts arr.join(" ")

arr << 3
puts arr.join(" ")

arr.uniq!
puts arr.join(" ")

# Exercise 7
# Major difference: arrays are ordered, hashes are not 
#(except in new versions), hashses are kept in key-value pairs

puts 'Exercise 8'

my_hash_old = {:state => 'Alaska', :food => 'King Salmon'}
my_hash_new = {state: 'Alaska', food: 'King Salmon'}

puts my_hash_old
puts my_hash_new

puts 'Exercise 9'
h = {a:1, b:2, c:3, d:4}

puts h[:b]

h[:e] = 5

puts h

h.each do |k,v|
	h.delete(k) if v < 3.5
end

puts h

# Exercise 10
array_with_hashes = [{name: 'tim', size: 'tiny'},{superlative: 'incredible', name: 'hulk'}]
puts array_with_hashes

hash_with_arrays = {fav_colors: ['red','blue','green'], fav_foods: ['ice cream', 'pizza']}
puts hash_with_arrays

# ruby-doc.org - I guess I like this one because it's the official?
# Was looking at the "cmath" API. Could be pretty useful if you were doing 
# lots of vector analysis, or something with electronics or kinematics
# in that case as well, it would be good to know the limitations and protocols


