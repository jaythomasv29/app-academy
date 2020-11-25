
arr = [1,2,3,4,4]


p arr.inject {|acc, ele| acc+=ele}


least_num = arr.inject do |acc, ele| 
  if ele < acc # go through each element and compare with the first ele
     ele
  else
     acc
  end
end
