class Santa
attr_reader :gender, :enthnicity, :reindeer_ranking, :age
attr_accessor :gender


	def initialize(gender, enthnicity)
		@gender = gender
		@enthnicity = enthnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 1
		puts "initializing Santa instance..."
	end

	def speak
		puts  "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies
		puts "That was a good chocolate chip cookie!"
	end
  
	#setter methods
	def celebrate_birthday=(age)
  	@age = age + 1
	end

  def get_mad_at=(reindeer_ranking)
   @reindeer_ranking.delete(reindeer_ranking)
   @reindeer_ranking << reindeer_ranking
   p @reindeer_ranking
  end

end

santa = Santa.new("female", "Scandinavian")
p santa
p santa.eat_milk_and_cookies
p santa.speak
# p santa.celebrate_birthday = 1
santa.get_mad_at = "Vixen"
p santa.gender = "male"
p santa.age
p santa.enthnicity

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

50.times do |i|
  santa.celebrate_birthday = rand(139)
puts "Today at the mall a #{example_genders.sample} that is of #{example_ethnicities.sample} descent, will be turning #{santa.age}."
end