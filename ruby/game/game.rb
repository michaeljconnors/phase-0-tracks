# Game Class
class Game

	def initialize(word)
		@secret_word = word
		@reveal
		@new
	end

	def initial_feedback
		array = []
		number = @secret_word.length
		number.times do |i|
			array << "_ "
		end
		new_array = array.join(' ')
		minus_one = new_array[0...-1]
	end 
	
	def update_feedback(letter)
	  array = []
	  word_array = @secret_word.split('')
	  word_array.map! do |i|
	    if i == letter
	      array << letter
	    else
			array << "_"
			end
			
		end
		@reveal = array.join("")
	  end
	  
	  def update(letter)
	    holder = " _"
     word_array = @secret_word.split('')
     existing_array = @reveal
     word_array.map! do |i|
       counter = word_array.index(i)
       if i == letter
     number = counter
     @reveal[number] = letter
     
   end
 end
    @reveal
  
   end
 end