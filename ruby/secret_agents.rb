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

puts "What do you want your password to be?"

password = gets.chomp

def encrypt(secret_password)
	index = 0
	while index < secret_password.length
		if secret_password[index] == "z"
			secret_password[index] = "a"
		else
			secret_password[index] = secret_password[index].next
		end
		index += 1
	end
	 secret_password
end



def decrypt(secret_password)
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
  word 
end

puts encrypt(password)
puts decrypt(password)

decrypt(encrypt("swordfish"))

#This code works by moving the index up by one to scramble the password. The decript section takes the scrambled password and compares those letters in the password to the alphabet and then subtracts one index space to relign with alphabet to give the correct password.

