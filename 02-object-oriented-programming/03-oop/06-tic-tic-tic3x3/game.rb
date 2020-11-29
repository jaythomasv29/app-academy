#  will be the main class that houses the instances of
# Board and HumanPlayer required for gameplay.

require_relative "board.rb"
require_relative "human_player.rb"

class Game
  def initialize(player_1_mark, player_2_mark)
    @board = Board.new() # create a game board
    @player_1 = HumanPlayer.new(player_1_mark) # new player_1 instance
    @player_2 = HumanPlayer.new(player_2_mark) # new player_2 instance
    @current_player = @player_1 # set current player
  end

  def switch_turn
    if @current_player == @player_1 # if current player is player_1
      @current_player = @player_2 # switch to player_2
    else # if @current_player == player_2
      @current_player = @player_1 # switch back to player_1
    end
  end

  def play
    puts "Tic-Tac-Toe game has started..."
    while @board.empty_positions? # while an empty position exists
      puts "Player #{@current_player.mark}'s turn has started..."
      @board.print
      position = @current_player.get_position
      @board.place_mark(position, @current_player.mark)
      if @board.win?(@current_player.mark) # check if @current_player won
        puts "Victory to #{@current_player.mark}"
        return "Game Over"
      else
        self.switch_turn
        # puts "Player #{@current_player.mark}'s turn ended...Switch turns!"
      end
    end
    return "The game ended in a draw!"
  end
end
