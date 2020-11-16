arr = [1, 4, 65, 32, 99]
arr_even = [2, 4, 6, 8, 10]

####
# .each enumerable
arr.each { |num| p num }
####

####
# .map edits each element in the arr and returns a new array
def plus_10_each_ele(arr)
  arr.map { |num| num += 10 } # here we use an implicit return
end

####

p plus_10_each_ele(arr)

####
# .all? enumerable - returns true when ALL elements result in true
p arr_even.all? { |num| num.even? }
p arr.all? { |num| num.even? }
####

####
# .none? enumerable - check if NONE of the elements result in true
p arr_even.none? { |ele| ele.odd? } # check if NONE of the elements are odd
####

####
# .one? enumerable - returns a boolean if exactly one element results in true
p arr.one? { |ele| ele == 1 } # returns a boolean if exactly one element in arr is equal to 1
####

####
# .count enumerable - returns a number representing the count of elements that result in true
p ["james", "dino", "mouse", "mage"].count { |str| str.include?("a") } # => 2
p [1, 2, 3, 4, 5, 6].count { |el| el.even? }    # => 3
####

####
# .sum enumerable - gets the sum of all elements
p arr.sum
p arr_even.sum
####

#### .max && .min - easily find the max number and min number
p arr.max
p arr.min
####

####
# .flattten - return a 1 dimensional array of any multidimensional array
multi_d = [
  [["a", "b"], "c"],
  [["d"], ["e"]],
  "f",
]

p multi_d.flatten   # => ["a", "b", "c", "d", "e", "f"]
####
