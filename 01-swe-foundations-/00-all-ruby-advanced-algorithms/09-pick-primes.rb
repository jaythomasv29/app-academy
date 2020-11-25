# Write a method pick_primes that takes in an array of numbers
# and returns a new array containing only the prime numbers.
def pick_primes(numbers)
  return numbers.select { |n| prime?(n) }
end

def prime?(num)
  if num < 2
    return false
  end
  (2...num).each do |factor|
    if num % factor == 0 # if the number is divisible by any number in the range
      return false
    end
  end
  return true
end

p prime?(3)

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts