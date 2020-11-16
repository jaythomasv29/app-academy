# default parameters for method
def repeat(str, n = 1) # default value for parameter
  n.times { p str }
end

repeat("hello", 4)

#
def print_h(name, hash)
  p name
  p hash
end

print_h("James", city: "New York", color: "Red")

def modify_string(str, options={"upper"=>false, "repeats"=>1})
  str.upcase! if options["upper"]
  p str * options["repeats"]
end

modify_string("bye")   # => "bye"
modify_string("bye", "upper"=>true, "repeats"=>3)   # => "BYEBYEBYE"