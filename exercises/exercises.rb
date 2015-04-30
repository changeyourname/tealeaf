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

# Exercise 11 
#ruby-doc.org - I guess I like this one because it's the official?
# Was looking at the "cmath" API. Could be pretty useful if you were doing 
# lots of vector analysis, or something with electronics or kinematics
# in that case as well, it would be good to know the limitations and protocols

puts "Exercise 12"

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contacts

puts "Exercise 13"

puts "Joe's email address is: #{contacts['Joe Smith'][:email]}"
puts "Sally's phone number is: #{contacts['Sally Johnson'][:phone]}"

puts "Exercise 14"

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}} #reinitialize "Joe Smith"
fields = [:email, :address, :phone] #create array for iteration

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

puts contacts["Joe Smith"]

puts "Exercise 15"

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|word| word.start_with?('s')}

puts arr.join(' ')

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|word| (word.start_with?('s') || word.start_with?('w')) }

puts arr.join(' ')

# Exercise 16

puts "Exercise 16"

a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

a = a.map {|word| word.split}

puts a 

a = a.flatten

puts a 
