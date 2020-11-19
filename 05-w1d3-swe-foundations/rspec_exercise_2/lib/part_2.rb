def palindrome?(str)
    reverse_str = ''
    i = str.length - 1
    while i >= 0
        reverse_str += str[i]
        i-=1
    end
    reverse_str == str
end

def substrings(str)
  result = []
    letters = str.split('')
    letters.each_with_index do |let_1, idx_1| # 1 2
        result << let_1 # j
        letters.each_with_index do |let_2, idx_2|
            if idx_2 > idx_1
                result << letters[idx_1..idx_2].join("")
            end
        end
    end
    result
end

def palindrome_substrings(str)
  # palindrome? => Boolean
  # substrings => Array
  result = []
  substrings(str).each { |word| result << word if palindrome?(word) && word.length > 1}   # [] gets array of all combinations
  result
end