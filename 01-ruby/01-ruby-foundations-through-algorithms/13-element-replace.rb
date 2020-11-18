# Write a method element_replace that takes in an array and a hash.
# The method should return a new array where elements of the original array are
# replaced with their corresponding values in the hash.

def element_replace(arr, hash)
  result = []
  arr.each do |ele|
    if (hash[ele])
      result.push(hash[ele])
    else # false scenario
      result.push(ele)
    end
  end
  return result
end

arr2 = ["dog", "cat", "mouse"]
hash2 = { "dog" => "bork", "cat" => "meow", "duck" => "quack" }
print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = { "Serena Williams" => "tennis", "LeBron James" => "basketball" }
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts
