class Board
  attr_reader :grid

  def initialize()
    @grid = Array.new(3) { Array.new(3, "_") }
  end

  def valid?(position) # takes in an array position => [x,y]
    row_coord = position[0] # y axis
    col_coord = position[1] # y axis
    row_coord <= 3 && row_coord >= 0 && col_coord <= 3 && col_coord >= 0
  end

  def empty?(position)
    row_coord = position[0] # y axis
    col_coord = position[1] # y axis
    self[row_coord][col_coord] == "_" # if it equal to '_' => it is empty # CHECK INITIALIZED GRID
  end

  def [](position) # this returns the element at a given position
    @grid[position] # GETTER for getting array[x][y]
  end

  def []=(position, value) # this reassign an element at given position
    self[position[0], position[1]] = value # SET THE VALUE IN THE INITALIZED GRID
  end

  def place_mark(position, mark)
    row_coord = position[0] # y axis
    col_coord = position[1] # y axis

    if valid?(position) && empty?(position) # if the position is valid && the position is empty
      self[row_coord][col_coord] = mark # place the mark at the instance where it is called # PLACE MARK IN INITIALIZED GRID
    else
      raise "This position is not valid or exists already"
    end
  end

  def print
    # print out the board and all of the marks that have been placed on it
    self.each { |row| puts row.join(" ") } # PRINT OUT THE INSTANCE
  end

  def win_row?(mark)
    idx1 = 0
    idx2 = 0
    result = []
    while idx2 < self.grid.length #[idx1][idx2]
      # if temp_col.all? {|ele| ele == :mark} # if all the elements in the array are equal to the mark
      temp_col = []
      while idx1 < self.grid.length
        temp_col << self.grid[idx1][idx2]
        idx1 += 1
      end
      result << temp_col
      temp_col = []
      idx2 += 1
      idx1 = 0
    end
    # check the result to see if there are any matches
    result.any? { |arr| arr.all? { |ele| ele == mark } }
  end

  def win_diagonal?(mark)
    diag_1 = []
    diag_2 = []
    (0...self.grid.length).each do |i|
      diag_1 << self.grid[i][i]
      diag_2 << self.grid[i][-1 - i]
    end
    diag_1.all? { |ele| ele == mark } || diag_2.all? { |ele| ele == mark } # check if all in the array are the same mark
  end

  def win?(mark)
    win_diagonal?(mark) || win_row?(mark)
  end

  def empty_positions? # return a boolean indicating whether or not there is at least one empty position on the grid
    self.grid.flatten.any? { |ele| ele == "_" } # check to see if at least one position is equal to a '_'
  end
end
