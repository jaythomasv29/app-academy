require 'byebug'

# # Write a method strange_sums 
# that accepts an array of numbers as an argument.
#  The method should return a count of the number of distinct pairs
#   of elements that have a sum of zero. You may assume that the input array contains unique elements.

def strange_sums(arr)
    count = 0
    arr.each_with_index do |num_1, idx_1|
        arr.each_with_index do |num_2, idx_2|
            if idx_2 > idx_1
                count += 1 if num_1 + num_2 == 0
            end
        end
    end
    count
end

# p strange_sums([2, -3, 3, 4, -2])     # 2
# p strange_sums([42, 3, -1, -42])      # 1
# p strange_sums([-5, 5])               # 1
# p strange_sums([19, 6, -3, -20])      # 0
# p strange_sums([9])                   # 0


# Write a method pair_product that accepts an array of numbers and a product as arguments. 
# The method should return a boolean indicating whether or not a pair of distinct
#  elements in the array result in the product when multiplied together. You may assume 
#  that the input array contains unique elements.

def pair_product(arr, prod)
    arr.each_with_index do |num_1, idx_1|
        arr.each_with_index do |num_2, idx_2|
            if idx_2 > idx_1
                return true if num_1 * num_2 == prod
            end
        end
    end
    false 
end

# p pair_product([4, 2, 5, 8], 16)    # true
# p pair_product([8, 1, 9, 3], 8)     # true
# p pair_product([3, 4], 12)          # true
# p pair_product([3, 4, 6, 2, 5], 12) # true
# p pair_product([4, 2, 5, 7], 16)    # false
# p pair_product([8, 4, 9, 3], 8)     # false
# p pair_product([3], 12)             # false

# Write a method rampant_repeats that accepts a string and a hash as arguments. 
# The method should return a new string where characters of the original string 
# are repeated the number of times specified by the hash. 
# If a character does not exist as a key of the hash, then it should remain unchanged.

def rampant_repeats(str, hash)
    # we have result string
    # we loop through string
    # check if its in hash
    # if it is in hash => s * hash[v]
    # else we just add to result string
    # return string
    result = ''
    str.each_char {|s| hash[s] ? result += s*hash[s] : result += s}
    result
end

# p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
# p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
# p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
# p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'


# Write a method perfect_square that accepts a number as an argument. 
# The method should return a boolean indicating whether or not the argument is a perfect square. 
# A perfect square is a number that is the product of some number multiplied by itself. 
# For example, since 64 = 8 * 8 and 144 = 12 * 12, 64 and 144 are perfect squares; 35 is not a perfect square.
def perfect_square(num)
  if num < 2 && num >= 0 #(0 - ...2) 
    return true
  end
  (2..num / 2).each { |number| return true if number ** 2 == num }
  false
end

# p perfect_square(1)     # true
# p perfect_square(4)     # true
# p perfect_square(64)    # true
# p perfect_square(100)   # true
# p perfect_square(169)   # true
# p perfect_square(2)     # false
# p perfect_square(40)    # false
# p perfect_square(32)    # false
# p perfect_square(50)    # false

### Phase 2

# Write a method anti_prime? that accepts a number as an argument. 
# The method should return true if the given number has more divisors than all positive numbers less than the given number. 
# For example, 24 is an anti-prime because it has more divisors than any positive number less than 24. 
# Math Fact: Numbers that meet this criteria are also known as highly composite numbers.
def anti_prime?(num)
  fac = factors(num)
  (1...num).each { |ele| return false if fac.length <= factors(ele).length } #if the given number has LESS divisors than all positive numbers less than the given number. (break out return false)
  true
end

# helper function for factors
def factors(num)
  factor = []
  (1..(Math.sqrt(num)).floor).each do |n| 
    if num % n == 0 && n != num / n
      factor.push(n, num / n)
    elsif n == num / n && num % n == 0
      factor << n
    end
  end
  return factor
end


# p anti_prime?(24)   # true
# p anti_prime?(36)   # true
# p anti_prime?(48)   # true
# p anti_prime?(360)  # true
# p anti_prime?(1260) # true
# p anti_prime?(27)   # false
# p anti_prime?(5)    # false
# p anti_prime?(100)  # false
# p anti_prime?(136)  # false
# p anti_prime?(1024) # false


# Let a 2-dimensional array be known as a "matrix". 
# Write a method matrix_addition that accepts two matrices as arguments. 
# The two matrices are guaranteed to have the same "height" and "width". 
# The method should return a new matrix representing the sum of the two arguments. 
# To add matrices, we simply add the values at the same positions:

def matrix_addition(arr_1, arr_2)
    soln = []
    height = 0
    # debugger
    while height < arr_1.length
      #
      nested_sum = []
      len = 0
      while len < arr_1[0].length
        nested_sum << arr_1[height][len] + arr_2[height][len]
        len += 1
      end
      soln << nested_sum
      height += 1
    end
    soln 
end

#after lunch, find way to push sum of numbers into array, then that array back into array.

#height count variable
#length count variable
# while loop that runs until height and length count are met
#matrix_a[1]


# matrix_a = [[2,5], [4,7]] 
# matrix_b = [[9,1], [3,0]]
# matrix_c = [[-1,0], [0,-1]]
# matrix_d = [[2, -5], [7, 10], [0, 1]] 
# matrix_e = [[0 , 0], [12, 4], [6,  3]]
# p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]] 
# p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
# p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
# p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]

# Write a method mutual_factors that accepts any amount of numbers as arguments. 
# The method should return an array containing all of the common divisors shared among the arguments. 
# For example, the common divisors of 50 and 30 are 1, 2, 5, 10. 
# You can assume that all of the arguments are positive integers.

def mutual_factors(*num)
#get factors using factors() of all numbers
  result = []
  fact_hash = Hash.new(0)
  num.each do |n| # loop through the splat
    n_factor = factors(n) # current factors of that number being iterated

    n_factor.each do |i| 
      fact_hash[i] += 1 # add the factor into hash
      if fact_hash[i] == num.length 
        result << i
      end
    end
  end
  result.sort
end

# p mutual_factors(50, 30)            # [1, 2, 5, 10]
# p mutual_factors(50, 30, 45, 105)   # [1, 5]
# p mutual_factors(8, 4)              # [1, 2, 4]
# p mutual_factors(8, 4, 10)          # [1, 2]
# p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
# p mutual_factors(12, 24, 64)        # [1, 2, 4]
# p mutual_factors(22, 44)            # [1, 2, 11, 22]
# p mutual_factors(22, 44, 11)        # [1, 11]
# p mutual_factors(7)                 # [1, 7]
# p mutual_factors(7, 9)              # [1]

# The tribonacci sequence is similar to that of Fibonacci. 
# The first three numbers of the tribonacci sequence are 1, 1, and 2. 
# To generate the next number of the sequence, we take the sum of the previous three numbers. 
# The first six numbers of tribonacci sequence are: 1,1,2,4,7...

# Write a method tribonacci_number that accepts a number argument, n, 
# and returns the n-th number of the tribonacci sequence.
def tribonacci_number(num)
  if num == 1
    return 1
  elsif num == 2
    return 1
  elsif num == 3
    return 2
  else
    trib = [1,1,2]
    while trib.length < num
      trib << trib[-1] + trib[-2] + trib[-3]
    end
    trib[-1]
  end
end

# p tribonacci_number(1)  # 1
# p tribonacci_number(2)  # 1
# p tribonacci_number(3)  # 2
# p tribonacci_number(4)  # 4
# p tribonacci_number(5)  # 7
# p tribonacci_number(6)  # 13
# p tribonacci_number(7)  # 24
# p tribonacci_number(11) # 274

def matrix_addition_reloaded(*arr)
  # check height
  arr.one? do |nested_arr|
    if nested_arr.length != arr[0].length
      return nil
    end
  # check length
    if arr[0][0].length != nested_arr[0].length
      return nil
    end
  end
  
  if arr.length == 2
    return matrix_addition(arr[0], arr[1])
  elsif arr.length < 2
    return arr
  else
    sum = matrix_addition(arr[0], arr[1])
    i = 2
    while i < arr.length  
      sum = (matrix_addition(sum, arr[i]))
      i += 1
    end
    return sum
  end
  

end


# matrix_a = [[2,5], [4,7]]
# matrix_b = [[9,1], [3,0]]
# matrix_c = [[-1,0], [0,-1]]
# matrix_d = [[2, -5], [7, 10], [0, 1]] 
# matrix_e = [[0 , 0], [12, 4], [6,  3]]

# p matrix_addition_reloaded(matrix_a, matrix_b)              # [[11, 6], [7, 7]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_c)    # [[10, 6], [7, 6]]
# p matrix_addition_reloaded(matrix_e)                        # [[0, 0], [12, 4], [6, 3]]
# p matrix_addition_reloaded(matrix_d, matrix_e)              # [[2, -5], [19, 14], [6, 4]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_e)    # nil
# p matrix_addition_reloaded(matrix_d, matrix_e, matrix_c)    # nil

# Write a method squarocol? that accepts a 2-dimensional array as an argument. 
# The method should return a boolean indicating whether or not any row or column is 
# completely filled with the same element. 
# You may assume that the 2-dimensional array has "square" dimensions, 
# meaning it's height is the same as it's width.

def squarocol?(arr)
  
  
  #solve for when an array has all equal ele
  arr.each do |sub|
    # [x,y,x]
    if sub.all? {|ele| ele == sub[0]}
      return true
    end
  end
  
  #solve for when all arrays have same element in same length position
  len = 0
  while len < arr.length
    hght = 0
    x = arr[hght][len]
    count = 0
    while hght < arr[0].length
      if x == arr[hght][len] # case if we find repeating value
        count += 1
        if count == arr.length
          return true
        end
      else # case if it is not repeating anymore
        break #break out of height loop back into len loop
      end
      hght += 1
    end
    len += 1
  end
  false
end 


# p squarocol?([
#     [:x, :y, :x],
#     [:x, :z, :x],
#     [:o, :o, :o],
# ]) # true

# p squarocol?([
#     [:o, :x , :o],
#     [:x, :o , :x],
#     [:o, :x , :o],
# ]) # false

# p squarocol?([
#     [1, 2, 2, 7],
#     [1, 6, 6, 7],
#     [0, 5, 2, 7],
#     [4, 2, 9, 7],
# ]) # true

# p squarocol?([
#     [1, 2, 2, 7],
#     [1, 6, 6, 0],
#     [0, 5, 2, 7],
#     [4, 2, 9, 7],
# ]) # false

def pascals_triangle(num)
  if num == 1 
    return [[1]]
  elsif num == 2
    return [[1,1]]
  else
    pyramid = [[1], [1,1]] 
    while pyramid.length < num
      level = [1]
      i = 0
      while i < pyramid.length - 1
        level << pyramid[-1][i] + pyramid[-1][i+1]
        i += 1
      end
      level << 1
      pyramid << level
    end
  end
  pyramid
end

# p pascals_triangle(5)
# [
#     [1],
#     [1, 1],
#     [1, 2, 1],
#     [1, 3, 3, 1],
#     [1, 4, 6, 4, 1] # 5
# ]

def mersenne_prime(num)
  # get the mersenne number regardless of prime
  # num = 2**(0..) - 1
  count = 0 # 1
  exp = 1 # 2 3
  while count < num
    n = (2**exp) - 1 # 1, 3, 7
    if prime?(n)
      count += 1
    end
    exp += 1
  end
  n
  # check if that is prime, if not get the next
end

# prime helper function
def prime?(num)
  if num < 2
    return false
  else
    (2...num).each do |n|
      if num % n == 0
        return false
      end
    end
  end
  return true
end

# p prime?(13)

# p mersenne_prime(1) # 3
# p mersenne_prime(2) # 7
# p mersenne_prime(3) # 31
# p mersenne_prime(4) # 127
# p mersenne_prime(6) # 131071

def triangular_word?(str)
  #alphabet string
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  sum = 0
  #enumerate string to find index of letters in input string
  #add 1 to index, then sum of all indices
  str.each_char { |char| sum += alphabet.index(char) + 1 } 
  
  tri_num = 0
  count = 1
  while sum > tri_num
    tri_num = triangular_num(count)
    if tri_num == sum
      return true
    end
      count += 1
  end
  return false
  # check if it fulfills the triangular formula
  # (i * (i + 1)) / 2

end
#abc = 6 => (
def triangular_num(i)
  (i * (i + 1)) / 2
end

p triangular_word?('abc')       # true
p triangular_word?('ba')        # true
p triangular_word?('lovely')    # true
p triangular_word?('question')  # true
p triangular_word?('aa')        # false
p triangular_word?('cd')        # false
p triangular_word?('cat')       # false
p triangular_word?('sink')      # false

