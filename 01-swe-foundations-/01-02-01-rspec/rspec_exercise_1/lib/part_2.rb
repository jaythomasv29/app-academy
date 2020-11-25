def hipsterfy(str)
  vowels = "aeiouAEIOU"
  if str.split("").any? { |char| vowels.include?(char) }
    str.slice!(str.rindex(/[aeiou]/))
    return str
  else
    str
  end
end

p hipsterfy("tonic")
# p hipsterfy("panther")
# p hipsterfy("swimming")
# p hipsterfy("rhythm")
# p hipsterfy("my")

def vowel_counts(str)
  result = Hash.new(0)
  vowels = "aeiouAEIOU"
  str.each_char { |char| result[char.downcase] += 1 if vowels.include?(char) }
  result
end

def caesar_cipher(msg, n)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  shifted = msg.split("").map do |char_ele|
    if alphabet.include?(char_ele)
      alphabet[(alphabet.index(char_ele) + n) % 26] # the index + n
    else
      char_ele
    end
  end
  shifted.join("")
end

# p caesar_cipher("apple", 1)
