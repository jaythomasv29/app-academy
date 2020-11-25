# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.
# we can use common enumerable .all? to check if all of them are vowels

def only_vowels?(str)
  #split string, enumerate with predicate method
  vowels = %w(a e i o u) # ruby shortcut => vowels = ['a','e','i','o','u']
  str.split("").all? { |char| vowels.include?(char) }
end

p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false
