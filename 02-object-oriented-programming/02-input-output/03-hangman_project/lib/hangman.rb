class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
  def Hangman.random_word # self refers to the class itself directly
    DICTIONARY.sample
  end

  def initialize()
    @secret_word = Hangman.random_word # "should set @secret_word with the random word
    @guess_word = Array.new(@secret_word.length, "_") # same length as the @secret_word containing '_' as each ele
    @attempted_chars = [] # to be an empty array
    @remaining_incorrect_guesses = 5 # remaining_incorrect_guesses to 5
  end

  # "should get (return) @guess_word"
  def guess_word
    @guess_word
  end

  # attempted_chars should return attempted_chars
  def attempted_chars
    @attempted_chars
  end

  # remaining_incorrect_guesses should return attempted_chars
  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  #already_attempted? should accept char as arg
  def already_attempted?(char)
    attempted_chars.any? { |attempted_chars| char == attempted_chars } # check with .any? if there are any similar chars
  end

  # get_matching_indices => return an array containing all indicies of @secret_word where char exists
  def get_matching_indices(char)
    (0...@secret_word.length).find_all { |i| @secret_word[i] == char }
  end

  # fill_indices => accep char and array of indices
  # set the given indices of @guess_word to given char
  def fill_indices(char, arr)
    arr.each { |idx| @guess_word[idx] = char }
  end

  # Part 2
  def try_guess(char) # should accept char as an arg
    if self.already_attempted?(char) # if it has already been attempted
      p "that has already been attempted"
      return false
    else # for non attempted letters: a
      @attempted_chars.push(char) # put into @attempted_chars arr
      if self.get_matching_indices(char).length == 0 # if there are no matchin indices
        @remaining_incorrect_guesses -= 1
      else
        self.fill_indices(char, self.get_matching_indices(char))
      end
      return true
    end
  end

  def ask_user_for_guess
    p "Enter a char"
    self.try_guess(gets.chomp) # use user input in method call
  end

  def win?
    if @guess_word.join("") == @secret_word
      print "WIN"
      return true
    else
      return false
    end
  end

  def lose?
    if @remaining_incorrect_guesses > 0
      return false
    else
      p "LOSE"
      return true
    end
  end

  def game_over?
    if self.win? || self.lose?
      p @secret_word
      return true
    else
      return false
    end
  end
end
