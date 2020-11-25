def modify_string(str, options = { "upper" => false, "repeats" => 1 })
  str.upcase! if options["upper"]
  str * options["repeats"]
end

p modify_string("bye")   # => "bye"
p modify_string("bye", "upper" => true, "repeats" => 3)   # => "BYEBYEBYE"
# p modify_string("")

def prime?(num)
  # check if a number is prime
  # any numbe less than 2 is not prime
  return false if num < 2
  # loop through a range (2...num)and immediately exit loop when the number is divisible
  (2...num).each { |n| return false if num % n == 0 }
  true
end

p prime?(2)
p prime?(13)
p prime?(48)
p prime?(70)

p prime?(39)
p prime?(7)
