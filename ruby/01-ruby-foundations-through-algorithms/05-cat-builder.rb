# write a method cat_builder that takes in a name, color, and age.
# the method should return a hash representing a cat with those values.

def cat_builder(name, color, age)
  cat_hash = { "name" => name, "color" => color, "age" => age }
  return cat_hash
end

p cat_builder("Lyla", "Black/White", 1)
