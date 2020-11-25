


##### part_1 ######

require 'byebug'
def is_prime?(num)
  return false if num < 2 # if the number is less than 2 return false
  (2...num).none? { |i|  num % i == 0 } # .none return bool if 
end

def get_prime_numbers(n_th) # 3
  result = [] # populate ath array with all prime numbers [2,3]
  count = 0 # 1 , 2,3
  number = 2 # starting number, 3,4,5
  while count != n_th # 0 != 3 (true), 1 != 3 
    # p is_prime?(number) # is_prime?(2), is_prime(3)
    if is_prime?(number) # is_prime?(2) true, is_prime?(3) true
      result << number #[2]
      count += 1 # 1
    end
    number += 1 # 3
  end
  result
end
# p get_prime_numbers(17) # [2,3,5]

def nth_prime(num) # 3
  prime_numbers = get_prime_numbers(num)# [2,3,5] # all prime numbers are in here
  prime_numbers[num-1] # prime_numbers[3-2] => 5
end
p nth_prime(17)

# p get_prime_numbers(3)
# nth_prime(1) # => (2)
# nth_prime(2) # => (3)
# nth_prime(3) # => (5)
# nth_prime(4) # => (7)
# nth_prime(300) # => (1987) 




# def prime_range(min,max)  # 4, 17 numbers > min && numbers <= max
#   return [] if get_prime_numbers(max)[min..max] == nil
#   arr = get_prime_numbers(max)
#   arr.select do |number| 
#     number >= min && number <= max
#   end
# end




def prime_range(min,max)
  (min..max).select { |num| is_prime?(num)}
end
# p prime_range(4, 17) # 5, 7, 11, 13, 17]
# p prime_range(23, 31) # [23, 29, 31]
# p prime_range(1990, 2000) # [1993, 1997, 1999]
# p prime_range(-10, 1 ) # [] 



