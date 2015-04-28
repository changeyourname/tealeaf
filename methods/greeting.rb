puts "Hey, type in a name, please?"

name_from_user = gets.chomp

def greeting(name)
	"Warmest greetings to " + name + ", welcome..."
end

puts greeting(name_from_user)

