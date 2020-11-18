# write a method get_double_age that takes in a hash and returns twice the age value of the hash

test_hash = { "name" => "James", "age" => 28 }
p test_hash["age"]

def get_double_age(hash)
  # returns twice the 'age' value of the hash
  return hash["age"] * 2
end
