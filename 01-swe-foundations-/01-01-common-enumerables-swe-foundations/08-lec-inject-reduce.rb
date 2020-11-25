arr = [11, 22, 36, 45]

sum_even = [11, 7, 2, 4].inject(0) do |acc, el|
  if el.even?
    acc + el
  else
    acc
  end
end # => 6

p sum_even

sum_all = arr.inject(0) do |acc, el|
  acc + el
end

p sum_all

####
# finding minimum value in array using .inject
p [11, 7, 2, 4].inject do |acc, el|
  if el < acc
    el
  else
    acc
  end
end # => 2
