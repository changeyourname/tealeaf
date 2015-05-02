# uuid_generator.rb

require 'securerandom'

def generate_uuid ()
	return SecureRandom.hex(4) + '-' + SecureRandom.hex(2) + '-' + SecureRandom.hex(2) + '-' + SecureRandom.hex(6)
end

puts generate_uuid


# hope this is acceptable! a lot shorter than the solution in the book