def substrings(str, len = nil)
  res = []
  i = 0
  i2 = i + 1
  while i < str.length
    res << str[i]
    while i2 < str.length
      res << str[i..i2]
      i2 += 1
    end
    i += 1
    i2 = i + 1
  end
  res
  # return len.nil? ? res : res.select { |chars| chars.length == len }
end

p substrings("cats")     # => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
