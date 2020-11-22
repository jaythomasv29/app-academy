# Write a method, max_inject(arr), that accepts any amount of numbers arguments and returns
# the largest number. Solve this using the built-in inject.
# def max_inject(*arr)
#   arr.inject do |acc, ele|
#     if ele > acc # if the next element is greater as we enumerate
#       ele # result of the block is always reassigned to be the new accumulator
#     else
#       acc
#     end
#   end
# end

def max_inject(*arr)
  arr.inject { |acc, ele| ele > acc ? ele : acc }
end

p max_inject(1, -4, 0, 7, 5)  # => 7
p max_inject(30, 28, 18)      # => 30
