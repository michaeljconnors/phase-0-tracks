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

