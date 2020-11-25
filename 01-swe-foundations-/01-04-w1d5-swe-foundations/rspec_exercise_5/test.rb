

def vowelcount(word)
  vowels = 'aeiou'
  count = 0
  word.each_char do |char|
    count += 1 if vowels.include?(char)
  end
  count
end

def convert_word(word)
  vowels = 'aeiou'
  converted = ''
  if vowelcount(word) > 1    
    word.each_char.with_index do |char, i|
      if word.include?(vowels) # find the first vowel
        converted = word[i..word.rindex(/[aeiou]/)]
      end
    end  
  end
  converted
end

p convert_word('properly')