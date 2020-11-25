# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
def compress_str(str)
  result = ""
  count = 1
  prev_char = ""

  (0..str.length - 1).each do |i|
    if prev_char == str[i]
      count += 1
    else # this is when we do the pushing
    end

    result
  end
end

#   # 4abcc => 4a1bcc

#   # array of array of letters each where there are the same letters are different
#   #
#   p compress_str("aaabbc")        # => "3a2bc"
#   p compress_str("xxyyyyzz")      # => "2x4y2z"
#   p compress_str("qqqqq")         # => "5q"
#   p compress_str("mississippi")   # => "mi2si2si2pi"

# subs.map {|ele| ele[0] > 1 ? [ele[0].to_s], ele[1] : ele[1]}.flatten

# def compress_str(str)
#   subarrays = []

#   index = 0
#   start = 0
#   # create the subarrays

#   while index < str.length
#     if str[index] == str[index + 1] # if the two neighboring chars are the same
#       index += 1
#     else
#       subarrays << str[start..index]
#       index += 1
#       start = index
#     end
#   end
#   # [aaaa],[bb],[c]

#   # output
#   # subarrays.map { |ele| ele.length > 1 ? ele.length.to_s + ele[0] : ele[0] }.join("")
#   output = ''
#   subarrays.each do |ele|
#     if ele.length > 1
#       output += ele.length.to_s + ele[0]
#     else
#       output += ele[0]
#     end
#   end
#   output
# end

# p compress_str("aaabbc")        # => "3a2bc"
# p compress_str("xxyyyyzz")      # => "2x4y2z"
# p compress_str("qqqqq")         # => "5q"
# p compress_str("mississippi")   # => "mi2si2si2pi"

# def compress(str)
#     str.chars.slice_when {|j,k| j!=k}.to_a.map!{|el| el.length > 1? el[0]+el.length.to_s : el[0]}.join
# end

# def readability(compress_str(str))
#   num = 1 / number of times chris paused while explaining code => 1/10
# end

def compress_str(str)
  count = 1
  prev_c = ""
  i = 0
  # str.each_char.with_index do |c,i|
  while i < str.length + 1
    if prev_c == str[i]
      count += 1
    else # where char is not same
      if count >= 2
        str = str[0..i - count] + count.to_s + str[i..-1]
        i = i + 2 - count
      end
      count = 1
    end
    prev_c = str[i] # exit conditional and add
    i += 1
  end
  str
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
