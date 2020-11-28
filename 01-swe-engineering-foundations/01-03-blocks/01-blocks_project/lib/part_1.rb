def select_even_nums(arr)
  # return an array containing only even numbers
  arr.select(&:even?)
end

# p select_even_nums([7, 3, 2, 5, 12])

def reject_puppies(arr)
  arr.reject { |hash| hash["age"] <= 2 }
end

def count_positive_subarrays(arr_2d)
  arr_2d.count { |arr| arr.sum.positive? }
end

def aba_translate(str)
  # transform the word by putting a 'b' after each vowel
  # and adding the same vowel
  # 'cats' => 'cabats'
  vowels = "aeiouAEIOU"
  result = str.split("").map do |ele|
    if vowels.include?(ele)
      # if vowel is included
      ele + "b" + ele
    else
      ele
    end
  end
  result.join("")
end

def aba_array(arr)
  arr.map { |word| aba_translate(word) }
end

p aba_translate("cats")
