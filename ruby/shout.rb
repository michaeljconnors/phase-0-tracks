#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#  def self.yelling_happily(words)
#  	words + "!!!" + " :)"
#  end
#end

#p Shout.yell_angrily("Don't you dare touch that")

#p Shout.yelling_happily("I can't believe I won the lottery")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end
	def yelling_happily(words)
		words + "!!!" + " :)"
	end
end

class Coach
	include Shout
end

class Fan 
	include Shout
end

coach = Coach.new
coach.yell_angrily("How many times have I told you")

fan = Fan.new
fan.yelling_happily("Go! Go! Go! Touchdown")