#encrypt
#set index to zero
# name variable encrypt_code and include 
# after assigning variable use .next to advance one letter forward

#decrypt
#set index to 0
#create loop that grabs the first letter
#find that letter in the alphabet and assign the number to a variable
#subract the number one from the variable and then pull the new number from the alphabet
#add letter to the word then loop

secret_password = "robinhood"


index = 0
while index < secret_password.length
  secret_password[index] = secret_password[index].next
  index += 1
end

puts secret_password
index = 0
word = ""
right_number = 0

while index < secret_password.length
  letter = secret_password[index]
  number = "abcdefghijklmnopqrstuvwxyz".index(letter)
  right_number = number - 1
  solution = "abcdefghijklmnopqrstuvwxyz"[right_number]
  index += 1
  word += solution
end

puts word


