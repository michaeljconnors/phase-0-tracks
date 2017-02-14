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

puts age