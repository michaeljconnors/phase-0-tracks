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

# Release 2 - Array

sports = ["basketball", "football", "soccer", "wrestling", "swimming"]

# method sees if string length is less than specified and then deletes
# sports.delete_if {|sports| sports.length < 7 }
def length(x)
x.delete_if {|x| x.length < 7 }
end

p length(sports)

# method sees if string contains any of the specified letters
# sports.keep_if {|sports| sports =~ /[ball]/ }
def contains(x)
x.keep_if {|x| x =~ /[ball]/ }
end

p contains(sports)

# method sees what filter satisfies the condition of the data structure
def satisfies(x)
  x.first(2)
end

p satisfies(sports)

 numbers = [1,2,10,15,25,66]

def drop(x)
  x.drop_while {|x| x < 15 }
end

p drop(numbers)

# Hash

world_oceans = {
  :emotion_1 => 'angry', 
  :emotion_2 => 'sad', 
  :emotion_3 => 'happy', 
  :emotion_4 => 'estatic', 
  :emotion_5 => 'livid'
  
}

