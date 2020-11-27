require_relative "board"
require_relative "player"

class Battleship
  attr_reader :board, :player # getter for board, player

  def initialize(n)
    @n = n
    @player = Player.new()
    @remaining_misses = (n ** 2) / 2
    @board = Board.new(n)
  end

  def start_game
    @board.place_random_ships
    puts @board.size / 4
    @board.print
  end

  def lose?
    if @remaining_misses <= 0
      puts "you lose"
      return true
    else
      false
    end
  end

  def win?
    if board.num_ships == 0
      puts "you win"
      return true
    else
      false
    end
  end

  def game_over?
    if self.win? || self.lose?
      return true
    else
      false
    end
  end

  def turn
    if @board.attack(player.get_move)
      @board.print
    else
      @remaining_misses -= 1
      @board.print
    end
    puts @remaining_misses
  end
end
