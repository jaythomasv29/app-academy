# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"

def largest_prime_factor(num)
  # do a map to get all factors && prime
  factors = get_factor(num)
  # return the mapped_array[-1] = > this number will be the biggest (at end) and also prime
  prime_factors = factors.select do |number|
    prime?(number)
  end
  prime_factors[-1]
end

def get_factor(num)
  return [num] if prime?(num)
  # get all possible factors of a number
  factors = []
  (1...num).each do |i|
    factors << i if num % i == 0 # if it is a factor
  end
  factors
end

def prime?(num)
  # return boolean if the number is prime (true / false)
  return false if num < 2
  (2...num).each do |i|
    return false if num % i == 0
  end
  return true
end

def unique_chars?(str)
  chars = Hash.new(0)
  str.each_char { |char| chars[char] += 1 }
  values = chars.values  #= chars.each { |k, v| v }
  values.each do |num|
    return false if num > 1
  end
  true
end

# Hash.new { |h, k| h[k] = [] }
# created new hash
# default value of every k/v pair will be an array
# the array will be point to a different memory

def dupe_indices(arr)
  counts = Hash.new { |h, k| h[k] = [] }
  arr.each_with_index do |ele, index| # loop through the array ['a','a','c','b','d']
    counts[ele].push(index) if arr.count(ele) > 1 # if there are more than 1 of the same letter in the arr
  end
  counts
end

p dupe_indices(["a", "a", "b", "b", "c"])

def ana_array(arr1, arr2)
end

"string#{variable}"