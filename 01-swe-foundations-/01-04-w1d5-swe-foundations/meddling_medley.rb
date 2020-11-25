
# Duos
# Write a method duos that accepts a string as an argument and returns the count of the number of times the same character appears consecutively in the given string.
def duos(str)
  count = 0
i = 0
  while i < str.length - 1
    count += 1 if str[i] == str[i+1] # check neighboring chars  
    i += 1
  end
count
end

# p duos('bootcamp')      # 1
# p duos('wxxyzz')        # 2
# p duos('hoooraay')      # 3
# p duos('dinosaurs')     # 0
# p duos('e')             # 0

# Write a method sentence_swap that accepts a sentence and a hash as arguments.
# The method should return a new sentence where every word is replaced with it's corresponding
#  value in the hash. If a word does not exist as a key of the hash, then it should remain unchanged.


def sentence_swap(sent, hash)
  sent.split(" ").map { |word|  hash.has_key?(word) ? (hash[word]) : (word) }.join(" ")
end

p sentence_swap('anything you can do I can do',
    'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'
) # 'nothing you shall drink I shall drink'

p sentence_swap('what a sad ad',
    'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'
) # 'make a happy ad'

p sentence_swap('keep coding okay',
    'coding'=>'running', 'kay'=>'pen'
) # 'keep running okay'

# Write a method hash_mapped that accepts a hash, a proc, and a block. 
# The method should return a new hash where each key is the result of the original key when given to the block. 
# Each value of the new hash should be the result of the original values when passed into the proc.

def hash_mapped(hash, proc, &prc)
  result = {}
  k_arr = hash.keys.map { |k| prc.call(k) } # new array of new KEYS
  v_arr = hash.values.map { |v| proc.call(v) } # new array of new KEYS 
  k_arr.each_with_index {|k, i| result[k] = v_arr[i] }
  result
end



double = Proc.new { |n| n * 2 }
p hash_mapped({'a'=>4, 'x'=>7, 'c'=>-3}, double) { |k| k.upcase + '!!' }
# {"A!!"=>8, "X!!"=>14, "C!!"=>-6}

first = Proc.new { |a| a[0] }
p hash_mapped({-5=>['q', 'r', 's'], 6=>['w', 'x']}, first) { |n| n * n }
# {25=>"q", 36=>"w"}



# counted_characters
# Write a method counted_characters that accepts a string as an argument. 
# The method should return an array containing the characters of the string that appeared more than twice. 
# The characters in the output array should appear in the same order they occur in the input string.

def counted_characters(str)
    hash = Hash.new(0)                        # 1. make a hash counter
    str.each_char {|c| hash[c] += 1}          # 2. finish counter {"t" = 3, "o" = 1, }
    hash.keys.select {|k| hash[k] > 2 }       # 3. ["t, "o"] filters it based on the value (letter count)
end


# p counted_characters("that's alright folks") # ["t"]
# p counted_characters("mississippi") # ["i", "s"]
# p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
# p counted_characters("runtime") # []


# triplet_true?
# Write a method triplet_true? that accepts a string as an argument and 
# returns a boolean indicating whether or not the string contains three of the same character consecutively.
def triplet_true(str)
(0...str.length - 1).each do |i|

end
end

p triplet_true('caaabb')        # true
p triplet_true('terrrrrible')   # true
p triplet_true('runninggg')     # true
p triplet_true('bootcamp')      # false
p triplet_true('e')             # false



