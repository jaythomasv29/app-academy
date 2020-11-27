class HumanPlayer
  attr_reader :mark

  def initialize(mark)
    @mark = mark # instance variable stored to their mark
  end

  def get_position
    puts 'Please enter a valid row & col positon by typing two numbers ex: "1 2"' # prompt the user
    mark = gets.chomp
    if (/[a-z]/).match?(mark) || mark.split(" ").length != 2 # if it contains any letters
      p mark.split(" ").length
      # raise an error
      raise "Error, please use only numbers with the correct length"
    else
      return mark.split.map { |ele| ele.to_i } # take the string input and convert it to an array of integers
    end
  end
end
