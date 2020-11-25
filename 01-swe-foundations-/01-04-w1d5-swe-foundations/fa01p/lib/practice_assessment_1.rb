# Define your methods here.
def first_letter_vowel_count(string)
  # count = 0
  # vowels = "aeiouAEIOU"
  # string.split(" ").each do |word|
  #   p word
  #   if vowels.include?(word[0])
  #     count += 1
  #   end
  # end
  # count
  string.split(" ").count { |word| vowels.include?(word[0]) }
end

prc1 = Proc.new { |n| n.even? }

def count_true(arr, prc)
  # arr.select { |ele| prc.call(ele) }.length
  arr.count(&:prc)
end

prc1 = Proc.new { |n| n.even? }
p count_true([1, 2, 3, 4, 5], prc1) #.to eq(2)

def procformation(arr, prc1, prc2, prc3)
  # it "should evaluate each element by the first proc and if that returns true the second proc should be called with that element, else the third. Return the results in an array." do
  # results = []
  # arr.each do |ele|
  #   if prc1.call(ele)
  #     results << prc2.call(ele)
  #   else
  #     results << prc3.call(ele)
  #   end
  # end
  # results
  arr.map { |ele| prc1.call(ele) ? prc2.call(ele) : prc2.call(ele) }
end

def array_of_array_sum(arr)
  # should accept an array containing subarrays of numbers as an argument"
  # "should return the total sum of the elements in the subarrays"
  arr.flatten.sum
end

def selective_reverse(sent)
  # result = []
  # vowels = "aeiouAEIOU"
  # sent.split(" ").each do |word|
  #   # it "should return a new sentence in which every word from the original has been reversed except words that start or end with a vowel (a, e, i, o, u)"
  #   if vowels.include?(word[0]) || vowels.include?(word[-1]) ## if it has a vowel at the end or beginning
  #     result << word
  #   else # if it beings with consantntas
  #     result << word.reverse
  #   end
  # end
  # result.join(" ")
  sent.split(" ").map { |word| vowels.include?(word[0]) || vowels.include?(word[-1]) ? word : word.reverse }
end

def hash_missing_keys(hash, *args)
  # it "should return an array containing any of the additional arguments which are not keys in the hash"
  results = []
  args.each do |ele|
    if !hash.has_key?(ele)
      results << ele
    end
  end
  results
end

# args.select {|ele| !hash.has_keys?(ele)}
# args.select {|ele| !hash.keys.include?(ele)}

hash_missing_keys({ "z" => true, "f" => -1, "c" => 32 }, "z", "a") #.to eq(["a"])
