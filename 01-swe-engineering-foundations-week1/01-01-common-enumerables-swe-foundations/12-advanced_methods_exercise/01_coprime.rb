# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.
def coprime?(n1, n2)
  count_hash = Hash.new(0)
  [*get_prime_factors(n1), *get_prime_factors(n2)].each { |ele| count_hash[ele] += 1 }
  return false if count_hash.has_value?(2) # return false if there are duplicates
  true
end

def prime?(num)
  return false if num < 2
  (2...num).each { |n| return false if num % n == 0 }
  true
end

def get_prime_factors(num)
  result = []
  # find prime factors
  (2...num).each { |n| result << n if num % n == 0 && prime?(n) }
  result
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false

# check if both nunbers are prime
# if two numbers have common factors, then it is not coprime
# 6=>[2,3] 24 =>[2,3,,6,8] # false
# 25=>[5] 12=> [2,3,4,6]
# put in hash and then check if they there are any values over 1, then numbers will be in common
