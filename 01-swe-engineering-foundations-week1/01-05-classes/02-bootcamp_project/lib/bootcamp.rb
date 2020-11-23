class Bootcamp
  # grades = Hash.new { |h, k| h[k] = [] }
  def initialize(name, slogan, student_capacity)
    # bootcamp_1 = Bootcamp.new('james academy', 'just do it', 1)
    @name, @slogan, @student_capacity = name, slogan, student_capacity
    @teachers = [] # initialize as empty arrays
    @students = [] # initialize as empty arrays
    @grades = Hash.new {|h, k| h[k] = []} # initialize as empty hash
  end

# setter
  def name=(name)
    @name = name
  end

  def slogan=(slogan)
    @slogan = slogan
  end

  def student_capacity=(num)
    @student_capacity = student_capacity
  end
  
# getters
  def name
    @name
  end

  def slogan
    @slogan
  end

  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire(str)
    @teachers << str
  end

  def enroll(str)
    # if the student capacity is not full 
    if @students.length < @student_capacity
      @students.push(str)
      return str== @students[-1]
    else
      return false
    end
  end

  def enrolled?(str)
    # "should accept a student (string) and return a boolean indicating whether the student is enrolled in the bootcamp"
    @students.any? {|ele| ele==str}
  end

  def student_to_teacher_ratio
    (@students.length / @teachers.length).floor
  end

  def add_grade(std_name, grade)
    #when the student is enrolled
    if self.enrolled?(std_name) # check if student is enrolled
      @grades[std_name].push(grade)
    return true 
    end
  return false
  end

  def num_grades(std_name)
    # accept student name and return the number of grades they have
    @grades[std_name].length
  end

  def average_grade(std_name)
    if @grades[std_name] == []
      return nil
    else
      return (@grades[std_name].sum) / self.num_grades(std_name)
    end
  end

end



bootcamp_1 = Bootcamp.new('james academy', 'just do it', 3)
p bootcamp_1.students
bootcamp_1.enroll('chris')
p bootcamp_1.enrolled?('chris')