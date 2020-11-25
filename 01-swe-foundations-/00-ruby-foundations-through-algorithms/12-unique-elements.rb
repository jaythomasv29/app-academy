# Write a method unique_elements that takes
# in an array and returns a new array where
# all duplicate elements are removed. Solve this using a hash.
# Write a method unique_elements that takes in an array and
# returns a new array where all duplicate elements are removed.
#  Solve this using a hash.

def unique_elements(arr)
  hash = {}
  arr.each do |ele|
    hash[ele] = ele
  end
  return hash.keys
end

p unique_elements(["a", "b", "a", "a", "b", "c"]) #=> ["a", "b", "c"]
