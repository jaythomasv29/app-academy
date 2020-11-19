require 'byebug'
def partition(arr, num)
#two array variables lesser array, greater= array
    result_arr = []
    lesser_arr = []
    greater_arr = []
# enumerate through
# if less than number => push to lesser arra
# else push to greater array
# join them into result array
    arr.each { |ele| ele < num ? lesser_arr << ele : greater_arr << ele } 
    result_arr.push(lesser_arr, greater_arr)
end

def merge(hash_1, hash_2)
   result = Hash.new(0) # create a result hash
   hash_1.each do |k, v| #enumerating through hash_1 to add key, value pairs to result
     result[k] = v
   end 
    hash_2.each do |k, v|
      result[k] = v # reassign the value to the hash_2 value
    end
    result
end

def censor(sentence, curse_arr)
    #loop through sentence using curse_arr include
    words = sentence.split(' ')
    result = []
    words.each {|word| curse_arr.include?(word.downcase) ? result << vowel_astk(word) : result << word}
    result.join(' ')
    #if curse_arr has the word in sentence, change vowel to * using helper func
end

def vowel_astk(word)
    vowel = 'aeiouAEIOU'
    result = ''
    (0...word.length).each {|i| vowel.include?(word[i]) ? result += '*' : result += word[i]}
    result
end

def power_of_two?(num)
    # while loop until number/2 = 0
    # check if num%2==0

    #if number%2 == 0 then divide num/2
    while num != 1
        if num % 2 == 0
            num /= 2
        else
            return false
        end
    end
    true
end
