# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.

def peak_finder(arr)
  peak_nums = []
  if arr.length == 2 # cases where arr is length of 2
    return [arr.max]
  elsif arr.length > 2 # handle cases for longer arrays > 2
    if arr[0] > arr[1] # check the front peak
      peak_nums << arr[0]
    end
    if arr[-1] > arr[-2] # check the back peak
      peak_nums << arr[-1]
    end
    # being iteration to check inside numbers
    (1...arr.length - 1).each do |i|
      front, middle, back = arr[i - 1], arr[i], arr[i + 1]
      peak_nums << middle if middle > front && middle > back
    end
  end
  peak_nums
end

p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
p peak_finder([1, 3])               # => [3]
p peak_finder([3, 1])               # => [3]

# handle arrays with length < 3

# check first element in array => if greater then it is a peak

#
# check last element in the array => if greater than second to last then it is a peak
# iterate at idx 1 and go to arr.lenght -2
# [4, 2, 11,  6, 10]
# variables are: push if [idx -1 ] < [idx && idx] > [idx + 1]
# idx -1,
# idx
# idx + 1

# return peak_nums []
