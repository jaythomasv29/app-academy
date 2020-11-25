# Write a method most_vowels that takes in a sentence string
# and returns the word of the sentence that contains the most vowels.

def most_vowels(sent)
  # split sentence
  # have a hash to store each word/count as key/value
  # sort the hash and return the word with most vowels
  vowel_count = {}
  vowels = "aeiou"
  sent.split(" ").each do |word|
    count = 0
    word.each_char do |char|
      if (vowels.include?(char))
        count += 1
      end
    end
    vowel_count[word] = count
  end
  return vowel_count.sort_by { |k, v| v }[-1][0]
end

p most_vowels("what a wonderful life") #=> "wonderful"
