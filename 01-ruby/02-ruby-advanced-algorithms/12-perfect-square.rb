# Write a method perfect_square? that takes in a number and returns a boolean indicating whether it is a perfect square.
# A perfect square is a number that results from multiplying a number by itself.
# For example, 9 is a perfect square because 3  3 = 9, 25 is a perfect square because 5  5 = 25.

def perfect_square?(num)
  # n * n = num
  (1...num).each do |n|
    if n * n == num
      return true
    end
  end
  return false
end

p perfect_square?(5)
p perfect_square?(12)
p perfect_square?(30)
p perfect_square?(9)
p perfect_square?(25)
