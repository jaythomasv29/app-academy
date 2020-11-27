class GuessingGame
  def initialize(min, max)
    @min, @max = min, max
    @secret_num = rand(min..max)
    @num_attempts = 0
    @game_over = false
  end

  # getter method
  def num_attempts
    @num_attempts
  end

  def game_over?
    @game_over
  end

  def check_num(user_guess)
    @num_attempts += 1
    if user_guess == @secret_num
      @game_over = true
      p "you win"
    elsif user_guess > @secret_num
      p "too big"
    else
      p "too small"
    end
  end

  def ask_user
    p "enter a number"
    user_num = gets.chomp.to_i # convert from string to integer number
    check_num(user_num)
  end
end
