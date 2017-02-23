# Array note: rubric call for array yet no instructions to print it

favorite_sports = ["football", "hunting", "wrestlting"]

puts "We know that you arleady like football, wrestilng, and hunting. Is there anyting else you like to do?"

loop do
	puts "Enter other sport (or type 'exit')"
	input = gets.chomp
	break if input == 'exit'
	favorite_sports << input
end

p favorite_sports

puts "If there is something listed that you don't like, please delete."

loop do 
	puts "Enter other sport (or type 'exit')"
	input_2 = gets.chomp
	break if input_2 == 'exit'
	favorite_sports.delete(input_2)
end

p favorite_sports

#Hashes

# Instruct interior designer to input the following information
# Allow for input of clients name
# Allow for input of clients age
# Allow for input of clients number of children
# Allow for input of clients decor theme
# Allow for input of clients favorite colors
# Allow for input of clients oldest childs age
# Allow for input of clients youngest childs age
# convert user input into appropiate data type
# create hash
# add to hash
# print hash
# give user a chance to update key

puts "What is the client's name?"

client_name = gets.chomp

puts "what is the client's age?"

client_age = gets.chomp

puts "How many children does the client have?"

client_number_children = gets.chomp

puts "What is the client's decor theme?"

client_decor = gets.chomp

puts "What is the client's favorite color?"

client_fav_color = gets.chomp

puts "What is the age of the client's oldest child?"

client_oldest_age = gets.chomp

puts "What is the age of your client's youngest child"

client_youngest_age = gets.chomp

puts "Does your client like light?(true/false)"

light = gets.chomp




design = {
:name => client_name,
:age => client_age.to_i,
:children => client_number_children.to_i,
:decor => client_decor,
:color => client_fav_color,
:oldest_child => client_oldest_age.to_i,
:youngest_child => client_youngest_age.to_i,
:lighter => light

}

p design

# add new key

puts "Do you want to update a key? Or would you like to update none of them?(yes/none)"
key = gets.chomp

if key == "yes"
puts "Which key would you like to change?"
new_key = gets.chomp
puts "what would you like to have for your new value?"
new_value = gets.chomp
end

design[new_key.to_sym] = new_value

p design