class Santa

def initialize
	puts "initializing Santa instance..."
end

def speak
	puts  "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(type)
puts "That was a good #{type}"
end

end

santa = Santa.new
santa.eat_milk_and_cookies("chocolate chip")