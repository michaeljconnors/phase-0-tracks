# Ask user for first and last name
# Swap the first and last name by first creating an array with words
# Then use reverse on the 
# Change all the vowels to the next vowel in the alphabet by 
# Change all the consonants to the next consonant in alphabet


vowels = ["a","e","i","o","u","a"] 
changed_name = []
changed_name_2 = []

puts "What is your first and last name?"

user_name = "Mike Connors" #gets.chomp

def swap(x)
new_name = x.split(' ').reverse
new_name.join(' ')
end


def next_vowel(x)
  
x.map! do |x|
  changed_name = []
	if x == "a" 
	  changed_name << "e"
	  elsif x == "e" 
	  changed_name << "i"
	  elsif x == "i" 
	  changed_name << "o"
	  elsif x == "o" 
	  changed_name << "u"
	  elsif x == "u" 
	  changed_name << "a"
	  elsif x == " " 
	  changed_name << " "
	else
	changed_name << x.next
end
changed_name.join('') 
end
end



def next_consonant(x)
  
  x.map! do |x|
  changed_name_2 = []
	if x == "a" 
	  changed_name_2 << "b"
	  elsif x == "e" 
	  changed_name_2 << "d"
	  elsif x == "i" 
	  changed_name_2 << "g"
	  elsif x == "o" 
	  changed_name_2 << "p"
	  elsif x == "u" 
	  changed_name_2 << "v"
	else
	changed_name_2 << x
end
changed_name_2.join('')
end
end

swapped_name = swap(user_name)

swapped_array = swapped_name.split('')

p swapped_array

second_phase = next_vowel(swapped_array)

p second_phase

final_phase = next_consonant(second_phase)

p final_phase