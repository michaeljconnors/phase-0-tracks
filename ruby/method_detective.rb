# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.


p "iNvEsTiGaTiOn".swapcase

# => “InVeStIgAtIoN”


p "zom".insert(1, 'o')

p "zom".gsub(/[o]/, 'oo')

# => “zoom”

p "enhance".center(4)

# => "    enhance    "

# "Stop! You’re under arrest!".<???>


p "Stop! You’re under arrest!".upcase

# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>


p "the usual".insert(9, " suspects")

p "the usual".gsub(/[l]/, 'l suspects')

# " suspects".<???>


p " suspects".insert(0, "the usual")

p " suspects".gsub(/[ ]/, 'the usual ')

# => "the usual suspects"

p "The case of the disappearing last letter"[0...-1]

# => "The case of the disappearing last lette"

p "The mystery of the missing first letter"[1...40]

# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".squeeze(" ")

# => "Elementary, my dear Watson!"

p "z".bytes

# => 122 
# the significance of the number is it's the ASCII value of the letter.


p "How many times does the letter 'a' appear in this string?".count "a"
# => 4