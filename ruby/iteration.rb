def block
  puts "DBC is super fun!"
  yield("Glenna", "Emmanuel", "Eli")
end

block { |teacher1, teacher2, teacher3| puts "Our teachers #{teacher1}, #{teacher2} and #{teacher3} are cool." }

#Release 1 'array'

oceans = ["pacific", "atlantic", "indian", "artic", "southern"]
oceans_capitalize = []

#each

p oceans

oceans.each do |oceans|
  oceans_capitalize << oceans.capitalize
end

puts "Oceans of the world are:"
p oceans_capitalize

#map

p oceans

oceans.map! do |oceans|
  puts oceans
  oceans.upcase
end

p oceans

puts "Oceans of the world are:"
p oceans_capitalize

#Release 1 'hash'

world_oceans = {
  "ocean_1" => 'pacific', 
  "ocean_2" => 'atlantic', 
  "ocean_3" => 'indian', 
  "ocean_4" => 'artic', 
  "ocean_5" => 'southern'
  
}

p world_oceans

#each

world_oceans.each do |num, ocean|
  puts "#{num.capitalize} is the #{ocean}."
end

p world_oceans
