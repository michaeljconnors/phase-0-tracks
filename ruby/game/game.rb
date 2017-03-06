# Game Class
# Game Class
class Game

attr_accessor :letter, :secret_word

  def initialize(word)
    @secret_word = word
    @letters_guessed = []
    @feedback
    @letter
    @message_counter
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
      puts "Player 2: Please submit a letter."
      @letter = gets.chomp
      if @letters_guessed.include? (@letter)
      else
        @letters_guessed.delete(@letter)
        counter = counter - 1
      end
      @feedback = feedback(@letter)
      @message_counter = "You have #{counter} more guesses"
      puts @message_counter
      break if counter == 0 || @feedback.delete(' ') == @secret_word

    end
  end
  
  def final_message
    if @feedback.delete(' ') == @secret_word
      message_2 = "Congrats! You guess correctly!"
      puts message_2
    else
      message_1 = "Better luck next time..."
      puts message_1
    end
  end
end



puts"Welcome to the word guessing game!"
puts "Player 1: please enter your secret word."

#the following is the driver code. Please take out out to run tests. Thnx.
secret_word = gets.chomp
game = Game.new(secret_word)
game.initial_feedback
game.guesses
game.final_message




