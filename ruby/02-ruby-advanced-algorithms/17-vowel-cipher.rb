# Write a method vowel_cipher that takes in a string and
# returns a new string where every vowel becomes the next vowel in the alphabet.

def vowel_cipher(str)
  # loop through the string
  # search for vowels
  # if we find a vowel then we shift it to the next vowel
  # simply add to string if not a vowel
  result = ""
  vowel = "aeiou"
  str.each_char do |char|
    if vowel.include?(char) # if we find a vowel
      result += vowel[((vowel.index(char) + 1) % 5)]
    else
      result += char
    end
  end
  return result
end

p vowel_cipher("bootcamp")
p vowel_cipher("paper cup")
