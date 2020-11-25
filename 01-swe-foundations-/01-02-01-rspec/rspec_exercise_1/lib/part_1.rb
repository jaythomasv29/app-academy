def average(n1, n2)
  (n1 + n2) / 2.0
end

def average_array(arr)
  arr.sum / arr.length.to_f
end

def repeat(str, n)
  str * n
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(sent)
  sent_arr = sent.split(" ").map.with_index do |word, i|
    if i == 0
      word.upcase
    else
      i % 2 != 0 ? word.downcase : word.upcase # for all the even indexes we will make it downcase
    end
  end
  sent_arr.join(" ")
end

p alternating_case("hello world, how is it going?") # HELLO world, HOW is IT going?
