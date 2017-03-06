# Game Class
class Game

	def initialize(word)
		@secret_word = word
		@letters_guessed = []
		@feedback
	end

def initial_feedback
  @secret_word.length 
  secret_array = @secret_word.split('')
  inital_array = []
  secret_array.map! do |i|
    inital_array << "_"
  end
  p "The following numbers the letters for the secret word."
  p inital_array.join(' ')
    
end

def feedback(letter)
@letters_guessed << letter
new_word = []
secret_array = @secret_word.split('')
secret_array.map! do |i|
  counter = 0 
  if @letters_guessed.include? (i)
    new_word << i 
  else
    new_word << "_"
  end
 feedback = new_word.join(' ')
end

p new_word.join(' ')
end

def guesses
  counter = @secret_word.length
  loop do 
    puts "Please submit a letter."
    letter = gets.chomp
    if @letters_guessed.include? (letter)
    else
      @letters_guessed.delete(letter)
      counter = counter - 1
     end
    @feedback = feedback(letter)
    puts "You have #{counter} more guesses" 
    break if counter == 0 || @feedback.delete(' ') == @secret_word
   
  end
  
  def final_message
    if @feedback.delete(' ') == @secret_word
      puts "Congrats."
    else
      puts "Better luck next time..."
    end
  end
end

end
game = Game.new("andrea")

game.initial_feedback
game.guesses
game.final_message




