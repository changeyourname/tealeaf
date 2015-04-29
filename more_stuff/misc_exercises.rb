arr = ['laboratory', 'experiment', 'Pans Labyrinth', 'elaborate', 'polar bear']

arr.each do |word|
	if word =~ /lab/
		puts word
	end
end


def execute (&block)
	block.call
end

execute {puts "Hello from inside the execute method!"}