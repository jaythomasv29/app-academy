def select_even_nums(arr)
    arr.select { |num| num % 2 == 0 }
end

def reject_puppies(arr)
    arr.reject { |hash| hash["age"] <= 2}
end


def count_positive_subarrays(arr)
    arr.map! { |sub| sub.sum > 0 ? "pos" : "neg" } 
    arr.count("pos")
end

def aba_translate(word)
    vowels = "aeiou"
    new_word = ""
    # word.each_char.with_index do |char, i|
    #     if vowels.include?(char) # is it vowel
    #         new_word += char + 'b' + char
    #     else
    #         new_word += char
    #     end
    # end
    # new_word
    word.each_char.with_index {|char, i| vowels.include?(char) ? new_word += char + 'b' + char : new_word += char}
    new_word
end

def aba_array(arr)
    arr.map { |sub| aba_translate(sub) }
end