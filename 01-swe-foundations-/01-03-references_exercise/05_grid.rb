# Write a method, grid(n, m), that accepts two numbers as args.
# The method should return a 2D array with n rows and m columns (this means that there are n subarrays, each of length m).
# grid = Array.new(3, Array.new(3)) # passes in the same defaultelement for each array that is created

# arr = Array.new(3) { Array.new(3) { nil } } # passes in a block of code for each element as its default argument
# p arr

def grid(n, m)
  Array.new(n) { Array.new(3) { nil } }
end

result_1 = grid(2, 3)
p result_1              # => [[nil, nil, nil], [nil, nil, nil]]
result_1[0][0] = "X"
p result_1              # => [["X", nil, nil], [nil, nil, nil]]

result_2 = grid(4, 2)
p result_2              # => [[nil, nil], [nil, nil], [nil, nil], [nil, nil]]
result_2[0][0] = "Q"
p result_2              # => [["Q", nil], [nil, nil], [nil, nil], [nil, nil]]
