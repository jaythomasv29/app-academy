#### Using splat operator in different ways
def say_hello(first_name, *other_args) # allows a method to take in any number of arguments in the form of an array using spliat
  p first_name
  p other_args
end

def say_hello_2(first, middle, last)
  p first
  p middle
  p last
end

say_hello("james", "vongampai", "student", "mountain view", "male")

args = ["james", "thomas", "vongampai"]

say_hello_2(*args) # removing the brackets in the array, (unpacking an array

teachers = ["Oliver", "Alvin", "Tommy"]

new_teachers = [*teachers, "Bobby", "Jameson"]
p new_teachers

#### Using ** double splat operator - with hashes, (keys must be symbols)
hash = { a: 1, b: 2 }
new_hash = { **hash, c: 3, d: 4 }
p new_hash
