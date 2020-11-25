# Write a method squaragonal? that accepts 2-dimensional array as an argument. 
# The method should return a boolean indicating whether or not the array contains all of the same element across either of its diagonals. 
# You may assume that the 2-dimensional array has "square" dimensions, meaning it's height is the same as it's width.


def squaragonal?(arr)
    
    
end

arr = [
    [:x, :y, :o],
    [:x, :x, :x],
    [:o, :o, :x],
]
squaragonal?(arr) # true

def squaragonal?(arr)
    dia1 = []
    dia2 = []
    (0...arr.length) do |i|
        dia1 << arr[i][i] # [x, x, x]
        dia2 << arr.transpose[i][i] #
        # dia2 << arr.transpose[i][-1 - i]
    end
    return true if dia1.uniq.length == 1 || dia2.uniq.length == 1
    false
end




 h = Hash.new {|h,k| h[k] = k}, 0 