# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative allows the program to access data in a local file,
# Require alone allows the program to access programs and code outside Rubys normal functionality.
require_relative 'state_data'

class VirusPredictor

# creates a new instance of that class, accepting inputs that are then put into attributes that are accessabile throughout the class.
def initialize(state_of_origin)
  @state = state_of_origin
  @population = STATE_DATA[@state][:population]
  @population_density = STATE_DATA[@state][:population_density]
end

# calling two other methods and running them.

def virus_effects
  predicted_deaths
  speed_of_spread
end

private

# its taking in three inputs and comparing to five paremeters that takes in a states population density and then based off where it falls multiplies by a factor that then returns the number of deaths.
# lastly it then prints out a statement using the states name with the newly calculated number of deaths

def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      rate =  0.4
    elsif @population_density >= 150
      rate =  0.3
    elsif @population_density >= 100
      rate =  0.2
    elsif @population_density >= 50
      rate =  0.1
    else
      rate = 0.05
    end
    number_of_deaths = (@population * rate).floor 
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# taking the population density and the state as inputs then comparing the population density to a set of five paremeters based off the higher density the faster the speed of the virus will spread.
# prints a statement declaring the rate of speed of disease in months.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


 #alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
 #alabama.virus_effects

 #jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
 #jersey.virus_effects

 #california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
 #california.virus_effects

 #alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
 #alaska.virus_effects

 STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state)
  state.virus_effects
end



#=======================================================================
# Reflection Section
# The two differences is one key is a symbol whereas the other has a string. This allows the computer to process easily information.
# Require relative allows the program to access data in a local file, where as require gets other code from other areas outside a local source.
# One way is to go through each key and value and apply a method to it. Another way would be to go through each key and value and apply a formula to the values.
# What stood out to me was the reduntancy and patterns, in which after identifying we were able to simplify taking out the fluff.
# I would say refactoring, reading other code, and even iteration solidified for me.






