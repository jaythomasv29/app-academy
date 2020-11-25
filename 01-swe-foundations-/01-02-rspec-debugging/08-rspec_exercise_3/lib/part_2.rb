# part_2

# hash default value 0
# enumerate through arr .each() 
  # =>  populate the hash
  # => hash[word] += 1

def element_count(arr)
  hash = Hash.new(0)
  arr.each do |word|
    hash[word] += 1
  end
  hash
end

p element_count([true, true, false, true, true]) 


def char_replace!(str, hash) 
  str.split("").map { |char| hash.has_key?(char) ? hash[char] : char }.join("")
end

p char_replace!("ha77q-wqr7d", {"l"=>"7", "e"=>"a", " "=>"-", "o"=>"q"})
p char_replace!("pizza", {"z"=>"x", "t"=>"f", "e"=>"a"})    





def multi_map(arr, n=1, &prc)
  arr.map { |ele| n.times {prc.call(ele)}}
end

p multi_map(['pretty', 'cool', 'huh?']) { |s| s + '!'}      # ["pretty!", "cool!", "huh?!"]
p multi_map(['pretty', 'cool', 'huh?'], 1) { |s| s + '!'}   # ["pretty!", "cool!", "huh?!"]
p multi_map(['pretty', 'cool', 'huh?'], 3) { |s| s + '!'}   # ["pretty!!!", "cool!!!", "huh?!!!"]
p multi_map([4, 3, 2, 7], 1) { |num| num * 10 }             # [40, 30, 20, 70]
p multi_map([4, 3, 2, 7], 2) { |num| num * 10 }             # [400, 300, 200, 700]
p multi_map([4, 3, 2, 7], 4) { |num| num * 10 }             # [40000, 30000, 20000, 70000]