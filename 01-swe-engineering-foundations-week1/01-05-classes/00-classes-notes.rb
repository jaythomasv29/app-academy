# Agenda
# - why classes?
# - instance variables / attributes
# - getters / setters
# - methods

# Defining a class
class Cat # Cat class
  def initialize(name, color, age)
    @name, @color, @age = name, color, age
  end

  # getter
  def name
    @name
  end

  def color
    @color
  end

  def age
    @age
  end
end

class Car
  @@num_wheels = 4 # class variable
  @@engine_status = false

  def initialize(brand, color, hp)
    @brand, @color, @hp = brand, color, hp
  end

  def engine_status
    @@engine_status
  end

  # getter
  def num_wheels
    @@num_wheels
  end

  def brand
    @brand
  end

  def engine_start
    @@engine_status = true
    p "engine has started"
  end

  def engine_off
    @@engine_status = false
    p "engine has shut off"
  end

  def color
    @color
  end

  def hp
    @hp
  end
end

# initialize
car_1 = Car.new("Subaru", "Grey", 300)
p car_1.brand
p car_1.engine_status
car_1.engine_start
p car_1.engine_status
p car_1.num_wheels

cat_2 = Cat.new("Lyla", "black/white", 3)
# p cat_2.name

# p cat_1
# p cat_2
