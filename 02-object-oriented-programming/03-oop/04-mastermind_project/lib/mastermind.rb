require_relative "code"

class Mastermind
  def initialize(len)
    @secret_code = Code.random(len) # calling code#random return a random peg sequence
  end

  def print_matches(code_instance)
    puts @secret_code.num_exact_matches(code_instance)
    puts @secret_code.num_near_matches(code_instance)
  end

  def ask_user_for_guess
    puts "Enter a code"
    print_matches(Code.from_string(gets.chomp)) # check the matches
    # check if the user_guess is same as @secret_word
    @secret_code == Code.from_string(gets.chomp)
  end
end
