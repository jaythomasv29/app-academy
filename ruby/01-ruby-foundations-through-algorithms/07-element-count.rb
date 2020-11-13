# Write a method element_count that takes in an array and
# returns a hash representing the count of each element in the array.

def element_count(arr)
  result = Hash.new(0)
  arr.each do |ele|
    result[ele] += 1
  end
  return result
end

letters = ["a", "b", "c", "a", "c"]
p element_count(letters)

puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}
