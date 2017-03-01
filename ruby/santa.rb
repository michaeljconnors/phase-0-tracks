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

	def eat_milk_and_cookies
		puts "That was a good chocolate chip cookie!"
	end

#getter methods
  def age
    @age
  end

  def enthnicity
    @enthnicity
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
  
  def gender=(gender)
    @gender = gender
  end

end

santa = Santa.new("female", "Scandinavian")
p santa
p santa.eat_milk_and_cookies
p santa.speak
p santa.celebrate_birthday = 1
santa.get_mad_at = "Vixen"
p gender = "male"
p santa.age
p santa.enthnicity
