# our game should ...
# have one user enter a hidden word.
# have the hidden word be converted into an array
# set up a method that prints the length of the letters of the word so they return "_ _ "
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'game'

describe Game do

  let(:game) { Game.new("unicorn") }

 it "Gives prompt and shows number of letters to be inputted" do
    expect(game.initial_feedback).to be == "_ _ _ _ _ _ _"
  end

 it "stores the list items given on initialization" do
    expect(game.feedback("u")).to be == "u _ _ _ _ _ _"
  end

end




