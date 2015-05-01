# demographic.rb

munsters = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}


adult_age = 18

senior_age = 65

def demo (population)
	
	population.each do |person, value|
		if value['age'] >= 65
			value[:demographic] = "senior"
		elsif value['age'] >= 18 
			value[:demographic] = "adult"
		else
			value[:demographic] = "kid"
		end
	end
	return population
end

puts demo(munsters)

