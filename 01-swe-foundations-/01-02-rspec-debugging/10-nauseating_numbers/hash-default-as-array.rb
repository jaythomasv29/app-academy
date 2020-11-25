hash = Hash.new{|h,k| h[k] = [k]}

p hash
hash["app"].push('string')


# p hash #=> {"app"=>["academy", "academy"]}


