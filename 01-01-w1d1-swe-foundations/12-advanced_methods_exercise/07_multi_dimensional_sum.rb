# Write a method, multi_dimensional_sum(array), that accepts a multidimensional array as an arg
# and returns the sum of all numbers in the array.

arr_1 = [
  [4, 3, 1],
  [8, 1],
  [2],
]

arr_2 = [
  [[3, 6], [7]],
  [[5, 2], 1],
]

def multi_dimensional_sum(arr)
  arr.flatten.sum
end

p multi_dimensional_sum(arr_1)    # => 19
p multi_dimensional_sum(arr_2)    # => 24
