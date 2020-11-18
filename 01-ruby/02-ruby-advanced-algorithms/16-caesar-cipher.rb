# Write a method caesar_cipher that takes in a string and a number.
# The method should return a new string where every character of the original is shifted num characters in the alphabet.

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  result = ""
  str.each_char do |char|
    result += alphabet[((alphabet.index(char) + num) % 26)]
  end
  return result
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
