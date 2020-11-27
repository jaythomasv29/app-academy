class Person
  # getter methods
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name, @last_name, @age, = first_name, last_name, age
  end

  # syntactic sugar: equality method
  def ==(person)
    self.last_name == person.last_name # check itself with another person
  end

  def >(person)
    self.age > person.age # check equality of age
  end
end

person_1 = Person.new("James", "Vongampai", 28)
person_2 = Person.new("Jantira", "Vongampai", 30)
person_3 = Person.new("Bob", "Marley", 55)

p person_1 == (person_2)
p person_1 == person_2 # same
p person_1.last_name == person_2.last_name

p person_1.last_name == person_3.last_name
p person_1 == person_3
