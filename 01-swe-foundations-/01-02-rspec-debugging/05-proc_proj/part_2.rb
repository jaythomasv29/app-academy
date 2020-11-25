def reverser(str, &prc)
    prc.call(str.reverse)
end

def word_changer(sent, &prc)
    words = sent.split(" ")
    words.map { |word| prc.call(word) }.join(" ") 
end


def greater_proc_value(num, prc1, prc2)
    return prc1.call(num) if prc1.call(num) > prc2.call(num)
    prc2.call(num)
end
#bundle exec rspec spec/file_spec.rb:col

def and_selector(arr, prc_1, prc_2)
    arr.select {|ele| prc_1.call(ele) && prc_2.call(ele)}
end

def alternating_mapper(arr, prc1, prc2)
    arr.map.with_index { |ele, i| i % 2 == 0 ? prc1.call(ele) : prc2.call(ele) }
end 