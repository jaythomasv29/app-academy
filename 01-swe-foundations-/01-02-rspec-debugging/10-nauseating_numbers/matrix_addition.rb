require "byebug"

# Let a 2-dimensional array be known as a "matrix". 
# Write a method matrix_addition that accepts two matrices as arguments. 
# The two matrices are guaranteed to have the same "height" and "width". 
# The method should return a new matrix representing the sum of the two arguments.
#  To add matrices, we simply add the values at the same positions:

def matrix_addition(m1, m2)
  
  sum_matrix = Array.new(m1.length) {Array.new(m1[0].length, 0)}

  (0...m1.length).each do |arr_idx| # height #
    (0...m1[arr_idx].length).each do |i| # width
      sum_matrix[arr_idx][i] = m1[arr_idx][i] + m2[arr_idx][i]
    end
  end 
  sum_matrix
end



matrix_a = [[2,5], 
            [4,7]]
matrix_b = [[9,1], 
            [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]