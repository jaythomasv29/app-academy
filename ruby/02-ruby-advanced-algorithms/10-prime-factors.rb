# Write a method prime_factors that takes in a number and
# returns an array containing all of the prime factors of the given number.

def prime_factors(num)
  factors = get_factors(num)
  return factors.select { |number| prime?(number) }
end

def get_factors(num)
  factors = []
  (2..num).each do |n|
    if num % n == 0
      factors << n
    end
  end
  return factors
end

def prime?(num)
  if num < 2
    return false
  end
  (2...num).each do |n|
    if num % n == 0
      return false
    end
  end
  return true
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts
