# The fibonacci sequence is a sequence of numbers whose first and second elements are 1.
# To generate further elements of the sequence we take the sum of the previous two elements. For example the first 6 fibonacci numbers are 1, 1, 2, 3, 5, 8.
# Write a method fibonacci that takes in a number length and returns the fibonacci sequence up to the given length.

def fibonacci(length)
  # edge cases
  if length == 0
    return []
  elsif length == 1
    return [1]
  else
    result = [1, 1]
    while result.length < length # continue to loop while result.length is less than length
      result << result[-1] + result[-2]
    end
  end
  return result
end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts
