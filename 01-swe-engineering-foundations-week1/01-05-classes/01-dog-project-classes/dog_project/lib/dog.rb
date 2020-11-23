class Dog
  def initialize(name, breed, age, bark, favorite_foods)
    @name, @breed, @age, @bark, @favorite_foods = name, breed, age, bark, favorite_foods
  end

  # getters
  def name
    @name
  end

  def breed
    @breed
  end

  def age
    @age
  end

  def bark
    @bark
  end

  def favorite_foods
    @favorite_foods
  end

  # setter
  def name=(name)
    @name = name
  end

  def breed=(breed)
    @breed = breed
  end

  def age=(age)
    @age = age
  end

  def bark=(bark)
    @bark = bark
  end

  def bark
    if age > 3
      return @bark.upcase
    else
      @bark.downcase
    end
  end

  def favorite_foods=(food)
    @favorite_foods
  end

  def favorite_food?(string)
    @favorite_foods.any? { |ele| ele.downcase == string.downcase }
  end
end
