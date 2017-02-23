def block
  puts "DBC is super fun!"
  yield("Glenna", "Emmanuel", "Eli")
end

block { |teacher1, teacher2, teacher3| puts "Our teachers #{teacher1}, #{teacher2} and #{teacher3} are cool." }