def zip(*arr) # splat operator 
	output = []
  (0..arr[0].length-1).each do |i| # 0 -> array length
		temp = []
    arr.each do |ele| # 
			temp.push(ele[i]) # [...,ele[i],...]
		end
		output.push(temp)
  end
	return output
end

array_1 = ['a', 'b', 'c'] 
array_2 = [1, 2, 3] 
array_3 = ['w', 'x', 'y'] 


p zip(array_1, array_2)
p zip(array_2, array_1)
p zip(array_1, array_2, array_3)