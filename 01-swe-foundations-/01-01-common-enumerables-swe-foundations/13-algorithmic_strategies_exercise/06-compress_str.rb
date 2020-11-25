# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
  i = 0
  result = ""
  count = 0
  while i < str.length # loop through the string
    char = str[i] # set char to current char that is being compared
    while char == str[i] # when the letters are the same in the iteration
      # increment count
      count += 1
      i += 1
    end
    count > 1 ? result += "#{count}#{char}" : result += char
    count = 0
  end
  result
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"

# p "mississippi".slice(0, 1)
