def two_sum(nums, target)
    pairs = {}
   nums.each do |n|
    pairs[n] = target - n # make a key:perfectPair hash
   end
  pairs.each do |k, v|
    p nums.count(k)
    if k == v && nums.count(k) == 1 # if the numbers are the same and they equal to target
      next
    end
   if (nums.include?(k) && nums.include?(v)) && k + v == target # if the key and value are both in nums[] AND equal to target sum, return the index of the key and val
    return [nums.index(k), nums.rindex(v)]
   end
  end
end

arr = [2,7,11,15]
target = 9

p two_sum(arr, target)

def two_sum2(nums, target)
    pairs = {}
   nums.each do |n|
       perfectPair = target - n
       if nums.include?(perfectPair) # if the perfectPair exists in the nums[] put it as the key/val
    pairs[nums.index(n)] = nums.index(perfectPair) # make a key:perfectPair hash
   end
  pairs.each do |k, v|
    p nums.count(k)
    if k == v && nums.count(k) == 1 # if the numbers are the same and they equal to target
      next
    end
   if (nums.include?(k) && nums.include?(v)) && k + v == target 
    return [nums.index(k), nums.rindex(v)]
   end
  end
end