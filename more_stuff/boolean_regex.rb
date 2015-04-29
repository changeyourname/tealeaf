# boolean_regex.rb

def has_a_b? (string)
	if string =~ /b/
		puts "It's a match, folks!"
	else
		puts "Didn't find one."
	end
end

has_a_b? ("basketball")
has_a_b? ("BasketBall")

has_a_b? ('football')
has_a_b? ('hockey')
has_a_b? ("golf")
