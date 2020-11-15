# Write a method triple_sequence that takes in two numbers, start and length.
# The method should return an array representing a sequence
# that begins with start and is length elements long.
# In the sequence, every element should be 3 times the previous element. Assume that the length is at least 1.

def triple_sequence(start, length)
  i = 1
  result = [start]
  while i < length
    result << result[i - 1] * 3 # push a new element => (the previous * 2)
    i += 1
  end
  return result
end

p triple_sequence(2, 4)
#     1, 2, 3,
# [2, 6, 18, 54]
p triple_sequence(4, 5) # => [4, 12, 36, 108, 324]

def triple_sequence2(start, length)
  result = [start]
  while result.length < length
    result << result[-1] * 3
  end
  return result
end

p triple_sequence2(2, 4)
#     1, 2, 3,
# [2, 6, 18, 54]
p triple_sequence2(4, 5) # => [4, 12, 36, 108, 324]
