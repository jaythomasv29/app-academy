def partition(arr, n)
  greater_eq_nums = arr.select { |num| num >= n }
  lesser_nums = arr.select { |num| num < n }
  [lesser_nums, greater_eq_nums]
end

p partition([11, 5, 13, 2, 3], 7)
