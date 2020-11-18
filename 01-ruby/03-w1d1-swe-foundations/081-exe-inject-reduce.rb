nums = [2, 4, 6, 8, 10]
target = 8



answer = nums.inject do |acc, ele|
  acc + ele
  end
end


  