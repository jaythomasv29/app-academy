# Write a method, is_sorted(arr), that accepts an array of numbers as an arg.
# The method should return true if the elements are in increasing order, false otherwise.
# Do not use the built-in Array#sort in your solution :)

# def is_sorted(arr)
#   (0...arr.length - 1).each do |i| # loop through the array using index
#     if arr[i] > arr[i + 1]
#       return false
#     end
#   end
#   true
# end

def is_sorted(arr)
  (1...arr.length).each do |i|
    return false if arr[i - 1] > arr[i]
  end
  true
end

p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4])         # => false
