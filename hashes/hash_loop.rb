# hash_loop.rb


my_hash = {Alaska: 'Anchorage', Florida: 'Tallahassee', California: 'Sacramento', Texas: 'Houston'}

my_hash.keys.each {|k| puts k}
my_hash.values.each {|v| puts v}
my_hash.each {|k,v| puts "State: #{k}, Capitol: #{v}"}

puts "Is 'Sacramento' a value in the hash?"

if my_hash.has_value?("Sacramento")
	puts "Yep, it's in there!"
else
	puts "Nope, it's not!"
end

puts "Now, on to the anagrams!"


words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']

result = {}

words.each do |word|
	key = word.split('').sort.join
	if result.has_key?(key)
		result[key].push(word)
	else
		result[key] = [word]
	end
end

p result