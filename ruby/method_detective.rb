# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

p "iNvEsTiGaTiOn".swapcase

# "zom".<???>
# => “zoom”

p "zom".insert(1, 'o')


# "enhance".<???>
# => "    enhance    "

p "enhance".center(4)

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

p "Stop! You’re under arrest!".upcase

# "the usual".<???>
#=> "the usual suspects"

p "the usual".insert(9, " suspects")

# " suspects".<???>
# => "the usual suspects"

p " suspects".insert(0, "the usual")

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4

p "How many times does the letter 'a' appear in this string?".count "a"