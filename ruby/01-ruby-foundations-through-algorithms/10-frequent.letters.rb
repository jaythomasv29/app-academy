# Write a method frequent_letters that takes in a
# string and returns an array containing the characters
# that appeared more than twice in the string.

def frequent_letters(str)
  result = []
  hash_string = Hash.new(0)
  # put in hash with a count of each
  str.each_char do |char|
    hash_string[char] += 1
  end
  # loop through hash and push into array if value is >2
  hash_string.each do |k, v|
    if hash_string[k] > 2
      result << k
    end
  end
  return result
end

p frequent_letters("mississippi")
