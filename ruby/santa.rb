class Santa

def initialize(gender, enthnicity)
	@gender = gender
	@enthnicity = enthnicity
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0
	puts "initializing Santa instance..."
end

def speak
	puts  "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(type)
puts "That was a good #{type}"
end

end



santas = []