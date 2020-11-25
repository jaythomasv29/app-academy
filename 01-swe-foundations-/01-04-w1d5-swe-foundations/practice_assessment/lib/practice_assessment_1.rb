# Define your methods here. 

# vowels array
# count = 0
# split string by spaces to get => words array
# for each word in words
# if word[0] in vowel
#  count ++
# return count
def first_letter_vowel_count(sent)
  count = 0
  vowels = 'aeiouAEIOU'
  sent.split(" ").each do |word|
    if vowels.include?(word[0])
      count += 1
    end
  end
  count
end


# p first_letter_vowel_count("apples are delicious") # => 2
# p first_letter_vowel_count("follow the yellow brick road") # => 0
# p first_letter_vowel_count("I am who I am")  # => 4


# def count_true(arr, prc)
#   # it "should accept an array and a proc as args"
#   # "should return an integer indicating the number of elements which returned true when passed into the proc"
#   arr.select {|ele| prc.call(ele) }.length

  
# end

def count_true(arr, prc)
  # count = 0
  # for ele in arr :
  #   if prc(ele)
  #     count++
  # return count
  count = 0
  arr.each do |ele|
    if prc.call(ele)
      count+=1
    end
  end
  count
end

# prc1 = Proc.new {|n| n.even? }
# prc2 = Proc.new {|n| n.odd? }
# prc3 = Proc.new {|str| str.include?("n")}
# prc4 = Proc.new {|n| n < 10}


# p count_true([1,2,3,4,5], prc1) #=> (2)
# p count_true([1,2,3,4,5], prc2) #=> (3)
# p count_true(["apple", "banana", "cantaloupe"], prc3) #=> (2)
# p count_true([100,200,300], prc4) #=> (0)

# def procformation(arr, proc1, proc2, proc3)
#   # "should accept an array and 3 procs as arguments"
# # it "should evaluate each element by the first proc and if that returns true the second proc should be called with that element, else the third. Return the results in an array."
# result = []
#   arr.each do |ele| 
#     if proc1.call(ele)  # evaluate each element by the first proc
#       result << proc2.call(ele)
#     else
#         result << proc3.call(ele)
#     end
#   end
#   result
# end


def procformation(arr, proc1, proc2, proc3)
  arr.each_with_index do |ele, i|
    arr[i] = proc1.call(ele) ? proc2.call(ele) : proc3.call(ele)
  end
  arr
end

# is_positive = Proc.new {|el| el >= 0 }
# square_it = Proc.new {|el| el * el }
# minus_hundred = Proc.new {|el| el - 100}

# p procformation([1,2,-3,4,-5], is_positive, square_it, minus_hundred) #=> ([1,4,-103,16,-105])
# p procformation([1,2,-3,4,-5], is_positive, square_it, minus_hundred) 


def array_of_array_sum(arr)
  sum = 0
  arr.each do |arr2|
    arr2.each do |ele|
      sum += ele
    end
  end
  sum
  # return arr.flatten.sum
end

p array_of_array_sum([[1,2],[3,4]]) #=> (10)

# def selective_reverse(str)
#   vowels = 'aeiouAEIOU'
#   selective_arr = str.split(" ").map do |word|
#     # condition if it is not a vowel, => logic 
#     # if the first AND AND last letter are not a vowel
#     # p !vowels.include?(word[0]) && !vowels.include?(word[-1])
#     if !vowels.include?(word[0]) && !vowels.include?(word[-1])
#     word.reverse
#     else
#       word
#     end
#   end
#   selective_arr.join(" ")
# end

def selective_reverse(str)
  vowels = 'aeiouAEIOU'
  # words = str.split(' ')
  # for i, word in str
    # !(if word[0] in vowels or word[word.length-1] in vowels)
      # words[i] = word.reverse()
  # words = words.join(' ')
  # words
  word.split(" ").each { |word| if !(vowels.include?(word[0] || vowels.include?(word[-1]))) ? word.reverse(): word}.join(" ")  
end

p selective_reverse("try to stay awake please") # ("yrt to yats awake please")
p selective_reverse("follow the yellow brick road") # wollof the wolley kcirb daor

def hash_missing_keys(hash, *args)
  # enumerate through the hash
  # if it doesn't have the key we select it and return the result
  # returned as an array
  args.select { |key| !hash.has_key?(key)}
end

# it "should return an array containing any of the additional arguments which are not keys in the hash"
# p hash_missing_keys({"z"=> true, "f"=>-1, "c"=>32}, "z", "a") #["a"]
# p hash_missing_keys({"z"=> true, "f"=>-1, "c"=>32}, "z", "a") # => (["a"])
# p hash_missing_keys({1=>"ein", 2=>"zwei", 3=>"drei" }, 0, 2, 4, 6) # => ([0, 4, 6])
# p hash_missing_keys({"z"=> true, "f"=>-1, "c"=>32}, "z", "f", "c") # => ([])