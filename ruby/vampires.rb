puts "How many employees will be processed?"

employees = gets.chomp.to_i

until employees == 0

puts "What is your name?"

your_name = gets.chomp

puts "How old are you?"

age = gets.chomp.to_i

puts "What year were you born?"

year_born = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"

garlic_bread = gets.chomp

puts "Would you like to enroll in the company’s health insurance?(y/n)"

insurance = gets.chomp

born = 2017 - year_born

if age == born
	age = true
else
	age = false
end

if garlic_bread == "y"
	garlic_bread = true
else
	garlic_bread = false
end

if insurance == "y"
	insurance = true
else
	insurance = false
end
puts "List all allergies. Type 'done' when finished."

valid_input = false

until valid_input

allergies = gets.chomp

if allergies == "done"
 
valid_input = true
 
elsif allergies == "sunshine"
 
valid_input = true
 
else
   
valid_input = false
 
end
 
end

if allergies == "sunshine"
  puts "Probably a vampire"
elsif age == true && (garlic_bread == true || insurance == true)
		puts "Probably not a vampire."
elsif (age == false && garlic_bread == false && insurance == false)
	puts "Almost certainly a vampire."	
	elsif age == false && (garlic_bread == false || insurance == false)
	puts "Probably a vampire."
	else 
		puts "Results inconclusive."
end

employees = employees - 1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."