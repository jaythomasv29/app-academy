class Employee
  attr_reader :name, :title # getter method for @name , @ title

  def initialize(name, title)
    @name, @title = name, title
    @earnings = 0 # set earnings to 0
  end

  def pay(amount) # #pay to accept an ammount
    # should increase earnings  by a given amount
    @earnings += amount
  end
end
