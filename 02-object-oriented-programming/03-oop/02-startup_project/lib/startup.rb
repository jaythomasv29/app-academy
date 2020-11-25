require "employee"

class Startup
  attr_reader :name, :funding, :salaries, :employees # getter methods for @name, @funding, @salaries

  def initialize(name, funding, salary_hash) # salaries (hash) containing `title` => `salary` pairs"
    @name, @funding, @salaries = name, funding, salary_hash
    @employees = []
  end

  def valid_title?(title)
    # when given title exists return true
    # when given title does not exist return false
    # hash = {'title' => 'salary}
    @salaries.has_key?(title) # returns boolean if exists or not
  end

  ### spec:94
  # def (startup) # check if our startup has more funding than another
  #   self.@funding > startup.funding # our startup has more funding than the arg startup
  # end

  def hire(employee_name, title)
    if self.valid_title?(title)
      @employees.push(Employee.new(employee_name, title))
    else
      raise "Error adding employee"
    end
  end

  def size
    @employees.length
  end

  def pay_employee(employee) # takes employee instance as an arg
    # when has enough funding to pay
    # call Employee#pay with the salary corresponding with their title
    if @funding >= @salaries[employee.title] # check if funding has enough to corresponding title
      employee.pay(@salaries[employee.title]) # pay the employee
      @funding -= @salaries[employee.title] # reduce pay from funding
    else
      raise "Error paying employee"
    end
  end

  def payday
    # should call pay_employee for each employee
    @employees.each { |employee_inst| pay_employee(employee_inst) }
  end

  def average_salary ### why 3800 and not 3650
    @employees.inject(0) { |acc, employee| acc + @salaries[employee.title] } / @employees.length
  end

  def close
    @employees = [] # set employees to empty array
    @funding = 0
  end

  def acquire(startup)
    # should add the given startup's salaries to our salaries without overwriting any of ours
    startup.salaries.each do |k, v|
      if !@salaries.has_key?(k) # if startup[k] does not have the same key
        @salaries[k] = v # we can put into @startup
      end
      # should add the given employees to @employees
    end
    @funding += startup.funding # add given startup's funding to our @funding
    startup.employees.each { |employee| @employees << employee }
    startup.close # close startup
  end
end
