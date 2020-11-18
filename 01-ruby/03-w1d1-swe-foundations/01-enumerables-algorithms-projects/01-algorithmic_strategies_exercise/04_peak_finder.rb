# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.
def peak_finder(arr)
  return arr.max if arr.length == 2
  peaks = []
  # check left peak
  if arr[0] > arr[1]
    peaks << arr[0]
  end
  # check right peak
  if arr[-1] > arr[-2]
    peaks << arr[-1]
  end
  (1...arr.length - 1).each do |i|
    if arr[i - 1] < arr[i] && arr[i + 1] < arr[i]
      peaks << arr[i]
    end
  end
  peaks
end

# (0, check if arr[1] is less)
# (-1, check if arr[-2] is less)
# (1...arr.length - 1) for each compare right and left and make sure arr[i] is greatest, push into peak array if true
# peaks


p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
p peak_finder([1, 3])               # => [3]
p peak_finder([3, 1])               # => [3]
