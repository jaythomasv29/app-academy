# A is worth 4 points,
# K is 3 points,
# Q is 2 points,
# J is 1 point.

def hand_score(str)
  score_hash = { "A" => 4, "K" => 3, "Q" => 2, "J" => 1 }
  score = 0

  str.split("").each do |char|
    score += score_hash[char.upcase]
  end
  return score
end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9
