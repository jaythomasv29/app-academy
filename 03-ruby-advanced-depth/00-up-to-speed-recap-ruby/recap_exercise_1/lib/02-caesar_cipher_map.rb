def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  shifted = str.split("").map do |letter|
    alphabet[(alphabet.index(letter) + num) % 26]
  end
  shifted.join("")
end

p caesar_cipher("appple", 1)
