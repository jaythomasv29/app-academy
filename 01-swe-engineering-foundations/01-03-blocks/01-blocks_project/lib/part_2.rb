def all_words_capitalized?(arr)
  arr.all? { |word| word == word.capitalize }
end

def no_valid_url?(arr)
  valid_urls = ["com", "net", "io", "org"]
  # check if none have the url
  arr.none? { |url| valid_urls.include?(url.split(".")[1]) }
end

def any_passing_students?(arr)
  arr.any? do |student|
    student[:grades].sum / student[:grades].length >= 75
  end
end
