def zip(*arr)

    (0...arr[0].length).map do |i| # 0 1 2
      arr.map { |arr| arr[i] }   
    end
    # end
    #result
end


 arr1 = ['a', 'b', 'c'], 
 arr2 = [1, 2, 3] 
zip(arr1, arr2)


# one?
# p [1, 4, 5].one? { |el| el.even? }  # => true
# p [1, 4, 6].one? { |el| el.even? }  # => false
# p [1, 3, 5].one? { |el| el.even? }  # => false

# it "should return a new array containing the elements that return true for exactly one of the procs" do
def prizz_proc(arr, proc1, proc2)
  result = []
  # iterate throughe every element in arr
  arr.each do |ele|
    if (proc1.call(ele) || proc2.call(ele)) && !(proc1.call(ele) && proc2.call(ele)) # if one of them, not both
      result << ele
    end
  end
  result 
end

# arr = [1,2,3,8,9]
# arr2 = [1,7,8]

def zany_zip(*array)
  max_length = array.map {|arr| arr.count}.max

  (0...max_length).map do |i| # 0 1 2 3 
        array.map {|ele| ele[i] != nil ?  (ele[i]) : (nil)}
  end

end

# p zany_zip(arr,arr2)


def maximum(arr, &prc)
  
  max = arr.first
  arr.each { |ele| max = ele if prc.call(ele) >= prc.call(max)}
  return nil if arr.empty?
  max
end


p maximum([2, 4, -5, 1]) { |n| n * n } 
p maximum(['potato', 'swimming', 'cat']) { |w| w.length }


def max_tie_breaker(arr, proc1, &prc) # (arr, proc, block)
  max = arr.first
  arr.each do |ele| 
    if prc.call(ele) > prc.call(max)
      max = ele
    elsif prc.call(max) == prc.call(ele) && proc1.call(ele) > proc1.call(max) #205 
      max = ele
    end# if there is a tie
       # call the the proc to break the tie
  end
  max
end



def silly_syllables(sentence)
   sentence.split.map do |word|
     first_vowel?(word)
   end
end

def convert_word(word)
  vowels = 'aeiou'
  result = ""
  if vowelcount(word) > 1    
    word.each_char.with_index do |char, i|
      result += word[i..word.rindex[/[aeiou]/]] if vowels.include?(char)
    end  
  end
  result
end


def vowelcount(word)
  vowels = 'aeiou'
  count = 0
  word.each_char do |char|
    count += 1 if vowels.include?(char)
  end
  count
end

p convert_word('properly')