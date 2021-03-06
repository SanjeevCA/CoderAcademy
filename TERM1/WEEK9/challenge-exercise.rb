# Missing letter
# Difficulty: medium/hard

# Write a method that takes an array of consecutive (increasing) 
# letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly 
# one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:

# missing_letter(['a','b','c','d','f']) -> 'e'
# missing_letter(['O','Q','R','S']) -> 'P'

# Included test uses rspec

def missing_letter(word)
	
    # your code goes here

    # Ruby can create a range from one character to another, based on the alphabet --> From A to Z
    alphabet = (word[0]..word[-1]).to_a

    # check to see if the letters all match
    alphabet.each {|char| return char if !word.include?(char) }

end

puts missing_letter(['O','Q','R','S'])