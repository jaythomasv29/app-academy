def my_map(arr, &prc)
    arr.each_with_index { |ele, i| arr[i] = prc.call(ele) }
end

def my_select(arr, &prc)
    newArr = []
    arr.each {|ele| prc.call(ele) ? newArr << ele : next}
    newArr
end

def my_count(arr, &prc)
    count = 0
    arr.each { |ele| prc.call(ele) ? count += 1 : next }
    count
end

def my_any?(arr, &prc)
    arr.each {|ele| return true if prc.call(ele)}
    false
end

def my_all?(arr, &prc)
    arr.each { |ele| return false if !prc.call(ele) }
    true
end

def my_none?(arr, &prc)
    arr.each { |ele| return false if prc.call(ele)}
    true
end