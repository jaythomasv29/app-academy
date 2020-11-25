def bubble_sort(arr)
  sorted = false # create a flag to allow multiple passes
  while !sorted # while sorting is happening
    sorted = true # sorting is on
    (0...arr.length - 1).each do |i|
      # conditional to check if the earlier element is  is greater than
      if arr[i] > arr[i + 1] # if the earlier element is greater, then we need to swap
        arr[i], arr[i + 1] = arr[i + 1], arr[i] # reassign values to put the lesser value element to the front
        sorted = false # switch sorting to make it repeat pass
      end
    end
  end
  arr
end

bubble_sort()
