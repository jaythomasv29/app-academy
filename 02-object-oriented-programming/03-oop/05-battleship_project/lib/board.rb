class Board
  def initialize(n)
    @grid = Array.new(n) { Array.new(n, :N) }
    @size = n * n
  end

  def size
    @size
  end

  def [](pos) #containing a pair of indices in the form [row, column]
    row = pos[0]
    col = pos[1]
    @grid[row][col] #grid[row][col] pos[]
  end

  def []=(pos, val) # set the current position equal to the val
    @grid[pos[0]][pos[1]] = val
  end

  # def num_ships loop through entire grid to check which elements == :S
  def num_ships
    count = 0
    (0...@grid[0].length).each do |row|
      (0...@grid[0].length).each do |col|
        if @grid[row][col] == :S
          count += 1
        end
      end
    end
    count
  end

  def attack(pos) # accepts possition array as arg
    if self[pos] == :S # if a ship is struck
      puts "you sunk my battleship"
      self[pos] = :H # set grid position to hit
      return true
    else # if a ship was not hit
      self[pos] = :X # set grid position to miss
      return false
    end
  end

  def place_random_ships
    max_ships = @size / 4 # max ships set to 25% of the grid
    ships_set = 0
    while ships_set < max_ships
      random_coord = [rand(@grid.length), rand(@grid.length)]
      if self[random_coord] == :N # if the current cord is not equal to a ship already
        self[random_coord] = :S
        ships_set += 1
      end
    end
  end

  def hidden_ships_grid
    hidden_grid = @grid.map { |arr| arr.map { |ele| ele == :S ? ele = :N : ele } }
    hidden_grid
  end

  def self.print_grid(two_d_arr)
    two_d_arr.each { |arr| puts arr.join(" ") }
  end

  def cheat
    Board.print_grid(@grid)
  end

  def print
    Board.print_grid(hidden_ships_grid)
  end
end
