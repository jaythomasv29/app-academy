# attr_reader - getter methods
# attr_writer - setter methods
# attr_accessor - getter & setter methods both
class Dog
  # specify access you want access to (GETTERS)
  attr_reader :name, :breed, :age # same as attr_reader(:name, :age) / set the getters (attr_reader)
  attr_writer :name, :breed, :age # setter methods
  attr_accessor :name, :breed, :age # for both getter & setter

  def initialize(name, breed, age)
    @name, @breed, @age = name, breed, age
  end
end

my_dog = Dog.new("Chelsea", "Shiba", 2)
