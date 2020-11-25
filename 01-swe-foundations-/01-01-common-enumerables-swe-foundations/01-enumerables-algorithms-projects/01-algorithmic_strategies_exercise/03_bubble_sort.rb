# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort

# def bubble_sort(arr)
#   sorted = true

#   while sorted == false
#     sorted = true # stop checking in case we are done
#     (0...arr.length - 1).each do |i|
#       if arr[i] > arr[i + 1] # only do if if left one is greater, switch if greater
#         arr[i], arr[i + 1] = arr[i + 1], arr[i]
#         sorted = false # # re initiate the check
#       end
#     end
#   end
#   arr
# end

# p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]

def bubble_sort(array)
  sorted = false
  p sorted # false
  while !sorted
    sorted = true
    (0...array.length - 1).each do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
  end

  array
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
