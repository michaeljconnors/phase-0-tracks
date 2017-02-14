puts "Hamster name?"

hamster_name = gets.chomp

puts "Volume level (1-10 scale)"

volume_scale = gets.chomp.to_i

puts "fur color?"

fur_color = gets.chomp

puts "good candidate for adoption (y/n)?"

candidate = gets.chomp

if candidate == "y"
	good = true
else
	good = false
end

puts "estimated age?"

age = gets.chomp

if age == ""
	age = nil
else
	age = age.to_f
end

puts "Your hamsters name is #{hamster_name}. The volume level of #{hamster_name}'s on a scale to 1 to 10 is #{volume_scale}. #{hamster_name}'s fur color is #{fur_color}."

if candidate == "y"
	puts "#{hamster_name} is a great candidate"
else
	puts "#{hamster_name} is not a great candidate"
end


if age == nil
	puts "age unknown"
else 
	puts "#{hamster_name} estimated age is #{age.to_f}"
end