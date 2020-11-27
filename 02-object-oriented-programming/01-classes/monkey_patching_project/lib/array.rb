# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    if self.length >= 2
      return self.max - self.min
    elsif self.length == 1
      return 0
    else
      nil
    end
  end

  #average
  def average
    if self.length == 0
      return nil
    elsif self.all? { |num| num.is_a?(Numeric) } # if all the items in an array are numbers
      return self.sum / self.length.to_f
    end
  end

  #median

  def median
    middle = (self.length / 2).floor
    sorted = self.sort
    if sorted.length % 2 != 0
      return sorted[middle]
    else
      return sorted[middle] + sorted[middle + 1] / 2.0
    end
  end

  #counts
  # should return a hash representing the count of each element of the array"
  def counts
    count = Hash.new(0)
    self.each { |ele| count[ele] += 1 }
    count
  end

  # my_count
  def my_count(char)
    # accept any val as the argument and return the number of times that val appears
    self.counts[char]
  end

  # my_index
  def my_index(val)
    result = !self.include?(val) ? nil : self.each_with_index { |ele, i| return i if ele == val }
    # if !self.include?(val)
    #   return nil
    # else
    #   self.each_with_index { |ele, i| return i if ele == val }
    # end
    result
  end

  def my_uniq
    p self.counts.keys
  end

  def my_transpose
    idx1 = 0
    idx2 = 0
    result = []
    while idx2 < self.length
      temp = []
      while idx1 < self.length
        temp << self[idx2][idx1]
        idx1 += 1
      end
      result << temp
      idx2 += 1
      idx1 = 0
    end
    result
  end
end

arr_1 = [
          ["a", "b", "c"],
          ["d", "e", "f"],
          ["g", "h", "i"],
        ]
p arr_1.my_transpose
# ["a", "b", "a", "a", "b"].my_uniq
# [0,0][1,0][2,0],
# [0,1],[1,1][2,1]
# [0,2],[1,2],[2,2]
