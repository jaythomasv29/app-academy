# write a method ae_count that takes in a string and returns a hash containing
# the number of a's and e's in the string. Assume the string contains only lowercase characters

# input 'jameson'
# output {'a'=> 1, 'e'=> 1 }

def ae_count(str)
  count = Hash.new(0) # increment it to be 0
  str.each_char do |char|
    if char == "a" || char == "e" # if equal to either of these characters
      count[char] += 1
    end
  end
  return count
end

p ae_count("jameson")
p ae_count("everyone can program")
p ae_count("keyboard")
