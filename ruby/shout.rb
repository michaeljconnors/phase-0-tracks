module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
  	words + "!!!" + " :)"
  end
end

p Shout.yell_angrily("Don't you dare touch that")

p Shout.yelling_happily("I can't believe I won the lotery")