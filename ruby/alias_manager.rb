# Ask user for first and last name
# Swap the first and last name by first creating an array with words
# Then use reverse on the 
# Change all the vowels to the next vowel in the alphabet by 
# Change all the consonants to the next consonant in alphabet


vowels = ["a","e","i","o","u","a"] 
changed_name = []

puts "What is your first and last name?"

user_name = "mike connors" #gets.chomp

def swap(x)
new_name = x.split(' ').reverse
new_name.join(' ')
end

swapped_name = swap(user_name)

swapped_array = swapped_name.split('')

p swapped_array

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
	else
	changed_name << x.next
end
changed_name 
end
end
