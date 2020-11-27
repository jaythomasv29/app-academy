class Code
  attr_reader :pegs # getter method for pegs
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow,
  }

  def initialize(pegs)
    if Code.valid_pegs?(pegs)
      @pegs = pegs.map { |chars| chars.upcase } # make pegs uppercase
    else
      raise "Error in valid pegs"
    end
  end

  def self.valid_pegs?(arr)
    arr.all? { |char| POSSIBLE_PEGS.has_key?(char.upcase) }
  end

  def self.random(len)
    randomized_pegs = []
    len.times { randomized_pegs << POSSIBLE_PEGS.keys.sample }
    Code.new(randomized_pegs)
  end

  def self.from_string(sequence)
    Code.new(sequence.split(""))
  end

  def [](index) # get the current position of ele at given index
    return @pegs[index]
  end

  def length
    @pegs.length
  end

  # Part 2
  def num_exact_matches(guess_instance)
    exact_matches = 0
    # enumerate through guess_instance and check with randomized_instance
    (0...guess_instance.length).each do |i|
      # if they are at the same index
      if guess_instance[i] == @pegs[i]
        exact_matches += 1
      end
    end
    exact_matches
  end

  def num_near_matches(guess_instance)
    near_matches = 0
    (0...guess_instance.length).each do |i| # enumerate using the index
      if @pegs.include?(guess_instance[i]) && guess_instance[i] != @pegs[i]
        near_matches += 1
      end
    end
    near_matches
  end

  def ==(guess_instance) # check to see if the entire guess is same as the solution
    (0...guess_instance.length).all? do |i|
      guess_instance[i] == @pegs[i]
    end
  end
end
