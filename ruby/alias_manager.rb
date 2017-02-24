# Ask user for first and last name
# Swap the first and last name by first creating an array with words
# Then use .reverse on the word
# Change all the vowels to the next vowel in the alphabet by an if statement logic
# Change all the consonants to the next consonant in alphabet by if statement logic
# keep blank spaces blank


#vowels = ["a","e","i","o","u","a"] 

def swap(x)
new_name = x.split(' ').reverse
new_name.join(' ')
end



def next_letter(x)
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
	  elsif x == "z" 
	  changed_name << "b"
	  elsif x == "d" 
	  changed_name << "f"
	  elsif x == "h" 
	  changed_name << "j"
	  elsif x == "n" 
	  changed_name << "p"
	  elsif x == "t" 
	  changed_name << "v"
	else
	changed_name << x.next
end
changed_name.join('') 
end
end

alias_names = {}

loop do
puts "Enter a first and last name? (Type quit when finished.)"
user_name = gets.chomp
swapped_name = swap(user_name)
swapped_array = swapped_name.split('')
final_phase = next_letter(swapped_array).join('')
final_phase
break if user_name == "quit"
alias_names[user_name] = final_phase
end

alias_names.each do |real_name, code_name|
  puts "#{real_name} is also known as #{code_name}."
 end