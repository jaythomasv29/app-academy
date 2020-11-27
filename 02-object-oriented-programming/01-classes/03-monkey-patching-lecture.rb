# Monkey Patching - Adding additional method to an existing class

# Ruby Types are really classes: Integer,String, Array, Hash, etc...

class String
  def upcase?
    self.upcase == self
  end

  def downcase?
    self.downcase = self
  end

end

"hello".upcase?
"hello".downcase?

