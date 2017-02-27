class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
   num.times do |num| 
     puts "Woof!"
    end
  end
  
  def roll_over
   puts "*roll over*" 
  end
  
  def dog_years(x)
   age = x * 7
 end
 
 def translate(language)
   result = ""
   language.split(' ').length.times do |woofs|
     result << "woof "
   end
   p result
 end
end

new_puppy = Puppy.new

new_puppy.fetch("ball")

new_puppy.speak(4)

new_puppy.roll_over

puts new_puppy.dog_years(5)

new_puppy.translate"Billy fell down the well"
