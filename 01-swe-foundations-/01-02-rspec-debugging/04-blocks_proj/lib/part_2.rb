def all_words_capitalized?(arr)
    arr.all? {|word| word == word.capitalize}
end

def no_valid_url?(arr)
    ends = [".com", ".net", ".io", ".org"]
    arr.none? { |url| ends.include?(url[url.index(".")..-1]) }
end

def any_passing_students?(arr)
    arr.any? { |hash| hash[:grades].sum * 1.0 / hash[:grades].length>= 75}
end